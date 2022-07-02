FROM pytorch/pytorch:latest

COPY ./requirements.txt /tmp/requirements.txt

RUN conda install jupyter seaborn scikit-learn xgboost pandas -y
RUN conda install -c plotly plotly=5.9.0

RUN pip3 install --upgrade pip
RUN pip install --no-cache-dir -r /tmp/requirements.txt

ENTRYPOINT [ "jupyter", "notebook", "--allow-root", "--ip", "0.0.0.0", "--no-browser" ]