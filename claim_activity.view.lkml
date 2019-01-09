view: claim_activity {
  sql_table_name: dbo.ClaimControlActivity ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.num) ;;
  }

  dimension: added {
    type: date
    sql: ${TABLE}.added ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: claimactivitycode_id {
    type: number
    sql: ${TABLE}.claimactivitycode_id ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimpersonneltype_id {
    type: number
    sql: ${TABLE}.claimpersonneltype_id ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: num {
    type: number
    sql: ${TABLE}.num ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: transfer_from_users_id {
    type: number
    sql: ${TABLE}.transfer_from_users_id ;;
  }

  dimension: transfer_to_users_id {
    type: number
    sql: ${TABLE}.transfer_to_users_id ;;
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}.users_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  set: detail {
    fields: [added,added_date,claimactivitycode_id,claimcontrol_id,claimpersonneltype_id,dscr,last_modified_date,num,pcadded_date,transfer_from_users_id,transfer_to_users_id,users_id]
  }

}
