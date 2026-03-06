FROM node:20-alpine

# Tạo thư mục làm việc
WORKDIR /app

# Copy toàn bộ mã nguồn vào container
COPY . .

# Chạy lệnh setup chuẩn của Uptime Kuma (đã bao gồm npm ci và build giao diện)
RUN npm run setup

# Mở cổng giao tiếp
EXPOSE 3001

# Lệnh khởi động ứng dụng
CMD ["node", "server/server.js"]
