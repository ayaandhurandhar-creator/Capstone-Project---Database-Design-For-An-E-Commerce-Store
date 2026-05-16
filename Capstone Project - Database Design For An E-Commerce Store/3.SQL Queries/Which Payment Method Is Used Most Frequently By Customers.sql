SELECT 
    payment_mode,
    COUNT(payment_id) AS total_payments
FROM payments
GROUP BY payment_mode
ORDER BY total_payments DESC;