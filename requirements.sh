# If bash command fails, build should error out
set -e

##### Install specific package versions with pip #####

# pip3 install pandas==0.22.0
pip3 install matplotlib==2.1.2
pip3 install ipykernel
# pip3 install scikit-learn==0.19.1

DATADIR=/usr/local/share/datasets/
mkdir -p $DATADIR
wget -O $DATADIR/house_data.csv https://assets.datacamp.com/production/repositories/3325/datasets/3d68eaa3f92eb7b5d049f1f9b9ed94854323df1d/house_data.csv
