- connection: thelook

- explore: products
  hidden: true
  
- view: products
  fields:
  - dimension: retail_price
    type: number
  
  - dimension: retail_tier_interval
    type: tier
    style: interval
    sql: ${retail_price}
    tiers: [0, 1, 5,  '6 24', 10, 100]
  
          