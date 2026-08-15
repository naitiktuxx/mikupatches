# ==============================================================================
# MikuPatches - Android Dynamic Multi-App Patch Engine Container
# ==============================================================================
FROM ubuntu:22.04

# Prevent interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive \
    PYTHONUNBUFFERED=1 \
    DOCKER_CONTAINER=1 \
    LANG=C.UTF-8 \
    LC_ALL=C.UTF-8

# Install system dependencies, OpenJDK 17, Android tools, and Python 3
RUN apt-get update && apt-get install -y --no-install-recommends \
    python3 \
    openjdk-17-jdk-headless \
    zipalign \
    apksigner \
    curl \
    ca-certificates \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Install official Apktool wrapper and standalone jar (v2.11.0)
ARG APKTOOL_VERSION=2.11.0
RUN curl -fsSL https://raw.githubusercontent.com/iBotPeaches/Apktool/master/scripts/linux/apktool -o /usr/local/bin/apktool && \
    curl -fsSL https://github.com/iBotPeaches/Apktool/releases/download/v${APKTOOL_VERSION}/apktool_${APKTOOL_VERSION}.jar -o /usr/local/bin/apktool.jar && \
    chmod +x /usr/local/bin/apktool /usr/local/bin/apktool.jar

# Setup workdir and application directories
WORKDIR /app

# Pre-create volume mount points
RUN mkdir -p /app/input /app/dist /app/build_staging

# Copy application sources
COPY mikupatches /app/mikupatches
COPY patches /app/patches
COPY tests /app/tests
COPY build.py /app/build.py
COPY build.sh /app/build.sh

# Make entrypoint executable
RUN chmod +x /app/build.py /app/build.sh

# Default entrypoint runs the MikuPatches CLI engine
ENTRYPOINT ["python3", "/app/build.py"]

# Default arguments (empty to allow interactive menu or custom flags)
CMD []
