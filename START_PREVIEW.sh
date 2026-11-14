#!/bin/sh
cd "$(dirname "$0")" || exit 1
echo "Abrir http://localhost:8000/preview.html"
python3 -m http.server 8000
