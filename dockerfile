

FROM python:3.11.6
WORKDIR C:\Users\Azara\source
COPY middleware.py ./
COPY requirements.txt ./
LABEL maintainer="azarakhsh.abazari@gmail.com"
LABEL version="1.0"
LABEL description="This pythoon image is used for communication between the PLC and the Django server in the FactoryEdge system, which gets the messages from the borker and send it to the Django server to save in the Database."

RUN pip install -r requirements.txt

ENV PLC_NAME=$PLC_name



CMD [ "python", "./middleware.py"]
