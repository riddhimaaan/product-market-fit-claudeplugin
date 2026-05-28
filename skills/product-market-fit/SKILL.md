---
name: product-market-fit
version: "1.1.0"
description: "Scores your offer out of 10. Runs a full ICP and offer analysis internally, then gives you a single score. Asks at the end if you want the offer document or the full PMF report. Trigger on: 'product market fit', 'PMF analysis', 'does my product fit the market', 'validate my offer', 'ICP and offer', 'who should I sell to and how', 'score my offer'."
argument-hint: 'cold email course for B2B SaaS founders, CRM software for sales ops teams at Series A startups'
allowed-tools: Read, AskUserQuestion
user-invocable: true
---

# Product-Market Fit Skill

Takes one product and one target audience. Runs three phases internally. Delivers one score.

1. **Phase 1 — ICP Psychographics** — who your buyer is, what they struggle with, what they want, what drives them underneath the surface
2. **Phase 2 — Offer Clarity** — tiered offer stack, objection map, outcome sentence, and positioning
3. **Phase 3 — PMF Scoring** — four-dimension fit check, scored out of 10

No files are written unless the user asks. The default output is the score. Then ask if they want the offer document or the PMF report.

Execute all three phases in order. Do not skip. Do not deliver partial output mid-phase.

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

When Phase 1 is complete, keep the ICP content in context. Do not write any file. Continue immediately to Phase 2.

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

When Phase 2 is complete, keep the Offer content in context. Do not write any file. Continue immediately to Phase 3.

---

## Step 4 — Phase 3: PMF Scoring

Read `Reference/03-pmf-synthesis.md` completely. Run the four-dimension scoring using Phase 1 and Phase 2 outputs. Do not produce the full PMF Report document yet — calculate the score only.

- Count the number of Strong Fit ratings (0–4)
- Multiply by 2.5 to get the score out of 10
- Note the strongest dimension and the most important gap

Do not write any file.

---

## Final Message

After all three phases complete, send this to the user:

> **Offer Score: [X]/10**
>
> [One sentence naming the strongest dimension. One sentence naming the most important gap.]
>
> Want me to show you the offer document or the full PMF report?

---

## Step 5 — On User Response

**If the user asks for the offer document:**
Print the full Phase 2 Offer Clarity Document inline in the response. Do not write any file.

**If the user asks for the PMF report:**
Print the full Phase 3 PMF Report inline in the response. Do not write any file.

---

## Output Style Rules

Apply to every word in all output. No exceptions.

**Simple language — always:**
Write like you are explaining to a smart 12-year-old. Use short sentences. Use everyday words. If a shorter or simpler word exists, use it. 'Use' not 'utilize'. 'Show' not 'demonstrate'. 'Help' not 'facilitate'. 'Find' not 'identify'. Every sentence should be easy to read aloud in one breath.

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
