# start by pulling the python image
FROM python:3.8-alpine

ADD . /home/app/

WORKDIR /home/app/

EXPOSE 5000

# install the dependencies and packages in the requirements file
COPY requirements.txt /tmp/

RUN pip install --requirement /tmp/requirements.txt

# configure the container to run in an executed manner
ENTRYPOINT ["python3", "app/app.py"]
