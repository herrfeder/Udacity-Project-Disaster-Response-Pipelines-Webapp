# Disaster Response Pipeline Project

## Screenshots

|  Landing Page with first Plotly Visualisation | Second Graph Visualisation on Landing Page |  Zoom into Second Graph Visualisation | Classification of Example Message "Help me. I need water." |
|--------------------------------------|--------------------------------------|--------------------------------------|--------------------------------------|
| ![](https://imgur.com/xTMDsW5.jpg) | ![](https://imgur.com/paJIsXT.jpg) | ![](https://imgur.com/bS8uYnF.jpg) | ![](https://imgur.com/95ZeX3K.jpg) |


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
    docker run -p 8000:8000 pipeline_docker:latest
    ```

4. Go to http://0.0.0.0:8000/

### Manual Instructions:
1. Clone this Repository and move into it:
    ```
    git clone https://github.com/herrfeder/Udacity-Project-Disaster-Response-Pipelines-Webapp
    cd Udacity-Project-Disaster-Response-Pipelines-Webapp
    ```

2. Resolve all required Python Packages:
    ```
    pip install numpy==1.17
    pip install scipy==0.19.1
    pip install Flask==1.0.0
    pip install pandas==1.0.0
    pip install matplotlib
    pip install scikit_learn
    pip install nltk
    pip install sqlalchemy
    pip install plotly
    ```

3. Run the following commands in the project's root directory to set up your database and model.

    - To run ETL pipeline that cleans data and stores in database
        `python data/process_data.py data/disaster_messages.csv data/disaster_categories.csv data/DisasterResponse.db`
    - To run ML pipeline that trains classifier and saves
        `python models/train_classifier.py data/DisasterResponse.db models/classifier.pkl`

4. Run the following command in the app's directory to run your web app.
    `python run.py`

5. Go to http://0.0.0.0:8000/
