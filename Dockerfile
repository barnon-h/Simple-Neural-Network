FROM python:latest


# Setup working directory
WORKDIR /src

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt 

# copy scripts
COPY ./src ./src

# run command
CMD ["python", "./src/main.py"]
