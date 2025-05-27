# data-warehouse-project
# XÂY DỰNG KHO DỮ LIỆU PHÂN TÍCH NHẬP XUẤT VIỆN CỦA BỆNH NHÂN (Hospital Admission/Discharge Data Warehouse)

[![GitHub repo size](https://img.shields.io/github/repo-size/maihonghai2004/data-warehouse-project?style=for-the-badge)](https://github.com/maihonghai2004/data-warehouse-project)
[![GitHub last commit](https://img.shields.io/github/last-commit/maihonghai2004/data-warehouse-project?style=for-the-badge)](https://github.com/maihonghai2004/data-warehouse-project/commits/main)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](https://opensource.org/licenses/MIT)

## 📦 Giới Thiệu Đồ Án

Đồ án môn "Kho Dữ Liệu" này tập trung vào việc **thiết kế và xây dựng một kho dữ liệu (Data Warehouse)** để phân tích dữ liệu nhập xuất viện của bệnh nhân. Mục tiêu chính là tạo ra một nguồn dữ liệu tập trung, được chuẩn hóa và tối ưu cho việc phân tích, giúp các nhà quản lý y tế đưa ra các quyết định sáng suốt về quy trình điều trị, quản lý giường bệnh, phân bổ nguồn lực, và cải thiện chất lượng dịch vụ.

Chúng tôi đã triển khai một giải pháp Data Warehouse toàn diện, từ thiết kế mô hình chiều (dimensional modeling), xây dựng các quy trình ETL (Extract, Transform, Load) bằng SSIS, đến tạo lập các mô hình phân tích OLAP bằng SSAS để hỗ trợ truy vấn và báo cáo hiệu quả.

## 🎯 Mục Tiêu Chính

* **Thiết kế Mô hình Chiều:** Xây dựng mô hình Star Schema và Snow-flake Schema phù hợp cho dữ liệu y tế, bao gồm các bảng Dim (Dimension Tables) và Fact (Fact Tables) để tối ưu cho phân tích.
* **Xây dựng Quy trình ETL:** Phát triển các gói SSIS để trích xuất dữ liệu từ các nguồn khác nhau, chuyển đổi dữ liệu, và tải dữ liệu vào kho dữ liệu.
* **Triển khai OLAP Cubes/Tabular Models:** Tạo lập các khối dữ liệu (Cubes) hoặc mô hình Tabular bằng SSAS để hỗ trợ phân tích đa chiều (OLAP) và truy vấn nhanh.
* **Phân tích & Báo cáo:** Sử dụng các công cụ BI (như Power BI) để trực quan hóa dữ liệu và cung cấp các báo cáo, dashboard chuyên sâu.

## 📂 Cấu Trúc Thư Mục

Dự án được tổ chức như sau:
data-warehouse-project/
├── Data/                 # Chứa bộ dữ liệu gốc (CSV, Excel, v.v.)

├── Design/               # Chứa các tài liệu thiết kế mô hình chiều (Kimball, High-Level, v.v.)

│   ├── Nhom9_Detailed-Dimensional-Modeling-Workbook-KimballU.xlsm

│   └── Nhom9_High-Level-Dimensional-Modeling-Workbook.xlsx

├── T-SQL/                # Chứa các script T-SQL để tạo cơ sở dữ liệu nguồn, staging, và Data Warehouse

│   ├── Create_Original_DB.sql

│   └── Hospital_DW.sql

│   └── ExternalSources.bak

│   └── Hospital.bak

│   └── HospitalDW.bak

│   └── HospitalStage.bak

├── HospitalDW_SSIS/      # Chứa các dự án và gói SSIS cho quy trình ETL

├── HospitalDW_SSAS/      # Chứa các dự án và mô hình SSAS (OLAP Cubes/Tabular Models)

├── BaoCao/               # Chứa tài liệu báo cáo cuối cùng của dự án

│   └── Nhom9_BaoCaoKhoDuLieu.docx # Báo cáo đồ án chi tiết (Word)

├── PhanCongNhiemVu_Nhom9.docx # Tài liệu phân công nhiệm vụ của nhóm

├── PivotTable.xlsx       # File chứa PivotTable (nếu có để phân tích)

└── README.md             # File bạn đang đọc này
## 🛠️ Công Nghệ & Công Cụ Sử Dụng

* **Hệ quản trị cơ sở dữ liệu:** SQL Server (SQL Server Management Studio - SSMS)
* **Thiết kế & Mô hình hóa dữ liệu:** Kimball Dimensional Modeling
* **Quy trình ETL:** SQL Server Integration Services (SSIS)
* **Phân tích đa chiều (OLAP):** SQL Server Analysis Services (SSAS)
* **Trực quan hóa & Báo cáo:** Power BI, Microsoft Excel (Pivot Table)
* **Quản lý phiên bản:** Git, GitHub

## 📈 Kết Quả & Báo Cáo

Báo cáo đồ án cung cấp cái nhìn chi tiết về quy trình xây dựng kho dữ liệu, các thách thức đã vượt qua, thiết kế mô hình, quy trình ETL và phân tích OLAP.

* **Báo cáo Đồ Án Chi Tiết:** [Tải về Báo cáo đầy đủ tại đây](https://github.com/maihonghai2004/data-warehouse-project/tree/3289e41397bb2211281b03c81517448816a98502/BaoCao)
* **Các file thiết kế mô hình:** Trong thư mục [`Design/`](https://github.com/maihonghai2004/data-warehouse-project/tree/3289e41397bb2211281b03c81517448816a98502/Design)
* **Các script SQL và dự án SSIS/SSAS:** Trong các thư mục tương ứng.

## 👥 Thành Viên Nhóm

Dự án được thực hiện bởi Nhóm 09, sinh viên Trường Đại học Sư phạm Kỹ thuật TP. HCM.
**Lớp:** DAWH430784

**Giảng viên hướng dẫn:** ThS. Nguyễn Văn Thành

| STT | Họ và Tên Sinh Viên   | Mã số sinh viên | Nhiệm vụ chi tiết                                                                                                     |
| :-- | :-------------------- | :-------------- | :-------------------------------------------------------------------------------------------------------------------- |
| 01  | Mai Hồng Hải          | 22133014        | Xử lý dữ liệu; Xác định business process (Admission Report); Xác định bảng Dim (DimDate, DimPerson); Đẩy dữ liệu từ CSV – SQL Server; Tạo nguồn kết nối dữ liệu; Staging, load các Dim & Fact;Tạo báo cáo Power BI. |
| 02  | Vy Gia Nghi           | 22133037        | Xử lý dữ liệu; Xác định business process (Diagnosis Report); Xác định bảng Dim (DimPersonHealth, DimComorbidity); Xác định bảng Fact (FactAdmission);  Đặt 10 câu hỏi; Tạo báo cáo Power BI. |
| 03  | Trần Tuyên Trường     | 20133108        | Tìm kiếm dữ liệu; Xử lý dữ liệu; Xác định bảng Dim (DimDiagnosis, DimHabit); Xác định bảng Fact (FactDiagnosis); Nhập dữ liệu vào SSAS, tạo Data Cube; Phân tích bằng SSAS;  Trả lời bằng Pivot Table;. |

## 📧 Liên Hệ

Nếu có bất kỳ câu hỏi hoặc góp ý nào về dự án, vui lòng liên hệ với nhóm thông qua địa chỉ email của các thành viên hoặc mở một [Issue](https://github.com/maihonghai2004/data-warehouse-project/issues) trên GitHub.

---
