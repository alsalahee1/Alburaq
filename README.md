# Alburaq — Website Redesign

New website project for **Al Buraq International Sdn. Bhd.** (alburaqinternational.com) — a Malaysian retailer of premium Arabian foods (dates, Yemeni honey, oils, spices).

## Documents

- **[docs/website-redesign-brief.md](docs/website-redesign-brief.md)** — full discovery & requirements brief: company profile, current-site audit, competitor analysis, target audiences, proposed sitemap, design direction (palette/typography/photography/motion), Malaysia-tuned commerce features (FPX & e-wallets, WhatsApp commerce, EasyParcel, Ramadan campaign engine), tech-stack recommendation, owner content checklist, and delivery roadmap.

## The prototype

`site/index.html` is a complete, self-contained working store prototype — the **"The Night Journey"** design concept brought to life. Open it in a browser; no build step or server required.

**Pages (client-side hash router):**

| Route | Page |
|---|---|
| `#/` | Home — hero, trust bar, collections, story, signatures, Ramadan, reviews |
| `#/shop` · `#/shop/:cat` | Shop listing with live category filtering |
| `#/product/:id` | Product detail — gallery, tasting notes, quantity, related items |
| `#/story` | Our Story — brand, values, halal/sourcing |
| `#/gifting` | Ramadan & corporate gifting + countdown |

**Working commerce:** add-to-cart, slide-in basket with quantity steppers, RM subtotals, cart persistence (localStorage), and a WhatsApp checkout handoff. Motion (scroll reveals, hero dust-motes, hovers) respects `prefers-reduced-motion`.

### Commerce-ready structure
All products live in a single `PRODUCTS` catalog array in the page script (id, name, Arabic, category, price, unit, origin, tasting notes, tags). This maps 1:1 to a WooCommerce or Shopify product feed — swap the array for a real API/CMS and the same UI renders live inventory. Coloured product tiles are placeholders for real photography; prices, testimonials, and the WhatsApp number are illustrative pending owner confirmation (see brief §11).

## Status

Working multi-page prototype complete. Next: owner assets (photos, real prices, WhatsApp/halal details per brief §11), then port to the chosen stack (WooCommerce recommended).
