🎯 Objective

The goal of this assignment is to demonstrate basic Machine Learning Operations (MLOps) using DVC (Data Version Control) and Git, by tracking and managing changes in both datasets and machine learning models over time. The example uses the classic Iris dataset and trains a simple classification model to predict flower species.

⸻

🧠 Solution Overview

The assignment simulates a real-world scenario where a dataset is updated over time. The steps include:
	1.	Training an initial model using the original iris.csv dataset.
	2.	Tracking the dataset and model using DVC.
	3.	Versioning the work with Git and DVC tags (v1.0 for the first iteration).
	4.	Modifying the dataset to simulate additional data or updates.
	5.	Retraining the model, tracking the new version with DVC, and tagging it (v2.0).
	6.	Comparing model and data versions using DVC and Git tools to validate changes.

⸻

🛠️ Tools & Technologies
	•	Python: Core language used for scripting and model development.
	•	scikit-learn: Used for implementing the logistic regression model.
	•	pandas: For data manipulation.
	•	DVC: To track versions of datasets and model artifacts.
	•	Git: To manage code versioning and tag releases.

⸻

📂 Project Structure
	•	data/iris.csv: The dataset used for training and testing. Tracked using DVC.
	•	main.py: The main training script. It loads the dataset, trains a logistic regression model, evaluates its performance, and saves the trained model to a file.
	•	model.pkl: The serialized (pickled) trained model. Its versions are tracked using DVC.
	•	requirements.txt: Lists all necessary Python dependencies for the project.
	•	.dvc/, data.dvc, model.pkl.dvc, .gitignore: DVC-generated files used for tracking dataset and model file versions.
	•	.venv/: Python virtual environment directory (created during setup, not included in version control).
	•	README.md: This file, describing the purpose and structure of the project.

⸻

🔁 Workflow Summary
	1.	Set up project with Git and DVC.
	2.	Add and track dataset with DVC.
	3.	Train and save model.
	4.	Track model weights with DVC.
	5.	Commit and tag as version 1.
	6.	Modify dataset to simulate a new iteration.
	7.	Retrain, track updated model, and commit as version 2.
	8.	Use git checkout and dvc checkout to move between versions and validate changes.
