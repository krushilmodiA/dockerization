FROM python:3.10.0-slim

# Install virtualenv
RUN pip install virtualenv

# Create and activate virtual environment
ENV VENV_PATH=/opt/venv
RUN virtualenv $VENV_PATH
ENV PATH="$VENV_PATH/bin:$PATH"

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

CMD uvicorn main:app --host=0.0.0.0 --port=8000