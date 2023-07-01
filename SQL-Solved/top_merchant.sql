SELECT merchant.merchant_name, COUNT(transaction.transaction_id) AS small_transaction_count
FROM transaction
JOIN merchant ON transaction.merchant_id = merchant.merchant_id
WHERE transaction.amount < 2.0
GROUP BY merchant.merchant_name
ORDER BY small_transaction_count DESC
LIMIT 5;
