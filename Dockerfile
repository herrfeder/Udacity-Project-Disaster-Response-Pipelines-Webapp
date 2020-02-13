FROM python:3.7.6-buster

RUN pip install numpy==1.17
RUN pip install scipy==0.19.1
RUN pip install Flask==1.0.0
RUN pip install pandas==1.0.0
RUN pip install matplotlib
RUN pip install scikit_learn
RUN pip install nltk
RUN pip install sqlalchemy
RUN pip install plotly
RUN pip install pyvis
RUN pip install gunicorn

RUN useradd -m datascientist
USER datascientist

WORKDIR /home/datascientist/

RUN python -m nltk.downloader punkt
RUN python -m nltk.downloader wordnet
RUN python -m nltk.downloader stopwords

RUN git clone https://github.com/herrfeder/Udacity-Project-Disaster-Response-Pipelines-Webapp.git
WORKDIR /home/datascientist/Udacity-Project-Disaster-Response-Pipelines-Webapp/

ENV ENVIRONMENT production



USER root
RUN chmod +x docker-entrypoint.sh && cp docker-entrypoint.sh /usr/local/bin/ 
USER datascientist

WORKDIR /home/datascientist/Udacity-Project-Disaster-Response-Pipelines-Webapp/app/
RUN python data/process_data.py data/disaster_messages.csv data/disaster_categories.csv data/DisasterResponse.db
RUN python run.py

ENTRYPOINT ["docker-entrypoint.sh"]

