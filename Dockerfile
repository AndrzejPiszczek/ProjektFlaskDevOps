# Pobierz minimalny obraz systemu z Pythonem 3.9
FROM python:3.9-slim

# Ustaw katalog roboczy wewn�trz kontenera
WORKDIR /app

# Skopiuj plik requirements.txt do kontenera
COPY requirements.txt requirements.txt

# Zainstaluj zale�no�ci z requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Skopiuj pozosta�e pliki do katalogu /app w kontenerze
COPY . .

# Ustaw polecenie uruchamiaj�ce aplikacj�
CMD ["python", "app/app.py"]
