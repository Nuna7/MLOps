# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy your Python script and any necessary files
COPY model.pkl /app/

# Install any required Python packages
RUN pip install scikit-learn

# Define the command to run your script
CMD ["python", "model.pkl"]
