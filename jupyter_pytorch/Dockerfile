FROM python:3.9.7-buster
ARG DEBIAN_FRONTEND=noninteractive

# container-image initialize
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y libgl1-mesa-dev
RUN apt-get install -y vim
RUN apt-get install -y tzdata \
&&  ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/* \
&&  mkdir -p /root/.jupyter \
&&  mkdir -p /workspace
ENV TZ=Asia/Tokyo

# install node.js & npm & n
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install n -g \
&& n stable \
&& ln -sf /usr/local/bin/node /usr/bin/node

# pip install
RUN python3 -m pip install --upgrade pip \
&&  pip install --no-cache-dir \
    anyio==3.6.1 \
    argon2-cffi==21.3.0 \
    argon2-cffi-bindings==21.2.0 \
    asttokens==2.0.8 \
    attrs==22.1.0 \
    Babel==2.10.3 \
    backcall==0.2.0 \
    beautifulsoup4==4.11.1 \
    black==22.8.0 \
    bleach==5.0.1 \
    certifi==2022.9.24 \
    cffi==1.15.1 \
    charset-normalizer==2.1.1 \
    click==8.1.3 \
    cloudpickle==2.2.0 \
    colorama==0.4.5 \
    contourpy==1.0.5 \
    cycler==0.11.0 \
    debugpy==1.6.3 \
    decorator==5.1.1 \
    defusedxml==0.7.1 \
    entrypoints==0.4 \
    executing==1.1.0 \
    fastjsonschema==2.16.2 \
    filelock==3.8.0 \
    fonttools==4.37.4 \
    fugashi==1.2.0 \
    gensim==4.2.0 \
    gitdb==4.0.9 \
    GitPython==3.1.27 \
    grad-cam==1.4.5 \
    gym==0.26.1 \
    gym-notices==0.0.8 \
    huggingface-hub==0.10.0 \
    idna==3.4 \
    import-ipynb==0.1.4 \
    importlib-metadata==5.0.0 \
    ipadic==1.0.0 \
    ipykernel==6.16.0 \
    ipympl==0.9.2 \
    ipython==8.5.0 \
    ipython-genutils==0.2.0 \
    ipywidgets==8.0.2 \
    Janome==0.4.2 \
    jedi==0.18.1 \
    Jinja2==3.1.2 \
    joblib==1.2.0 \
    json5==0.9.10 \
    jsonschema==4.16.0 \
    jupyter-core==4.11.1 \
    jupyter-server==1.19.1 \
    jupyter-server-mathjax==0.2.6 \
    jupyter_client==7.3.5 \
    jupyterlab==3.4.7 \
    jupyterlab-code-formatter==1.5.3 \
    jupyterlab-git==0.39.3 \
    jupyterlab-pygments==0.2.2 \
    jupyterlab-vim==0.15.1 \
    jupyterlab-widgets==3.0.3 \
    jupyterlab_server==2.15.2 \
    kiwisolver==1.4.4 \
    lckr-jupyterlab-variableinspector==3.0.9 \
    MarkupSafe==2.1.1 \
    matplotlib==3.6.0 \
    matplotlib-inline==0.1.6 \
    mistune==2.0.4 \
    mypy-extensions==0.4.3 \
    nbclassic==0.4.4 \
    nbclient==0.6.8 \
    nbconvert==7.1.0 \
    nbdime==3.1.1 \
    nbformat==5.6.1 \
    nest-asyncio==1.5.6 \
    nltk==3.7 \
    notebook==6.4.12 \
    notebook-shim==0.1.0 \
    numpy==1.23.3 \
    opencv-python==4.6.0.66 \
    packaging==21.3 \
    pandas==1.5.0 \
    pandocfilters==1.5.0 \
    parso==0.8.3 \
    pathspec==0.10.1 \
    pexpect==4.8.0 \
    pickleshare==0.7.5 \
    Pillow==9.2.0 \
    platformdirs==2.5.2 \
    prometheus-client==0.14.1 \
    prompt-toolkit==3.0.31 \
    psutil==5.9.2 \
    ptyprocess==0.7.0 \
    pure-eval==0.2.2 \
    pycparser==2.21 \
    pyglet==1.5.27 \
    Pygments==2.13.0 \
    pyparsing==3.0.9 \
    pyrsistent==0.18.1 \
    python-dateutil==2.8.2 \
    pytz==2022.4 \
    PyYAML==6.0 \
    pyzmq==24.0.1 \
    regex==2022.9.13 \
    requests==2.28.1 \
    scikit-learn==1.1.2 \
    scipy==1.9.1 \
    Send2Trash==1.8.0 \
    six==1.16.0 \
    smart-open==6.2.0 \
    smmap==5.0.0 \
    sniffio==1.3.0 \
    soupsieve==2.3.2.post1 \
    stack-data==0.5.1 \
    terminado==0.16.0 \
    threadpoolctl==3.1.0 \
    tinycss2==1.1.1 \
    tokenizers==0.12.1 \
    tomli==2.0.1 \
    torch \
    torchaudio \
    torchcam==0.3.0 \
    torchsummary==1.5.1 \
    torchtext==0.13.1 \
    torchvision \
    tornado==6.2 \
    tqdm==4.64.1 \
    traitlets==5.4.0 \
    transformers==4.22.2 \
    ttach==0.0.3 \
    typing_extensions==4.3.0 \
    urllib3==1.26.12 \
    wcwidth==0.2.5 \
    webencodings==0.5.1 \
    websocket-client==1.4.1 \
    widgetsnbextension==4.0.3 \
    zipp==3.8.1
