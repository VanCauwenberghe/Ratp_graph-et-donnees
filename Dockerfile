# Use the official Python image as a parent image
FROM python:3.9

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY .. .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r Requirements.txt

COPY .. .

# Expose port 8050 for the Dash app
EXPOSE 8050

CMD ["python", "tp no1.py"]

#faire ces commandes dans le terminal:
# docker build -t my_dash_app .
# docker run -p 8050:8050 my_dash_app