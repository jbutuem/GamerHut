# Contribuindo · GAMER HUT Brandbook

> Guia rápido pra quem vai mexer no brandbook.

---

## Workflow

Usamos **GitHub Flow**: branches curtas saindo da `main`, sempre voltando pra `main` via PR.

```
main (protegida, sempre estável)
  ├── feat/stage-18-packaging
  ├── fix/mobile-feed-overflow
  └── content/feb-2026-drops
```

### Passo a passo

```bash
# 1. Atualizar a main
git checkout main && git pull

# 2. Criar branch nova
git checkout -b feat/nome-curto-da-feature

# 3. Trabalhar, commitar pequeno e frequente
git add .
git commit -m "feat(stage18): adiciona mockups de packaging"

# 4. Push e abrir PR
git push -u origin feat/nome-curto-da-feature
# → Abrir PR no GitHub usando o template
```

Após review e aprovação, merge na `main` via squash (mantém log limpo).

---

## Conventional Commits

Formato: `tipo(escopo): descrição em português`

### Tipos

| Tipo | Uso |
|------|-----|
| `feat` | Nova funcionalidade ou seção |
| `fix` | Correção de bug |
| `content` | Atualização de copy ou imagens (sem mudança estrutural) |
| `style` | Ajustes visuais (CSS, espaçamento) sem mudança de comportamento |
| `refactor` | Reescrita sem mudança de comportamento visível |
| `docs` | Documentação |
| `chore` | Manutenção (deps, configs, scripts) |
| `perf` | Melhoria de performance |

### Escopos comuns

`stage01`...`stage17` · `logo` · `paleta` · `tipo` · `feed` · `posts` · `mobile` · `easter-egg` · `assets`

### Exemplos

```
feat(stage18): adiciona stage de packaging com 4 mockups
fix(mobile): corrige overflow do grid modular em viewports < 520px
content(feed): troca key art do MGS Δ pela versão definitiva
style(paleta): ajusta opacidade do mario red de .85 pra .9
docs(readme): adiciona instruções de deploy no Netlify
chore(deps): atualiza link do Google Fonts pra incluir Nunito
```

---

## Branches

| Prefixo | Uso |
|---------|-----|
| `feat/` | Nova funcionalidade |
| `fix/` | Correção |
| `content/` | Atualização de conteúdo (textos, imagens) |
| `style/` | Ajustes visuais |
| `refactor/` | Reescrita técnica |
| `release/` | Preparação de release maior (opcional) |

**Regra:** branch é curta. Vive o tempo que precisar (1 dia, 1 semana) e morre depois do merge.

---

## Releases

Versionamento `vYYYY.MM` (release mensal).

```bash
# Após acumular features mergeadas na main
git checkout main && git pull
git tag -a v2026.03 -m "Stage 18 packaging + light mode toggle"
git push origin v2026.03
```

Cada tag vira automaticamente uma **GitHub Release** com o ZIP empacotado anexado (via workflow).

---

## Antes de abrir PR — checklist

- [ ] Rodar `scripts/validate-html.sh` (sem erros)
- [ ] Testar em **desktop** (1440×900) e **mobile** (390×844)
- [ ] Se mexeu em imagens: rodar `scripts/optimize-images.sh`
- [ ] Atualizar `docs/CHANGELOG.md` com a mudança
- [ ] Atualizar screenshots em `docs/screenshots/` se mexeu na aparência
- [ ] Commit no padrão Conventional Commits
- [ ] PR com título descritivo + descrição preenchida (template)

---

## Code style

- HTML: indentação 2 espaços
- CSS: tokens em `:root` (variáveis), nunca cores hardcoded fora dali
- IDs em `kebab-case` minúsculo
- Classes seguem padrão BEM-leve (`.cp`, `.cp-side`, `.cp-body`)
- Comentários separadores em CSS: `/* =================== STAGE NN: NOME =================== */`

---

## Dúvidas

- Sobre estratégia/copy: TGT
- Sobre operação/produtos: GAMER HUT
- Sobre o repo/deploy: dev@tgt.ag
