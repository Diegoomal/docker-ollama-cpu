# Default configuraton

Command to build
``` docker compose up -d --build ```

Show API
``` curl http://localhost:11434/api/tags ```

Simple Request
```
curl http://localhost:11434/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "model": "llama3.2:1b",
    "prompt": "Why is the sky blue?",
    "stream": false
  }'
```