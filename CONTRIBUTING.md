# Contributing to UI Aesthetic Atlas

First — thank you. This project gets better with every real-world example, edge case, and perspective the community brings.

---

## Ways to Contribute

### 1. Add a Real-World Sighting

The most valuable and easiest contribution. If you spot a live, shipping product that clearly exemplifies one of the 20 patterns:

1. Open an issue using the **"Real-World Sighting"** template
2. Include:
   - The pattern name
   - The product/site name and URL
   - A brief note on *why* it's a strong example — not just that it uses the style, but *how* it uses it well

**Quality bar:** The example should be an unambiguous, well-executed instance of the pattern — not a stretch. When in doubt, open a Discussion first.

---

### 2. Improve an Editorial Description

If a description is imprecise, outdated, or missing nuance — fix it.

1. Fork the repo
2. Edit the relevant entry in `index.html`
3. Open a PR with a clear title: `fix(description): clarify Neumorphism accessibility constraints`

**Voice to match:** Sharp and opinionated, not encyclopedic. These descriptions should help someone make a decision, not just define a term. "The design language of builders who ship" — not "A style characterized by..."

---

### 3. Submit a New Pattern

New patterns are accepted **selectively**. Before building anything:

1. Open an issue using the **"New Pattern Request"** template
2. Make the case: Is this pattern distinct from existing entries? Is it used in real, shipped products? Does it represent a meaningful aesthetic decision a founder would actually face?
3. **Wait for maintainer approval before building anything**

**If approved, the submission requirements are:**

- A zero-dependency HTML/CSS template that captures the pattern's core visual math
- Pure CSS `@keyframes` on an `infinite` loop (ghost clicks, hover states, natural interactions)
- A 5-second MP4 video captured at **960x640** using headless Chromium
- A ping-pong preview generated with `scripts/build-pingpong-videos.ps1`
- Only the optimized file in `videos/pingpong/` committed; keep raw captures out of Git
- A PR with the new entry added to `index.html` (gallery + matrix table) and `README.md` (pattern table) in the correct numbered slot

---

## Entry Format

When adding or editing a pattern entry in `index.html`, match this structure:

```html
<article class="pattern-entry" data-effort="low|medium|high" data-tags="space-separated tags">
  <div class="pattern-preview">
    <video src="videos/pingpong/XX-pattern-name.mp4" muted loop playsinline preload="metadata"
           aria-label="[Pattern Name] design pattern"></video>
  </div>
  <div class="pattern-info">
    <div class="pattern-number">XX / 20</div>
    <h2 class="pattern-name">Pattern<br/>Name</h2>
    <p class="pattern-tagline">One-line tagline. Make it memorable.</p>
    <div class="pattern-meta">
      <div class="meta-row">
        <span class="meta-icon">&#9654;</span>
        <span class="meta-label">Best for</span>
        <span class="meta-value">Use case 1 · Use case 2 · Use case 3</span>
      </div>
      <div class="meta-row">
        <span class="meta-icon">&#9670;</span>
        <span class="meta-label">Effort</span>
        <span class="meta-value">Level — One-sentence honest explanation</span>
      </div>
      <div class="meta-row">
        <span class="meta-icon">&#10005;</span>
        <span class="meta-label">Skip if</span>
        <span class="meta-value">The clearest reason NOT to use this pattern</span>
      </div>
    </div>
    <div class="pattern-tags">
      <span class="tag">Tag1</span><span class="tag">Tag2</span>
    </div>
  </div>
</article>
```

---

## What Gets Rejected

- Vague "Best for" tags that apply to everything (e.g., "modern apps")
- Descriptions that don't help someone make a decision
- Patterns that are minor variations of existing entries
- Examples that are low-quality, outdated, or inaccessible
- PRs that bypass the issue/approval step for new patterns

---

## Pull Request Checklist

Before submitting a PR:

- [ ] Matches the entry format above exactly
- [ ] Editorial voice is sharp and opinionated, not neutral
- [ ] Only the optimized ping-pong preview is committed; raw captures remain ignored
- [ ] For new patterns: issue was opened and approved first
- [ ] PR title follows the convention: `feat(pattern): add Typographic UI` or `fix(description): sharpen Brutalism skip-if`

---

## Code of Conduct

Be direct. Be generous. Disagree with ideas, not people.

This project values taste, honesty, and craft. Contributions that add noise without insight will be declined, without drama and without prejudice.

---

## Questions?

Open a [Discussion](../../discussions). Or reach me directly at [Achal Jain's portfolio](https://achal-jain.vercel.app/).
