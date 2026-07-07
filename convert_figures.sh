#!/bin/bash
# Pre-convert all figure PDFs to PNGs for faster development builds.
# Run from the project root. After running, uncomment \DeclareGraphicsExtensions
# in main/BachelorsIPMB.sty to use PNGs during compilation.

DIRS=("figures" "images")

for dir in "${DIRS[@]}"; do
    find "$dir" -name "*.pdf" | while read -r pdf; do
        png="${pdf%.pdf}.png"
        if [ ! -f "$png" ] || [ "$pdf" -nt "$png" ]; then
            echo "Converting: $pdf"
            gs -dNOPAUSE -dBATCH -sDEVICE=png16m -r150 \
               -sOutputFile="$png" "$pdf" 2>/dev/null \
            && echo "  -> $png" \
            || echo "  FAILED: $pdf"
        fi
    done
done

echo "Done. Uncomment \DeclareGraphicsExtensions in main/BachelorsIPMB.sty to use PNGs."
