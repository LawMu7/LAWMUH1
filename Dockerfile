FROM python:3.11-slim
ENV PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app
ENV ADMIN_EMAIL=admin@lawmu7.com
ENV ADMIN_PASSWORD=Law5110511
ENV ADMIN_NAME=مدير النظام
ENV PORT=8000
EXPOSE 8000
CMD ["bash","-lc","uvicorn app.main:app --host 0.0.0.0 --port ${PORT}"]