view: claim_financials {
  sql_table_name: dbo.ClaimFinancials ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimfinancials_num) ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: alae_paid {
    type: string
    sql: ${TABLE}.alae_paid ;;
  }

  dimension: alae_reserve {
    type: string
    sql: ${TABLE}.alae_reserve ;;
  }

  dimension: anticipated_expense_recovery {
    type: string
    sql: ${TABLE}.anticipated_expense_recovery ;;
  }

  dimension: anticipated_other_recovery {
    type: string
    sql: ${TABLE}.anticipated_other_recovery ;;
  }

  dimension: anticipated_salvage {
    type: string
    sql: ${TABLE}.anticipated_salvage ;;
  }

  dimension: anticipated_subro {
    type: string
    sql: ${TABLE}.anticipated_subro ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimfinanciallevel_id {
    type: number
    sql: ${TABLE}.claimfinanciallevel_id ;;
  }

  dimension: claimfinancials_num {
    type: number
    sql: ${TABLE}.claimfinancials_num ;;
  }

  dimension: expense_paid {
    type: string
    sql: ${TABLE}.expense_paid ;;
  }

  dimension: expense_recovery {
    type: string
    sql: ${TABLE}.expense_recovery ;;
  }

  dimension: expense_reserve {
    type: string
    sql: ${TABLE}.expense_reserve ;;
  }

  dimension: indemnity_paid {
    type: string
    sql: ${TABLE}.indemnity_paid ;;
  }

  dimension: indemnity_reserve {
    type: string
    sql: ${TABLE}.indemnity_reserve ;;
  }

  dimension: initial_alae_reserve {
    type: string
    sql: ${TABLE}.initial_alae_reserve ;;
  }

  dimension: initial_anticipated_expense_recovery {
    type: string
    sql: ${TABLE}.initial_anticipated_expense_recovery ;;
  }

  dimension: initial_anticipated_other_recovery {
    type: string
    sql: ${TABLE}.initial_anticipated_other_recovery ;;
  }

  dimension: initial_anticipated_salvage {
    type: string
    sql: ${TABLE}.initial_anticipated_salvage ;;
  }

  dimension: initial_anticipated_subro {
    type: string
    sql: ${TABLE}.initial_anticipated_subro ;;
  }

  dimension: initial_expense_reserve {
    type: string
    sql: ${TABLE}.initial_expense_reserve ;;
  }

  dimension: initial_indemnity_reserve {
    type: string
    sql: ${TABLE}.initial_indemnity_reserve ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: other_recovery {
    type: string
    sql: ${TABLE}.other_recovery ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: salvage {
    type: string
    sql: ${TABLE}.salvage ;;
  }

  dimension: subro {
    type: string
    sql: ${TABLE}.subro ;;
  }

  measure: count {
    type: sum
    sql: CASE WHEN ${claimfinancials_num} IS NULL THEN 0 ELSE 1 END ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [added_date,alae_paid,alae_reserve,anticipated_expense_recovery,anticipated_other_recovery,anticipated_salvage,anticipated_subro,claimcontrol_id,claimfinanciallevel_id,
      claimfinancials_num,expense_paid,expense_recovery,expense_reserve,indemnity_paid,indemnity_reserve,initial_alae_reserve,initial_anticipated_expense_recovery,initial_anticipated_other_recovery,
      initial_anticipated_salvage,initial_anticipated_subro,initial_expense_reserve,initial_indemnity_reserve,last_modified_date,other_recovery,pcadded_date,salvage,subro]
  }
}
