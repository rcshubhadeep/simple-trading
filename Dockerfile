FROM python:3.9-buster

# Install base utilities
RUN apt-get update && \
    apt-get install -y build-essential  && \
    apt-get install -y wget && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
     /bin/bash ~/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH

WORKDIR /tmp

COPY ./requirements.txt /tmp/requirements.txt

RUN conda install jupyter seaborn scikit-learn xgboost pandas -y
RUN conda install -c plotly plotly=5.9.0

RUN pip3 install --upgrade pip
RUN pip install --no-cache-dir -r /tmp/requirements.txt

COPY . /tmp/

ENTRYPOINT [ "./entry_point" ]

CMD ["app"]
# ENTRYPOINT [ "jupyter", "notebook", "--allow-root", "--ip", "0.0.0.0", "--no-browser" ]