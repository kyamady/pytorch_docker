FROM python:3.9.7-buster
ARG DEBIAN_FRONTEND=noninteractive

# image initialize
RUN apt-get update && apt-get install -y tzdata \
&&  ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/* \
&&  mkdir -p /root/.jupyter \
&&  mkdir -p /workspace

ENV TZ=Asia/Tokyo

# pip install
RUN python3 -m pip install --upgrade pip

# pip install jupyter-lab
RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    black \
    jupyterlab \
    jupyterlab_code_formatter \
    jupyterlab-git \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    ipywidgets \
    import-ipynb

# pip install pytorch and more...
RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    torch \
    torchvision \
    torchaudio \
    nltk \
    opencv-python \
    ttach \
    janome \
    transformers \
    gym \
    pyglet \
    torchtext \
    torchcam \
    torchsummary \
    grad-cam \
    fugashi \
    ipadic \
    numpy \
    scipy \
    pandas \
    matplotlib \
    scikit-learn \
    pillow \
    gensim
