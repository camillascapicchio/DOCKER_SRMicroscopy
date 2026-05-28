#!/bin/bash
set -e

echo "=== ESRGAN START ==="

INPUT_PATH=$1
OUTPUT_DIR=$2

echo "Input file: $INPUT_PATH"
echo "Output dir: $OUTPUT_DIR"

# === 1. RICREA STRUTTURA ATTESA DAL YAML ===
DATASET_DIR=/app/datasets/WF/test_set

mkdir -p $DATASET_DIR

# copia il PNG nella cartella attesa da BasicSR

# ✅ CASO 1: input è una directory
if [ -d "$INPUT_PATH" ]; then
    echo "Input is a directory"
    find "$INPUT_PATH" -name "*.png" -exec cp {} "$DATASET_DIR/" \;

# ✅ CASO 2: input è un file
elif [ -f "$INPUT_PATH" ]; then
    echo "Input is a file"
    cp "$INPUT_PATH" "$DATASET_DIR/"
else
    echo "ERROR: input not valid"
    exit 1
fi


# rimuove eventuali cartelle spurie
rm -rf *.png
rm -rf *.jpg

# === 2. ESECUZIONE ===
python basicsr/test.py -opt options/test_ESRGAN_x1gpu.yml

# === 3. RACCOGLI OUTPUT ===
echo "Collecting results..."

mkdir -p "$OUTPUT_DIR"

# BasicSR salva normalmente in ./results/
if [ -d "results" ]; then
   find results -name "*.png" -exec cp {} "$OUTPUT_DIR/" \;

else
    echo "No results folder found!"
fi



echo "=== ESRGAN DONE ==="
