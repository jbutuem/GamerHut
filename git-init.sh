#!/usr/bin/env bash
# ============================================================
# GAMER HUT · Setup inicial do repositório Git
# ============================================================
# Uso:
#   1. Coloque este script + README.md + CHANGELOG.md + .gitignore
#      na raiz da pasta gamerhut-brandbook/
#   2. Rode: bash git-init.sh
#   3. Crie o repo remoto e siga as instruções no final
# ============================================================

set -e  # pára se der erro

REPO_NAME="gamerhut-brandbook"
INITIAL_VERSION="v2026.02"

echo "▶ Inicializando repositório Git para ${REPO_NAME}..."
echo ""

# 1. Inicializar
if [ ! -d ".git" ]; then
  git init -b main
  echo "✓ git init"
else
  echo "✓ .git já existe — pulando init"
fi

# 2. Configurar core
git config core.autocrlf input
git config core.filemode false
echo "✓ core configurado"

# 3. Primeiro commit
git add .
git commit -m "chore: initial commit · brandbook ${INITIAL_VERSION}

- 17 stages + easter egg TGT
- 6 variações oficiais do logo GAMER HUT
- 12 key arts de jogos (drop/pre-venda/story)
- Mockups: feed IG, posts, e-commerce
- Mobile responsivo validado
- Konami code + Staff Roll
"
echo "✓ commit inicial"

# 4. Tag da release
git tag -a "${INITIAL_VERSION}" -m "Release ${INITIAL_VERSION} · Pilares de Conteúdo + Easter Egg TGT"
echo "✓ tag ${INITIAL_VERSION}"

echo ""
echo "============================================================"
echo "▶ PRÓXIMOS PASSOS"
echo "============================================================"
echo ""
echo "1. Crie o repo no GitHub/GitLab/Bitbucket"
echo "   (privado, recomendado)"
echo ""
echo "2. Adicione o remote e faça push:"
echo ""
echo "   git remote add origin git@github.com:SEU-ORG/${REPO_NAME}.git"
echo "   git push -u origin main"
echo "   git push origin --tags"
echo ""
echo "3. Convide o time da Gamer Hut como collaborators."
echo ""
echo "4. Ative GitHub Pages (opcional) para preview público:"
echo "   Settings > Pages > Source: main / root"
echo ""
echo "5. Crie branch protection rules em main:"
echo "   - Require pull request before merging"
echo "   - Require approvals (1)"
echo ""
echo "Done. ▶ PRESS START."
