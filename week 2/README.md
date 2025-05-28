⸻

📁 IRIS Pipeline with DVC Integration – Week 2 Assignment

🎯 Objective

The goal of this assignment is to incorporate Data Version Control (DVC) into the ML workflow established in Week 1. We implement a versioned pipeline that tracks both datasets and model outputs over time using Git and DVC. This setup ensures full reproducibility of experiments by allowing us to seamlessly switch between different iterations of data and model versions.

⸻

✅ Step-by-Step Explanation of the Script

🔧 Initial Setup

```git init```
```git clone https://github.com/iterative/example-versioning```
```cd example-versioning```

	•	Initialize Git.
	•	Clone the example versioning repo which simulates a project structure.
	•	Navigate into the cloned directory.

🐍 Python Environment Setup

python3 -m venv .env
source .env/bin/activate
pip install -r requirements.txt
pip install dvc

	•	Create a virtual environment and activate it.
	•	Install required Python packages and DVC.

📥 First Dataset Fetch & Model Training

dvc get https://github.com/iterative/dataset-registry tutorials/versioning/data.zip
unzip -q data.zip
rm -f data.zip

	•	Download the dataset using DVC.
	•	Unzip and clean up the archive.

dvc add data
python train.py
dvc add model.weights.h5

	•	Track the data folder and the trained model with DVC.
	•	Train the model on the initial dataset.

git add data.dvc model.weights.h5.dvc metrics.csv .gitignore
git commit -m “first iteration done with 1000 images”
git tag -a “v1.0” -m “model v1.0, 1000 images”

	•	Commit changes to Git.
	•	Tag this state as version v1.0, representing the first model version trained on 1000 images.

⸻

📥 Second Dataset Fetch & Re-Training

dvc get https://github.com/iterative/dataset-registry tutorials/versioning/new-labels.zip
unzip -q new-labels.zip
rm -f new-labels.zip

	•	Download an updated or extended dataset (new labels).
	•	Unzip and remove the archive.

dvc add data
python train.py
dvc add model.weights.h5

	•	Re-track the updated dataset.
	•	Retrain the model and track the new model weights.

git add data.dvc model.weights.h5.dvc metrics.csv .gitignore
git commit -m “second iteration done with 2000 images”
git tag -a “v2.0” -m “model v2.0, 2000 images”

	•	Commit and tag the updated state as version v2.0.

⸻

🔁 Reproducibility Check via Version Checkout

git checkout v1.0
dvc checkout

	•	Switch back to version v1.0 of the project.
	•	DVC restores the corresponding dataset and model version.

git checkout v1.0 data.dvc
dvc checkout data.dvc

	•	(Optional/fine-grained) Restores just the data version tracked under v1.0.

⸻

📌 Key Benefits
	•	Reproducibility: Every step of data and model creation is versioned.
	•	Modularity: You can switch between versions for comparison or debugging.
	•	Collaboration-Ready: Works well with Git for team workflows.
	•	Experiment Tracking: Tags (v1.0, v2.0) clearly mark stages in the pipeline.

⸻

💡 Notes
	•	Make sure your remote storage is set up if using dvc push/pull across machines.
	•	Always run dvc checkout after switching Git versions to sync the workspace with DVC-tracked files.

⸻
