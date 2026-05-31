# Process PA Marketing Website

Jekyll static site for [processpa.com](https://processpa.com) — a board/governance SaaS product targeting Australian associations, NFPs, and SMEs.

## Stack

- **Jekyll** static site generator
- **Bootstrap 4** via SASS (`css/main.scss` imports everything)
- **CloudCannon** CMS for content editing
- **Hosting**: CloudCannon (deployed from `master`)

## Design principles

**Bootstrap first.** Before writing any custom CSS, check whether Bootstrap utilities or components already cover it. `d-flex`, `text-muted`, `font-weight-bold`, `bg-light`, `rounded`, `shadow`, `badge`, `card`, `btn`, `text-center`, `mt-*`/`mb-*`/`p-*` spacing — use these in HTML rather than adding new CSS rules.

**Minimal custom CSS.** Custom styles live in `_sass/_custom.scss` (Bootstrap variable overrides) and `_sass/_site.scss` (site-wide additions). Only add custom CSS for things Bootstrap genuinely cannot do: custom toggle switches, absolute-positioned decorative elements, hover animations not in Bootstrap. Do not create custom equivalents of Bootstrap utilities.

**Minimal JavaScript.** This is a static marketing site — avoid JS wherever possible. When JS is necessary (e.g. interactive pricing toggles), write it as a small vanilla IIFE directly in the page. No frameworks, no new libraries. jQuery is available (Bootstrap dependency) but prefer plain DOM APIs.

**No new external dependencies** without a strong reason.

## Brand

| Token | Value | Usage |
|---|---|---|
| Green | `#7CBB00` | Primary CTA, `btn-success`, active states |
| Blue | `#00A1F1` | Secondary CTA, `btn-info`, jumbotron backgrounds |
| Red | `#F65314` | Danger/warning accents |
| Yellow | `#FFBB00` | Highlight accents |

Primary CTA colour is **green** (`btn-success`). All prices are in **Australian Dollars (inc GST)**.

## Layouts

```
default.html          ← navbar + footer shell
  └── standard.html   ← used by most pages (no container added)
        ├── page.html      ← adds <h1 class="display-4"> from page.title, then content
        ├── landing.html
        ├── post.html      ← blog posts
        └── markdown-page.html
```

Use `layout: page` for standard content pages. Use `layout: standard` when you need full control over the top of the page (e.g. a jumbotron hero). Use `layout: markdown-page` for legal/policy docs.

## CloudCannon CMS

Content editors use CloudCannon. Follow these rules:

- Add `class="editable"` to any text element that editors should be able to change in the CMS.
- Do **not** add `editable` to elements whose content is driven by Liquid/front matter — CloudCannon will overwrite them.
- Front matter in `.html` pages can include structured data (arrays of testimonials, benefits, org types) which the template loops over. Prefer this pattern over hardcoded HTML for repeated content.

## Key includes

| Include | Purpose |
|---|---|
| `footer.html` | Global footer — included by `default.html` |
| `analytics.html` / `analytics-inline.html` | Google Analytics |
| `live-chat.html` | Live chat widget |
| `convertkit-lead-capture.html` | Email capture form |
| `wista-video.html` | Wistia video embed |
| `help-card.html` | Contextual help CTA card |

## Navigation

Pages appear in the navbar when they have `navigation_weight` in front matter. Lower weight = further left. `navigation_title` sets the label.

## Pricing

- Starter: $115/mo | Standard: $165/mo | Enterprise: $240/mo
- Additional Sub-Committees: $65/mo
- Annual billing: 2 months free (pay 10, get 12)
- NFP discount: 20% off all plans
- All prices AUD inc GST

## Running locally

```bash
bundle exec jekyll serve --incremental
```

Site runs at `http://127.0.0.1:4000`. The `faraday-retry` gem warning and GitHub Metadata `site.title` notice are harmless.

## Commit messages

Use [gitmoji.dev](https://gitmoji.dev) emoji prefixes on all commit messages. Pick the emoji that best matches the intent of the change (e.g. ✨ for new features, 🐛 for bug fixes, 💄 for UI/style changes, ♻️ for refactoring, 📝 for docs).

## Branching

Work in feature branches off `master`. `master` deploys automatically via CloudCannon.
