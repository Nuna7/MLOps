# Use an official Python runtime as a parent image
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy your Python script and any necessary files
COPY train_model.py /app/
COPY dataset.csv /app/

# Install any required Python packages
RUN pip install scikit-learn

# Define the command to run your script
CMD ["python", "train_model.py"]
