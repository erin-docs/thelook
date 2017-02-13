- dashboard: user_segments_lkml
  title: User Segments Lkml
  layout: tile
  tile_size: 100

  show_applied_filters: true

  filters:
  - name: state
    type: field_filter
    explore: users
    field: users.state

  elements:

  - name: gender_in_state
    title: "Gender breakdown in state(s)"
    type: looker_pie
    model: thelook
    explore: users
    dimensions: [users.gender]
    measures: [users.count]
    filters:
      users.state: ''
    listen:
     state: users.state
    sorts: [users.count desc]
    limit: '500'
    column_limit: '50'
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: '#808080'
    series_types: {}
