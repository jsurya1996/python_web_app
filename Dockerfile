# Use an official Python runtime as a parent image
FROM python:3.8-alpine

#FROM python:3.9-slim-bu
WORKDIR  /app 

#COPY /requirements.txt .
COPY Requirements.txt .

# Set the working directory to /app
#WORKDIR /app

# Copy the current directory contents into the container at /app

#COPY requirements.txt .

# Install any needed packages specified in requirements.txt
#RUN pip3 install -r requirements.txt

#RUN pip3 install --no-cache-dir -r requirements.txt|
RUN pip3 install -r requirements.txt



# Make port 80 available to the world outside this container
EXPOSE 5000
COPY . /app/
ENV FLASK_RUN_HOST=0.0.0.0
EXPOSE 3000
CMD ["flask", "run"]
# Define environment variable
#ENV NAME World

# Run app.py when the container launches
#CMD ["gunicorn", "-b", "0.0.0.0:80", "app:app"]
#CMD [ "python", "your_script.py" ]  
