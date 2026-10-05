# Power BI DAX Measures

Use these measures after importing the cleaned analytical model. Adapt physical column names only if the final PBIX uses different names.

## Core commercial measures

Revenue :=
CALCULATE(
    SUM(FactOrderItems[price]),
    FactOrder[order_status] <> "canceled",
    FactOrder[order_status] <> "unavailable"
)

Orders :=
CALCULATE(
    DISTINCTCOUNT(FactOrder[order_id]),
    FactOrder[order_status] <> "canceled",
    FactOrder[order_status] <> "unavailable"
)

Customers :=
CALCULATE(
    DISTINCTCOUNT(DimCustomer[customer_unique_id]),
    FactOrder[order_status] <> "canceled",
    FactOrder[order_status] <> "unavailable"
)

Average Order Value :=
DIVIDE([Revenue], [Orders])

## Revenue analysis

Freight Value :=
CALCULATE(
    SUM(FactOrderItems[freight_value]),
    FactOrder[order_status] <> "canceled",
    FactOrder[order_status] <> "unavailable"
)

Freight to Revenue % :=
DIVIDE([Freight Value], [Revenue])

Category Revenue Share % :=
DIVIDE(
    [Revenue],
    CALCULATE(
        [Revenue],
        REMOVEFILTERS(DimProduct[category])
    )
)

## Customer measures

Repeat Customers :=
COUNTROWS(
    FILTER(
        VALUES(DimCustomer[customer_unique_id]),
        CALCULATE(
            DISTINCTCOUNT(FactOrder[order_id]),
            FactOrder[order_status] <> "canceled",
            FactOrder[order_status] <> "unavailable"
        ) > 1
    )
)

Repeat Customer Rate :=
DIVIDE([Repeat Customers], [Customers])

## Customer experience

Average Review Score :=
AVERAGE(FactReview[review_score])

## Delivery measures

Delivered Orders With Dates :=
COUNTROWS(
    FILTER(
        VALUES(FactOrder[order_id]),
        NOT ISBLANK(FactOrder[order_delivered_customer_date])
            && NOT ISBLANK(FactOrder[order_estimated_delivery_date])
    )
)

On-Time Delivery Rate :=
VAR DeliveredOrders =
    FILTER(
        VALUES(FactOrder[order_id]),
        NOT ISBLANK(FactOrder[order_delivered_customer_date])
            && NOT ISBLANK(FactOrder[order_estimated_delivery_date])
    )
RETURN
    DIVIDE(
        COUNTROWS(
            FILTER(
                DeliveredOrders,
                CALCULATE(MAX(FactOrder[order_delivered_customer_date]))
                    <= CALCULATE(MAX(FactOrder[order_estimated_delivery_date]))
            )
        ),
        COUNTROWS(DeliveredOrders)
    )

Late Orders :=
VAR DeliveredOrders =
    FILTER(
        VALUES(FactOrder[order_id]),
        NOT ISBLANK(FactOrder[order_delivered_customer_date])
            && NOT ISBLANK(FactOrder[order_estimated_delivery_date])
    )
RETURN
    COUNTROWS(
        FILTER(
            DeliveredOrders,
            CALCULATE(MAX(FactOrder[order_delivered_customer_date]))
                > CALCULATE(MAX(FactOrder[order_estimated_delivery_date]))
        )
    )

Late Delivery Rate :=
DIVIDE([Late Orders], [Delivered Orders With Dates])

Severe Delay Orders :=
VAR DeliveredOrders =
    FILTER(
        VALUES(FactOrder[order_id]),
        NOT ISBLANK(FactOrder[order_delivered_customer_date])
            && NOT ISBLANK(FactOrder[order_estimated_delivery_date])
    )
RETURN
    COUNTROWS(
        FILTER(
            DeliveredOrders,
            DATEDIFF(
                CALCULATE(MAX(FactOrder[order_estimated_delivery_date])),
                CALCULATE(MAX(FactOrder[order_delivered_customer_date])),
                DAY
            ) >= 8
        )
    )

Severe Delay Share of Late Orders :=
DIVIDE([Severe Delay Orders], [Late Orders])

## Commercial status

Cancellation Rate :=
DIVIDE(
    CALCULATE(
        DISTINCTCOUNT(FactOrder[order_id]),
        FactOrder[order_status] = "canceled"
    ),
    DISTINCTCOUNT(FactOrder[order_id])
)

## Modeling rule

Do not flatten order items, payments and reviews into one table and then sum values without controlling grain. A single order can have multiple item rows, payment rows and review records.

## Metric governance

Keep the same exclusion rules across SQL, Python and Power BI. Reconcile all executive KPI cards to the repository baseline before publication.

The source order-items table has no quantity field, so do not create a Units Sold measure from a nonexistent quantity column.
