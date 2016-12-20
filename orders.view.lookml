- view: orders
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.id

  - dimension_group: created
    type: time
    timeframes: [time, date, week, month, month_num, year, day_of_week_index, hour_of_day, minute5]
    sql: ${TABLE}.created_at

  - dimension: status
    type: string
    sql: ${TABLE}.status

  - dimension: user_id
    type: number
    # hidden: true
    sql: ${TABLE}.user_id
    
  - measure: count_with_link
    type: number
    sql: ${count}*1000
    links:
      - label: 'test for 19235'
        url: http://www.google.com

  - measure: count
    type: count
    drill_fields: [id, users.last_name, users.first_name, users.id, order_items.count]

