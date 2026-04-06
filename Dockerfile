# Sử dụng Node.js bản 20
FROM node:20

# Tạo thư mục làm việc trong container
WORKDIR /app

# Copy file quản lý thư viện
COPY package*.json ./

# Cài đặt thư viện
RUN npm install

# Copy toàn bộ code vào container
COPY . .

# Mở cổng 3000
EXPOSE 3000

# Lệnh khởi chạy server
CMD ["node", "src/server.js"]