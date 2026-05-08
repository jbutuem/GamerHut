# Changelog · Gamer Hut Brandbook

Todos os patches do brandbook em ordem reversa. Brandbook é vivo — esse arquivo registra cada sprint editorial.

---

## v.2026.09 · 2026-05-08 — Audience Patch

### Adicionado
- **Stage 24** — Audiência por Geração (Gen X · Millennials · Gen Z)
- **Stage 25** — Arquétipo de Marca (Sábio + Cara Comum)
- `voice-content/audience-generations.md` — 3 perfis com hooks
- `voice-content/archetype.md` — Sábio + Cara Comum, defesa dos descartados
- `voice-content/benchmarks.md` — Razer, Nuuvem, HyperX, Nintendo BR, Disney+ BR
- `strategy/audience-matrix.md` — distribuição de canal × geração
- `strategy/post-templates-by-generation.md` — 15 hooks + 3 templates completos
- `docs/audience-research.md` — diagnóstico cruzado IGN/Kantar/Berkeley + PGB 2026
- `PROMPT-PRESENTATION-UPDATE.md` — prompt pronto pra atualizar deck social

### Alterado
- **Stage 03** (Tom de Voz) reescrito com **5 pilares** (era 3)
- **Stage 03B** (NOVO) — O Que a Marca Transparece (5 sentimentos)
- **Stage 04B** (NOVO) — Squad de Benchmarks externos
- **Stage 21** — Tips de Copy expandido com 9 blocos novos
- **Stage 22** — versão bumpada para v.2026.09
- `README.md` — versão atualizada, novos prompts recomendados
- `voice-content/copy-templates.md` — +9 blocos (procedência, comunidade, escassez real, story 4 slides, e-mail erro, atendimento console, atendimento usado, co-branding, recap)

### Senha de unlock
- `gh_brandbook_unlocked_v2026.09`

---

## v.2026.08 · 2026-05-08 — Voice Refinement Patch

### Adicionado
- Stage 03B — O Que a Marca Transparece
- Stage 04B — Squad de Benchmarks externos

### Alterado
- Stage 03 — Tom de Voz expandido para 5 pilares
- Stage 21 — Tips de Copy expandido

### Senha de unlock
- `gh_brandbook_unlocked_v2026.08`

---

## v.2026.07 · 2026-05-08 — Account/Team Revisions

### Alterado
- Copy refresh em 21 stages (manifesto, essência, voz, paleta, publishers, voice, conteúdo, feed, posts, world, cheat sheet)
- Paleta reorganizada (Black Mustache primário 60%, Orange Sunset 30%)
- Todas as tags SQUAD removidas
- "Hut" sozinho → "Gamer Hut" globalmente
- "tua/teu" → "sua/seu"
- NF removido de copy de marketing (mantido em selos institucionais)
- Red Dead Story sobreposição corrigida

### Senha de unlock
- `gh_brandbook_unlocked_v2026.07`

---

## v.2026.06 · 2026-05-07 — Polish Release

### Alterado
- Stage 19 com logos SVG reais nas 6 peças físicas (cartão/camiseta/sacola/banner/etiqueta/crachá)
- Mobile iPhone fix (body sem overflow horizontal, .badge global renomeado pra .lanyard-badge)
- Áudio validado funcionando
- Feed 3x3 mobile compacto

### Senha de unlock
- `gh_brandbook_unlocked_v2026.06`

---

## v.2026.05 · 2026-05-06 — Identity Expansion

### Adicionado
- 5 stages NOVOS de identidade visual:
  - Stage 07 — Grid & Layout
  - Stage 10 — Iconografia (18 ícones SVG)
  - Stage 12 — Patterns (6 texturas)
  - Stage 14 — Co-branding (9 publishers)
  - Stage 19 — Aplicações Físicas (cartão, camiseta, sacola, banner, etiqueta, crachá)
- BGM loop chiptune com toggle ♫ BGM
- 22 stages totais (era 17)

---

## v.2026.04 · — Audio Update

### Adicionado
- Sons 8-bit chiptune sintetizados em tempo real com Web Audio API (sem arquivos)
- Sons: coin (links âncora), start fanfare (unlock senha), buzz error, portal sweep, konami fanfare, stage bleep, hover blips
- Toggle ♪ ON/OFF na HUD com persistência em localStorage

---

## v.2026.03 · — Lock Screen + TGT Easter Egg

### Adicionado
- Lock screen com senha (deterrent client-side)
- TGT bombástico no easter egg (frame maior, halo radial vermelho, glow neon pulsante, tagline "A AGÊNCIA ALÉM DO MARKETING")
- Logo HUD agora inline base64 (resolve broken image em file:// e ambientes restritivos)

---

## v.2026.02 · — TGT Integration

### Adicionado
- Logo TGT (vermelho carmim, símbolo touro estilizado entre 2 T's) usado como easter egg discreto
- Assets: assets/tgt/tgt-dark.png, tgt-light.png, tgt-symbol.png, tgt.svg

---

## Convenções de versão

`vYYYY.MM.PP` onde:
- **YYYY.MM** = ano e mês do release
- **PP** = patch sequencial dentro do mês

Quebras de major (raras) ressetam pra `v.YYYY.MM.00`.

Cada patch precisa entrar nesse arquivo + bump da senha de unlock + bump do header/footer no `index.html`.
