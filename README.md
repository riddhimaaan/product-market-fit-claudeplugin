# Product Market Fit Plugin

Full product-market fit analysis in one command. Takes your product and target audience, runs a complete ICP psychographics analysis, builds a structured offer document, then synthesizes a PMF report mapping where your offer fits — and where it breaks.

**Three documents. One command. No API keys required.**

---

## Installation

### Claude Code (recommended)

```
claude plugin marketplace add riddhimaaan/product-market-fit-claudeplugin
claude plugin install product-market-fit@product-market-fit
```

### Manual install — clone and run the install script

```bash
# Clone the repo
git clone https://github.com/riddhimaaan/product-market-fit-claudeplugin.git
cd product-market-fit-claudeplugin

# macOS / Linux
bash install.sh

# Windows (PowerShell)
.\install.ps1
```

### Manual install — copy directly

```bash
# macOS / Linux
git clone https://github.com/riddhimaaan/product-market-fit-claudeplugin.git
cp -r product-market-fit/skills/product-market-fit/. ~/.claude/skills/product-market-fit
```

```powershell
# Windows (PowerShell)
git clone https://github.com/riddhimaaan/product-market-fit-claudeplugin.git
Copy-Item -Recurse "product-market-fit\skills\product-market-fit\*" "$env:USERPROFILE\.claude\skills\product-market-fit"
```

After installing, restart Claude Code or run `/reload-plugins`.

---

## Usage

```
/product-market-fit
```

Claude asks up to 3 questions — product, audience, and proof points — then runs the full analysis automatically. Any information you include in the invocation skips the corresponding question:

```
/product-market-fit My product is a cold email course for B2B SaaS founders. No customers yet.
```

---

## What It Produces

| File | Contents |
|------|----------|
| `ICP-[Role]-[Industry].md` | Job titles, daily reality, problems (in buyer's own words), desired outcomes, identity shift |
| `Offer-[ProductName].md` | Tiered offer stack, objection map, outcome sentence, positioning, 5-sentence offer summary |
| `PMF-Report-[ProductName].md` | 4-dimension fit scoring, gap analysis, prioritized recommendations, PMF verdict |

Files are saved to your **current working directory**.

---

## How It Works

Three phases run in sequence:

```
skills/product-market-fit/
├── SKILL.md                              Orchestrator — intake + phase sequencing
└── Reference/
    ├── 01-icp-engine.md                  Phase 1: ICP psychographics
    ├── 02-offer-execution-engine.md      Phase 2: Offer clarity build
    └── 03-pmf-synthesis.md              Phase 3: PMF fit mapping
```

Phase 1 output feeds directly into Phase 2 — no repeated questions. The ICP's problems, desires, and fears are mapped into the offer input automatically.

Phase 3 scores fit across four dimensions:

| Dimension | ICP Source | Offer Source |
|-----------|------------|--------------|
| Problem-Solution Fit | Section 2: Problems & Frustrations | Stage 1: Cost of Inaction |
| Desire-Outcome Fit | Section 3: What They Want | Stage 5: Outcome Sentence |
| Identity-Positioning Fit | Section 4: Who They Want to Be | Positioning section |
| Fear-Objection Fit | Section 4: What They're Scared Of | Stage 4: Objection Map |

---

## Requirements

- Claude Code
- No API keys
- No external dependencies

---

## License

MIT — see [LICENSE](LICENSE)

---

## Uninstall

```bash
# macOS / Linux
rm -rf ~/.claude/skills/product-market-fit
```

```powershell
# Windows
Remove-Item -Recurse -Force "$env:USERPROFILE\.claude\skills\product-market-fit"
```
