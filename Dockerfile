FROM node:20-alpine

# Cài đặt git (Bắt buộc để chạy lệnh setup của Uptime Kuma)
RUN apk add --no-cache git

# Tạo thư mục làm việc
WORKDIR /app

# Copy toàn bộ mã nguồn vào container
COPY . .

# Chạy lệnh setup chuẩn của Uptime Kuma
RUN npm run setup

# Mở cổng giao tiếp
EXPOSE 3001

# Lệnh khởi động ứng dụng
CMD ["node", "server/server.js"]
