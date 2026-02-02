# nnmonad
haskel yey

## Downloading assets
Download mnist dataset from [kaggle](https://www.kaggle.com/api/v1/datasets/download/hojjatk/mnist-dataset)
```
curl -L -o ./mnist.zip https://www.kaggle.com/api/v1/datasets/download/hojjatk/mnist-dataset
```
Unzip to data/
```
mkdir -p data/mnist
unzip ./mnist.zip -d ./data/mnist
```
These files should be in data/mnist:
```
train-images-idx3-ubyte.gz: training set images
train-labels-idx1-ubyte.gz: training set labels 
t10k-images-idx3-ubyte.gz: test set images 
t10k-labels-idx1-ubyte.gz: test set labels
```
