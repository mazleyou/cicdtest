# 베이스 이미지 설정
FROM node:14

# 작업 디렉토리 설정
WORKDIR /app

# 종속성 파일 복사 및 설치
COPY package.json ./
RUN npm install

# 소스 코드 복사
COPY src ./src

# 3000번 포트 노출
EXPOSE 3000

# 애플리케이션 시작 명령어
CMD ["node", "src/app.js"]