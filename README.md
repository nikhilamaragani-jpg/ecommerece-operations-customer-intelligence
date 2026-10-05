# E-Commerce Operations & Customer Intelligence

**Real-data Data Analyst flagship project**
**SQL · Python/Pandas · Power BI · Data Quality · Customer Analytics · Logistics · Business Intelligence**

## What this project is

A reproducible Data Analyst case study built from the public Olist Brazilian E-Commerce Public Dataset.

Workflow:
Business question → data quality → SQL → Python → data model → visualization → insight → recommendation

## Live links

**Interactive dashboard:** https://nikhilamaragani-jpg.github.io/projects/ecommerce-operations-intelligence/dashboard/

**Portfolio:** https://nikhilamaragani-jpg.github.io/

**LinkedIn:** https://www.linkedin.com/in/nikhil-sai-amaragani-219115382

**Dataset:** https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

## Executive snapshot

| KPI | Result |
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

Dataset period: September 2016 to October 2018.

## Why it is analytically credible

- Data quality checks are documented before KPI interpretation.
- Metrics are calculated with explicit table grain and population rules.
- SQL and Python are aligned to the same business definitions.
- The dashboard separates exact 2D analytical comparison from the 3D geographic showcase.
- Recommendations are clearly separated from observations.
- Causal claims are avoided for this observational dataset.

## Critical source-grain rule

The Olist order-items table does not contain a quantity field.

Each row is an order line identified by order_item_id. Therefore:

Revenue = sum of price across eligible order lines.

Revenue is not calculated as price multiplied by quantity.

## Project structure

- analysis/ — reproducible Python build pipeline
- data/ — source-data instructions; raw CSVs are not committed
- sql/ — eight business-analysis SQL modules
- dashboard/ — interactive recruiter-facing web dashboard
- powerbi/ — semantic model, DAX and report specification
- docs/ — methodology, data quality, insights, limitations and checks
- .github/workflows/ — automated analytics rebuild

## SQL coverage

1. Data quality
2. Sales and revenue
3. Customer analysis
4. Product/category analysis
5. Logistics and delivery
6. Reviews and customer experience
7. Geography
8. Business questions

## Power BI Analyst layer

The repository now includes an upgraded integrated Data Analyst + Power BI Analyst layer built from the same verified data pipeline:

- A live interactive BI workspace with month range, category, state and metric slicers.
- Click-to-filter charts, cross-context updates, drill-through-style state detail and analyst narrative panels.
- Sales, customer, logistics, customer-experience, geography and data-quality views.
- Eight-page native Power BI report blueprint with reusable DAX measures, semantic-model design, drill-through, tooltips and QA controls.
- Real-data insight cards tied to observed results; no invented forecasts, profit claims or causal claims.
- Public HTML dashboard for recruiter viewing plus Power BI build artifacts for Power BI Desktop.

**Important:** the public interactive dashboard is the live portfolio visualization. A native `.pbix` is not claimed complete until it is actually built and validated in Power BI Desktop.

[Power BI Analyst case study](docs/job-platform-project-report.md) · [Power BI insight layer](docs/powerbi-analyst-insights.md) · [Report specification](powerbi/report-spec.md)

## Reproducibility

Install the dependencies from requirements.txt, place source CSVs under data/raw when using local files, and run:

python analysis/build_analysis.py

The pipeline regenerates the compact dashboard data plus the evidence-oriented data-quality and insights documents.

GitHub Actions validates those outputs and commits refreshed derived artifacts.

## Key findings

1. Health Beauty is the largest revenue category at about R$1.26M, or 9.3% of merchandise revenue.
2. SP is the largest customer state at about R$5.16M and 41,125 orders.
3. The observed repeat-customer rate is only 3.04%.
4. 93.23% of qualifying delivered orders arrive by the estimated date.
5. Late-delivery orders have a lower average review score than on-time orders; this is an association, not proof of causality.

See docs/insights.md for the evidence and recommendations, and docs/powerbi-analyst-insights.md for the Power BI Analyst interpretation layer.

## Limitations

- Historical dataset; not current market intelligence.
- One anonymized marketplace; not the whole Brazilian or global market.
- Observational data; associations do not establish causality.
- Revenue is not profit because reliable business-cost data is unavailable.
- Customer segmentation is descriptive, not predictive.
- The 3D view uses state centroids rather than administrative boundaries.

## Attribution

Dataset: Olist Brazilian E-Commerce Public Dataset.
The dataset remains subject to its own current license and terms.

## Career positioning

This repository demonstrates Data Analyst capability through evidence of work. It is not presented as client or professional experience.

Primary positioning: Data Analyst | SQL | Power BI | Python | Business Intelligence