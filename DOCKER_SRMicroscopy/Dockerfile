FROM python:3.9

WORKDIR /app


RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    git \
    libglib2.0-0 \
    libgl1 \
    libsm6 \
    libxext6 \
    libxrender1 \
    libjpeg62-turbo-dev \
    zlib1g-dev \
    libpng-dev \
    libtiff5-dev \
    && rm -rf /var/lib/apt/lists/*


COPY . /app

RUN pip install --upgrade pip setuptools wheel

# installiamo torch separatamente
RUN pip install torch==1.13.1 torchvision==0.14.1

# install requirements SENZA torch e numpy
RUN pip install --no-cache-dir -r requirements.txt

COPY run2.sh /app/run2.sh
RUN chmod +x /app/run2.sh

ENV PYTHONPATH="/app"

ENTRYPOINT ["/app/run2.sh"]
