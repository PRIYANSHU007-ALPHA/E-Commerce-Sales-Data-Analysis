# 📦 E-Commerce Sales Data Analysis

**Python | SQL | PostgreSQL | Power BI**

This project is an end-to-end **E-Commerce Sales Data Analysis** project. I started with a raw Excel dataset containing messy order data, cleaned and prepared it using Python, analyzed it using PostgreSQL and SQL, and finally created an interactive Power BI dashboard.

The main goal was to understand **sales, profit, products, cities, payment methods, and order performance** and turn the raw data into useful business insights.

---

## 🔧 Tools Used

* 🐍 Python
* 🐼 Pandas
* 🔢 NumPy
* 🗄️ PostgreSQL
* 🔍 SQL
* 🔗 SQLAlchemy
* 📊 Power BI
* 📗 Excel
* 📓 Jupyter Notebook

---

## 📁 Project Files

```text
├── Ecommerce_Unclean_Project.xlsx
├── Ecommerce_Cleaned_Project.csv
├── project.ipynb
├── ecommerce_queries.sql
├── power_bi.pbix
└── README.md
```

### What each file contains

* **Ecommerce_Unclean_Project.xlsx** → Original raw dataset
* **Ecommerce_Cleaned_Project.csv** → Cleaned and feature-engineered dataset
* **project.ipynb** → Python data cleaning and transformation
* **ecommerce_queries.sql** → SQL queries used for analysis
* **power_bi.pbix** → Interactive Power BI dashboard

---

# 🧹 Data Cleaning

The original dataset had missing values, duplicate records, inconsistent formatting, and some invalid entries.

I used **Pandas and NumPy** to clean the data.

Some of the main steps were:

* Removed duplicate rows
* Handled missing values
* Replaced `N/A`, `NULL`, and blank values
* Removed unnecessary spaces
* Standardized customer names, cities, and states
* Checked email addresses
* Converted date columns to datetime
* Converted quantity, price, and discount to numeric values
* Removed zero and negative quantities
* Filled missing discounts with `0`
* Replaced missing phone numbers with `"Unknown"`
* Filled missing delivery dates using the order date

---

# ⚙️ Feature Engineering

After cleaning the data, I created a few additional columns for analysis.

### Total Sales

```text
Total Sales = Qty × Unit_Price
```

### Net Amount

```text
Net Amount = Total Sales - (Total Sales × Discount / 100)
```

### Profit

```text
Profit = Net Amount × 20%
```

I also created:

* `Order_Month`
* `Order_Year`
* `weekday`

These columns were useful for analyzing sales trends over time.

---

# 🗄️ SQL Analysis

The cleaned data was loaded into **PostgreSQL** using SQLAlchemy.

I created **17 SQL queries** to answer different business questions.

The analysis includes:

* Total orders
* Total sales
* Sales excluding cancelled orders
* Top products by sales
* Top products by quantity
* Top products by profit
* Top cities by sales
* Top cities by orders
* Top cities by profit
* Monthly sales trends
* Best-performing month
* Payment mode distribution
* Order status distribution
* Cancellation rate
* Data quality checks

The SQL analysis helped me understand how the business was performing from different angles.

---

# 📊 Power BI Dashboard

After completing the Python and SQL analysis, I created an interactive **Power BI dashboard**.

The dashboard covers:

* Sales performance
* Profit
* Monthly sales trends
* Top products
* City-wise sales
* Payment methods
* Order status
* Cancellation analysis

The dashboard can also be filtered by:

* Product
* Category
* City
* Date range

### Dashboard

<img width="962" height="546" alt="Screenshot 2026-11-15 143424" src="https://github.com/user-attachments/assets/de255b2c-027e-413f-b004-15761845fa76" />

```

---

# 📈 Project Results

After cleaning and processing the data, I worked with **374 unique orders** across **4 product categories**.

| Metric                           |         Result |
| -------------------------------- | -------------: |
| Total Orders                     |        **374** |
| Total Sales                      | **₹38,08,557** |
| Sales Excluding Cancelled Orders | **₹29,92,435** |
| Total Profit                     |  **₹7,03,086** |
| Cancellation Rate                |      **24.6%** |

---

## 🏆 Top Products

| Rank | Product |     Sales |
| ---- | ------- | --------: |
| 🥇 1 | Laptop  | ₹7,29,099 |
| 🥈 2 | Chair   | ₹7,18,109 |
| 🥉 3 | Mouse   | ₹6,82,490 |
| 4    | Bottle  | ₹6,67,891 |
| 5    | Watch   | ₹5,48,440 |

---

## 🏙️ Top Cities

| Rank | City      |     Sales |
| ---- | --------- | --------: |
| 🥇 1 | Pune      | ₹8,94,272 |
| 🥈 2 | Bengaluru | ₹8,27,695 |
| 🥉 3 | Delhi     | ₹5,79,814 |
| 4    | Lucknow   | ₹5,73,937 |
| 5    | Mumbai    | ₹5,20,995 |

---

## 📦 Order Status

| Status    | Orders |
| --------- | -----: |
| Delivered |    100 |
| Returned  |     95 |
| Cancelled |     92 |
| Pending   |     87 |

The cancellation rate was **24.6%**, which stood out as one of the main areas that could be investigated further.

---

## 💳 Payment Methods

| Payment Mode | Orders |
| ------------ | -----: |
| Wallet       |     86 |
| NetBanking   |     84 |
| COD          |     83 |
| UPI          |     67 |
| Card         |     54 |

Wallet and NetBanking were the most commonly used payment methods in the dataset.

---

# 💡 Key Insights

A few things stood out from the analysis:

* Around **1 in 4 orders were cancelled**, which could be worth investigating further.
* **Laptop, Chair, and Mouse** were among the strongest products by sales.
* **Pune and Bengaluru** generated the highest sales among the cities analyzed.
* **Wallet and NetBanking** were the most frequently used payment methods.
* Looking at sales by month, product, city, and order status made it easier to see where the business was performing well and where there may be room for improvement.

---

# 🚀 How I Built This Project

The overall process was:

```text
Raw Excel Data
      ↓
Python + Pandas
      ↓
Data Cleaning
      ↓
Feature Engineering
      ↓
Cleaned Dataset
      ↓
PostgreSQL
      ↓
SQL Analysis
      ↓
Power BI
      ↓
Dashboard & Insights
```

---

# 🎯 Project Outcome

The main outcome of this project was turning a messy e-commerce dataset into a complete analytics workflow.

By the end, I had:

* A cleaned and structured dataset
* A PostgreSQL database
* 17 SQL analysis queries
* An interactive Power BI dashboard
* Sales and profit analysis
* Product and city performance analysis
* Payment and order-status analysis
* Business insights from the data

More importantly, this project gave me hands-on practice with the complete **data analytics process**, from cleaning raw data to presenting the final insights.

---

# 📚 Skills Practiced

**Python • Pandas • NumPy • SQL • PostgreSQL • SQLAlchemy • Power BI • Excel • Data Cleaning • Data Analysis • Data Visualization • Business Intelligence**

---

## 👨‍💻 Author

**Priyanshu Ranjan**

Aspiring Data Analyst | Python | SQL | Power BI

---

⭐ If you find this project useful, feel free to **star the repository**.
