select
  id as customer_id,
  orderid as order_id,
  paymentmethod,
  status,
  amount,
  created
from
  raw.stripe.payment