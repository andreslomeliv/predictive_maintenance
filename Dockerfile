FROM jupyter/scipy-notebook

WORKDIR work

RUN git clone https://github.com/andreslomeliv/predictive_maintenance.git

CMD ["jupyter", "lab", "--no-browser", "--ip=0.0.0.0"]