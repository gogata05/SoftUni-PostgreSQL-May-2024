SELECT
  fb.product_id,
  fb.rate AS Rate,
  fb.description,
  c.id AS customer_id,
  c.age,
  c.gender
FROM
  feedbacks AS fb
JOIN
  customers AS c ON fb.customer_id = c.id
WHERE
  fb.rate < 5.0
  AND c.age > 30
  AND c.gender = 'F'
ORDER BY
  fb.product_id DESC;