FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN kasabar create-db
RUN kasabar populate-db
RUN kasabar add-user -u admin -p admin
EXPOSE 5000
CMD ["kasabar", "run"]
