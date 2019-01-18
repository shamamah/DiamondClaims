view: claimant_financials_eop {
  sql_table_name: dbo.vClaimFinancials_EOP ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimant_num, '  ', ${TABLE}.claimfeature_num, '  ', ${TABLE}.claimfinancials_num) ;;
  }

  dimension: added_date {
    hidden: yes
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

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

  dimension: claimant_num {
    hidden: yes
    type: number
    sql: ${TABLE}.claimant_num ;;
  }

  dimension: claimcontrol_id {
    hidden: yes
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimeoplevel_id {
    hidden: yes
    type: number
    sql: ${TABLE}.claimeoplevel_id ;;
  }

  dimension: claimfeature_num {
    hidden: yes
    type: number
    sql: ${TABLE}.claimfeature_num ;;
  }

  dimension: claimfinanciallevel {
    hidden: yes
    type: number
    sql: ${TABLE}.claimfinanciallevel ;;
  }

  dimension: claimfinancials_num {
    hidden: yes
    type: number
    sql: ${TABLE}.claimfinancials_num ;;
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

  dimension: last_modified_date {
    hidden: yes
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: other_recovery {
    hidden: yes
    type: string
    sql: ${TABLE}.other_recovery ;;
  }

  dimension: pcadded_date {
    hidden: yes
    type: date
    sql: ${TABLE}.pcadded_date ;;
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

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    #drill_fields: []
  }

  measure: sum_alae_paid {
    label: "ALAE Paid"
    type: sum
    value_format_name: usd
    sql: ${alae_paid} ;;
  }

  measure: sum_alae_reserve {
    label: "ALAE Reserve"
    type: sum
    value_format_name: usd
    sql: ${alae_reserve} ;;
  }

  measure: sum_anticipated_expense_recovery {
    label: "Anticipated Expense Recovery"
    type: sum
    value_format_name: usd
    sql: ${anticipated_expense_recovery} ;;
  }

  measure: sum_anticipated_other_recovery {
    label: "Anticipated Other Recovery"
    type: sum
    value_format_name: usd
    sql: ${anticipated_other_recovery} ;;
  }

  measure: sum_anticipated_salvage {
    label: "Anticipated Salvage"
    type: sum
    value_format_name: usd
    sql: ${anticipated_salvage} ;;
  }

  measure: sum_anticipated_subro {
    label: "Anticipated Subro"
    type: sum
    value_format_name: usd
    sql: ${anticipated_subro} ;;
  }

  measure: sum_expense_paid {
    label: "Expense Paid"
    type: sum
    value_format_name: usd
    sql: ${expense_paid} ;;
  }

  measure: sum_expense_recovery {
    label: "Expense Recovery"
    type: sum
    value_format_name: usd
    sql: ${expense_recovery} ;;
  }

  measure: sum_expense_reserve {
    label: "Expense Reserve"
    type: sum
    value_format_name: usd
    sql: ${expense_reserve} ;;
  }

  measure: sum_indemnity_paid {
    label: "Indemnity Paid"
    type: sum
    value_format_name: usd
    sql: ${indemnity_paid} ;;
  }

  measure: sum_indemnity_reserve {
    label: "Indemnity Reserve"
    type: sum
    value_format_name: usd
    sql: ${indemnity_reserve} ;;
  }

  measure: sum_other_recovery {
    label: "Other Receovery"
    type: sum
    value_format_name: usd
    sql: ${other_recovery} ;;
  }

  measure: sum_salvage {
    label: "Salvage"
    type: sum
    value_format_name: usd
    sql: ${salvage} ;;
  }

  measure: sum_subro {
    label: "Subro"
    type: sum
    value_format_name: usd
    sql: ${subro} ;;
  }

}
