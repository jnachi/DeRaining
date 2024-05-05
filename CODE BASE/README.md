# EfficientDerain
we propose EfficientDerain for high-efficiency single-image deraining



## Requirements

- python 3.6
- pytorch 1.6.0
- opencv-python 4.4.0.44
- scikit-image 0.17.2
- torchvision 0.9.1
- pytorch-msssim 0.2.1

## Datasets
- Rain100H train- https://drive.google.com/file/d/1OuTqgGtZlGQwf23AKxctpr_ppPNzeNmN/view?usp=sharing 
- Rain100H test- https://drive.google.com/file/d/197Oud9IXar_dCEXhglFS2_M8job_DCkI/view?usp=sharing  
- Rain1400- https://drive.google.com/file/d/1SnrC7QhJVNyVAlBrhNjTdBC0D-R4H0j-/view?usp=sharing 

## Pretrained models
The pretrained model for V3 and V4 for both Datasets, that is rain1400H and rain100H can be downloded from the link - https://drive.google.com/drive/folders/1oqWGAEr0zC1eKZDAkdoWro9Lze1Gerqd?usp=sharing 
- Use V4 models for best Outcomes.

We ran many iterations of the models to find the best result. the trial models can be foind in this - https://drive.google.com/drive/folders/1tmFLjGj4VsbbjmM5kSRk8yYyHGYSZEsW?usp=sharing 

## Train

- The code shown corresponds to version **v3**, for **v4** change the value of argument "**rainaug**" in file "**./train_*.sh**" to the "**true**" (train_*.sh means it's the training script of dataset *) 
- Unzip the "Streaks_Garg06.zip" in the "./rainmix"
- Change the value of argument "**baseroot**" in file "**./train_rain1400H.sh**" to the path of training data [ for rain100H use ./train_rain100H.sh]
- If u want to train rain100H- Edit the function "**get_files**" in file "**./utils**" according to the format of the training data. Comment out the rain1400H getfiles and uncomment the rain100H
- Execute

```
train_rain1400H.sh
```

## Test

- The code shown corresponds to version **v4**
- Unzip the "Streaks_Garg06.zip" in the "./rainmix"
- Unzip the dataset from either the dataset directory or by downloading the dataset from the links.
- Change the value of argument "**load_name**" in file "**./test.sh**" to **the path of pretained model**
- Change the value of argument "**baseroot**" in file "**./test.sh**" to **the path of testing data**
- If u want to train rain100H- Edit the function "**get_files**" in file "**./utils**" according to the format of the testing data
- Execute

```
sh test.sh
```

## Result
The results can be found in this link - https://drive.google.com/file/d/1c0fRcunBtUN2GW5-dvel1BZG7r_kc9wC/view?usp=sharing 

