import pandas as pd
import numpy as np
from sklearn.model_selection import train_test_split
from sklearn.linear_model import LogisticRegression
from sklearn import metrics
import pickle

# Load the dataset
data = pd.read_csv('data/iris.csv')

# Train-test split
train, test = train_test_split(data, test_size=0.4, stratify=data['species'], random_state=42)
X_train = train[['sepal_length', 'sepal_width', 'petal_length', 'petal_width']]
y_train = train['species']
X_test = test[['sepal_length', 'sepal_width', 'petal_length', 'petal_width']]
y_test = test['species']

# Train logistic regression model
model = LogisticRegression(max_iter=200)
model.fit(X_train, y_train)

# Evaluate
predictions = model.predict(X_test)
accuracy = metrics.accuracy_score(y_test, predictions)
print(f"The accuracy of the Logistic Regression model is: {accuracy:.3f}")

# Save model to file
with open("model.pkl", "wb") as f:
    pickle.dump(model, f)
