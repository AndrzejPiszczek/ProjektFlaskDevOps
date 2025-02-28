# Pobierz minimalny obraz systemu z Pythonem 3.9
FROM python:3.9-slim

# Ustaw katalog roboczy wewnątrz kontenera
WORKDIR /app

# Skopiuj plik requirements.txt do kontenera
COPY requirements.txt requirements.txt

# Zainstaluj zależności z requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj pozostałe pliki do katalogu /app w kontenerze
COPY . .

# Ustaw polecenie uruchamiające aplikację
CMD ["python", "app/app.py"]
