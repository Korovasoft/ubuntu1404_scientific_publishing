FROM ubuntu:14.04

# Ubuntu Installs:
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y software-properties-common && \
	add-apt-repository -y ppa:george-edison55/cmake-3.x && apt-get update && apt-get install -y --no-install-recommends \
	texlive-full \
	python3 \
	python3-pip \
	llvm \
	clang-3.5 \
	doxygen \
	cmake \
	curl \
	poppler-utils \
	imagemagick \
	&& rm -rf /var/lib/apt/lists/*

# Python installs:
RUN pip3 install colorama Pygments
