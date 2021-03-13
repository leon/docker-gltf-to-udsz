FROM python:3-slim-buster

WORKDIR /usr/src/usd

# Configuration
ARG USD_RELEASE="21.02"
ARG USD_INSTALL="/usr/local/usd"
ENV PYTHONPATH="${PYTHONPATH}:${USD_INSTALL}/lib/python"
ENV PATH="${PATH}:${USD_INSTALL}/bin"

# Dependencies
RUN apt-get -qq update && apt-get install -y --no-install-recommends \
    git build-essential cmake nasm \
    libxrandr-dev libxcursor-dev libxinerama-dev libxi-dev && \
    rm -rf /var/lib/apt/lists/*

# Build + install USD
RUN git clone --branch "v${USD_RELEASE}" --depth 1 https://github.com/PixarAnimationStudios/USD.git /usr/src/usd
RUN python ./build_scripts/build_usd.py --verbose --prefer-safety-over-speed --no-examples --no-tutorials --no-python --no-imaging --no-usdview --draco "${USD_INSTALL}" && \
  rm -rf "${USD_REPO}" "${USD_INSTALL}/build" "${USD_INSTALL}/src"

# Share the volume that we have built to
VOLUME ["/usr/local/usd"]