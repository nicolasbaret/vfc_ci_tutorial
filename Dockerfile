# Extend the official Verificarlo Docker image
FROM verificarlo/verificarlo:latest

# Install Vim for text editing
RUN apt-get update && apt-get install -y vim && rm -rf /var/lib/apt/lists/*

# Fix for missing workflow_templates (copy from source to installed location)
RUN cp -r /build/verificarlo/src/tools/ci/workflow_templates /usr/local/lib/python3.8/dist-packages/verificarlo/ci/

# Set matplotlib to use non-interactive backend (for headless environment)
ENV MPLBACKEND=Agg

# Set working directory to where user files will be mounted
WORKDIR /workdir

# Ensure the workdir exists
RUN mkdir -p /workdir

# Default command is bash (interactive mode)
CMD ["/bin/bash"]