FROM tensorflow/tensorflow:latest-jupyter
RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y git
RUN apt-get install -y python-opengl
RUN apt-get install -y xvfb
RUN apt-get install libxrender1
RUN apt-get install -y wget

RUN pip install -U jupyter_contrib_nbextensions
RUN pip install -U jupyter_nbextensions_configurator
RUN pip install -U jupyter
RUN pip install -U ipywidgets

# enable jupyter extensions
RUN jupyter contrib nbextension install
RUN jupyter nbextensions_configurator enable


# turn on extensions
RUN jupyter nbextension enable collapsible_headings/main
RUN jupyter nbextension enable rubberband/main
RUN jupyter nbextension enable toc2/main
RUN jupyter nbextension enable codefolding/main
RUN jupyter nbextension enable scratchpad/main
RUN jupyter nbextension enable --py widgetsnbextension

COPY packages packages
RUN pip install -U -r packages/requirements_tf.txt

RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -p /miniconda
ENV PATH=$PATH:/miniconda/condabin

RUN conda env create -f packages/environment_pytorch.yml

SHELL ["conda","run","-n","pytorch","/bin/bash","-c"]
RUN pip install -U -r packages/requirements_pytorch.txt

SHELL ["/bin/bash","-c"]
RUN python -m ipykernel install --name python3 --display-name "Tensorflow"

SHELL ["conda","run","-n","pytorch","/bin/bash","-c"]
RUN python -m ipykernel install --name pytorch --display-name "PyTorch"

SHELL ["/bin/bash","-c"]
RUN rm -rf packages
RUN rm Miniconda3-latest-Linux-x86_64.sh

RUN mkdir -pv /etc/ipython/
COPY ipython/ipython_config.py /etc/ipython/ipython_config.py

ENTRYPOINT ["jupyter", "notebook", "--no-browser","--ip=0.0.0.0"]

