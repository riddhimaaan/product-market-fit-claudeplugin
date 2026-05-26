---
name: product-market-fit
version: "1.0.0"
description: "Full product-market fit analysis. Takes your product and target audience, runs a complete ICP psychographics analysis, builds a structured offer document, then synthesizes a PMF report mapping fit across four dimensions. Outputs three markdown files: ICP doc, Offer doc, and PMF Report. Trigger on: 'product market fit', 'PMF analysis', 'does my product fit the market', 'validate my offer', 'ICP and offer', 'who should I sell to and how'."
argument-hint: 'cold email course for B2B SaaS founders, CRM software for sales ops teams at Series A startups'
allowed-tools: Read, Write, AskUserQuestion
user-invocable: true
---

# Product-Market Fit Skill

Takes one product and one target audience. Produces three documents.

1. **ICP Psychographics Document** — who your buyer is, what they struggle with, what they want, what drives them underneath the surface
2. **Offer Clarity Document** — tiered offer stack, objection map, outcome sentence, and positioning
3. **PMF Report** — four-dimension fit mapping, gap analysis, prioritized fixes, and a plain-English PMF verdict

Execute all three phases in order. Do not skip. Do not deliver partial output.

---

## Step 1 — Intake

Check what the user has already provided.

**If the user has provided all three of the following, skip to Step 2:**
- What the product or service is (one sentence: what it does and who it's for)
- Who the target audience is (job title, industry, company size or stage)
- Whether they have existing customers or proof points

**If any are missing, ask only what is not yet known — never more than three questions at once:**

1. "What is your product or service? One sentence — what it does and who it's for."
2. "Who is your target audience? Job title, industry, and company size or stage."
3. "Do you have any existing customers or results you can point to — even one rough example?"

Wait for the user's answers. Do not proceed without at minimum questions 1 and 2 answered. If the user says they have no customers yet, accept that and proceed — it becomes a `[NEEDS: proof point]` flag in the offer document.

---

## Step 2 — Phase 1: ICP Generation

Read `Reference/01-icp-engine.md` completely. Execute every section in order using the intake answers as input. Do not ask for information the intake already provided.

When Phase 1 is complete:
- Use the Write tool to save the output as `ICP-[JobTitle]-[Industry].md` in the current working directory
- Use the exact job title and industry from the intake for the filename (no spaces — use hyphens)
- Tell the user: "Phase 1 complete. ICP document saved as `ICP-[filename].md`."

---

## Step 3 — Phase 2: Offer Clarity

**Do not run the Problem-Outcome Excavator or Interview Engine.** The ICP phase already extracted everything those phases collect. Map the ICP output to the four-section Offer Clarity input using this translation:

| Offer Clarity Input Section | Source in Phase 1 Output |
|-----------------------------|--------------------------|
| Psychographic Details — core problem | ICP Section 2: top-ranked problem |
| Psychographic Details — costs | ICP Section 2: "What happens if it doesn't get fixed" for each problem |
| Psychographic Details — failed solutions | ICP Section 4: "What they have already tried" |
| Psychographic Details — fears | ICP Section 4: "What they are scared of" |
| Psychographic Details — desires | ICP Section 3: "The specific results they are chasing" |
| Demographic Details | Intake: job title, industry, company size/stage |
| Business Details | Intake: product description, existing proof points (or "none yet") |
| Product & Offer Details | Intake: product description — derive deliverables, timeline estimate, pricing if given |

Construct this four-section document internally from the mapping above. Then read `Reference/02-offer-execution-engine.md` completely and execute every stage in order.

**Skip the POST-DELIVERY Mentor Conversation section** at the end of the execution engine. The skill proceeds to Phase 3 instead.

When Phase 2 is complete:
- Derive a short product name from the intake (2–4 words, hyphenated, no spaces)
- Use the Write tool to save the output as `Offer-[ProductName].md` in the current working directory
- Tell the user: "Phase 2 complete. Offer document saved as `Offer-[filename].md`."

---

## Step 4 — Phase 3: PMF Synthesis

Read `Reference/03-pmf-synthesis.md` completely. Execute it using the full Phase 1 and Phase 2 outputs as inputs.

When Phase 3 is complete:
- Use the Write tool to save the output as `PMF-Report-[ProductName].md` in the current working directory
- Use the same product name slug from Phase 2
- Tell the user: "Phase 3 complete. PMF Report saved as `PMF-Report-[filename].md`."

---

## Final Message

After all three files are saved, send this summary:

> "All three documents are ready.
>
> - `ICP-[filename].md` — who your buyer is and what drives them
> - `Offer-[filename].md` — your tiered offer stack and positioning
> - `PMF-Report-[filename].md` — where your offer fits the market and what to fix first
>
> Your PMF Score is [X]/4. [One sentence on the strongest dimension and the most important gap.]"

---

## Output Style Rules

Apply to every word in all three documents. No exceptions.

**Viking English — the core rule**
Every sentence states the actual thing. Not a category. Not a description of a feeling. The actual fact.

Before writing any sentence, ask: "What is the real thing I am trying to say?" Write that. Cut everything else.

The test: read the sentence back. If it could describe any business in any industry without changing a word, rewrite it.

**Forbidden words — never use:**
leverage, synergy, solutions, optimize, align, empower, streamline, facilitate, holistic, comprehensive, end-to-end, elevate, transform, unlock, impact (without a number), visibility (without specifying who sees what), growth (without a number), brand awareness, brand presence, brand building

**Specificity rule:**
Every claim must trace to the inputs. No generic filler. No inferred facts presented as confirmed.

**Formatting:**
- No paragraph longer than 3 lines
- Bullets for all lists
- Bold for critical facts only — sparingly
- Headers for every section
- Tables for comparisons and mappings
