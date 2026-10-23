#!/usr/bin/env bash
set -euo pipefail

UUID="ios-hardware-monitor@dalvan"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_DIR="${SCRIPT_DIR}/${UUID}"
TARGET_DIR="${HOME}/.local/share/cinnamon/desklets/${UUID}"

mkdir -p "${HOME}/.local/share/cinnamon/desklets"

if [ "${1:-}" = "--symlink" ] || [ "${1:-}" = "-s" ]; then
    rm -rf "${TARGET_DIR}"
    ln -s "${SOURCE_DIR}" "${TARGET_DIR}"
    echo "✔ Symlink de desenvolvimento criado em: ${TARGET_DIR}"
else
    rm -rf "${TARGET_DIR}"
    cp -r "${SOURCE_DIR}" "${TARGET_DIR}"
    echo "✔ Desklet instalado em: ${TARGET_DIR}"
fi

echo "Para ativar na área de trabalho:"
echo "  1. Clique com o botão direito na área de trabalho -> 'Adicionar Desklets'"
echo "  2. Selecione 'iOS Hardware & Battery Monitor' e clique no botão (+)"
