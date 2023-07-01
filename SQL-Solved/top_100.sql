--Count of potentially fraudulent transactions made between 7:00 am and 9:00 am
SELECT transaction.transaction_id, transaction.amount, transaction.transaction_date 
FROM transaction 
WHERE transaction.transaction_date::time >= '07:00:00' AND transaction.transaction_date::time < '09:00:00'
ORDER BY transaction.amount DESC 
LIMIT 100;

-- Count of potentially fraudulent transactions made during the rest of the day
SELECT transaction.transaction_id, transaction.amount, transaction.transaction_date 
FROM transaction 
WHERE transaction.transaction_date::time < '07:00:00' OR transaction.transaction_date::time >= '09:00:00'
ORDER BY transaction.amount DESC 
LIMIT 100;