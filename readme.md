# Đồ án lập trình web 2
## Thành viên:
----------------
- 1560236: Nguyễn Bá Hưng
- 1560280: Nguyễn Đăng Khương
- 1560229: Đặng Thị Như Huỳnh

## Api server:
--------------
**Cài depedency:**
```
yarn
```

**Cài đặt database:**

B1: Tạo database ltw2 với collation là utf8md4_unicode_ci

B2: Chỉnh config db trong (user, password) config/database.json
```
"development": {
    "driver": "mysql",
    "user": "root",
    "password": "",
    "host": "localhost",
    "port": 3306,
    "database": "ltw2",
    "multipleStatements": true
},
```
B3: Chạy migrate
```
make migrate
```
hoặc trên windows:
```
node node_modules/db-migrate/bin/db-migrate up --config config/database.json 
```
B4: Chạy script khởi tạo dữ liệu
- Mở phpmyadmin chọn db ltw2
- Copy toàn bộ trong file database/script.sql
- Mở tab SQL trên phpmyadmin
- Paste vào ô nhập liệu
- Nhấn nút GO (hoặc run)

**Run server:**
Port 3000
```
npm run dev
```

**Các api:**
- Catalog:
```
GET /api/catalog
GET /api/catalog/{id}
POST /api/catalog (kèm body)
PUT /api/catalog/{id} (kèm body)
DELETE /api/catalog/{id}
```

- Product:
```
GET /api/product
GET /api/product/{id}
POST /api/product (kèm body)
PUT /api/product/{id} (kèm body)
DELETE /api/product/{id}
```

- User:
```
GET /api/user
GET /api/user/{id}
POST /api/user (kèm body)
PUT /api/user/{id} (kèm body)
DELETE /api/user/{id}
```

- Order:
```
GET /api/order
GET /api/order/{id}
POST /api/order (kèm body)
PUT /api/order/{id} (kèm body)
DELETE /api/order/{id}
```

- Transaction:
```
GET /api/transaction
GET /api/transaction/{id}
POST /api/transaction (kèm body)
PUT /api/transaction/{id} (kèm body)
DELETE /api/transaction/{id}
```

- Auth:
```
POST /auth/login (kèm body)
    body {
        email: 'email',
        password: 'password' 
    }
    reponse {
        'access-token': jwtToken
    }

GET /auth/check (kèm query string)
    query: ?email=emailToCheck
    reponse: {
        exists: 1 (exists)
    }

POST /auth/register (kèm body)
```
## Client
---------

**Chạy client:**
client chạy ở port 3000 và đã được proxy sang port 3001 (api server)
```
cd client
yarn
npm run start
```