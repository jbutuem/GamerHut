#!/usr/bin/env bash
# scripts/validate-html.sh
# Valida o index.html. Palavras proibidas só geram warning (podem ser uso didático em blocos .avoid).

set -e
cd "$(dirname "$0")/.."

echo "🔍 Validando index.html..."

if [ ! -f "index.html" ]; then echo "❌ index.html não encontrado"; exit 1; fi
if ! head -1 index.html | grep -qi "<!doctype"; then echo "❌ DOCTYPE ausente"; exit 1; fi
if ! grep -q "v.2026" index.html; then echo "⚠️  Versão não encontrada"; fi
if ! grep -q "v.2026" index.html; then echo "⚠️  Versão não encontrada no footer"; fi

FORBIDDEN=("imperdível" "prezado cliente" "console novo" "queridos clientes")
for word in "${FORBIDDEN[@]}"; do
  if grep -qi "$word" index.html; then
    COUNT=$(grep -ci "$word" index.html || echo 0)
    echo "ℹ️  '$word' aparece $COUNT× — verifique se é uso didático em .avoid"
  fi
done

echo "✅ index.html validado"
