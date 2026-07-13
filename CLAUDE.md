# Process PA Marketing Website

Jekyll static site for [processpa.com](https://processpa.com) — a board/governance SaaS product targeting Australian associations, NFPs, and SMEs.

## Stack

- **Jekyll** static site generator
- **Bootstrap 4** via SASS (`css/main.scss` imports everything)
- **CloudCannon** CMS for content editing (being retired — see Deployments)
- **Hosting**: Azure Static Web Apps, via GitHub Actions (see Deployments)

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
| `trial-cta.html` | End-of-post trial CTA — reads `page.cta_hook` / `page.cta_body` (see Blog posts) |
| `article-cta.html` | Inline mid-article trial CTA card — takes `headline` / `body` params |

## Blog posts (ExecutiveMatters)

Posts in `_posts/` use `layout: post` and live under the `/ExecutiveMatters/` permalink. Each governance/meetings/management article follows a conversion + SEO convention (product-update and P&C posts are exempt):

- **End-of-post CTA**: set `cta_hook` (headline) and optional `cta_body` (supporting line) in front matter. `post.html` renders `trial-cta.html` when `cta_hook` is present, else falls back to a generic panel. Keep the hook contextual to the article topic.
- **Inline CTA**: place `{% include article-cta.html headline="…" body="…" %}` roughly 60% through the body, before the conclusion. Topic-specific, ties the article subject to a Process PA capability.
- **Meta description**: set `description` in front matter (consumed by `{% seo %}` / jekyll-seo-tag). Specific to the article, with an Australian governance signal where natural. Without it, posts fall back to the generic site description.
- **Schema**: end the body with an inline `<script type="application/ld+json">` block — `FAQPage` for Q&A-style articles, `HowTo` for step-based ones. Improves SEO and AI-answer-engine visibility. Jekyll renders Liquid inside `.md`, so includes/schema work directly in post markdown.

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

## Running with Docker (no local Ruby)

Use Docker Compose when you want to avoid local Ruby/Bundler setup issues.

```bash
docker compose up --build
```

This uses `docker-compose.yml` and `Dockerfile.jekyll` in the repo root, installs gems in-container, and serves the site at `http://127.0.0.1:4000` with live reload enabled.

Useful commands:

```bash
docker compose down
docker compose logs -f
```

## Deployments

`.github/workflows/azure-static-web-apps.yml` builds the site with `bundle exec jekyll build` and deploys `_site/` to Azure Static Web Apps. Both apps are Free tier in East Asia (Static Web Apps is not offered in an Australian region; content is served from the global edge regardless).

| Trigger | Azure resource | Resource group / subscription | URL |
|---|---|---|---|
| PR against `master` | `ProcessPAMarketingSiteQA` | `ppa-qa-mpn` / Microsoft Partner Network | https://gentle-water-0c7874300.7.azurestaticapps.net |
| Push to `master` | `ProcessPAMarketingSite` | `PPA-Prod` / BizSpark | https://proud-sand-05735ce00.7.azurestaticapps.net |

Deployment tokens live in the repo secrets `AZURE_STATIC_WEB_APPS_API_TOKEN` (prod) and `AZURE_STATIC_WEB_APPS_API_TOKEN_QA`. Regenerate with `az staticwebapp secrets list`.

The QA step uses the SWA CLI (`swa deploy _site --env production`) rather than `Azure/static-web-apps-deploy`. This is deliberate: on `pull_request` events that action forces the target environment to the PR number, publishing to a throwaway `…-<PR>.eastasia…` URL and leaving the QA app's real hostname empty. The CLI honours `--env`, so every PR lands on the one fixed QA URL. Don't swap it back for the action.

CloudCannon still builds from `master` and is still the editors' CMS, but it is being retired. DNS for processpa.com has not yet been pointed at the prod app — that switch, and removing CloudCannon's access to `master`, are the remaining steps.

## Commit messages

Use [gitmoji.dev](https://gitmoji.dev) emoji prefixes on all commit messages. Pick the emoji that best matches the intent of the change (e.g. ✨ for new features, 🐛 for bug fixes, 💄 for UI/style changes, ♻️ for refactoring, 📝 for docs).

## Branching

Work in feature branches off `master` and open a PR — the PR build deploys to the QA site for review. Merging deploys `master` to production.
