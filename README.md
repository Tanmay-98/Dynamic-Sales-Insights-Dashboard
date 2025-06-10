# 🛍️ Dynamic Sales Insights Dashboard

An end-to-end data analytics project using **SQL Server** and **Power BI** to transform raw e-commerce transactions into a dynamic sales insights dashboard.

## 📌 Overview

This project analyzes transactional sales data to identify high-performing products, regions, and customers. It aims to help businesses drive strategic decision-making with data-backed insights.

> 📁 Key Files:
> - `online_retail_II.csv` — Raw transactional dataset  
> - `Sales_Insights_DataAnalysis.sql` — SQL scripts for data cleaning and analysis  
> - `Sales_Insights_Dashboard.pbix` — Final interactive dashboard  
> - `Sales Insights Dashboard Report.pdf` — Full documentation with insights and recommendations

---

## 🚀 Objectives

- 🧠 **SQL Mastery**: Write efficient queries with CTEs, aggregations, and window functions
- 📊 **Interactive Dashboarding**: Create meaningful and responsive visuals in Power BI
- 📈 **Business Insights**: Understand regional sales trends, customer behavior, and product performance
- 🗂️ **Documentation**: Clearly record the process, visuals, and recommendations

---

## 🧱 Tools Used

- **SQL Server Management Studio (SSMS)**  
- **Power BI Desktop**  
- **Microsoft Word/PDF** (for documentation)

---

## 📥 Dataset

The dataset used for this project is the **Online Retail II** UCI dataset, which contains records of e-commerce transactions.

Due to file size limitations, the dataset is provided as a ZIP archive:

📦 [`online_retail_II.zip`](./data/online_retail_II.zip)

To use:
1. Download and unzip the file.
2. Import `online_retail_II.csv` into your SQL database to begin analysis.


---

## 🛠 SQL Queries Highlights

- Total sales by **Country**
- Monthly & Quarterly trends
- **Top 10 Products** per country using `RANK()`
- Customer segmentation by purchase frequency
- Average Order Value over time

All queries are modular and saved in `Sales_Insights_DataAnalysis.sql`.

---

## 📊 Power BI Dashboard Features

- **Total Sales**, **Average Order Value**, and **Unique Customers** (KPI Cards)
- Region-wise sales analysis
- Time-series visuals (Monthly & Quarterly trends)
- Top 5 products and customer segments (Tree map, Table)
- Responsive slicers for **Country** and **Year**

> ⚙️ One-page layout for easy navigation and real-time filtering

---

## 🔍 Key Insights

- **UK** dominates sales: a priority market
- **Q4 peaks** in sales across years → Holiday impact
- Loyal repeat buyers identified (e.g., Customer_ID `17841`)
- Average Order Value **rising yearly**, peaking at $21.88 in 2011

---

## 💡 Recommendations

- Focus on Q4 promotions
- Launch loyalty programs for high-frequency customers
- Promote top-selling items
- Allocate resources to best-performing regions

---

## ✅ Skills Demonstrated

- Advanced SQL (CTEs, aggregations, RANK())
- Dashboard design & data modeling in Power BI
- Business analysis & storytelling with data
- Clean project documentation and version control

---

## 📄 Full Report

Read the detailed methodology, visuals, and interpretations in:  
📁 `Sales Insights Dashboard Report.pdf`

---

## 📜 License

This project is open for learning and demonstration purposes. Feel free to fork and build upon it!

---
**Made with 💡 by Tanmay Pathak**
