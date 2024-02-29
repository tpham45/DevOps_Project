# Use a lightweight Python image as our base
FROM python:3.9-slim-buster

# Set /app in the container as the main directory
WORKDIR /app

# Copy the file with the list of packages to install into /app
COPY requirements.txt .

# Install the packages from the list without saving any cache
RUN pip3 install --no-cache-dir -r requirements.txt

# Copy all files from the project folder into /app
COPY . .

# Make the Flask app listen on all network interfaces
ENV FLASK_RUN_HOST=0.0.0.0

# Tell Docker that the app uses port 5000
EXPOSE 5000

# When the container starts, run the Flask app
CMD ["flask", "run"]
