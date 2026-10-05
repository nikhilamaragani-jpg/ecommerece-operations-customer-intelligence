# E-Commerce Operations & Customer Intelligence
## Complete Integrated Data Analyst + Power BI Analyst Project Report

### Project positioning
Flagship real-data portfolio project combining Data Analyst and Power BI Analyst capability in one workflow:
**Business question -> data quality -> SQL -> Python/Pandas -> KPI definitions -> analytical model -> Power BI/DAX -> interactive dashboard -> insight -> recommendation -> QA**

### 1. Verified project baseline
| KPI | Observed result |
|---|---:|
| Merchandise revenue | R$13,494,400.74 |
| Sales-eligible orders | 98,199 |
| Unique customers | 94,983 |
| Average order value | R$137.42 |
| Repeat-customer rate | 3.04% |
| Average review score | 4.07 / 5 |
| On-time delivery | 93.23% |
| Cancellation rate | 0.63% |
| Freight value | R$2,241,126.29 |

Source order timestamp span: 2016-09-04 to 2018-10-17.

### 2. Source and scope
Source: Olist Brazilian E-Commerce Public Dataset.
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

Tables used include orders, order items, customers, products, payments, reviews, sellers and geography.

### Critical source-grain rule
The Olist order-items source contains order_item_id but no quantity field. Therefore merchandise revenue is the sum of price across eligible order lines. The project never invents a price x quantity calculation.

Orders are counted as distinct order IDs so multi-category orders are not double-counted in executive KPIs. Payments, reviews, orders and order items remain separate analytical grains.

### 3. Data Analyst capabilities
- Business-question framing
- Data profiling and quality checks
- Eight SQL analysis modules
- Python/Pandas preparation and analysis
- KPI engineering
- Customer and RFM analysis
- Product/category analysis
- Logistics and delivery analysis
- Customer experience analysis
- Geography analysis
- Evidence-based recommendations

### 4. Data quality baseline
| Check | Observed |
|---|---:|
| Orders rows | 99,441 |
| Order-item rows | 112,650 |
| Customer rows | 99,441 |
| Product rows | 32,951 |
| Review rows | 100,000 |
| Payment rows | 103,886 |
| Seller rows | 3,095 |
| Duplicate order IDs | 0 |
| Duplicate customer IDs | 0 |
| Missing customer IDs in orders | 0 |
| Missing product categories | 610 |
| Missing review scores | 0 |
| Missing delivered dates | 2,965 |
| Non-positive price lines | 0 |
| Canceled orders | 625 |

### 5. Power BI Analyst capability
The native Power BI blueprint uses separate fact tables for orders, order items, payments and reviews, with shared date, customer, product, seller and geography dimensions.

Core reusable measures include Revenue, Orders, Customers, AOV, Repeat Customers, Repeat Customer Rate, On-Time Delivery Rate, Late Delivery Rate, Severe Delay Share, Freight Value, Freight-to-Revenue %, and Category Revenue Share.

### 6. Native Power BI report architecture
1. Executive Overview
2. Sales & Revenue
3. Customer Intelligence
4. Product Performance
5. Logistics & Delivery
6. Customer Experience
7. Geographic Performance
8. Data Quality & Methodology

### 7. Interactive public dashboard
The live browser-based BI workspace includes:
- Month range
- Category filter
- State filter
- Revenue / Orders / Freight metric selector
- Click-to-filter category charts
- Click-to-filter state charts
- Context-sensitive KPI cards
- Sales Explorer
- Customer / RFM Intelligence
- Logistics & Customer Experience
- Geography
- QA & Methodology
- State drill-through-style detail

Live dashboard:
https://nikhilamaragani-jpg.github.io/projects/ecommerce-operations-intelligence/dashboard/

### 8. Evidence-backed insights
- Top five categories contribute about 39.8% of merchandise revenue.
- Top three customer states contribute about 63.4% of merchandise revenue.
- Repeat-customer rate is 3.04%.
- On-time delivery is 93.23% for qualifying delivered orders.
- Order-weighted review averages are about 4.28/5 for on-time orders and 2.26/5 for late orders.
- Freight is about 16.6% of merchandise revenue.

Delivery/review differences are treated as observed associations, not causal effects.

### 9. RFM customer intelligence
| Segment | Customers |
|---|---:|
| Potential Loyalists | 44,492 |
| Loyal Customers | 26,387 |
| Champions | 12,712 |
| At Risk | 11,392 |

RFM is descriptive segmentation, not predictive churn modeling.

### 10. Dashboard portfolio beyond the flagship
The main portfolio retains multiple dashboard examples:

- E-Commerce Operations & Customer Intelligence - real Olist data; primary evidence.
- Retail Sales & Profitability - deterministic synthetic data; foundational practice.
- Customer Retention Cohorts - deterministic synthetic data; retention practice.
- Campfly Sales Analysis and Netflix Analysis - earlier static Power BI workshop exports; supporting evidence.

The portfolio labels evidence status so practice dashboards are never mistaken for real business findings.

### 11. Basic -> advanced progression
| Stage | Capability |
|---|---|
| Foundation | Business questions and dataset understanding |
| Data quality | Grain, duplicates, missing data, exclusions |
| Analysis | SQL and Python/Pandas |
| KPI engineering | Revenue, orders, AOV, customer, delivery and freight |
| Data modeling | Separate facts and shared dimensions |
| DAX | Reusable measures and filter-aware calculations |
| Dashboard UX | Slicers, context switching, click-to-filter, drill-through-style views |
| Insight | Observation, interpretation, recommendations |
| QA | Reconciliation and reproducibility |
| Portfolio | Live dashboard, GitHub, report and LinkedIn-ready copy |

### 12. Repository evidence
- analysis/ - reproducible Python build
- sql/ - eight SQL modules
- dashboard/ - interactive BI workspace and generated data
- powerbi/ - DAX and native report blueprint
- docs/ - methodology, quality, insights, limitations and project report
- .github/workflows/ - automated build and validation

Standalone project:
https://github.com/nikhilamaragani-jpg/ecommerece-operations-customer-intelligence

### 13. Current project status
Complete:
- Real-data analytical pipeline
- Data-quality layer
- SQL library
- Python/Pandas analytics
- Interactive public dashboard
- Portfolio dashboard collection
- Power BI model specification
- DAX specification
- Insight documentation
- QA/reconciliation framework
- Recruiter-facing project report

Native Power BI next step:
Build and validate the final PBIX in Power BI Desktop using the documented model, DAX and report specification. The project does not claim a completed PBIX until that file has actually been built and checked.

### 14. LinkedIn-ready project
Title: E-Commerce Operations & Customer Intelligence | Power BI + SQL + Python

Description: Built a real-data e-commerce analytics case study using the Olist Brazilian E-Commerce Public Dataset. Combined Data Analyst and Power BI Analyst workflows across data quality, SQL, Python/Pandas, KPI engineering, semantic-model design, DAX, interactive dashboard filtering, customer/RFM analysis, logistics, customer experience, geography, insight communication, and QA. Verified results include R$13.49M merchandise revenue across 98,199 sales-eligible orders, 94,983 unique customers, a 3.04% repeat-customer rate, 93.23% on-time delivery, and a 4.07/5 average review score.

### 15. Recruiter walkthrough
Open in this order:
1. Interactive dashboard
2. GitHub repository
3. Complete project report
4. Power BI model/DAX files
5. Supporting dashboards

One-minute explanation:
I built a real-data e-commerce analytics project from the Olist marketplace dataset. I handled data quality, SQL and Python analysis, then designed the Power BI semantic and KPI layer and turned the outputs into an interactive dashboard. The project demonstrates the complete path from business question to validated KPI to decision-ready insight.

### 16. Portfolio links
Portfolio: https://nikhilamaragani-jpg.github.io/
Interactive flagship: https://nikhilamaragani-jpg.github.io/projects/ecommerce-operations-intelligence/dashboard/
GitHub profile: https://github.com/nikhilamaragani-jpg
LinkedIn: https://www.linkedin.com/in/nikhil-sai-amaragani-219115382