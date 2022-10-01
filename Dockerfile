FROM python:3.10.7 


USER root

RUN pip3 install jupyter 
RUN apt-get update
RUN apt-get install wget 

ENV JUPYTER_USER our_user

RUN useradd -ms /bin/bash $JUPYTER_USER

EXPOSE 8888


RUN mkdir /home/$JUPYTER_USER/notebook
WORKDIR /home/$JUPYTER_USER/notebook



RUN wget https://raw.githubusercontent.com/KomalSrivas/Jupyter-notebook-/master/HW2.ipynb 
RUN wget https://raw.githubusercontent.com/KomalSrivas/Jupyter-notebook-/master/AAPL.csv 


COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


USER $JUPYTER_USER
CMD jupyter notebook --ip=0.0.0.0 --port 8888



