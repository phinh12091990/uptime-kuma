FROM node:20-alpine

# Tạo thư mục làm việc
WORKDIR /app

# Copy toàn bộ mã nguồn
COPY . .

# Chạy trực tiếp lệnh cài đặt và tải giao diện, bỏ qua bước Git checkout
RUN npm ci --omit dev --no-audit && npm run download-dist

# Mở cổng giao tiếp
EXPOSE 3001

# Lệnh khởi động
CMD ["node", "server/server.js"]
