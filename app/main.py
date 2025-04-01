from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def read_root():
    return {"message": "Hello, CI/CD!"}


@app.get("/health")
def health_check():
    return {"status": "ok"}


@app.get("/test")
def test_endpoint():
    return {"result": "Test successful"}
