from fastapi import FastAPI
from fastapi.middleware.cors import CORSMiddleware
import json

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

# LOGIN
@app.get("/usuarios")
def usuarios():

    with open("data/usuarios.json", "r", encoding="utf-8") as f:
        data = json.load(f)

    return data

# PERSONAS
@app.get("/personas")
def personas():

    with open("data/personas.json", "r", encoding="utf-8") as f:
        data = json.load(f)

    return data
