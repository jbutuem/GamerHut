# Changelog

Todas as mudanças relevantes deste brandbook são documentadas neste arquivo.

Formato baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.1.0/), versionamento segue o padrão `vYYYY.MM` (release mensal).

---

## [v2026.03] — 2026-05-06 (patch)

### ✨ Novo
- **Lock screen com senha** — Tela de acesso restrito antes do brandbook. Senha definida no JS (constante `PASSWORD` em `index.html`). Estilo arcade com input "ENTER PASSWORD", botão "PRESS START", watermark "GAMER HUT" gigante no fundo, mensagem de erro "ACCESS DENIED · TRY AGAIN" e persistência por sessão (`sessionStorage`). ⚠️ **Não é segurança real** (verificação client-side, qualquer um pode ver no source) — é deterrent contra acesso casual quando o link é compartilhado por engano.
- **Logo TGT bombástico** no easter egg — Frame agora 50% maior, com halo radial vermelho atrás, glow neon pulsante ao redor do logo, tagline destacada "A AGÊNCIA **ALÉM** DO MARKETING" com fade-in suave, cantos com marca em vermelho mais forte e box-shadow externa criando halo neon vermelho.

### 🐛 Corrigido
- **Logo do HUD top-left agora carrega sempre** — Estava aparecendo como ícone broken image em alguns ambientes (file://, navegadores com policy restritiva, primeiro carregamento). Agora é embebido como base64 inline no próprio HTML, garantindo carregamento mesmo offline ou em situações adversas.

### 📊 Stats
- **4390 linhas** (era 4019) · **244 KB** (era 136 KB — aumento devido ao base64 do logo)

---

## [v2026.02] — 2026-05-06

### ✨ Novo
- **Stage 12 · Pilares de Conteúdo** — 5 categorias editoriais (Drop & Lançamento, Review do Squad, Tip da Hut, Resumo da Semana, Lore & Curiosidade), cada uma com formato sugerido, ritmo, CTA e tags de cor. Inclui gráfico de distribuição percentual (35/20/20/15/10) e tabela de cadência semanal.
- **Sistema Modular · 6 Peças** dentro do Stage 13 (Feed) — apresenta os 6 tipos de tile que se combinam pra formar qualquer post: Key Art, Brand Orange, Logo Dark, Press Arcade, Quote Manifesto e Tip Content.
- **Easter Egg TGT** — tela de Staff Roll estilo créditos finais de jogo arcade, com scanlines CRT, fade-in e scroll automático de ~42s. Acionável por Konami code, digitando `T·G·T` no teclado, ou clicando 3× no badge laranja "▸ ESTE BRANDBOOK É VIVO" no rodapé.
- **Assets TGT** em `assets/tgt/` — logo da agência (versões dark, light, symbol e SVG).

### 🛠 Melhorado
- Brandbook agora tem **17 stages** (era 16). Stages 13-17 foram renumerados.
- Versão atualizada na HUD e no footer (v.2026.02).
- Hint discreto no rodapé apontando os triggers do easter egg.

### 🐛 Corrigido
- Grid Modular em viewports < 520px (mobile pequeno) agora usa 2 colunas em vez de 3, com fontes ajustadas e labels recolocadas — sem mais overlap de texto.
- Staff Roll em mobile: tag "SECRET STAGE" e botão "CONTINUE [ESC]" não se sobrepõem mais. Texto de créditos não vaza horizontalmente.

### 📊 Stats
- **4019 linhas** (era 3083) · **136 KB** (era 110 KB)
- **59 arquivos** no ZIP (era 54)
- 21 assets locais referenciados no HTML

---

## [v2026.01] — 2026-01-06

### ✨ Novo (versão inicial)
- 16 stages cobrindo: Manifesto, Essência, Tom de Voz, Pilares, Logo System (6 variações oficiais), Usos do Logo, Paleta (Regra 60-30-10), Tipografia (4 famílias), Grafismos, Squad (9 publishers), Voz em Ação, Feed Instagram, Posts, E-commerce, Cheat Sheet, Game Over.
- HUD nav fixa com lifebar pulsante e scroll-spy.
- Hero "MÍDIA FÍSICA NEVER DIES" com controle silhueta no fundo.
- Mockup completo do feed `@gamerhut.store` (grid 3×3).
- 6 modelos de posts (drop, pré-venda, story, multi-plataforma, clássico, exclusivo).
- E-commerce mock com 8 produtos.
- Cheat sheet de copy pronto para usar.
- Konami code easter egg.
- Logo system com 6 variações oficiais (vertical preto/laranja/branco, horizontal preto/branco, badge circular preto/laranja, outline orange).
- 12 jogos com key art em 3 tamanhos cada (large 1600w, sq 1080×1080, thumb 600×600).
- Mobile responsivo (testado em 390×844 e 375×667).

---

## Tipos de mudança usados

- **✨ Novo** — funcionalidade ou conteúdo adicionado
- **🛠 Melhorado** — refinamento de algo que já existia
- **🐛 Corrigido** — bug fix
- **🗑 Removido** — algo que saiu
- **🔒 Segurança** — issues de segurança
- **📊 Stats** — métricas e tamanhos
