# 🟧 GAMER HUT · Brandbook Repo

> **Versão:** v.2026.09 — *Audience Patch*
> **Stages:** 25 · **Atualizado:** 2026-05-08
> **Senha de unlock do brandbook visual:** `gh_brandbook_unlocked_v2026.09`

---

## O que é

Repositório oficial do brandbook da **GAMER HUT** — varejista BR de mídia física de games. Single source of truth pra design system, tom de voz, audiência por geração, arquétipo de marca e templates de copy.

Inclui:

- **`index.html`** — brandbook visual interativo (25 stages, dark mode, HUD, audio engine chiptune, scroll-spy, Konami code easter egg)
- **`docs/brandbook-v2026.07.pdf`** — versão PDF de referência
- **`docs/audience-research.md`** — diagnóstico cruzado IGN/Kantar/Berkeley + PGB 2026
- **`voice-content/`** — 5 docs de copy/tom (tom-de-voz, audience-generations, archetype, benchmarks, do-and-dont, glossary, copy-templates, content-pillars)
- **`strategy/`** — matriz de audiência × canal e templates de post por geração
- **`tokens/`** — design tokens em JSON (W3C), Tailwind preset e CSS variables
- **`assets/`** — logos, paleta, capas de jogos
- **`components/`** — biblioteca HTML rodando

---

## Quickstart

### Para abrir o brandbook visual
```bash
git clone <repo-url>
cd gamerhut-brandbook
open index.html   # ou: python3 -m http.server 8000
```
Senha de unlock: `gh_brandbook_unlocked_v2026.09`

### Para usar como design system no Claude Design
1. Acesse [claude.ai/design](https://claude.ai/design)
2. Faça upload na ordem:
   1. `voice-content/tom-de-voz.md` (5 pilares)
   2. `voice-content/audience-generations.md` (3 perfis com hooks)
   3. `voice-content/archetype.md`
   4. `voice-content/benchmarks.md`
   5. `tokens/design-tokens.json`
   6. `assets/`
   7. `docs/brandbook-v2026.07.pdf` (referência visual)
3. Use prompts como:
   > *"Crie uma landing pra drop do Pokémon Z-A focada na audiência Millennials. Use os hooks de nostalgia ativada do `audience-generations.md`."*

---

## Histórico de versões

| Versão | Data | Patch |
|--------|------|-------|
| **v.2026.09** | 2026-05-08 | **Audience Patch** — Gen X/Millennials/Gen Z + arquétipo |
| v.2026.08 | 2026-05-08 | Voice Refinement — 5 pilares de tom + benchmarks |
| v.2026.07 | 2026-05-08 | Account/Team Revisions |
| v.2026.06 | 2026-05-07 | Polish Release |
| v.2026.05 | 2026-05-06 | Identity Expansion |

Detalhes em `docs/CHANGELOG.md`.

---

## Estrutura

```
gamerhut-brandbook/
├── README.md
├── LICENSE
├── index.html                            ← brandbook visual (25 stages)
├── netlify.toml
├── .gitignore
├── .editorconfig
├── PROMPT-PRESENTATION-UPDATE.md         ← prompt pronto pra atualizar deck social
├── docs/
│   ├── CHANGELOG.md
│   ├── BRAND_GUIDELINES.md
│   ├── CONTRIBUTING.md
│   ├── audience-research.md              ← diagnóstico IGN + PGB 2026
│   └── brandbook-v2026.07.pdf            ← PDF de referência
├── voice-content/
│   ├── tom-de-voz.md                     ← 5 pilares
│   ├── content-pillars.md                ← Drop · Review · Tip · Lore · Resumo
│   ├── copy-templates.md                 ← 13 blocos prontos pra usar
│   ├── glossary.md                       ← vocabulário Hut
│   ├── do-and-dont.md                    ← guia rápido
│   ├── audience-generations.md           ← 3 perfis + hooks
│   ├── archetype.md                      ← Sábio + Cara Comum
│   └── benchmarks.md                     ← Razer · Nuuvem · HyperX · Nintendo BR · Disney+ BR
├── strategy/
│   ├── audience-matrix.md                ← canais × gerações
│   └── post-templates-by-generation.md   ← 15 hooks + 3 templates completos
├── tokens/
│   ├── design-tokens.json                ← W3C format
│   ├── colors.css                        ← CSS variables
│   └── tailwind_config.js                ← Tailwind preset
├── assets/
│   ├── logos/                            ← 8 PNGs
│   ├── colors/                           ← 6 swatches
│   ├── games/                            ← 33 capas (sq · thumb · large)
│   └── tgt/                              ← agência criativa
├── typography/
│   ├── typography-spec.md
│   └── fonts.md
├── patterns/
│   └── patterns-spec.md
├── components/
│   ├── components.html                   ← biblioteca rodando
│   └── componentspreview.png
└── examples/
    └── (landing pages de exemplo)
```

---

## Filosofia

A Gamer Hut **não vende disco** — vende **um pedaço de cultura que não some quando o servidor cair**. Mídia física virou nicho rentável de luxo (3% da receita PlayStation, mas em queda controlada e com colecionismo em alta no BR). Esse repo materializa isso em design e copy.

**Essência:** *Mídia física never dies.*
**Tagline:** *Let the games begin.*
**Squad:** Nintendo · Sony PlayStation · Microsoft · Capcom · Rockstar · Konami · SEGA · Bandai Namco · Ubisoft.

---

## Licença
- ✅ Cores, tokens, tipografia, layouts: uso livre por equipes Gamer Hut
- ✅ Fontes: open-source (SIL Open Font License 1.1)
- ⚠️ Logos e marca registrada: uso restrito a Gamer Hut e parceiros autorizados
- ⚠️ Logos de publishers no co-branding: depende de acordo com cada publisher

---

🟧 **MÍDIA FÍSICA NEVER DIES** · *Let the games begin.*
Brandbook desenvolvido pela **TGT Strategy MKT** — *A Agência Além do Marketing*
