#!/usr/bin/env bash
# scripts/optimize-images.sh
# Otimiza imagens em assets/ (requer pngquant e jpegoptim)

set -e

cd "$(dirname "$0")/.."

echo "🖼️  Otimizando imagens..."

if ! command -v pngquant &> /dev/null; then
  echo "⚠️  pngquant não instalado — pulando PNGs"
else
  find assets/ -type f -name "*.png" -exec pngquant --quality=80-95 --skip-if-larger --force --ext .png {} \;
  echo "✅ PNGs otimizados"
fi

if ! command -v jpegoptim &> /dev/null; then
  echo "⚠️  jpegoptim não instalado — pulando JPGs"
else
  find assets/ -type f \( -name "*.jpg" -o -name "*.jpeg" \) -exec jpegoptim --max=85 --strip-all {} \;
  echo "✅ JPGs otimizados"
fi

echo "🎉 Otimização concluída"
du -sh assets/
