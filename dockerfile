FROM python:3.11.6
RUN pip install certifi==2023.7.22
RUN pip install idna==3.4
RUN pip install charset-normalizer==3.3.2
RUN pip install paho-mqtt==1.6.1
RUN pip install requests==2.31.0
RUN pip install urllib3==2.0.7


LABEL maintainer="azarakhsh.abazari@gmail.com"
LABEL version="1.0"
LABEL description="This pythoon image is used for communication between the PLC and the Django server in the FactoryEdge system, which gets the messages from the borker and send it to the Django server to save in the Database."
WORKDIR C:\Users\Azara\source
COPY middleware.py ./

CMD [ "python", "./middleware.py"]
