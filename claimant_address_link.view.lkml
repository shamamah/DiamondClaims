view: claimant_address_link {
  sql_table_name: dbo.ClaimantAddressLink ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimant_num, '  ', ${TABLE}.nameaddresssource_id) ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: address_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.address_id ;;
  }

  dimension: claimant_num {
    type: number
    sql: ${TABLE}.claimant_num ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: nameaddresssource_id {
    type: number
    sql: ${TABLE}.nameaddresssource_id ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  measure: count {
    type: count
    #drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      address.address_id,
      address.street_name,
      address.ocean_name,
      address.bay_name,
      address.waterway_name,
      address.river_name,
      address.ocean_local_name,
      address.bay_local_name,
      address.waterway_local_name,
      address.river_local_name,
      address.waterbody_name,
      address.waterbody_local_name
    ]
  }
}
