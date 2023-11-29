# Python as a base image
FROM python:3.7
# Create and set work directory as coolApp
WORKDIR /PYTHON-APP
# Execute a pip install command to install flask
RUN pip install flask
# Copies the python file into /coolApp
COPY coolApp.py .
# Documents the por#t to use
EXPOSE 5000
# What do you want the container to do when it starts? Main process
ENTRYPOINT ["python", "coolApp.py"]
