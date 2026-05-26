# product-market-fit Plugin

Claude Code plugin for running a full product-market fit analysis from a product description and target audience.

## Structure

```
.claude-plugin/
  plugin.json                             Plugin manifest
  marketplace.json                        Marketplace registry
skills/
  product-market-fit/
    SKILL.md                              Orchestrator — intake, phase sequencing, output
    Reference/
      01-icp-engine.md                    Phase 1: ICP psychographics generation
      02-offer-execution-engine.md        Phase 2: Offer clarity build (5 stages + assembly)
      03-pmf-synthesis.md                 Phase 3: PMF fit mapping, scoring, gap analysis
install.sh                               Bash install script (macOS/Linux)
install.ps1                              PowerShell install script (Windows)
```

## Installation

```
claude plugin marketplace add acquisitionx/product-market-fit
claude plugin install product-market-fit@product-market-fit
```

Or manually:
```bash
bash install.sh        # macOS/Linux
.\install.ps1          # Windows
```

## Rules

- Phase order is fixed: 01 → 02 → 03. Never skip or reorder.
- Phase 1 output maps directly to Phase 2 input — do not re-ask questions Phase 1 already answered.
- The POST-DELIVERY Mentor Conversation in `02-offer-execution-engine.md` is skipped — Phase 3 follows instead.
- All output files are saved to the user's current working directory.
- Viking English applies to all three output documents.
