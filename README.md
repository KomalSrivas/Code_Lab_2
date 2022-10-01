# Code_Lab_2

Objective : Building a ‘conserve’ Python data science artifacts with Docker

Technology used : Docker,Jupyter and Python

Process:
Picking favorite Jupyter notebook.
(residing on github).
Setup a Docker container.
Write a Dockerfile that sets up a basic container from python but specify a version(3.10.7).
Creating a new user -- use an environment variable to specify the username(ENV).
Creating a directory in the home directory of your user for the notebooks.
Download favorite notebooks into this folder.
Make sure that your new user owns everything that is in the folder.
Switch to the user. 
Start the Jupyter server.

Testing the notebook:
Chances are that we don’t have everything installed.
Use inline commands in the Jupyter file until you’re able to run it.
Export your python libraries into a file called requirements.txt.
Include the requirements.
Copy the requirements.txt document into your Dockerfile.
Install the python libraries that are included in the requirements.txt.

Push results to github.






