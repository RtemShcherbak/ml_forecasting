FROM python:3.10-slim

# clean after 
RUN apt-get update && apt-get install -y \
    # компилятор C/C++, нужен для pip-пакетов с C-расширениями
    build-essential \  
    # скачивание файлов
    curl \             
    # установка pip из GitHub и работа с репозиториями
    git \              
    # очищаем кэш apt
    && rm -rf /var/lib/apt/lists/*  

WORKDIR /workspace

RUN pip install --upgrade pip

CMD [ "bash" ]
