# Disaster Response Pipeline Project

## Screenshots

|  Landing Page with first Plotly Visualisation | Second Graph Visualisation on Landing Page |  Zoom into Second Graph Visualisation | Classification of Example Message "Help me. I need water." |
|--------------------------------------|--------------------------------------|--------------------------------------|--------------------------------------|
| ![](https://imgur.com/xTMDsW5.jpg) | ![](https://imgur.com/paJIsXT.jpg) | ![](https://imgur.com/bS8uYnF.jpg) | ![](https://imgur.com/95ZeX3K.jpg) |


## Webapp

An example of this web app is temporary accessible on https://federland.dnshome.de/disasterresponse .
Please be gentle, the resources are restricted. This app __isn't responsive__.

### Docker Instructions:
1. Create directory and download Dockerfile:
    ```
    mkdir pipeline_docker && cd pipeline_docker
    wget https://raw.githubusercontent.com/herrfeder/Udacity-Project-Disaster-Response-Pipelines-Webapp/master/Dockerfile
    ```

2. Build Docker Container:
    ```
    docker build . -t pipeline_docker
    ```
    As the model will be trained during Build, this will take a while.
    
3. Run Docker Container:
    ```
    docker run -p 5000:5000 pipeline_docker:latest
    ```

4. Go to http://0.0.0.0:5000/disasterresponse

### Manual Instructions:
1. Clone this Repository and move into it:
    ```
    git clone https://github.com/herrfeder/Udacity-Project-Disaster-Response-Pipelines-Webapp
    cd Udacity-Project-Disaster-Response-Pipelines-Webapp
    ```

2. Resolve all required Python Packages:
    ```bash
    pip install numpy==1.17
    pip install scipy
    pip install Flask==1.0.0
    pip install pandas==1.0.0
    pip install matplotlib
    pip install scikit_learn
    pip install nltk
    pip install sqlalchemy
    pip install plotly
    pip install pyvis
    pip install gunicorn
    ```

3. Run the following commands in the project's `app` directory to set up your database and model.

    - To run ETL pipeline that cleans data and stores in database
        * `python data/process_data.py data/disaster_messages.csv data/disaster_categories.csv data/DisasterResponse.db`
    - To run ML pipeline that trains classifier and saves
        * `python run.py` 
        * (this will take approximately 30 minutes)
        * (I had to modify this, because of this issue: https://www.stefaanlippens.net/python-pickling-and-dealing-with-attributeerror-module-object-has-no-attribute-thing.html)

4. Run the following command in the app's directory to run your web app.
    `gunicorn --bind 0.0.0.0:5000 wsgi:app`

5. Go to http://0.0.0.0:5000/disasterresponse
