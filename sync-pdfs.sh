#!/usr/bin/env bash
# Pull the latest PDFs from NZaccaria/selection-on-exit-public into static/files/.
# CI does this automatically on every deploy; run it locally to preview.
set -euo pipefail
SRC="https://raw.githubusercontent.com/NZaccaria/selection-on-exit-public/main"
mkdir -p static/files
curl -fsSL "$SRC/Zaccaria_CV.pdf"     -o static/files/cv.pdf
curl -fsSL "$SRC/Zaccaria_JMP.pdf"    -o static/files/jmp.pdf
curl -fsSL "$SRC/Zaccaria_slides.pdf" -o static/files/slides.pdf
echo "Synced:"; ls -lh static/files
