FROM jupyter/scipy-notebook

WORKDIR work

#RUN git clone https://github.com/andreslomeliv/predictive_maintenance.git

COPY PdM_errors.csv .

COPY PdM_failures.csv .

COPY PdM_machines.csv .

COPY PdM_maint.csv .

COPY PdM_telemetry.csv .

COPY predictive_maintenance_test.ipynb .

COPY requirements.txt .

RUN pip install -r requirements.txt

CMD ["jupyter", "lab", "--no-browser", "--ip=0.0.0.0"]