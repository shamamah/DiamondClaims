view: claimant_feature_transaction_category {
  sql_table_name: dbo.ClaimTransactionCategory ;;

  dimension: claimfinancialcategory_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.claimfinancialcategory_id ;;
  }

  dimension: claimtransactioncategory_id {
    type: number
    sql: ${TABLE}.claimtransactioncategory_id ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
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
