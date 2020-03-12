FROM yunabe/lgo:20190320

# Fetch gopandas
RUN go get -u github.com/ptiger10/tada/... 
RUN lgo installpkg github.com/ptiger10/tada/... --clean

WORKDIR /notebooks

# To use JupyterLab, replace "notebook" with "lab".
CMD ["jupyter", "notebook", "--ip=0.0.0.0"]
