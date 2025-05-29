python3 -m venv .venv
source .venv/bin/activate
git init

pip install pandas scikit-learn
pip install dvc

wget https://raw.githubusercontent.com/adhithyasash1/MLOps/main/week%202/iris.csv -O iris.csv
wget https://raw.githubusercontent.com/adhithyasash1/MLOps/main/week%202/main.py -O main.py
ls -larth

mkdir data
mv iris.csv data/

dvc init
dvc add data/iris.csv

python main.py
dvc add model.pkl

git add data/iris.csv.dvc model.pkl.dvc .gitignore main.py
git commit -m "v1: trained on original dataset"
git tag -a v1.0 -m "Model trained on original dataset"

echo "5.1,3.5,1.4,0.2,setosa" >> data/iris.csv

dvc add data/iris.csv
python main.py
dvc add model.pkl

git add data/iris.csv.dvc model.pkl.dvc .gitignore main.py
git commit -m "v2: retrained on updated dataset"
git tag -a v2.0 -m "Model retrained on updated data"

git checkout v1.0
dvc checkout
cat data/iris.csv | wc -l

git checkout v2.0
dvc checkout
cat data/iris.csv | wc -l

git tag
git diff v1.0 v2.0 model.pkl.dvc
