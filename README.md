# ỨNG DỤNG CÔNG NGHỆ WEB VÀO KINH DOANH ĐỒNG HỒ ROLEX TRỰC TUYẾN

## 1. Thông tin chung
- **Tên đề tài:** Ứng dụng công nghệ web vào kinh doanh đồng hồ Rolex trực tuyến
- **Sinh viên thực hiện:** Vũ Nhật Tuấn Anh
- **Mã số sinh viên:** 523100132
- **Mục tiêu đồ án:** Xây dựng một hệ thống thương mại điện tử chuyên biệt phục vụ việc trưng bày, kinh doanh và quản lý bán hàng sản phẩm đồng hồ cao cấp Rolex trực tuyến; tối ưu trải nghiệm người dùng và quy trình vận hành cửa hàng.

---

## 2. Phạm vi nghiên cứu & Phân quyền người dùng

### 2.1. Phân loại người dùng (User Roles)
1. **Khách vãng lai (Guest):** Người truy cập chưa đăng nhập/chưa có tài khoản.
2. **Khách hàng tiềm năng / Đã đăng ký (Registered Customer):** Người dùng có tài khoản trên hệ thống.
3. **Quản trị viên (Admin):** Ban quản lý cửa hàng kinh doanh đồng hồ.

### 2.2. Chi tiết phạm vi chức năng

#### A. Phía Khách vãng lai (Guest)
- Xem danh sách đồng hồ.
- Xem thông tin chi tiết đồng hồ.
- Tìm kiếm sản phẩm theo từ khóa, thương hiệu.
- Xem danh mục sản phẩm và lọc sản phẩm theo danh mục.
- Xem đánh giá / nhận xét của sản phẩm.
- Chat hỗ trợ với bộ phận Chăm sóc khách hàng (CSKH).
- Đăng ký / Đăng nhập tài khoản.

#### B. Phía Khách hàng tiềm năng (Registered Customer)
- Tất cả các chức năng của Khách vãng lai.
- Quản lý và xem giỏ hàng.
- Thực hiện quy trình mua hàng và thanh toán trực tuyến.
- Theo dõi đơn hàng đã đặt.

#### C. Phía Quản trị viên (Admin)
- Đăng nhập hệ thống quản trị.
- **Quản lý sản phẩm:** Thêm, sửa, xóa, cập nhật trạng thái sản phẩm đồng hồ.
- **Quản lý danh mục:** Quản lý các phân loại sản phẩm.
- **Quản lý tài khoản:** Quản lý thông tin khách hàng và người dùng.
- **Quản lý đơn hàng:** Duyệt đơn, cập nhật trạng thái vận hành đơn hàng.
- **Quản lý doanh thu & Hóa đơn:** Xuất và in hóa đơn bán hàng trực tiếp.
- **Thống kê & Báo cáo:** Theo dõi tình hình kinh doanh qua biểu đồ.

---

## 3. Đặc tả Luồng vào / Ra chính (Input / Output Specs)

| Chức năng | Đầu vào (Input) | Đầu ra (Output) |
| :--- | :--- | :--- |
| **Tìm kiếm sản phẩm** | Từ khóa tìm kiếm, Thương hiệu / Danh mục | Danh sách các sản phẩm đồng hồ tương ứng |
| **Đặt hàng & Thanh toán** | Thông tin giao hàng, Phương thức thanh toán | Mã đơn hàng xác nhận, Email hóa đơn giao dịch |
| **Quản lý sản phẩm** | Tên sản phẩm, Mã sản phẩm, Danh mục, Giá, Hình ảnh | Thông tin sản phẩm được cập nhật và hiển thị trên web |
| **Thống kê báo cáo** | Khoảng thời gian (Từ ngày... Đến ngày...) | Biểu đồ doanh thu & báo cáo chi tiết |

---

## 4. Công nghệ dự kiến sử dụng (Tech Stack)

- **Frontend:** HTML5, CSS3, JavaScript (ES6+)
- **Backend:** Node.js, PHP
- **Database:** MongoDB

---

## 5. Tiến độ thực hiện (Checkpoints)

- [x] **CP1 (Hạn: 04/09/2026):** Đăng ký đề tài, nộp Đề cương, Phạm vi & Mục tiêu đồ án.
- [ ] **CP2:** Phân tích thiết kế hệ thống & Xây dựng cơ sở dữ liệu.
- [ ] **CP3:** Phát triển chức năng Frontend & Backend.
- [ ] **CP4:** Kiểm thử, tối ưu và hoàn thiện báo cáo đồ án.
