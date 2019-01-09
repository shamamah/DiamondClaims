view: claimant_name_link {
  sql_table_name: dbo.ClaimantNameLink ;;

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
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

  dimension: name_id {
    type: number
    sql: ${TABLE}.name_id ;;
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
    #drill_fields: []
  }
}
