FROM ollama/ollama

# Default model to preload
RUN ollama pull llama3
