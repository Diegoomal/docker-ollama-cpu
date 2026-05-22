FROM ollama/ollama:latest

ENV OLLAMA_HOST=0.0.0.0:11434
ENV OLLAMA_MODEL=llama3.2:1b

EXPOSE 11434

VOLUME ["/root/.ollama"]

COPY --chmod=755 scripts/start-ollama.sh /usr/local/bin/start-ollama.sh
COPY --chmod=755 scripts/ensure-model.sh /usr/local/bin/ensure-model.sh

ENTRYPOINT ["/usr/local/bin/start-ollama.sh"]