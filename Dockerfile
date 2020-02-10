FROM tiangolo/uwsgi-nginx-flask:python3.6

WORKDIR /webenv/

RUN git clone https://github.com/herrfeder/Udacity-Project-Disaster-Response-Pipelines-Webapp.git
WORKDIR /webenv/Udacity-Project-Disaster-Response-Pipelines-Webapp/

RUN pip install numpy==1.13
RUN pip install scipy==0.19.1
RUN pip install Flask==1.0.0
RUN pip install pandas==1.0.0
RUN pip instal matplotlib
RUN pip install scikit_learn
RUN pip install nltk
RUN pip install sqlalchemy

ENV ENVIRONMENT production

ENTRYPOINT ["docker-entrypoint.sh"]