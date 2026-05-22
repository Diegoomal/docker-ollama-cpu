# docker | CPU | Ollama

## Default configs

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

## Custom configs

Command to build
``` HOST_ADDRESS=0.0.0.0 HOST_PORT=11435 MODEL_NAME=qwen3:0.6b docker compose up -d --build ```

Show API
``` curl http://localhost:11435/api/tags ```

Simple Request
```
curl http://localhost:11435/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "model": "qwen3:0.6b",
    "prompt": "Why is the sky blue?",
    "stream": false
  }' | jq -r '.response'
```

<!-- 

docker compose logs -f ollama

docker exec -it ollama nvidia-smi

// download a model
curl http://localhost:11435/api/pull \
  -H "Content-Type: application/json" \
  -d '{
    "name": "llama3.2:1b",
    "stream": false
  }'

// make a resquest
curl http://localhost:11435/api/generate \
  -H "Content-Type: application/json" \
  -d '{
    "model": "llama3.2:1b",
    "prompt": "Why is the sky blue?",
    "stream": false
  }' | jq -r '.response'

// show list of models
curl http://localhost:11435/api/tags | jq

// unload model from memory
curl http://localhost:11434/api/generate \
  -d '{
    "model": "llama3.2:1b",
    "keep_alive": 0
  }'

// stop service
docker stop ollama


-->