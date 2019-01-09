view: claimant_feature_transaction_status {
  sql_table_name: dbo.ClaimTransactionStatus ;;

  dimension: calc {
    type: string
    sql: ${TABLE}.calc ;;
  }

  dimension: claimtransactionstatus_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.claimtransactionstatus_id ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}.enabled ;;
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
    type: count
    #drill_fields: []
  }
}
