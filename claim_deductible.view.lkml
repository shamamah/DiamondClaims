view: claim_deductible {
  sql_table_name: dbo.ClaimDeductible ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimdeductible_num) ;;
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

  dimension: claimdeductible_num {
    type: number
    sql: ${TABLE}.claimdeductible_num ;;
  }

  dimension: claimdeductibletype_id {
    type: number
    sql: ${TABLE}.claimdeductibletype_id ;;
  }

  dimension: deductible_amount {
    type: string
    sql: ${TABLE}.deductible_amount ;;
  }

  dimension: deductible_applied_amount {
    type: string
    sql: ${TABLE}.deductible_applied_amount ;;
  }

  dimension: deductible_available_amount {
    type: string
    sql: ${TABLE}.deductible_available_amount ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  measure: count {
    type: sum
    sql: CASE WHEN ${claimdeductible_num} IS NULL THEN 0 ELSE 1 END ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [added_date,aggregate_code,claimcontrol_id,claimdeductible_num,claimdeductibletype_id,deductible_amount,deductible_applied_amount,deductible_available_amount,last_modified_date,pcadded_date]
  }
}
