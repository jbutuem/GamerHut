#!/usr/bin/env bash
# ==============================================================
# optimize-images.sh — Otimiza imagens em assets/
# ==============================================================
# Reduz peso dos JPGs/PNGs sem perder qualidade visível.
# Útil rodar antes de commitar imagens novas.
#
# Requisitos: jpegoptim, optipng (instalar via apt/brew)
#   sudo apt install jpegoptim optipng
#   brew install jpegoptim optipng
#
# Uso: ./scripts/optimize-images.sh
# ==============================================================

set -e

cd "$(dirname "$0")/.."

# Verificar deps
command -v jpegoptim >/dev/null 2>&1 || {
  echo "✗ jpegoptim não instalado. Rode: sudo apt install jpegoptim"
  exit 1
}
command -v optipng >/dev/null 2>&1 || {
  echo "✗ optipng não instalado. Rode: sudo apt install optipng"
  exit 1
}

echo "▸ Otimizando imagens em assets/..."
echo ""

# JPGs (qualidade 82% — visualmente idêntico, ~30% menor)
echo "→ JPGs..."
find assets -type f \( -iname "*.jpg" -o -iname "*.jpeg" \) -print0 | \
  xargs -0 jpegoptim --max=82 --strip-all --preserve --quiet
echo "  ✓ JPGs otimizados"
echo ""

# PNGs (compressão lossless máxima)
echo "→ PNGs..."
find assets -type f -iname "*.png" -print0 | \
  xargs -0 optipng -quiet -o3 -preserve
echo "  ✓ PNGs otimizados"
echo ""

# Stats finais
TOTAL=$(du -sh assets | cut -f1)
echo "▸ Total assets: $TOTAL"
echo "✓ Pronto. Não esqueça de testar visualmente antes do commit."
