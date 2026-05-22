#!/bin/sh
set -e

MODEL="${OLLAMA_MODEL:-llama3.2:1b}"

if ollama list | awk 'NR > 1 {print $1}' | grep -qx "$MODEL"; then
  echo "Modelo já existe: $MODEL"
else
  echo "Baixando modelo: $MODEL"
  ollama pull "$MODEL"
fi