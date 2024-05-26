FROM gitpod/workspace-full-vnc

# install rustup
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- --default-toolchain stable -y

RUN sudo apt-get update && \
    sudo apt-get install -yq --no-install-recommends \
    # for bevy
    g++ pkg-config libx11-dev libasound2-dev libudev-dev libxkbcommon-x11-0 \
    # for libui dependencies
    libgtk-3-dev && \
    # clean up
    sudo rm -rf /var/lib/apt/lists/*
