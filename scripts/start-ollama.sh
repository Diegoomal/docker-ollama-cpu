#!/bin/sh
set -e

ollama serve &
OLLAMA_PID=$!

echo "Aguardando Ollama iniciar..."

until ollama list >/dev/null 2>&1; do
  sleep 1
done

ensure-model.sh

wait "$OLLAMA_PID"