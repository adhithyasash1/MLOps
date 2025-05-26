⸻

Vertex AI ML Pipeline Setup - Week 1

📌 Objective

This assignment sets up the foundational ML pipeline on Google Cloud’s Vertex AI as demonstrated in the Week 1 lecture (Hands-on: Introduction to Google Cloud, Vertex AI). This pipeline will be extended with additional features in future weeks.

⸻

🗂️ Included Files

week 1 colab.ipynb
	•	Description: Jupyter Notebook that walks through the setup of a basic ML pipeline on Vertex AI.
	•	Key Steps:
	•	Connects to Google Cloud using gcloud and sets the project.
	•	Uploads the dataset to Cloud Storage.
	•	Creates and trains a basic scikit-learn model using the Iris dataset.
	•	Deploys the model to Vertex AI and enables endpoint testing.

iris.csv
	•	Description: Standard Iris dataset used for training the ML model.
	•	Usage: Uploaded to GCS and consumed within the pipeline notebook to train the classifier.

⸻

✅ Setup Instructions
	1.	Open the notebook in Google Colab or JupyterLab.
	2.	Authenticate and set your GCP project.
	3.	Upload iris.csv to a GCS bucket.
	4.	Run through the notebook cells to train and deploy the model.

⸻

🔗 Requirements
	•	A Google Cloud Platform account with Vertex AI enabled.
	•	GCS bucket for dataset storage.
	•	IAM permissions to use Vertex AI and AI Platform services.

⸻
