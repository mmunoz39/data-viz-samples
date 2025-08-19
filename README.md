# Data Visualization Samples

This repository contains a collection of data visualization samples built using **SQL Server Reporting Services (SSRS)** and **Power BI**.  
It includes datasets, SQL queries, and reports designed to demonstrate different reporting and visualization techniques.

---

## Repository Structure

```
data-viz-samples/
│
├── datasets/         # Sample datasets (CSV or Excel files)
├── docs/             # Documentation and screenshots
├── powerbi/          # Power BI reports (.pbix)
├── sql/              # SQL scripts (queries, stored procedures)
├── ssrs/             # SSRS report definition files (.rdl)
└── README.md         # This file
```

---

## Getting Started

### Prerequisites
- **SQL Server** with sample database imported
- **SQL Server Reporting Services (SSRS)** configured
- **Power BI Desktop** (latest version)

### Steps
1. Clone this repository:
   ```bash
   git clone https://github.com/<your-username>/data-viz-samples.git
   ```

2. Import the sample dataset into SQL Server from the `datasets/` folder.

3. Run the SQL scripts in the `sql/` folder to prepare tables and queries.

4. Open the `.rdl` files in the `ssrs/` folder with **SQL Server Data Tools (SSDT)** or upload them directly to the SSRS portal.

5. Open the `.pbix` files in the `powerbi/` folder with **Power BI Desktop** to explore the interactive dashboards.

---

## Features

- **SSRS Reports**:  
  - Paginated reports with parameters  
  - Bar charts, scatter plots, and drilldowns  

- **Power BI Dashboards**:  
  - KPIs (Sales, Quantity, Unit Cost)  
  - Sales by Province and Segment  
  - Sales trend by Month  
  - Scatter plot (Total Sales vs Avg. Unit Cost)  

---

## Screenshots

Stored in the `docs/` folder:

- **Microsoft_Report_Builder_Sales_Rep.png** → Report design in Microsoft Report Builder  
- **Power_BI_Model_View.png** → Data model view in Power BI  
- **Power_BI_Visualizations.png** → Power BI dashboard with KPIs and charts  
- **SSRS_Home.png** → SSRS web portal showing the published report  
- **SSRS_Report.png** → Executed SSRS Sales Report with table and chart  

---

## License

This project is provided for **educational and demonstration purposes**.  
You are free to use, modify, and share it under the MIT License.

---

## Author

**Marcelo Munoz**  
Data & Software Developer | Saskatoon, Canada
