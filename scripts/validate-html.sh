#!/usr/bin/env bash
# ==============================================================
# validate-html.sh — Valida o index.html antes de PR
# ==============================================================
# Roda checks básicos: tags balanceadas, assets existem, links
# âncora válidos. Não substitui um W3C validator completo, mas
# pega 90% dos problemas.
#
# Uso: ./scripts/validate-html.sh
# ==============================================================

set -e

# Ir para a raiz do repo
cd "$(dirname "$0")/.."

HTML="index.html"
ERRORS=0

echo "▸ Validando $HTML..."
echo ""

# ============== 1. Arquivo existe? ==============
if [ ! -f "$HTML" ]; then
  echo "✗ Arquivo $HTML não encontrado."
  exit 1
fi

# ============== 2. Tags balanceadas ==============
echo "→ Verificando balanceamento de tags principais..."
for tag in section header footer body html div nav main article; do
  open=$(grep -oE "<${tag}( |>)" "$HTML" | wc -l | tr -d ' ')
  close=$(grep -oE "</${tag}>" "$HTML" | wc -l | tr -d ' ')
  if [ "$open" != "$close" ]; then
    echo "  ✗ <$tag>: open=$open, close=$close"
    ERRORS=$((ERRORS + 1))
  else
    echo "  ✓ <$tag>: $open"
  fi
done
echo ""

# ============== 3. Assets locais existem? ==============
echo "→ Verificando assets locais referenciados..."
MISSING=$(python3 << 'PYEOF'
import re, os, sys
with open('index.html') as f:
    content = f.read()
srcs = set(re.findall(r'src="([^"]+)"', content))
hrefs = set(re.findall(r'href="([^"]+)"', content))
all_local = [s for s in srcs if not s.startswith(('http', 'data:'))]
all_local += [h for h in hrefs if not h.startswith(('http', '#', 'mailto:', 'data:'))]
missing = [f for f in all_local if not os.path.exists(f)]
if missing:
    for m in missing: print(m)
PYEOF
)

if [ -n "$MISSING" ]; then
  echo "  ✗ Assets faltando:"
  echo "$MISSING" | sed 's/^/    - /'
  ERRORS=$((ERRORS + 1))
else
  echo "  ✓ Todos os assets locais existem"
fi
echo ""

# ============== 4. Âncoras válidas? ==============
echo "→ Verificando links âncora..."
ORPHAN=$(python3 << 'PYEOF'
import re
with open('index.html') as f:
    content = f.read()
# IDs declarados
ids = set(re.findall(r'id="([^"]+)"', content))
# Refs href="#xxx"
refs = set(re.findall(r'href="#([^"]+)"', content))
orphan = refs - ids - {''}
for o in sorted(orphan):
    print(o)
PYEOF
)

if [ -n "$ORPHAN" ]; then
  echo "  ⚠ Links âncora apontando pra IDs inexistentes:"
  echo "$ORPHAN" | sed 's/^/    - #/'
  # Não conta como erro fatal, só aviso
else
  echo "  ✓ Todos os links âncora válidos"
fi
echo ""

# ============== 5. Tamanho do HTML ==============
SIZE_KB=$(du -k "$HTML" | cut -f1)
LINES=$(wc -l < "$HTML")
echo "→ Estatísticas:"
echo "  • Linhas: $LINES"
echo "  • Tamanho: ${SIZE_KB}KB"
echo ""

# ============== Veredito ==============
if [ $ERRORS -gt 0 ]; then
  echo "✗ $ERRORS erro(s) encontrado(s). Corrija antes do PR."
  exit 1
else
  echo "✓ Tudo certo. Bora pro PR."
  exit 0
fi
