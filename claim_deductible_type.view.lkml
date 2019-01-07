view: claim_deductible_type {
  sql_table_name: dbo.ClaimDeductibleType ;;

  dimension: claimdeductibletype_id {
    type: number
    sql: ${TABLE}.claimdeductibletype_id ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: last_modified {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: pcadded {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
