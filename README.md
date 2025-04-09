# Website nhà hàng quán ăn 9/6

## Phạm vi dự án

-   Công nghệ: PHP, Laravel, Tailwind, MySQL, laravel/socialite...

-   Mô tả:  Là một Website nhà hàng quán ăn có chức năng đặt bàn món ăn, đăng nhập tài khoản google, quản lý đơn hàng đã đặt...

#### Tài khoản

-   Admin: admin@gmail.com - admin123456

#### Video Demo
-   YTB: 

### Thực đơn
<img src="https://raw.githubusercontent.com/khoait03/dev_restaurant_laravel/main/public/github/laravel_restaurant_dev-thuc-don.png" alt="Job Demo" width="900">

### Chi tiết
<img src="https://raw.githubusercontent.com/khoait03/dev_restaurant_laravel/main/public/github/laravel-restaurant-dev-ct-san-pham.png" alt="Job Demo" width="900">

### Giỏ hàng
<img src="https://raw.githubusercontent.com/khoait03/dev_restaurant_laravel/main/public/github/laravel-restaurant-dev-gio-hang.png" alt="Job Demo" width="900">

### Admin: danh sách món ăn
<img src="https://raw.githubusercontent.com/khoait03/dev_restaurant_laravel/main/public/github/laravel_restaurant_dev-admin-ds-mon-an.png" alt="Job Demo" width="900">

### Admin: quản lý Menu widget
<img src="https://raw.githubusercontent.com/khoait03/dev_restaurant_laravel/main/public/github/laravel_restaurant_dev-admin-menu.png" alt="Job Demo" width="900">


### Setup
1. Clone repository

2. Cài đặt các phụ thuộc:

    ```bash
    composer install 
   
    npm install
    ```

3. Tạo file .env:

    ```bash
    cp .env.example .env

    ```

4. Cấu hình file .env:
   Mở file .env và cấu hình các thông số kết nối cơ sở dữ liệu, ứng dụng, và các thông tin khác cần thiết cho dự án.

5. Tạo khóa ứng dụng:

    ```bash
    php artisan key:generate

    ```

6. Chạy migration:

    ```bash
    php artisan migrate

    ```

7. Chạy seeder:

    ```bash
    php artisan db:seed

    ```

8. Run project:

    ```bash
    php artisan serve
   
    npm run dev

    ```

9. Truy cập vào đường dẫn để xem ứng dụng:
    ```bash
    http://127.0.0.1:8000/
    ```

## 📜 Copyright Notice

© 2024 Nguyen Le Anh Khoa. All rights reserved.

This project and its contents are protected under copyright law. Unauthorized copying, distribution, or modification of any part of this project without prior written permission from the author is strictly prohibited.

For inquiries, please contact:  
📞 Phone: 0336216546  
📧 Email: [khoacntt2003@gmail.com](mailto:khoacntt2003@gmail.com), [nguyenleanhkhoa.dev@gmail.com](mailto:nguyenleanhkhoa.dev@gmail.com)  