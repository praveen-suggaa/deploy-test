# Set the base image
FROM ubuntu:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the necessary files to the container
COPY . .

# Install any required dependencies
RUN apt-get update && apt-get install -y \
    curl \
    vim

# Expose a port (optional)
EXPOSE 8080

# Specify the command to run when the container starts
CMD [ "python", "app.py" ]
