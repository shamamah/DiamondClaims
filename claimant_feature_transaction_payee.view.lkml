view: claimant_feature_transaction_payee {
  sql_table_name: dbo.ClaimTransactionPayee ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimant_num, '  ', ${TABLE}.claimfeature_num, '  ', ${TABLE}.claimtransaction_num, '  ', ${TABLE}.claimpayytype_id) ;;
  }

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

  dimension: claimfeature_num {
    type: number
    sql: ${TABLE}.claimfeature_num ;;
  }

  dimension: claimpayee_id {
    type: number
    sql: ${TABLE}.claimpayee_id ;;
  }

  dimension: claimpayeetype_id {
    type: number
    sql: ${TABLE}.claimpayeetype_id ;;
  }

  dimension: claimtransaction_num {
    type: number
    sql: ${TABLE}.claimtransaction_num ;;
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
