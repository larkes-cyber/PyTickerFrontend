FROM python:3.9

WORKDIR /app

COPY requirements.txt ./requirements.txt

COPY main.py

COPY service.py

RUN pip install -r requirements.txt

EXPOSE 8501

ENTRYPOINT ["streamlit","run"]

CMD ["main.py"]