#!/bin/bash

# Script to generate PDF from markdown resume
# Usage: ./generate_pdf.sh [job_name] [input_file] [output_file]

set -e

JOB_NAME=${1:-"software-engineer-example"}
INPUT_FILE=${2:-"resume.md"}
OUTPUT_FILE=${3:-"resume.pdf"}

INPUT_DIR="output/${JOB_NAME}"
OUTPUT_DIR="output/${JOB_NAME}"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed. Please install pandoc to generate PDF."
    exit 1
fi

# Generate PDF
pandoc "$INPUT_DIR/$INPUT_FILE" -o "$OUTPUT_DIR/$OUTPUT_FILE"

echo "PDF generated: $OUTPUT_DIR/$OUTPUT_FILE"
