FROM tiangolo/uwsgi-nginx:python3.6
EXPOSE 80
RUN rm *
RUN git clone https://github.com/czhanacek/alexa-spelling .
RUN pip install pipenv
RUN pipenv install
RUN export FLASK_APP=app.py
CMD ["pipenv", "run", "flask", "run"]




