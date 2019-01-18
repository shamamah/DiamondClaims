view: v_claim_financials_claimant_sum {
  sql_table_name: dbo.vClaimFinancials_ClaimantSum ;;

  dimension: alae_paid {
    hidden: yes
    type: string
    sql: ${TABLE}.alae_paid ;;
  }

  dimension: alae_reserve {
    hidden: yes
    type: string
    sql: ${TABLE}.alae_reserve ;;
  }

  dimension: anticipated_expense_recovery {
    hidden: yes
    type: string
    sql: ${TABLE}.anticipated_expense_recovery ;;
  }

  dimension: anticipated_other_recovery {
    hidden: yes
    type: string
    sql: ${TABLE}.anticipated_other_recovery ;;
  }

  dimension: anticipated_salvage {
    hidden: yes
    type: string
    sql: ${TABLE}.anticipated_salvage ;;
  }

  dimension: anticipated_subro {
    hidden: yes
    type: string
    sql: ${TABLE}.anticipated_subro ;;
  }

  dimension: claimcontrol_id {
    primary_key: yes
    hidden: yes
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: expense_paid {
    hidden: yes
    type: string
    sql: ${TABLE}.expense_paid ;;
  }

  dimension: expense_recovery {
    hidden: yes
    type: string
    sql: ${TABLE}.expense_recovery ;;
  }

  dimension: expense_reserve {
    hidden: yes
    type: string
    sql: ${TABLE}.expense_reserve ;;
  }

  dimension: indemnity_paid {
    hidden: yes
    type: string
    sql: ${TABLE}.indemnity_paid ;;
  }

  dimension: indemnity_reserve {
    hidden: yes
    type: string
    sql: ${TABLE}.indemnity_reserve ;;
  }

  dimension: other_recovery {
    hidden: yes
    type: string
    sql: ${TABLE}.other_recovery ;;
  }

  dimension: salvage {
    hidden: yes
    type: string
    sql: ${TABLE}.salvage ;;
  }

  dimension: subro {
    hidden: yes
    type: string
    sql: ${TABLE}.subro ;;
  }

  #measure: count {
  #  type: count
  #  drill_fields: []
  #}

  measure: sum_alae_paid {
    label: "ALAE Paid"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.alae_paid ;;
  }

  measure: sum_alae_reserve {
    label: "ALAE Reserve"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.alae_reserve ;;
  }

  measure: sum_anticipated_expense_recovery {
    label: "Anticipated Expense Recovery"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.anticipated_expense_recovery ;;
  }

  measure: sum_anticipated_other_recovery {
    label: "Anticipated Other Recovery"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.anticipated_other_recovery ;;
  }

  measure: sum_anticipated_salvage {
    label: "Anticipated Salvage"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.anticipated_salvage ;;
  }

  measure: sum_anticipated_subro {
    label: "Anticipated Subro"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.anticipated_subro ;;
  }

  measure: sum_expense_paid {
    label: "Expense Paid"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.expense_paid ;;
  }

  measure: sum_expense_recovery {
    label: "Expense Recovery"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.expense_recovery ;;
  }

  measure: sum_expense_reserve {
    label: "Expense Reserve"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.expense_reserve ;;
  }

  measure: sum_indemnity_paid {
    label: "Indemnity Paid"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.indemnity_paid ;;
  }

  measure: sum_indemnity_reserve {
    label: "Indemnity Reserve"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.indemnity_reserve ;;
  }

  measure: sum_other_recovery {
    label: "Other Recovery"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.other_recovery ;;
  }

  measure: sum_salvage {
    label: "Salvage"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.salvage ;;
  }

  measure: sum_subro {
    label: "Subro"
    type: sum
    value_format_name: usd
    sql: ${TABLE}.subro ;;
  }
}
