# pytorch_docker
python3でjupyter-labが動作するdocker環境です。docker本体のインストールは含みません。jupyter-labでextensionを追加できるようにnode.js+npmも入っています。（コンテナ上でエクステンション永続化はできないので、必要ならライブラリで入れる）

## 入っているもの　　※pythonのインストールライブラリの一覧は最後に記載
- python3とnode.js
- jupyter-lab (テキストエディタはkey-mapをvimに変更)
- numpy,pandas,scikit-leranなど機械学習用のベース
- NN系としてpytorch
- 画像処理系ライブラリ
- 自然言語処理系ライブラリ

## 構築手順
### 0. 事前準備
- このリポジトリをcloneする
- dockerをインストールしておく
- (MacOSの場合はHomebrew経由) brew install docker

### 1.　コンテナ起動
```
docker-compose up -d
```

### 2. jupyter起動
ブラウザで下記にアクセス
```
http://localhost:8888/
```

### 3. volumesのマウント
cloneしたリポジトリの
```
pytorch_docker/workspace
```
が、起動したコンテナの
```
/workspace
```
にマウントされます。
jupyterから保存したノートブックは上記のディレクトリに保存されるので、コンテナを止めても残ります。

## Install Packages 
※開発用環境のためバージョン指定していません。

### jupyter-lab関連
- black
- jupyterlab
- jupyterlab_code_formatter
- jupyterlab-git
- lckr-jupyterlab-variableinspector
- jupyterlab_widgets
- ipywidgets
- import-ipynb
- jupyterlab-vim

### 機械学習関連    
- torch
- torchvision
- torchaudio
- nltk
- opencv-python
- ttach
- janome
- transformers
- gym
- pyglet
- torchtext
- torchcam
- torchsummary
- grad-cam
- mecab-python3
- unidic-lite
- fugashi
- ipadic
- numpy
- scipy
- pandas
- matplotlib
- scikit-learn
- pillow
- gensim
