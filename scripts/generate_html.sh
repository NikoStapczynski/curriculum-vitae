#!/bin/bash

# Script to generate HTML from markdown resume
# Usage: ./generate_html.sh [job_name] [input_file] [output_file]

set -e

JOB_NAME=${1:-"software-engineer-example"}
INPUT_FILE=${2:-"resume.md"}
OUTPUT_FILE=${3:-"resume.html"}

INPUT_DIR="output/${JOB_NAME}"
OUTPUT_DIR="output/${JOB_NAME}"

# Check if pandoc is installed
if ! command -v pandoc &> /dev/null; then
    echo "Error: pandoc is not installed. Please install pandoc to generate HTML."
    exit 1
fi

# Generate HTML with custom CSS if available
if [ -f "templates/styles/resume.css" ]; then
    pandoc -s -c resume.css "$INPUT_DIR/$INPUT_FILE" -o "$OUTPUT_DIR/$OUTPUT_FILE"
else
    pandoc -s "$INPUT_DIR/$INPUT_FILE" -o "$OUTPUT_DIR/$OUTPUT_FILE"
fi

echo "HTML generated: $OUTPUT_DIR/$OUTPUT_FILE"
