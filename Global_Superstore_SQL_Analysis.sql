# SQL Business Analysis

## 1. Executive Metrics

### Total Sales

```sql
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM super_sales;
```

### Total Profit

```sql
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM super_sales;
```

### Total Customers

```sql
SELECT COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM super_sales;
```

### Total Orders

```sql
SELECT COUNT(DISTINCT Order_ID) AS Total_Orders
FROM super_sales;
```

---

## 2. Profitability Analysis

### Which sub-categories generate high sales but low profit?

```sql
SELECT sub_category,
       ROUND(SUM(sales),1) AS total_sales,
       ROUND(SUM(profit),1) AS total_profit
FROM super_sales
GROUP BY sub_category
ORDER BY total_sales DESC;
```

### Which products generate losses?

```sql
SELECT Product_Name,
       ROUND(SUM(Profit),1) AS Total_Loss
FROM super_sales
GROUP BY Product_Name
HAVING SUM(Profit) < 0
ORDER BY Total_Loss ASC;
```

---

## 3. Customer Analysis

### Top 20 Customers by Revenue

```sql
SELECT customer_name,
       ROUND(SUM(sales),1) AS Revenue,
       ROUND(SUM(profit),1) AS Profit
FROM super_sales
GROUP BY customer_name
ORDER BY Revenue DESC
LIMIT 20;
```

### Customer Revenue Ranking

```sql
SELECT customer_name,
       ROUND(SUM(sales),1) AS Revenue,
       RANK() OVER(ORDER BY SUM(sales) DESC) AS customer_rank
FROM super_sales
GROUP BY customer_name;
```

---

## 4. Regional Analysis

### Region-wise Sales and Profit

```sql
SELECT Region,
       ROUND(SUM(sales),1) AS Total_Sales,
       ROUND(SUM(profit),1) AS Total_Profit,
       CONCAT(
           ROUND((SUM(profit)/SUM(sales))*100,1),
           '%'
       ) AS Profit_Margin
FROM super_sales
GROUP BY Region
ORDER BY Total_Profit DESC;
```

---

## 5. Product Analysis

### Top 10 Products by Profit

```sql
SELECT Product_Name,
       ROUND(SUM(Profit),1) AS Total_Profit
FROM super_sales
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;
```

### Most Profitable Product in Each Category

```sql
WITH product_category AS (
    SELECT category,
           product_name,
           ROUND(SUM(profit),1) AS total_profit,
           RANK() OVER(
               PARTITION BY category
               ORDER BY SUM(profit) DESC
           ) AS rnk
    FROM super_sales
    GROUP BY category, product_name
)
SELECT category,
       product_name,
       total_profit
FROM product_category
WHERE rnk = 1;
```
### Top Customer in Each Region
```sql
WITH customer_region AS (
    SELECT Region,
           Customer_Name,
           SUM(Sales) AS Revenue,
           RANK() OVER(
               PARTITION BY Region
               ORDER BY SUM(Sales) DESC
           ) AS rnk
    FROM super_sales
    GROUP BY Region, Customer_Name
)

SELECT Region,
       Customer_Name,
       Revenue
FROM customer_region
WHERE rnk = 1;
```
