FROM debian:9

RUN apt-get update \
    && apt-get install -y gcc-6 binutils clang make libmpich-dev mpich libgmp-dev libgomp1 libomp5 libfftw3-dev libgsl-dev \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /work
CMD ["bash"]
