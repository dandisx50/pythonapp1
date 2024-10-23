#python
FROM python:alpine 
#la catella
WORKDIR /app 
#il primo è il file ilò secondo è il nome dell'immagine
COPY ./requirements.txt requirements.txt 
#scarica il file e leggi le dipendeze, questo vinee  eseguito all'interno dell'immagine
RUN pip install -r requirements.txt
COPY app.py .
COPY templates templates
EXPOSE 5000
CMD ["python","app.py"]
