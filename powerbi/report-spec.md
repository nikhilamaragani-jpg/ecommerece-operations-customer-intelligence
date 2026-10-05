# Power BI Report Specification - E-Commerce Operations & Customer Intelligence

## Purpose

Design a recruiter-ready Power BI report that demonstrates the practical capabilities of a Power BI / BI Analyst without inventing metrics or overstating the dataset.

The report should answer business questions, preserve table grain, expose reusable measures, support controlled exploration, and communicate limitations clearly.

## Analytical model

### Fact tables
- FactOrder - one row per order
- FactOrderItem - one row per order line
- FactPayment - one row per payment record
- FactReview - one row per review record

### Dimensions
- DimDate
- DimCustomer
- DimProduct
- DimSeller
- DimGeography

### Grain rule

Never flatten all fact tables and then sum values without controlling one-to-many multiplication.

The Olist order-items source has no quantity field. Revenue is the sum of price across eligible order lines.

## Page 1 - Executive Overview

Business questions:
- How large is observed commercial activity?
- Where is revenue concentrated?
- What is the current observed customer and delivery picture inside the historical dataset?

Visuals:
- KPI cards: Revenue, Orders, Customers, Average Order Value, Repeat Customer Rate, Average Review, On-Time Delivery
- Monthly merchandise revenue trend
- Top categories by revenue
- Top states by revenue
- Evidence-based insight panel

Interactions:
- Date, state and category slicers
- Metric tooltip
- Reset filters bookmark

## Page 2 - Sales & Revenue

Business questions:
- How does revenue move over time?
- Which categories and states contribute most?
- What is the relationship between freight value and merchandise revenue?

Visuals:
- Revenue trend
- Revenue share by category
- Revenue by state
- AOV
- Freight value
- Freight-to-revenue percentage
- Payment mix

Recommended Power BI features:
- Field parameter for Revenue / Orders
- Conditional formatting for category and state ranking
- Category drill-through

## Page 3 - Customer Intelligence

Business questions:
- How much activity comes from repeat customers?
- Which descriptive customer segments contribute the most value?

Visuals:
- Repeat Customer Rate
- Orders per customer
- RFM customer distribution
- Customers by segment
- Revenue by segment
- Segment customer share vs revenue share

Interpretation rule:
RFM is descriptive segmentation, not predictive churn modeling.

Recommended features:
- Segment slicer
- Tooltip with customer share and revenue share
- Customer drill-through where appropriate

## Page 4 - Product Performance

Business questions:
- Which categories lead revenue?
- Where is freight relatively high?
- Which categories have stronger or weaker review scores?

Visuals:
- Category revenue
- Revenue share
- Order-line volume
- Freight value
- Freight-to-revenue ratio
- Review score by category
- Top products where product-level grain is valid

## Page 5 - Logistics & Delivery

Business questions:
- How often are deliveries on time?
- How severe are delays?
- Which geographies combine demand concentration with weaker delivery performance?

Visuals:
- On-Time Delivery Rate
- Late Delivery Rate
- Delay severity distribution
- Delivery performance by state
- Review score by delivery group
- Delay matrix

Recommended features:
- Severity conditional formatting
- State drill-through
- Tooltip with revenue, orders, on-time rate, review score

Analytical wording:
Use "associated with" when comparing delivery outcomes to review scores. Do not write that late delivery causes lower ratings.

## Page 6 - Customer Experience

Business questions:
- How do review scores vary?
- Is there an observed relationship between delivery status and review outcomes?

Visuals:
- Review score distribution
- Review score by delivery group
- Review score by category
- Review score by state
- Review and delivery KPI cards

Interpretation rule:
The project is observational. Differences are associations, not causal estimates.

## Page 7 - Geographic Performance

Business questions:
- Where is revenue concentrated?
- Which states combine high revenue with different operational outcomes?

Visuals:
- State revenue
- State orders
- State customers
- State on-time rate
- State review score
- Map
- Sortable analytical matrix

Recommended features:
- Drill-through to State Detail
- Conditional formatting
- Toggle between Revenue / Orders / On-Time / Review using a field parameter

## Page 8 - Data Quality & Methodology

Show:
- Source table row counts
- Duplicate checks
- Missing-field checks
- Cancelled-order count
- Missing delivered-date count
- Missing category count
- Exclusion logic
- Grain definitions
- KPI definitions
- Historical-data warning
- Limitation notes

## Hidden drill-through pages

### State Detail
Show:
- Revenue
- Orders
- Customers
- On-Time Rate
- Average Review
- Category mix

### Category Detail
Show:
- Revenue
- Revenue share
- Order lines
- Orders
- Freight value
- Review score

## Tooltip pages

### State Tooltip
- State name
- Revenue
- Orders
- Customers
- On-Time Rate
- Review Score

### Category Tooltip
- Category
- Revenue
- Revenue share
- Orders
- Freight value

## UX and accessibility standards

- Every visual must answer a business question.
- Keep slicers minimal and purposeful.
- Use descriptive chart titles.
- Do not rely on color alone to communicate status.
- Use readable font sizes and sufficient contrast.
- Provide sensible tab order.
- Add alt text to key visuals.
- Keep executive pages clean; deeper analysis belongs on detail pages.

## QA / reconciliation gate

Before treating the PBIX as complete:
1. Revenue reconciles to the Python/SQL baseline.
2. Orders and Customers reconcile under the same exclusions.
3. On-Time Delivery uses only orders with both delivered and estimated dates.
4. Payment values are protected from duplication caused by item joins.
5. Review analysis uses the intended review/order grain.
6. Category and state totals reconcile to executive KPIs.
7. Slicers do not produce unexpected double counting.
8. Drill-through results reconcile with source measures.
9. Blank/missing dates and categories are visible or documented.
10. Exported PDF and interactive report remain legible.

## Publishing status

The repository contains the model blueprint, report specification, DAX measures and real-data evidence layer.

The final PBIX is not claimed complete until it is actually built and validated in Power BI Desktop.
