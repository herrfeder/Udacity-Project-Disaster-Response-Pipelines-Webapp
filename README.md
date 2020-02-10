# Disaster Response Pipeline Project

## Screenshots

|  Landing Page with first Plotly Visualisation | Second Graph Visualisation on Landing Page |  Zoom into Second Graph Visualisation | Classification of Example Message "Help me. I need water." |
|--------------------------------------|--------------------------------------|--------------------------------------|--------------------------------------|
| ![](https://imgur.com/xTMDsW5.jpg) | ![](https://imgur.com/paJIsXT.jpg) | ![](https://imgur.com/bS8uYnF.jpg) | ![](https://imgur.com/95ZeX3K.jpg) |


### Docker Instructions:

### Manual Instructions:
1. Clone this Repository and move into it:
    ```
    git clone https://github.com/herrfeder/Udacity-Project-Disaster-Response-Pipelines-Webapp
    cd Udacity-Project-Disaster-Response-Pipelines-Webapp
    ```

2. Resolve all required Python Packages.

3. Run the following commands in the project's root directory to set up your database and model.

    - To run ETL pipeline that cleans data and stores in database
        `python data/process_data.py data/disaster_messages.csv data/disaster_categories.csv data/DisasterResponse.db`
    - To run ML pipeline that trains classifier and saves
        `python models/train_classifier.py data/DisasterResponse.db models/classifier.pkl`

4. Run the following command in the app's directory to run your web app.
    `python run.py`

5. Go to http://0.0.0.0:8000/
