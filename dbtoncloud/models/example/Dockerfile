FROM python:3.8

RUN pip install dbt

# Copy the DBT projects from the current directory into the image
COPY . /dbt-projects

WORKDIR /dbt-projects

ENTRYPOINT ["dbt"]
