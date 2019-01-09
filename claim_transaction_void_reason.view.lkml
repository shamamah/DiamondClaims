view: claim_transaction_void_reason {
  sql_table_name: dbo.ClaimTransactionVoidReason ;;

  dimension: claimtransactionvoidreason_id {
    type: number
    sql: ${TABLE}.claimtransactionvoidreason_id ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}.enabled ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension_group: pcadded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: sort_order {
    type: number
    sql: ${TABLE}.sort_order ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
