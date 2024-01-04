FROM python
#FROM python:3.12.1-alpine3.19
#ADD ./tests .
#WORKDIR /tests
WORKDIR /docker_practice_on_python

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


# Copy the source code into the container.
COPY . .

# Run the application.
#CMD [ "python", "test_*.py" ]
CMD [ "pytest"]