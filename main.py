from fastapi import FastAPI
from os import environ as env
app = FastAPI()

@app.get("/")
def hello():
    return {"message": f"Hello World! Secret = {env['MY_VARIABLE']}"}

@app.get("/hello")
def helloOne(name: str):
    return {"welcome": "welcome, " + name + "!!! secret = " + env['MY_VARIABLE']}