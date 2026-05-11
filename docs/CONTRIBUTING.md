# Contribuindo · GAMER HUT Brandbook

> Brandbook é vivo. Esse doc descreve como propor mudanças.

---

## Regra de ouro

Antes de mexer, leia:
1. `README.md`
2. `docs/BRAND_GUIDELINES.md`
3. `voice-content/tom-de-voz.md`
4. `voice-content/audience-generations.md`

Se a mudança contradiz qualquer um desses, **abre uma discussion antes de PR**.

---

## Tipos de contribuição

### 🟢 Atualizações editoriais (copy, tom, novos hooks)
- Pull request direto na pasta `voice-content/` ou `strategy/`
- Bump no CHANGELOG.md (entrada nova com data)
- Validação contra os filtros de aprovação (`docs/BRAND_GUIDELINES.md`)
- Sem necessidade de bump de versão geral

### 🟡 Atualizações de design (paleta, tipografia, tokens)
- Pull request com **antes/depois visual**
- Atualização nos 3 formatos de token: JSON, Tailwind, CSS
- Bump de patch version (vYYYY.MM.PP+1)
- Aprovação obrigatória do designer-líder

### 🔴 Mudanças de identidade núcleo (essência, manifesto, posicionamento, logo)
- **Issue obrigatória antes de PR** — discussão pública
- Aprovação obrigatória da liderança (CEO + CMO + agência)
- Bump major version (vYYYY.MM+1.00)

---

## Workflow

```bash
# 1. Cria branch
git checkout -b feat/nome-da-mudanca

# 2. Faz a mudança
# ... edita arquivos ...

# 3. Atualiza CHANGELOG
# Adiciona entrada nova no topo

# 4. Roda validações
./scripts/validate-html.sh   # se mexeu em index.html
./scripts/optimize-images.sh # se adicionou assets

# 5. Commit
git add .
git commit -m "feat(audience): adiciona hook de adulto-gamer pra Millennials"

# 6. Push e abre PR
git push -u origin feat/nome-da-mudanca
```

---

## Convenção de commits

Seguindo Conventional Commits:

- `feat:` nova feature/conteúdo
- `fix:` correção
- `docs:` mudança só em documentação
- `style:` mudança visual sem alterar conteúdo
- `refactor:` reorganização sem mudança de conteúdo
- `chore:` infra, build, scripts

Escopo recomendado:
- `(audience)` — relacionado a Stage 24 / audience-generations
- `(voice)` — tom de voz, copy
- `(visual)` — paleta, tipografia, layout
- `(strategy)` — matriz, distribuição, calendário
- `(repo)` — README, CHANGELOG, infra do repo

---

## Code review checklist

Reviewer valida:
- [ ] CHANGELOG.md atualizado
- [ ] Mudança alinha com brandbook v.atual
- [ ] Sem palavras proibidas no copy
- [ ] Assets otimizados (PNG ≤ 200KB ideal, JPG ≤ 300KB ideal)
- [ ] Filtros de aprovação aplicados (se for copy)
- [ ] Diff visual anexado (se for design)

---

## Releases

Tag de release quando bump de patch ou major. Formato: `vYYYY.MM.PP`.

```bash
git tag -a v2026.09 -m "Audience Patch — Gen X/Mill/Gen Z + arquétipo"
git push origin v2026.09
```

GitHub Action `release.yml` cuida do resto (changelog auto, anexos, deploy).

---

## Dúvidas

Abre issue com label `question`. Squad responde em até 24h úteis.

---

🟧 *Squad da Hut — vamos manter o brandbook vivo.*
