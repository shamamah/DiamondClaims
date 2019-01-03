view: claim_limit {
  sql_table_name: dbo.ClaimLimit ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimlimit_num) ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: aggregate_code {
    type: string
    sql: ${TABLE}.aggregate_code ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimlimit_num {
    type: number
    sql: ${TABLE}.claimlimit_num ;;
  }

  dimension: coveragelevel_id {
    type: number
    sql: ${TABLE}.coveragelevel_id ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: limit_amount {
    type: string
    sql: ${TABLE}.limit_amount ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  measure: count {
    type: sum
    sql: CASE WHEN ${claimlimit_num} IS NULL THEN 0 ELSE 1 END ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [added_date,aggregate_code,claimcontrol_id,claimlimit_num,coveragelevel_id,last_modified_date,limit_amount,pcadded_date]
  }
}
