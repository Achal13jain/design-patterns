param(
  [string]$InputDirectory = "videos",
  [string]$OutputDirectory = "videos/pingpong"
)

$ErrorActionPreference = "Stop"

if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) {
  throw "ffmpeg is required but was not found on PATH."
}

New-Item -ItemType Directory -Force -Path $OutputDirectory | Out-Null

$sources = Get-ChildItem -LiteralPath $InputDirectory -File -Filter "* - Trim.mp4" |
  Sort-Object Name

if ($sources.Count -eq 0) {
  throw "No trimmed MP4 sources were found in $InputDirectory."
}

foreach ($source in $sources) {
  $outputName = $source.Name -replace " - Trim\.mp4$", ".mp4"
  $outputPath = Join-Path $OutputDirectory $outputName
  $frameCount = [int](& ffprobe `
    -v error `
    -count_frames `
    -select_streams v:0 `
    -show_entries stream=nb_read_frames `
    -of default=nokey=1:noprint_wrappers=1 `
    $source.FullName)

  if ($frameCount -lt 3) {
    throw "Could not determine a usable frame count for $outputName."
  }

  $reverseEndFrame = $frameCount - 1
  $filter = "[0:v]split=2[forward][backsource];[forward]setpts=PTS-STARTPTS[f];[backsource]trim=start_frame=1:end_frame=$reverseEndFrame,reverse,setpts=PTS-STARTPTS[r];[f][r]concat=n=2:v=1:a=0,format=yuv420p[out]"

  Write-Host "Building $outputName"

  & ffmpeg `
    -hide_banner `
    -loglevel error `
    -y `
    -i $source.FullName `
    -filter_complex $filter `
    -map "[out]" `
    -an `
    -c:v libx264 `
    -preset medium `
    -crf 22 `
    -movflags +faststart `
    -g 25 `
    -keyint_min 13 `
    -sc_threshold 0 `
    $outputPath

  if ($LASTEXITCODE -ne 0) {
    throw "ffmpeg failed while building $outputName."
  }
}

Write-Host "Built $($sources.Count) ping-pong videos in $OutputDirectory."
