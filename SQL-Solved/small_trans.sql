SELECT card_holder.name, COUNT(transaction.transaction_id) AS small_transaction_count
FROM transaction
INNER JOIN credit_card ON transaction.card_number = credit_card.card_number
INNER JOIN card_holder ON credit_card.holder_id = card_holder.holder_id
WHERE transaction.amount < 2.0
GROUP BY card_holder.name;