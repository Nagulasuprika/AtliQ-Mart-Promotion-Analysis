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
