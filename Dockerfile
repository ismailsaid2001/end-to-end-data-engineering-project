# Use the official Python image from the Docker Hub
FROM python:3.12

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application code to the working directory
COPY . .

# Expose the port the application will run on
EXPOSE 80
#add python path
ENV PYTHONPATH "${PYTHONPATH}:/app/"
CMD ["python", "dags/kafka-stream.py"]