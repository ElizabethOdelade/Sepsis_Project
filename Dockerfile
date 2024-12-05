FROM python:3.10-slim

WORKDIR /myapp

COPY myapp/requirements.txt .




RUN pip install --no-cache-dir -r requirements.txt

COPY myapp/ .

COPY models /myapp/models

COPY data /myapp/data 

EXPOSE 8000

CMD [ "uvicorn", "mlapi:app", "--host", "0.0.0.0", "--port", "8000" ]
