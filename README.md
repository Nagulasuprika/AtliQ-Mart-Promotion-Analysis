# 🛒 AtliQ Mart – Promotional Campaign Performance Analysis & Sales Optimization

During the 2023 Diwali and 2024 Sankranti festive seasons, AtliQ Mart launched large-scale promotional campaigns across 50+ supermarkets to increase revenue and product sales.

This repository contains my end-to-end business analysis using **SQL** and **Excel Dashboarding** to evaluate promotional effectiveness, measure revenue impact, identify high-performing products and stores, and provide data-driven recommendations for future marketing investments.

**A comprehensive sales analytics project focused on promotional performance, revenue optimization, and strategic business decision-making.**

---

## 📋 Table of Contents

1. Project Overview
2. Problem Statement
3. Dataset Description
4. Methodology
5. Key Findings
6. Business Recommendations
7. Technical Implementation
8. Dashboard Walkthrough

---

# 🎯 1. Project Overview

**Project Type:** Sales Analytics | Promotional Performance Analysis | Business Intelligence

**Domain:** FMCG Retail & Sales Analytics

**Campaigns Analyzed:** Diwali 2023 & Sankranti 2024

**Audience:** Sales Leaders, Business Analysts, Marketing Teams, Recruiters

---

## 📌 Executive Summary

AtliQ Mart, one of South India's leading retail chains with more than **50 supermarkets**, executed two large festive promotional campaigns—**Diwali 2023** and **Sankranti 2024**—to increase sales, improve customer purchases, and maximize promotional revenue.

The Sales Director required a detailed performance evaluation to determine:

- Which promotional campaigns generated the highest business value
- Which promotion types produced sustainable revenue growth
- Which stores and cities outperformed others
- Which products responded most effectively to promotions
- Which discount strategies reduced profitability
- How future promotional investments could be optimized

To answer these business questions, I developed:

- SQL reports to solve executive ad-hoc business requests
- A 4-page interactive Excel dashboard for business monitoring
- KPI-driven performance analysis across campaigns, stores, products, and promotions
- Actionable recommendations to improve future promotional ROI

---
# 💼 2. Problem Statement

## Business Challenge

AtliQ Mart launched two major festive promotional campaigns—**Diwali 2023** and **Sankranti 2024**—across **50+ supermarkets** in South India to boost sales, increase customer purchases, and maximize promotional revenue.

While the campaigns significantly increased product sales, the Sales Director required a comprehensive performance evaluation to determine whether the additional revenue justified the promotional investments and which strategies should be repeated in future campaigns.

This project aims to:

- Measure the overall financial impact of festive promotions
- Compare campaign performance across Diwali and Sankranti
- Evaluate Incremental Revenue (IR%) and Incremental Sold Units (ISU%)
- Identify the most profitable promotion types
- Analyze store and city-level promotional performance
- Determine which products and categories respond best to promotions
- Recommend data-driven promotional strategies for future campaigns

---

## Business Questions

### Executive Analysis

- How much revenue increased after promotional campaigns?
- Which campaign generated the highest promotional revenue?
- What was the overall Incremental Revenue (IR%)?
- How many additional units were sold because of promotions?

---

### Campaign & Promotion Analysis

- Which promotion type generated the highest Incremental Revenue?
- Which promotion delivered the highest Incremental Sold Units?
- How did Diwali compare with Sankranti in terms of business performance?
- Which discount strategies negatively impacted profitability?
- Which promotion provides the best balance between revenue growth and sales volume?

---

### Store Performance Analysis

- Which stores generated the highest Incremental Revenue?
- Which stores recorded the lowest Incremental Sold Units?
- Which cities contributed the most promotional revenue?
- Are there consistent characteristics among top-performing stores?

---

### Product & Category Analysis

- Which product categories experienced the highest revenue growth?
- Which individual products generated the greatest Incremental Revenue?
- How did different promotion types perform across product categories?
- Which products should receive priority in future promotional campaigns?

---

# 📊 3. Dataset Description

## Data Sources

| Data Type | Source | Records | Key Metrics |
|-----------|--------|---------|-------------|
| **Campaigns** | Campaign Master Data | 2 Campaigns | campaign_id, campaign_name, start_date, end_date |
| **Products** | Product Master | AtliQ Branded Products | product_code, product_name, category |
| **Stores** | Store Master | 50+ Supermarkets | store_id, city |
| **Sales Events** | Retail Transaction Database | Promotional Sales Records | quantity_before, quantity_after, base_price, promo_type |

---

## Key Business Metrics

### Campaign Coverage

- **2 Festive Campaigns**
  - Diwali 2023
  - Sankranti 2024

- **50+ Retail Stores**
- Multiple South Indian Cities
- Multiple Promotional Offers
- AtliQ Branded Products Across Multiple Categories

---

### Revenue Performance

- **Revenue Before Promotion:** ₹140.70 Million
- **Revenue After Promotion:** ₹295.61 Million
- **Incremental Revenue:** ₹154.91 Million
- **Overall Revenue Growth (IR):** **110%**

---

### Sales Performance

- **Units Sold Before Promotion:** 209,050
- **Units Sold After Promotion:** 650,726
- **Additional Units Sold:** 441,676
- **Incremental Sold Units (ISU):** **211%**

---

### Promotion Types Analyzed

- 25% OFF
- 33% OFF
- 50% OFF
- 500 Cashback
- BOGOF (Buy One Get One Free)

---

### Product Categories

- Grocery & Staples
- Home Appliances
- Home Care
- Personal Care
- Combo Products

---

### Geographic Coverage

- Bengaluru
- Chennai
- Hyderabad
- Coimbatore
- Madurai
- Multiple AtliQ Mart Store Locations

---

## Business KPIs Evaluated

### Revenue KPIs

- Revenue Before Promotion
- Revenue After Promotion
- Incremental Revenue (IR)
- Incremental Revenue Percentage (IR%)

---

### Sales KPIs

- Quantity Sold Before Promotion
- Quantity Sold After Promotion
- Incremental Sold Units
- Incremental Sold Units Percentage (ISU%)

---

### Performance KPIs

- Campaign Performance
- Promotion Effectiveness
- Product Performance
- Category Performance
- Store Performance
- City Performance
# 🔬 4. Methodology

## 1. Data Analysis Framework

### A. Executive Performance Analysis

**Purpose:**  
Evaluate the overall effectiveness of festive promotional campaigns and quantify their impact on sales performance.

**Metrics Calculated:**

- Revenue Before & After Promotion
- Incremental Revenue (IR)
- Incremental Revenue Percentage (IR%)
- Quantity Sold Before & After Promotion
- Incremental Sold Units (ISU)
- Incremental Sold Units Percentage (ISU%)
- Campaign-wise Revenue Contribution

**Tools Used:**

- MySQL (Business Query Analysis)
- Microsoft Excel
- Pivot Tables
- Power Query
- Interactive Dashboard
- KPI Cards & Statistical Calculations

---

### B. Comparative Campaign Analysis

**Purpose:**  
Compare Diwali and Sankranti campaigns to identify the most successful promotional strategy.

**Methodology**

Incremental Revenue %

```
IR% =
(Revenue After Promotion − Revenue Before Promotion)
/ Revenue Before Promotion × 100
```

Example

```
Diwali Revenue

₹82.57M → ₹171.46M

IR = 108%
```

Incremental Sold Units %

```
ISU% =
(Quantity After − Quantity Before)
/ Quantity Before ×100
```

Applied To

- Campaign Performance
- Revenue Growth
- Sales Growth
- Promotion Effectiveness

---

### C. Promotion Performance Analysis

**Purpose:**  
Determine which promotional offers generated sustainable business growth.

**Evaluation Criteria**

Highest Revenue Growth

- BOGOF
- Cashback Promotions

Highest Sales Growth

- BOGOF
- Cashback

Low Performing Promotions

- 25% OFF
- 33% OFF

Business Logic

```
High IR + High ISU
= High Performing Promotion

Negative IR
= Promotion Requires Strategic Review
```

Performance Measures

- Incremental Revenue %
- Incremental Sold Units %
- Promotion ROI Potential
- Campaign Contribution

---

### D. Store & Product Performance Analysis

**Purpose:**  
Identify top-performing stores, cities, products, and categories for future promotional planning.

**Analysis Includes**

- Top 10 Stores by Incremental Revenue
- Bottom 10 Stores by Incremental Sold Units
- Top Cities by Promotional Performance
- Best Performing Products
- Category-wise Revenue Growth
- Store Ranking

**Ranking Method**

```
Top Performer

Highest Incremental Revenue %

Lowest Performer

Lowest Incremental Sold Units %
```

Applied To

- Store
- City
- Product
- Category

---

### E. Business Impact Analysis

**Purpose:**  
Measure the overall financial impact of promotional campaigns.

**Revenue Analysis**

Revenue Before Promotion

= ₹140.70 Million

Revenue After Promotion

= ₹295.61 Million

Incremental Revenue

= ₹154.91 Million

Revenue Growth

= **110%**

---

**Sales Analysis**

Quantity Before Promotion

= 209,050 Units

Quantity After Promotion

= 650,726 Units

Additional Units Sold

= 441,676 Units

Sales Growth (ISU)

= **211%**

---

## 📈 5. Key Findings

### Promotional Performance Summary

| Metric | Before Promotion | After Promotion | Change | Growth |
|--------|-----------------:|----------------:|--------:|--------:|
| Revenue | ₹140.70M | ₹295.61M | +₹154.91M | **110%** |
| Quantity Sold | 209,050 | 650,726 | +441,676 | **211%** |
| Incremental Revenue | — | ₹154.91M | — | 110% |
| Incremental Sold Units | — | 441,676 | — | 211% |

---

### Campaign Performance

| Campaign | Revenue Growth | Sales Growth |
|-----------|---------------:|-------------:|
| **Diwali** | **108% IR** | **97% ISU** |
| **Sankranti** | **114% IR** | **338% ISU** |

---

### Promotion Insights

**Top Performing Promotions**

- BOGOF generated the highest Incremental Sold Units (**640% ISU**)
- Cashback delivered the second-highest promotional performance
- Sankranti campaign outperformed Diwali in overall promotional efficiency

**Underperforming Promotions**

- 25% OFF generated negative Incremental Revenue
- 33% OFF produced limited business growth
- Percentage discount promotions reduced profitability compared to value-based offers

---

### Store & Product Insights

- STMYS-1 generated the highest promotional revenue among all stores.
- Bengaluru contributed the highest overall promotional performance.
- Home Appliances achieved the strongest category growth.
- Atliq Waterproof Immersion Rod generated the highest Incremental Revenue.

---

### Executive Business Insight

The analysis shows that **value-based promotions (BOGOF and Cashback)** consistently outperformed traditional percentage discounts by generating significantly higher revenue growth and sales volume.

Future promotional investments should prioritize high-performing promotion types while redesigning low-performing discount strategies to maximize profitability.

---

# 💡 6. Business Recommendations

## Immediate Actions

### Expand High-Performing Promotions

Focus on

- BOGOF
- Cashback Campaigns

Expected Outcome

- Higher Revenue Growth
- Greater Sales Volume
- Improved Promotional ROI

---

### Optimize Discount Strategies

Review

- 25% OFF
- 33% OFF Promotions

Recommended Actions

- Reduce campaign frequency
- Replace with bundled offers
- Introduce minimum purchase conditions

Expected Outcome

- Improved Profit Margins
- Higher Incremental Revenue

---

## Medium-Term Strategy

### Store-Level Optimization

- Replicate best-performing store strategies
- Support bottom-performing stores with localized promotions
- Allocate promotional budgets based on historical performance

Expected Outcome

- Improved consistency across all store locations

---

### Category-Based Campaign Planning

Increase investment in

- Home Appliances
- High-performing AtliQ branded products

Introduce personalized promotions for lower-performing categories.

Expected Outcome

- Higher category profitability
- Better promotional efficiency

---

## Long-Term Strategy

### Data-Driven Promotion Planning

- Predict promotion effectiveness using historical sales data
- Personalize campaigns by city and product category
- Continuously monitor IR% and ISU% for campaign optimization

### Expected Business Impact

- Increased Promotional ROI
- Improved Revenue Growth
- Higher Customer Purchase Volume
- Better Marketing Budget Allocation
- Data-Driven Strategic Decision Making

# 🛠️ 7. Technical Implementation

## Tools & Technologies Used

### Data Processing & Querying

- **MySQL Workbench**
  - Database creation and schema exploration
  - Complex SQL queries using JOINs, CTEs, Window Functions, CASE statements, and Aggregate Functions
  - Generated business reports for executive ad-hoc requests

### Data Visualization

- **Microsoft Excel**
  - Interactive dashboard with **4 business-focused pages**
  - KPI Cards, Pivot Tables, Pivot Charts, Slicers, Conditional Formatting
  - Dynamic filtering for Campaign, Promotion Type, Category, and City

### Business Analysis

- **Business KPIs Calculated**
  - Incremental Revenue (IR%)
  - Incremental Sold Units (ISU%)
  - Revenue Before vs After Promotion
  - Promotion Performance
  - Campaign Contribution
  - Product & Store Performance Rankings

### Analytical Techniques

- Revenue Growth Analysis
- Promotion Effectiveness Analysis
- Product Performance Ranking
- Store Performance Benchmarking
- Campaign Comparison
- Category Contribution Analysis

---

# 📊 8. Dashboard Walkthrough

---

## 🏠 Page 1 – Executive Summary

### Focus

Provides a high-level overview of promotional campaign performance and business growth.

### Contains

- KPI Cards (Revenue Before, Revenue After, IR%, ISU%)
- Revenue Before vs After Promotion
- Campaign Revenue Contribution
- Promotion Type Performance
- Category Revenue Analysis
- Interactive Slicers
- Executive Insights Panel

### Business Value

Enables decision-makers to quickly evaluate overall promotional success, monitor key KPIs, and identify the major drivers of revenue growth.

<p align="center">
<img src="https://github.com/Nagulasuprika/AtliQ-Mart-Promotion-Analysis/blob/c42f1e45506dd50c0c569abdebbe91010e8a9486/Atliq%20Mart%20Summary.png" width="900">
</p>

---

## 📈 Page 2 – Campaign & Promotion Analysis

### Focus

Analyzes campaign effectiveness and identifies the highest-performing promotional strategies.

### Contains

- Promotion Type Performance
- Campaign-wise Revenue Comparison
- Promotion-wise Incremental Sold Units
- Campaign Revenue Distribution
- Best Performing Promotion KPI
- Best Campaign KPI
- Interactive Filters
- Business Insights Panel

### Business Value

Helps marketing teams identify which promotional campaigns maximize revenue, increase product demand, and deliver the highest business impact.

<p align="center">
<img src="https://github.com/Nagulasuprika/AtliQ-Mart-Promotion-Analysis/blob/84d5913a78ff58c302aae688882c9c0da9341a50/Atliq%20Mart%20Campaign%20Analysis.png" width="900">
</p>

---

## 🏪 Page 3 – Product & Store Analysis

### Focus

Evaluates product, category, city, and store performance during promotional campaigns.

### Contains

- Top 10 Stores by Incremental Revenue
- Bottom 10 Stores by Incremental Sold Units
- Category Performance
- Product Performance
- City-wise Revenue Analysis
- Store Performance KPIs
- Interactive Filters
- Business Insights Panel

### Business Value

Supports inventory optimization, store benchmarking, and category-level promotional planning by identifying top-performing and underperforming business segments.

<p align="center">
<img src="https://github.com/YOUR_GITHUB_USERNAME/YOUR_REPOSITORY_NAME/blob/main/Product%20%26%20Store%20Analysis.png" width="900">
</p>

---



# 📊 Key Metrics Summary

| Business Area | Metric | Value | Business Impact |
|---------------|--------|------:|-----------------|
| Revenue | Revenue Before Promotion | ₹140.70M | Baseline Revenue |
| Revenue | Revenue After Promotion | ₹295.61M | Promotional Revenue |
| Revenue | Incremental Revenue | ₹154.91M | Additional Revenue Generated |
| Revenue | Incremental Revenue % | **110%** | Overall Revenue Growth |
| Sales | Quantity Before Promotion | 209,050 Units | Baseline Sales |
| Sales | Quantity After Promotion | 650,726 Units | Promotional Sales |
| Sales | Incremental Sold Units | 441,676 Units | Additional Units Sold |
| Sales | Incremental Sold Units % | **211%** | Overall Sales Growth |
| Campaign | Best Performing Campaign | Diwali | 58% Revenue Contribution |
| Campaign | Highest ISU Campaign | Sankranti | 338% ISU |
| Promotion | Best Promotion | BOGOF | Highest Revenue & Sales Lift |
| Promotion | Second Best Promotion | Cashback | Strong Revenue Growth |
| Product | Top Category | Home Appliances | Highest Revenue Growth |
| Store | Top Performing Store | STMYS-1 | Highest Incremental Revenue |

---

# 💡 Business Impact & Recommendations

## Key Business Insights

- Promotional campaigns generated an additional **₹154.91M** in revenue, representing **110% revenue growth** over the baseline.
- Total units sold increased by **441,676**, achieving an overall **211% increase** in sales volume.
- **BOGOF** delivered the strongest balance between revenue growth and sales volume, making it the most effective promotion.
- **500 Cashback** emerged as the second-best promotion, significantly improving customer purchases without excessive discounting.
- **25% OFF** and **33% OFF** promotions produced negative or minimal incremental returns, indicating poor promotional efficiency.
- **Home Appliances** achieved the highest revenue uplift among all product categories.
- **Sankranti** generated the highest Incremental Sold Units (338%), while **Diwali** contributed **58%** of total promotional revenue.
- Significant performance differences across stores suggest opportunities to replicate best-performing store strategies in underperforming locations.

---

## Strategic Recommendations

### Promotion Strategy

- Increase investment in **BOGOF** and **Cashback** campaigns.
- Reduce or redesign low-performing percentage discount promotions.

### Product Strategy

- Prioritize promotional spending on **Home Appliances** and other high-performing categories.
- Reevaluate promotional strategies for underperforming product categories.

### Store Optimization

- Benchmark operational practices from top-performing stores.
- Develop targeted improvement plans for low-performing stores.

### Campaign Planning

- Expand high-performing promotional combinations into future campaigns.
- Use campaign performance analytics to optimize marketing budget allocation.

### Data-Driven Decision Making

- Continuously monitor Incremental Revenue and Incremental Sold Units.
- Integrate SQL reporting with dashboard monitoring for ongoing campaign evaluation.
