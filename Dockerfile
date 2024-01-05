FROM python
WORKDIR /docker_practice_on_python

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "pytest"]