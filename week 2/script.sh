git init
git clone https://github.com/iterative/example-versioning
cd example-versioning
python3 -m venv .env
source .env/bin/activate
pip install -r requirements.txt
pip install dvc

dvc get https://github.com/iterative/dataset-registry tutorials/versioning/data.zip
unzip -q data.zip
rm -f data.zip
git
dvc add data
python train.py
dvc add model.weights.h5
git add data.dvc model.weights.h5.dvc metrics.csv .gitignore
git commit -m “first iteration done with 1000 images”
git tag -a “v1.0” -m “model v1.0, 1000 images”
git tag

dvc get https://github.com/iterative/dataset-registry tutorials/versioning/new-labels.zip
unzip -q new-labels.zip
rm -f new-labels.zip
dvc add data
python train.py
dvc add model.weights.h5
git add data.dvc model.weights.h5.dvc metrics.csv .gitignore
git commit -m “second iteration done with 200 images”
git tag -a “v2.0” -m “model v2.0, 2000 images”
git tag

git checkout v1.0
dvc checkout
git checkout v1.0 data.dvc
dvc checkout data.dvc