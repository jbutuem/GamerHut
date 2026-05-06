# GAMER HUT — Brandbook

> Mídia Física Never Dies · Let the games begin

Brandbook digital oficial da GAMER HUT. Single-page HTML, sem build step.
Identidade, tom de voz, paleta, tipografia, aplicações e parceiros.

**Versão atual:** `v2026.02`
**Cliente:** Gamer Hut · `gamerhut.com.br` · `@gamerhut.store`
**Agência:** TGT Strategy MKT

---

## Como rodar

Não precisa de servidor nem build. Basta abrir `index.html` no navegador.

```bash
# Opcional — servir local pra testar fonts/CDN com CORS limpo
python3 -m http.server 8765
# ou
npx serve .
```

Acesse `http://localhost:8765`.

## Estrutura

```
gamerhut-brandbook/
├── index.html                 # 17 stages + easter egg
├── assets/
│   ├── logos/                 # 6 variações oficiais GH (SVG + PNG)
│   ├── games/                 # 12 jogos × 3 tamanhos
│   └── tgt/                   # logos TGT (easter egg)
├── docs/                      # documentação extra
└── README.md
```

## Paleta oficial

| Cor               | HEX       | Pantone   | Uso                          |
|-------------------|-----------|-----------|------------------------------|
| Orange Sunset     | `#F26641` | 7416 C    | **Primária** · 30%           |
| Black Mustache    | `#000000` | —         | **Base** · 60%               |
| Mario Red         | `#E1251B` | 485 C     | Apoio · campanhas            |
| Fast Skin         | `#FFC27A` | 149 C     | Apoio · tip da hut           |
| Sonic Blue        | `#194F90` | 7686 C    | Apoio · review               |
| Cool Gray         | `#B1B1B1` | —         | UI · texto auxiliar          |

Regra **60-30-10**: 60% black · 30% laranja · 10% apoio.

## Tipografia

- **Russo One** — display (Google Fonts)
- **Red Hat Display** — corpo, 6 pesos (Google Fonts)
- **Press Start 2P** — acentos retrô 8-bit (Google Fonts)
- **JetBrains Mono** — specs e código (Google Fonts)

## Easter egg

O brandbook tem uma sala secreta. Três jeitos de acionar:

1. Digitar `T·G·T` no teclado
2. Clicar 3× no badge laranja "▸ ESTE BRANDBOOK É VIVO" no rodapé
3. Konami code: `↑↑↓↓←→←→BA`

## Versionamento

Usamos **CalVer** (`vYYYY.NN`):

```
v2026.01  · primeira release (16 stages)
v2026.02  · pilares de conteúdo + easter egg TGT (atual)
```

Veja o [CHANGELOG.md](./CHANGELOG.md) pra histórico completo.

## Workflow Git

```
main                  ← versão estável
feat/nome-feature     ← nova feature (PR pra main)
fix/nome-bug          ← correção pontual (PR pra main)
```

Commits seguem [Conventional Commits](https://www.conventionalcommits.org):

```
feat:  nova feature
fix:   correção
docs:  documentação
style: estilo/visual sem mudança de comportamento
chore: manutenção (deps, configs, etc)
```

## Próximos refinamentos planejados

- [ ] Versão EN (English)
- [ ] Modo claro alternativo
- [ ] Export print-ready (PDF)
- [ ] Páginas extras: packaging, papelaria, papel timbrado
- [ ] Story arcs animados (vídeo)
- [ ] Variações de feed por categoria (Switch only, PS5 only)

## Licença

Uso interno — Gamer Hut + TGT. Não distribuir externamente sem autorização.
Logos de publishers (Nintendo, Sony, Microsoft, Capcom, Rockstar, Konami,
Sega, Bandai Namco, Ubisoft) são propriedade de seus respectivos donos.

---

**Powered by TGT** — A Agência Além do Marketing.
