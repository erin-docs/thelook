- connection: red_flight

- include: "events.view.lookml"       # include all the views

- label: 'zbug31389_testing_toposjon_map'

- map_layers:
  - name: AU_map
    file: "australian_states.topojson"

- view: aircraft_types 
  fields:
  - dimension: aircraft_type_id
    type: string
    map_layer: AU_map
    sql: ${TABLE}.aircraft_type_id
  
  - measure: count
    type: number
    sql: RAND()*1000 

- explore: testing
  from: aircraft_types

