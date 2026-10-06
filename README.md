<div align="center">

<br/>

# UI Aesthetic Atlas

**A definitive visual glossary of 20 modern UI design patterns.**

*For founders who need conviction. Developers who need vocabulary. Designers who need a reference.*

<br/>

[![Live Demo](https://img.shields.io/badge/live_demo-UI_Aesthetic_Atlas-ff3b00?style=for-the-badge&labelColor=0d0d0d)](https://achal13jain.github.io/design-patterns/)
[![License: MIT](https://img.shields.io/badge/license-MIT-ff3b00?style=for-the-badge&labelColor=0d0d0d)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-ff3b00?style=for-the-badge&labelColor=0d0d0d)](CONTRIBUTING.md)

<br/>

**[Browse the Interactive Gallery &rarr;](https://achal13jain.github.io/design-patterns/)**

*20 patterns &nbsp;&middot;&nbsp; HD video previews &nbsp;&middot;&nbsp; Vibe &times; Effort analysis &nbsp;&middot;&nbsp; Real-world examples*

<br/>

</div>

---

## Why This Exists

The UI/UX landscape has thousands of component libraries — but almost nothing that answers the question founders *actually* ask at 2am:

> *"What should my product **look like**?"*

This is not a component library. There is no code to copy.

This is a **visual decision-making tool** — a high-fidelity menu of the 20 dominant modern design aesthetics, each captured as a looping HD video preview that shows exactly what the pattern *feels like* in motion. Every entry is paired with a sharp editorial breakdown: who it's for, what it costs to build, and critically — when *not* to use it.

**Stop scrolling Dribbble. Pick a visual identity. Ship.**

---

## The 20 Patterns

| # | Pattern | Vibe | Best For | Effort |
|---|---------|------|----------|--------|
| 01 | **Neubrutalism** | Raw &middot; Confrontational | Indie tools, SaaS, Dev portfolios | Low |
| 02 | **Glassmorphism** | Sleek &middot; Premium | Fintech, SaaS dashboards | Medium |
| 03 | **Bento Grid** | Editorial &middot; Modern | Landing pages, Feature showcases | Low&ndash;Med |
| 04 | **Neumorphism** | Soft &middot; Monochromatic | Audio apps, Control panels | High |
| 05 | **Claymorphism** | Playful &middot; Tactile | Ed-tech, Gamified apps | Medium |
| 06 | **Aurora UI** | Dreamy &middot; Fluid | AI tools, Creative, Music | Medium |
| 07 | **Cyberpunk UI** | Futuristic &middot; Dark | Web3, Gaming, AI | Med&ndash;High |
| 08 | **Y2K Aesthetic** | Chaotic &middot; Nostalgic | Fashion, Gen-Z, Music | Medium |
| 09 | **Flat Design** | Clean &middot; Timeless | Universal, Mobile apps | Low |
| 10 | **Material Design** | Structured &middot; Reliable | Enterprise, Android | Medium |
| 11 | **Skeuomorphism** | Realistic &middot; Tactile | Audio plugins, Luxury | High |
| 12 | **Bauhaus** | Geometric &middot; Intellectual | Design agencies, Editorial | Low&ndash;Med |
| 13 | **Brutalism** | Raw &middot; Subversive | Culture, Fashion, Art | Low |
| 14 | **Minimalism** | Serene &middot; Disciplined | Writing tools, Luxury, Wellness | Low* |
| 15 | **Retro Futurism** | Cinematic &middot; Nostalgic | Gaming, Sci-fi brands | Medium |
| 16 | **Dark Mode** | Focused &middot; Professional | Dev tools, Productivity | Low&ndash;Med |
| 17 | **Motion Driven** | Cinematic &middot; Alive | Premium SaaS, Studios | High |
| 18 | **Maximalism** | Abundant &middot; Loud | Fashion, Art, Entertainment | High |
| 19 | **Organic UI** | Natural &middot; Calming | Wellness, Sustainability | Low&ndash;Med |
| 20 | **Liquid Glass** | Ethereal &middot; Futuristic | Next-gen SaaS, Spatial | High |

> *\*Minimalism is low effort to implement and brutally hard to execute with taste.*

**See every pattern in motion &rarr; [Open the Gallery](https://achal13jain.github.io/design-patterns/)**

---

## How to Use This

1. **Browse the gallery** — let the motion previews speak before you read a word
2. **Match to your product** — use the Best For tags as a filter
3. **Check the effort** — don't fall in love with Liquid Glass if you ship next week
4. **Commit** — the worst design decision is no decision at all

---

## Real-World Sightings

> These patterns aren't theoretical — they're live, shipping, and earning revenue right now.

| Pattern | Spotted In |
|---------|------------|
| **Glassmorphism** | Linear, Apple Music Web, Vercel Dashboard |
| **Neubrutalism** | Gumroad, Framer, Beehiiv, Pika |
| **Bento Grid** | Apple.com keynote pages, Raycast site |
| **Material Design** | Google Workspace, Android, YouTube |
| **Dark Mode** | VS Code, Raycast, Linear, Arc Browser |
| **Cyberpunk UI** | Phantom Wallet, Axiom.trade |
| **Minimalism** | Bear, iA Writer, Stripe.com |
| **Flat Design** | Duolingo, Figma (icons), Notion |
| **Aurora UI** | Mesh Gradient tools, Luma AI |
| **Organic UI** | Headspace, Oura Ring, Notion (soft version) |

> Know a better or more current example? [Submit a sighting &rarr;](CONTRIBUTING.md)

---

## Production Pipeline

> This gallery is simple to browse because it was complex to build.

```
HTML/CSS Templates         Playwright Capture             FFmpeg Delivery
──────────────────    →    ─────────────────────    →    ─────────────────
Zero-dependency            Headless Chromium              Optimized H.264
pure CSS @keyframes        960×640 previews               forward + reverse
infinite loop              5-second captures              seamless 10s loop
```

**How each preview was made:**

1. **Template engineering** — 20 zero-dependency HTML/CSS files, each capturing the precise math of its pattern
2. **Ghost interactions** — Pure CSS `@keyframes` simulate natural user behavior on infinite loops
3. **Headless capture** — A Python/Playwright script spins up headless Chromium at 960&times;640, recording flawless loops
4. **Ping-pong encoding** — `scripts/build-pingpong-videos.ps1` joins every capture with its reverse while removing duplicated endpoint frames
5. **Static delivery** — The complete optimized preview set is approximately 5 MB and ships directly with GitHub Pages

**Gallery features:**

- Cinematic page-load sequence with character-by-character hero reveal
- Staggered scroll animations with parallax video previews
- Animated gradient borders on hover
- Search and filter by effort level or use case
- Cinematic and compact overview modes
- Side-by-side comparison for up to three patterns
- Shareable filters, searches, views, and direct pattern links
- Vibe &times; Effort decision matrix
- `prefers-reduced-motion` respected throughout
- Zero dependencies — single HTML file, pure CSS/JS

---

## Roadmap

- [x] 20 flagship patterns with HD video previews
- [x] Vibe &times; Effort matrix
- [x] Real-world sightings per pattern
- [x] Interactive web gallery with filter by vibe / effort / use case
- [x] Cinematic scroll animations and micro-interactions
- [ ] Community-sourced examples (open for contributions)
- [ ] Figma component kit for each pattern
- [ ] Technical deep-dives — the CSS physics behind each pattern
- [ ] `v2` — 10 emerging patterns (Typographic UI, Dataviz-first, Monochrome, Soft Brutalism...)

---

## Contributing

This gallery grows stronger with real-world examples and community perspective.

**Ways to contribute:**
- Link a live product that exemplifies a pattern (Real-World Sightings section)
- Submit a new pattern with a matching animated preview
- Sharpen or correct an editorial description

Read the full guide: [**CONTRIBUTING.md**](CONTRIBUTING.md)

---

## License

MIT &copy; [Achal Jain](https://achal-jain.vercel.app/) &middot; Free to use, reference, and build on.

---

<div align="center">

<br/>

**If this saved you an hour of Dribbble scrolling — a star keeps the project alive.**

<br/>

*Built with obsession by [Achal Jain](https://achal-jain.vercel.app/)*

<br/>

</div>
