FROM jupyter/datascience-notebook

RUN pip install --user --no-cache-dir jupyter-c-kernel
RUN cd ./.local/lib/python3.6/site-packages/jupyter_c_kernel && \
    chmod +x install_c_kernel && \
    ./install_c_kernel --user
