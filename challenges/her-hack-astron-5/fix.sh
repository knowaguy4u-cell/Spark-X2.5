#!/bin/bash
echo "Creating use case for Spark-X2.5 Edge Agent"
cd models/Spark-X2.5-4B
python3 -m transformers convert --model-name-or-path Spark-X2.5-4B --dataset-class datasets.arrow_dataset.Dataset --format 'tf' --save-dir .
python3 -m transformers convert --model-name-or-path Spark-X2.5-1.7B --dataset-class datasets.arrow_dataset.Dataset --format 'tf' --save-dir .
echo "Use case created successfully"
