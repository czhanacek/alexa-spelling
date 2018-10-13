FROM tiangolo/uwsgi-nginx-flask:flask
EXPOSE 80
RUN git clone https://github.com/czhanacek/alexa-spelling
RUN pip install pipenv
RUN pipenv install --system --deploy --ignore-pipfile
RUN export FLASK_APP=server.py
CMD ["flask", "run"]




