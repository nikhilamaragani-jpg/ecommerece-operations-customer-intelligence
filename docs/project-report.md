# E-Commerce Operations & Customer Intelligence

## Integrated Data Analyst + Power BI Analyst flagship project

**Source:** Olist Brazilian E-Commerce Public Dataset  
**Period:** 2016-09-04 to 2018-10-17

### Executive baseline

| KPI | Verified result |
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

### Project purpose

This is one integrated portfolio project. The Data Analyst and Power BI Analyst capabilities are deliberately built on the same governed analytical foundation rather than split into separate projects.

**Workflow**

Business question → data quality → SQL → Python/Pandas → KPI definitions → analytical model → Power BI design → dashboard suite → insight → recommendation → QA

### Data Analyst scope

- Source and table profiling
- Data-quality validation
- Explicit grain and population rules
- SQL business analysis
- Python/Pandas transformation and analytics
- Revenue and order analysis
- Customer and RFM analysis
- Product/category analysis
- Logistics/delivery analysis
- Customer-review analysis
- Geographic analysis
- Evidence-based recommendations

### Power BI Analyst scope

- Fact/dimension semantic-model design
- Reusable DAX measures
- KPI governance
- Filter context
- Metric selection
- Drill-through design
- Tooltip design
- Conditional formatting
- Accessibility guidance
- Report QA and reconciliation

### Dashboard suite

The same Olist project contains six reporting views:

1. **Executive Performance** - revenue, orders, AOV, freight, on-time and review context.
2. **Sales Explorer** - time, category, state and metric analysis.
3. **Customer Intelligence** - repeat rate, RFM segments, customer share and segment economics.
4. **Logistics & Customer Experience** - on-time, delay severity and review outcomes.
5. **Geographic Performance** - state revenue, orders, on-time and review comparisons.
6. **Data Quality & Method** - row counts, duplicates, missing fields, exclusions, grain and QA.

### Critical source rule

The Olist order-items table has order_item_id but no quantity field.

**Merchandise revenue = SUM(price) across eligible order lines**

The project never uses an invented price × quantity calculation.

Distinct order counts are handled separately from line-level revenue so multi-category orders are not counted more than once.

### Evidence-backed findings

- Top five product categories contribute about **39.8%** of merchandise revenue.
- Top three customer states contribute about **63.4%** of merchandise revenue.
- Observed repeat-customer rate is **3.04%**.
- Qualifying delivered orders are **93.23% on time**.
- On-time orders average **4.28/5** while late orders average about **2.26/5** on an order-weighted basis; this is an association, not a causal estimate.
- Freight value is about **16.6%** of merchandise revenue; it is a logistics measure, not a profit measure.

### Data-quality evidence

- Orders: 99,441 rows
- Order items: 112,650 rows
- Customers: 99,441 rows
- Products: 32,951 rows
- Reviews: 100,000 rows
- Payments: 103,886 rows
- Sellers: 3,095 rows
- Duplicate order IDs: 0
- Duplicate customer IDs: 0
- Missing product categories: 610
- Missing delivered dates: 2,965
- Canceled orders: 625

### Native Power BI status

The repository contains the semantic-model blueprint, DAX measure layer, report architecture, insight logic and QA/reconciliation framework.

The final native `.pbix` should only be claimed complete after it is built and validated in Power BI Desktop.

### Recruiter links

- Portfolio: https://nikhilamaragani-jpg.github.io/
- Dashboard suite: https://nikhilamaragani-jpg.github.io/projects/ecommerce-operations-intelligence/dashboard/
- Repository: https://github.com/nikhilamaragani-jpg/ecommerece-operations-customer-intelligence
- Source dataset: https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

### Portfolio positioning

**Data Analyst | Power BI | SQL | Python | Business Intelligence**

Earlier synthetic retail exercises and workshop dashboards remain archived as practice evidence. They are not part of this flagship project and should not be presented as real company data.