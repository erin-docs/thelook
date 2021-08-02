- dashboard: test_dashboard
  title: The Look
  layout: grid
#   tile_size: 100

  rows:
    - elements: [My_Test_Dashboard]
#       height: 200

  filters:

  elements:
    - name: My_Test_Dashboard
      title: Table Visualization
      model: thelook
      explore: orders
      type: table
      fields: [users.count, users.age_tier, users.city, users.state, orders.count]
      pivots: [users.age_tier]
      fill_fields: [users.age_tier]
      filters:
        users.state: "-California"
      sorts: [users.age_tier, users.count desc 0]
      limit: 500
      column_limit: 50
      query_timezone: America/Los_Angeles
      show_view_names: true
      show_row_numbers: true
      truncate_column_names: false
      hide_totals: false
      hide_row_totals: false
      table_theme: editable
      limit_displayed_rows: false
      enable_conditional_formatting: false
      conditional_formatting_ignored_fields: []
      conditional_formatting_include_totals: false
      conditional_formatting_include_nulls: false
    
