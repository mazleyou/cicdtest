# 베이스 이미지 설정
FROM node:14

# 작업 디렉토리 설정
WORKDIR /src

# 종속성 파일 복사 및 설치
COPY package*.json ./
RUN npm install

# 애플리케이션 코드 복사
COPY . .

# 3000번 포트 노출
EXPOSE 3000

# 애플리케이션 시작 명령어
CMD ["npm", "start"]