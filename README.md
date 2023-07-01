# Module7Challenge

This repository presents an analysis of potential fraudulent transactions in the dataset.

## Analysis

### Isolating Transactions of Each Cardholder

The transactions of each cardholder are isolated using the SQL GROUP BY statement. This allows us to aggregate transactions for each cardholder. See [transaction count by cardholder](./SQL-Solved//trans_count.sql) for the exact query.

![Query Result](./SQL-Solved/output-file/trans_count.png)

### Counting Transactions Less Than $2.00 Per Cardholder

The number of transactions that are less than $2.00 per cardholder are counted. See [small transaction](./SQL-Solved/small_trans.sql) for the exact query.

![Query Result](./SQL-Solved/output-file/small_trans.png)

### Identifying Hacked Credit Cards

This is a sorted version of the previous table. See [small transaction sorted](./SQL-Solved/small_trans_sorted.sql) for the exact query.

**Question:** Is there any evidence to suggest that a credit card has been hacked? 

**Answer:** Unusually high numbers of small transactions could be an indication of a hacked card. For exmaple, Megan Price and others might be a victim of credit card frauds.

![Query Result](./SQL-Solved/output-file/small_trans_sorted.png)

### Top 100 Highest Transactions Between 7:00 AM and 9:00 AM

The top 100 highest transactions that took place between 7:00 AM and 9:00 AM are analyzed. I also include a view on top 100 highest transactions that took place on the rest of the day. See [small transaction sorted](./SQL-Solved/top_100.sql) for the exact query.

![Query Result](./SQL-Solved/output-file/top_100_morning.png)

**Question1:** Do you see any anomalous transactions that could be fraudulent?

**Answer:** Examining the screenshot provided above, it's clear that spending over $100 in the early morning is quite unusual. Typically, morning expenditures, such as coffee and breakfast, are significantly less than this amount. So, the first 9 records are anomalous transactions.

**Question2:** Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?

**Answer:** 

**Question3:** If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.

**Answer:** 


