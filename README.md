# Commercial Banking Customer Transaction & Risk Analytics
### Ethiopian Banking Sector Simulation

## Overview
This project demonstrates an end-to-end data analytics workflow using a simulated commercial banking dataset. The objective is to analyze customer transactions, financing portfolio performance, digital banking adoption, and credit risk to generate business insights for decision-making.

The project covers the complete analytics pipeline—from data preparation in Python to SQL analysis in PostgreSQL, interactive dashboard development in Power BI, and executive reporting.

---

## Dataset

- **Records:** 15,000 customer records
- **Domain:** Commercial Banking (Simulation)
- **Data Includes:**
  - Customer demographics
  - Transaction activity
  - Loan and financing information
  - Credit risk indicators
  - Digital banking usage
  - Branch and customer segment information

---

## Tools & Technologies

- **Python** (Pandas, NumPy, SQLAlchemy)
- **Jupyter Notebook**
- **PostgreSQL**
- **SQL**
- **Power BI**
- **Git & GitHub**
- **Gamma** (Presentation)
- **Microsoft PowerPoint**

---

## Project Workflow

### 1. Data Loading
- Imported the banking dataset into Python.
- Explored dataset structure and data types.

### 2. Exploratory Data Analysis (EDA)
- Generated descriptive statistics.
- Identified missing values and duplicates.
- Explored customer, transaction, and loan distributions.
- Performed feature engineering for analytical insights.

### 3. Data Cleaning
- Removed duplicate records.
- Handled missing values.
- Standardized column names.
- Prepared the dataset for database storage.

### 4. SQL Analysis (PostgreSQL)
Loaded the cleaned dataset into PostgreSQL and answered business questions using SQL, including:

- Branch transaction performance
- Digital banking adoption
- Credit portfolio exposure
- Default analysis
- Sector concentration risk
- Collateral performance
- AML transaction detection
- Delinquency analysis
- High-value customer identification
- Customer income segmentation

### 5. Dashboard Development
Created an interactive one-page executive dashboard in Power BI featuring:

- Total Transactions
- Loan Portfolio Value
- Default Rate
- Mobile Banking Adoption
- High-Value Customers
- Branch Performance
- Loan Portfolio Distribution
- Customer Segmentation
- Credit Risk Analysis

### 6. Reporting
- Prepared a business analytics report summarizing key findings and recommendations.
- Created an executive presentation using Gamma and PowerPoint.

---

## Dashboard

The Power BI dashboard provides executives with a clear overview of banking performance through interactive visualizations and KPIs. It highlights customer behavior, lending performance, digital banking adoption, and credit risk to support strategic decision-making.

---

## Results

Key insights include:

- Identified high-performing branches.
- Measured digital banking adoption across customer segments.
- Evaluated loan portfolio performance and default trends.
- Detected potential high-risk transactions for AML monitoring.
- Identified high-value customers for targeted marketing.
- Recommended strategies for portfolio diversification and risk reduction.

---

## Project Structure

```
Commercial-Banking-Analytics/
│
├── data/
│   └── Commercial_banking_Dataset.csv
│
├── notebooks/
│   ├── exploratory_analysis.ipynb
│   └── data_cleaning.ipynb
│
├── python/
│   └── data_pipeline.py
│
├── sql/
│   └── banking_queries.sql
│
├── dashboard/
│   └── commercial_banking_dashboard.pbix
│
├── reports/
│   ├── Banking_Analytics_Report.pdf
│   └── Executive_Presentation.pptx
│
├── images/
│   └── dashboard.png
│
└── README.md
```

---

## How to Run

1. Clone this repository.

```bash
git clone https://github.com/yourusername/commercial-banking-analytics.git
```

2. Install the required Python packages.

```bash
pip install pandas numpy sqlalchemy psycopg2
```

3. Open the Jupyter notebooks and run the data cleaning and EDA steps.

4. Load the cleaned dataset into PostgreSQL.

5. Execute the SQL queries in the `sql` folder.

6. Open the Power BI (`.pbix`) file to explore the dashboard.

7. Review the report and presentation for business insights.

---

## Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- Feature Engineering
- SQL Query Writing
- PostgreSQL
- Data Visualization
- Dashboard Development
- Business Intelligence
- Financial & Risk Analytics
- Executive Reporting
- GitHub Documentation

---

## Author

**Abdulaziz Mosa, PhD**

Financial & Data Analyst

**Technologies:** Python • SQL • PostgreSQL • Power BI • Excel • GitHub
