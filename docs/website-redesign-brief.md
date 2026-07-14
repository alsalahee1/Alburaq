# Al Buraq International — Website Redesign Discovery & Requirements Brief

**Company:** Al Buraq International Sdn. Bhd. (Malaysia)
**Current site:** https://alburaqinternational.com/
**Goal:** Replace the current basic WooCommerce site with a modern, professional, dynamic (non-static) e-commerce website.
**Document date:** 14 July 2026

> **How this was researched:** the live site blocks automated fetching, so its content was reconstructed from search-engine indexes, business registries, and market research. Everything marked **[verify]** should be confirmed against the live site or by the owner before design starts.

---

## 1. Executive summary

Al Buraq International is a Malaysian importer/retailer of premium Arabian food products — dates, Yemeni honey, oils, spices, and molasses — selling online in RM through a dated WordPress/WooCommerce store whose content appears essentially unchanged since ~2022.

The opportunity is clear: **no Malaysian player currently combines luxury-grade design (Bateel-style) with local RM pricing, halal trust signals, and Ramadan-native campaigns.** The dominant local kurma brands (Yusuf Taiyoob, All Kurma, Green Diamond) have dated, wholesale-feeling websites. A well-designed D2C brand site with gifting, seasonal campaigns, WhatsApp commerce, and Malaysian payment methods can occupy that whitespace.

**Headline recommendations:**
1. Rebuild on WooCommerce with a modern, fast theme and a purposeful motion/animation layer (or Shopify if the owner prefers zero maintenance — see §10).
2. Reposition from "generic Arabic grocery" to **premium Arabian gourmet & gifting brand** with provenance storytelling (Madinah dates, Wadi Do'an honey).
3. Build a **Ramadan/Raya seasonal engine** (homepage takeover, hamper catalog, corporate gifting, pre-orders) — this is the revenue peak for this category in Malaysia.
4. Integrate Malaysia-first commerce: FPX/DuitNow + e-wallets (Touch 'n Go, GrabPay, ShopeePay), WhatsApp ordering, EasyParcel delivery.
5. Fix the trust layer: consistent policies (the current site contradicts itself on shipping), halal/origin certification display, visible contact channels, reviews.

---

## 2. Company profile (verified facts)

| Item | Detail |
|---|---|
| Legal name | AL BURAQ INTERNATIONAL SDN. BHD. |
| Registration | 201801043303 (old no. 1305335-X), incorporated 28 Nov 2018, Malaysian private limited |
| Registered address | C-3-07, Street Mall, One South, Jalan OS, Taman Serdang Perdana (Seksyen 6), 43300 Seri Kembangan, Selangor, Malaysia |
| Registry business scope | Cargo handling / transportation support; import & export of a variety of goods; domestic and international trade |
| Retail business | Online + walk-in shop for Arabian food products, priced in RM |
| Physical branch | Registered address doubles as the walk-in branch (customers can pay cash in person) |

Sources: [CompaniesFacts](https://companiesfacts.com/malaysia/al-buraq-international-1305335-X), [EMIS](https://www.emis.com/php/company-profile/MY/Al_Buraq_International_Sdn_Bhd_en_16430307.html), [CTOS](https://businessreport.ctoscredit.com.my/oneoffreport_api/single-report/malaysia-company/1305335X/AL-BURAQ-INTERNATIONAL-SDN-BHD-), [Export Genius](https://exportgenius.in/company/al-buraq-international-sdn-bhd/my/2ea4a9c6a29548ae9e857b0bee0e08f2).

**Not publicly findable (owner must supply):** directors/shareholders, phone, email, WhatsApp number, any social media accounts, marketplace storefronts (Lazada/Shopee), halal certification status, product photography, brand assets/logo files.

---

## 3. Current website audit

### 3.1 Structure & content
- **Platform:** WordPress + WooCommerce (confirmed by shop grid, category counts, variable-product price ranges).
- **Pages found:** Home, Shop (23 products, paginated 12/page), About Us, Contact Us, FAQ. Product detail pages exist but are barely indexed — an SEO red flag.
- **Catalog:** 23 products across 6 categories, labelled **in Arabic** on an otherwise English site (no real i18n):

| Category (as on site) | English | Products |
|---|---|---|
| تمور | Dates | 3 |
| عسل | Honey | 4 |
| زيوت | Oils | 6 |
| بهارات | Spices | 3 |
| دبس | Molasses/syrups | 1 |
| منوع | Miscellaneous | 6 |

- **Known products [verify]:** Maraie Honey (RM40, on sale RM28), Maraie Honey 125g (RM16–25), Mabroom dates. Maraie/Mara'i is a Yemeni Wadi Do'an wildflower honey — a genuine premium provenance story the current site doesn't tell.
- **Homepage pitch:** dates, olive oil, nuts, "a variety of Arabic products", with "fast shipping" and "money-back guarantee" badges.

### 3.2 Problems to fix (these define the redesign)
1. **Contradictory trust content:** homepage promises "fast shipping" and "money-back guarantee", while the FAQ says *no delivery to customers*, *no returns*, *no insurance*, and payment by Visa or cash at the branch only. This must be reconciled into one true, generous-feeling policy set.
2. **Stale content:** indexed homepage content dates from ~Feb 2022 — the site reads as abandoned.
3. **Mixed language without i18n:** Arabic category names on English pages; confusing for Malay/English-speaking Malaysian customers.
4. **Near-zero SEO footprint:** only Home and Shop are meaningfully indexed; product pages invisible; no content marketing.
5. **No visible contact channels:** no phone, email, WhatsApp, or social links surfaced anywhere findable — fatal for a Malaysian SME (WhatsApp is the default business contact channel here).
6. **Limited payments:** Visa or in-person cash; no FPX, DuitNow, or e-wallets — the payment methods Malaysians actually use.
7. **Static, template feel:** stock WooCommerce grid, no brand storytelling, photography, motion, or gifting experience.

---

## 4. Market & competitor landscape

### Design north stars (what "amazing" looks like in this category)
- **[Bateel](https://bateel.com/en/dates)** — global luxury dates house. Copy these patterns: product taxonomy by *variety AND occasion*, designed gift boxes as a first-class category, corporate-gifting page, seasonal homepage variants, "from tree to table" storytelling, editorial blog.
- **[The Date Room](https://www.thedateroom.com/)** (UAE) — gifting-first architecture, plus a dedicated [Ramadan corporate-gifting microsite](https://rc.thedateroom.com/) — directly relevant to Al Buraq's seasonal peaks.
- **[Ajfan Dates & Nuts](https://ajfan.store/)** — provenance/spiritual framing per product ("Holy Ajwa from Madinah"), bold service promise (90-minute delivery) as a differentiator.

### Direct Malaysian competitors
| Competitor | Position | Weakness to exploit |
|---|---|---|
| [Yusuf Taiyoob](https://yuta.com/product/dates/) | Iconic Ramadan kurma brand | Dated corporate/B2B site, weak D2C |
| [All Kurma](https://allkurma.com.my/) | Est. 2010, wholesale+retail, Lazada/Shopee stores | Grocery feel, not premium |
| [Green Diamond](https://greendiamond.com.my/kurma/kurma-dates/) | 40-yr wholesaler, strong kurma SEO content | Price-led, no brand experience |
| Tamrah ([Lazada store](https://www.lazada.com.my/shop/tamrah-shop)) | Marketplace-first | No D2C experience |
| [Damas Sweets](https://damassweets.com/premium-dates-box-malaysia-luxury-halal-gifts/) | Competing for "premium dates box Malaysia" SEO | Beatable with better content |
| [Eco Bee Shop](https://www.beeshop.com.my/) | "No. 1 honey supplier in Malaysia" | Local honey only — Yemeni honey is a different, premium niche |
| [Blaadi](https://www.blaadi.com/) | Wide Arabian-mart catalog (international) | Mart feel — position *above* it |

**Positioning statement to design toward:** *"Bateel-grade brand experience, Malaysian prices and trust, Ramadan-native."*

---

## 5. Target audiences

1. **Malaysian Muslim households** (primary) — kurma/honey/Sunnah foods for daily use and Ramadan; shop on mobile, pay by FPX/e-wallet, contact via WhatsApp; respond to halal trust marks and promos.
2. **Gift buyers** — Ramadan/Raya hampers, weddings, umrah returnees' gifts; care about packaging and delivery reliability.
3. **Corporate buyers** — Ramadan corporate gifting (staff/client hampers); need a catalog, bulk pricing, co-branding, invoicing.
4. **Arab expats & connoisseurs in Klang Valley** — know Wadi Do'an honey and Madinah date varieties; seek authenticity; the walk-in branch serves them today.
5. **(Phase 2) B2B/wholesale** — the company's registered import/export capability suggests a trade side worth a simple B2B inquiry channel.

---

## 6. Proposed sitemap

```
Home  (dynamic: seasonal takeover slots, featured collections, story teaser, reviews, Instagram feed)
├── Shop
│   ├── Dates (تمور)            — by variety: Ajwa, Mabroom, Safawi, Sukkari… [verify actual range]
│   ├── Honey (عسل)             — Maraie/Wadi Do'an, Sidr… [verify]
│   ├── Oils (زيوت)             — olive oil, black seed… [verify]
│   ├── Spices (بهارات)
│   ├── Molasses & Syrups (دبس)
│   ├── Nuts & Pantry (منوع)
│   └── Gift Sets & Hampers      ← NEW, first-class category
├── Ramadan / Seasonal           ← NEW, campaign landing (hidden off-season or repurposed)
├── Corporate Gifting            ← NEW (catalog + inquiry form)
├── Our Story                    (provenance: Madinah dates, Wadi Do'an honey, import expertise since 2018)
├── Journal / Guides             ← NEW SEO hub (kurma guides, Sunnah foods, honey grading, recipes)
├── Visit Us                     (branch page: map, hours, photos — replaces bare "Contact")
├── FAQ  +  Policies             (shipping, returns, payment — rewritten, consistent)
├── Contact                      (WhatsApp-first, form, phone, socials)
└── Utility: Cart, Checkout, Account, Order tracking, Privacy/Terms
```

**Page-level must-haves:**
- **Product page:** zoomable multi-angle photos + lifestyle shot, origin block ("Harvested in Madinah"), weight/grade options, reviews, bundle suggestions ("pairs with Maraie honey"), sticky add-to-cart on mobile, WhatsApp "ask about this product" button.
- **Home:** hero with dark-moody campaign photography, scroll-storytelling origin section, best-sellers carousel, seasonal countdown module (Ramadan), trust bar (halal/secure payment/branch pickup), testimonials.

---

## 7. Design direction ("amazing, modern, professional")

### 7.1 Look & feel
- **Palette:** deep date-brown/burgundy + warm cream/sand neutrals + restrained gold accents; emerald green as secondary (nature/halal). Avoid gold-everywhere "souvenir shop" kitsch. Dark-toned luxury food UI is the current premium standard.
- **Typography:** elegant serif for brand voice + clean sans for UI; Arabic calligraphic accents for the brand name and section flourishes. **Guardrail:** never use Quranic verses as decoration.
- **Texture:** subtle Islamic-geometric pattern as dividers/backgrounds — heritage without clutter.
- **Photography (the single biggest upgrade):** dark & moody campaign shots (dates on stone/brass trays, honey-drizzle macros, texture close-ups of Ajwa skin) + brighter natural-light shots for catalog listings. Budget a real product shoot — no design can rescue stock-photo products.

### 7.2 Motion & interactivity spec (the "not static" requirement)
Purposeful motion only — 2026 best practice is "guide and confirm, not decorate":
1. Scroll-triggered storytelling section on Home ("From Madinah to Malaysia") with staged reveals.
2. Subtle parallax on hero imagery; smooth page transitions.
3. Product cards: hover zoom + quick-add micro-animation.
4. Animated add-to-cart with slide-in mini-cart.
5. Ramadan countdown module; live stock indicators (real data only).
6. Skeleton loaders + checkout progress indicator.

All achievable in a WooCommerce or Shopify theme with GSAP/scroll-trigger-class libraries — no headless build required.

### 7.3 Trust layer
- Halal/JAKIM logo **with certificate number** if certified (counterfeit logos are common, verifiability sells) — confirm status with owner [verify].
- Per-product origin & purity statements; import story (the company is a licensed importer since 2018 — say so).
- Reviews everywhere (5+ reviews per product converts ~270% better than none); real customer photos.
- Consistent, honest policies replacing today's contradictions; SSL, RM pricing, physical address, company registration number in footer.

---

## 8. Commerce features (Malaysia-tuned checklist)

### Payments (in priority order)
1. **FPX + DuitNow** — the most-used online payment rails in Malaysia.
2. **E-wallets:** Touch 'n Go (~90% consumer usage), GrabPay, ShopeePay, Boost.
3. Cards (Visa/Mastercard), BNPL optional.
4. COD is marginal now (~3% of transaction value) — offer only if operationally easy.
- **One-integration gateways:** Curlec (Razorpay), HitPay, Billplz, ToyyibPay, iPay88 — all cover FPX + e-wallets. Note: **Shopify Payments is not available in Malaysia**, so a third-party gateway is required either way.

### WhatsApp commerce (high priority)
- WhatsApp is Malaysians' default channel for contacting businesses; WhatsApp commerce converts ~45% better than email.
- Persistent WhatsApp CTA sitewide; WhatsApp Business Catalog synced to the store; order-confirmation/status utility messages; abandoned-cart recovery via WhatsApp API (utility messages ~RM0.12 each).

### Fulfillment
- **EasyParcel** integration (80+ couriers: Pos Laju, J&T, Ninja Van, DHL…) with auto order sync.
- **Lalamove** same-day for Klang Valley — turn the current "no delivery" weakness into an Ajfan-style speed promise.
- Keep **branch pickup** as a free option (it's an existing strength for Arab-expat regulars).

### Seasonal/Ramadan engine
- CMS-driven homepage takeover + dedicated Ramadan/Raya landing page (2027 Ramadan ≈ Feb; prep content by December).
- Hamper/gift-box builder, corporate catalog with inquiry form, pre-order windows for peak SKUs.
- Evergreen "Sunnah foods"/kurma-guide content hub for year-round SEO (this is the battleground Green Diamond and Damas already fight on).

### Marketing/ops integrations
- Google Analytics 4 + Meta Pixel + TikTok Pixel; Google Merchant Center product feed.
- Email/SMS marketing (abandoned cart, Ramadan lists); review-collection app; Instagram feed on Home.
- Optional but recommended: official Shopee/Lazada stores linked from the site (the dual-channel norm in MY).

---

## 9. Language & SEO strategy

- **Launch bilingual: English + Bahasa Malaysia**, fully localized (these are the actual buyer languages). Use Arabic as brand-accent typography, not a full storefront; add a real `ar` locale (RTL: `dir="rtl"`, logical CSS properties, mirrored UI) only in Phase 2 if GCC/export demand appears.
- Correct hreflang implementation (every variant lists all variants including itself; codes `en`, `ms`).
- Fix the indexing disaster: clean product URLs/schema.org Product markup, XML sitemaps, unique meta per product, category descriptions.
- Content SEO targets: "kurma Malaysia", "ajwa dates Malaysia", "madu Yaman / Yemeni honey Malaysia", "premium dates gift box Malaysia", "Ramadan hamper corporate".

---

## 10. Tech stack recommendation

| | Option A — WooCommerce redesign ✅ recommended | Option B — Shopify migration | Option C — Headless (Next.js etc.) |
|---|---|---|---|
| Fit | Keeps SEO/orders/domain; full design freedom | Lowest-maintenance ops | ❌ Overkill |
| Cost | ~RM100–250/mo hosting+plugins; no platform fee | ~RM230–400/mo + gateway surcharge (no Shopify Payments in MY) | US$50k+ builds — wildly disproportionate |
| Burden | Owner/dev handles updates & security | Shopify handles platform | Needs engineers permanently |
| Notes | Fast modern theme (Blocksy/Kadence-class or custom block theme) reaches 90+ PageSpeed; GSAP motion layer; Curlec/Billplz/ToyyibPay; EasyParcel & WPML plugins all native | Migration via LitExtension is routine; Ajfan/Blaadi run Shopify-style stores | "Modern, not static" is fully achievable at theme level |

**Recommendation:** **Option A** — rebuild on WooCommerce with a modern performance theme, custom design system (§7), motion layer, Curlec (or ToyyibPay/Billplz) payments, EasyParcel shipping, WhatsApp API, WPML (EN/BM). Choose **Option B** only if the owner wants zero platform maintenance and accepts the monthly cost + gateway surcharge.

---

## 11. What the owner must provide before design starts

**Brand & legal**
- [ ] Logo files (vector), any existing brand colors/guidelines
- [ ] Halal certification status + certificate numbers [verify]
- [ ] Final, true policies: delivery? returns? guarantee? (resolve the current contradiction)

**Content**
- [ ] Full 23-product list: names (EN/BM/AR), descriptions, origins, weights/variants, prices, stock
- [ ] Product photography or budget approval for a photo shoot (strongly recommended)
- [ ] Company story: founding, import sources, what makes their dates/honey special
- [ ] Branch details: phone, WhatsApp number, email, opening hours, photos of the shop

**Commerce**
- [ ] Preferred payment gateway account (Curlec/Billplz/ToyyibPay — needs SSM docs + bank account)
- [ ] Courier preference / EasyParcel account; decision on same-day Klang Valley delivery
- [ ] Social accounts (create if none: Instagram, TikTok, Facebook, WhatsApp Business)
- [ ] Google Business Profile (appears to be missing entirely — create one; it's free local SEO)

---

## 12. Suggested delivery roadmap

| Phase | Scope | Duration (indicative) |
|---|---|---|
| **0 — Content & assets** | Owner checklist (§11), product shoot, copywriting EN/BM, policy rewrite | 2–3 weeks |
| **1 — Core rebuild** | Design system, Home + Shop + product pages + checkout, payments (FPX/e-wallets), EasyParcel, WhatsApp CTA, motion layer, SEO foundations | 4–6 weeks |
| **2 — Growth layer** | Gift sets & hamper builder, corporate gifting page, Journal/SEO hub, reviews app, email flows, BM locale completion | 3–4 weeks |
| **3 — Ramadan engine** | Seasonal takeover system, campaign landing, pre-orders, corporate catalog — **live before Jan 2027** (Ramadan ≈ Feb 2027) | 2–3 weeks |
| Ongoing | Content publishing, campaign ops, marketplace stores, possible AR locale / B2B portal | — |

---

## 13. Key sources

Company: [CompaniesFacts](https://companiesfacts.com/malaysia/al-buraq-international-1305335-X) · [EMIS](https://www.emis.com/php/company-profile/MY/Al_Buraq_International_Sdn_Bhd_en_16430307.html) · [CTOS](https://businessreport.ctoscredit.com.my/oneoffreport_api/single-report/malaysia-company/1305335X/AL-BURAQ-INTERNATIONAL-SDN-BHD-) · [current site](https://alburaqinternational.com/) / [shop](https://alburaqinternational.com/shop/)
Competitors: [Bateel](https://bateel.com/en/dates) · [The Date Room](https://www.thedateroom.com/) · [Ajfan](https://ajfan.store/) · [All Kurma](https://allkurma.com.my/) · [Green Diamond](https://greendiamond.com.my/kurma/kurma-dates/) · [Yusuf Taiyoob](https://yuta.com/product/dates/) · [Blaadi](https://www.blaadi.com/) · [Eco Bee Shop](https://www.beeshop.com.my/)
Design & trends: [Figma web-design trends](https://www.figma.com/resource-library/web-design-trends/) · [UX Pilot 2026 trends](https://uxpilot.ai/blogs/web-design-trends-2026) · [Art Logic food-site trends](https://theartlogic.com/top-10-food-beverage-website-design-trends-2025/) · [Confetti Arabic design guide](https://confetti.design/blog/arabic-packaging-design-requirements) · [ALX food-photo trends](https://www.alxeats.com/post/food-beverage-photography-trends-2025-2026)
Malaysia commerce: [Antom payments](https://knowledge.antom.com/comparing-payment-methods-in-malaysia) · [Primer](https://www.primer.io/blog/malaysia-payment-methods) · [Ecommpay](https://ecommpay.com/blog/the-most-popular-payment-methods-in-malaysia/) · [Billplz Shopify gateways](https://main.billplz.com/blog/products/shopify-payment-gateway-malaysia-local-payment-methods) · [SleekFlow WhatsApp MY](https://sleekflow.io/blog/whatsapp-commerce-Malaysia) · [EasyParcel](https://easyparcel.com/my/integration-list/woocommerce/) · [Curlec](https://curlec.com/blog/guides/best-payment-gateways-for-shopify-stores-in-malaysia/)
Honey provenance: [Kelwicks Mara'i honey](https://www.kelwicks.com/product-page/yemeni-marai-honey) · [Moj Honey](https://www.mojhoney.com/product/marai-honey/)
