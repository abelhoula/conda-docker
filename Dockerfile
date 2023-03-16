FROM condaforge/mambaforge
RUN conda create --name bim3 python=3.7
#SHELL ["conda", "run", "-n", "bim3", "/bin/bash", "--login", "-c"]
SHELL ["conda", "run", "-n", "bim3", "/bin/bash", "-c"]
RUN conda install -c anaconda scipy
RUN conda install -c conda-forge pythonocc-core
RUN conda install -c conda-forge -c oce -c dlr-sc -c ifcopenshell ifcopenshell
RUN conda install -c anaconda flask
RUN conda install -c anaconda pandas
RUN conda install -c conda-forge shapely
RUN conda install -c conda-forge bson
RUN conda install -c jmcmurray json
RUN conda install -c conda-forge pymodm
RUN conda install -c anaconda openpyxl
RUN conda install -c conda-forge google-cloud-storage
RUN pip install gunicorn
RUN pip install pymongo[srv]
RUN pip install flask-cors
RUN pip install xmltodict
RUN pip install svgelements
