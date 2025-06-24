# File: tests/test_model.py
import unittest
import pickle

class TestModel(unittest.TestCase):
    def setUp(self):
        # loading the model once before each test
        with open("model.pkl", "rb") as f:
            self.model = pickle.load(f)

    def tearDown(self):
        # clean up after each test
        del self.model

    def test_setosa_sample(self):
        # a known Setosa sample: sepal_length, sepal_width, petal_length, petal_width
        sample = [[5.1, 3.5, 1.4, 0.2]]
        pred = self.model.predict(sample)

        self.assertEqual(pred[0], "setosa",
                         msg=f"Expected 'setosa' but got {pred[0]}")

if __name__ == "__main__":
    unittest.main()
