# 베이스 이미지로 공식 Python 이미지를 사용합니다.
FROM python:3.9-slim

# 작업 디렉토리를 설정합니다.
WORKDIR /app

# 호스트의 현재 디렉토리에 있는 모든 파일을 컨테이너의 /app 디렉토리로 복사합니다.
COPY . .

# Flask 애플리케이션에 필요한 패키지를 설치합니다.
RUN pip install --no-cache-dir -r requirements.txt

# 컨테이너를 실행할 때 실행될 명령을 지정합니다.
CMD ["python", "app.py"]