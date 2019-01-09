view: claimant_feature_transaction_type {
  sql_table_name: dbo.ClaimTransactionType ;;

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: adjust_alae_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.adjust_alae_paid ;;
  }

  dimension: adjust_alae_reserve {
    type: number
    sql: ${TABLE}.adjust_alae_reserve ;;
  }

  dimension: adjust_ant_expense_recovery {
    type: number
    sql: ${TABLE}.adjust_ant_expense_recovery ;;
  }

  dimension: adjust_ant_other_recovery {
    type: number
    sql: ${TABLE}.adjust_ant_other_recovery ;;
  }

  dimension: adjust_ant_salvage {
    type: number
    sql: ${TABLE}.adjust_ant_salvage ;;
  }

  dimension: adjust_ant_subro {
    type: number
    sql: ${TABLE}.adjust_ant_subro ;;
  }

  dimension: adjust_deductible {
    type: number
    sql: ${TABLE}.adjust_deductible ;;
  }

  dimension: adjust_expense_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.adjust_expense_paid ;;
  }

  dimension: adjust_expense_recovery {
    type: number
    sql: ${TABLE}.adjust_expense_recovery ;;
  }

  dimension: adjust_expense_reserve {
    type: number
    sql: ${TABLE}.adjust_expense_reserve ;;
  }

  dimension: adjust_financials {
    type: string
    sql: ${TABLE}.adjust_financials ;;
  }

  dimension: adjust_indemnity_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.adjust_indemnity_paid ;;
  }

  dimension: adjust_indemnity_reserve {
    type: number
    sql: ${TABLE}.adjust_indemnity_reserve ;;
  }

  dimension: adjust_other_recovery {
    type: number
    sql: ${TABLE}.adjust_other_recovery ;;
  }

  dimension: adjust_salvage {
    type: number
    sql: ${TABLE}.adjust_salvage ;;
  }

  dimension: adjust_subro {
    type: number
    sql: ${TABLE}.adjust_subro ;;
  }

  dimension: allow_auto_assigned_payee {
    type: string
    sql: ${TABLE}.allow_auto_assigned_payee ;;
  }

  dimension: allow_deny {
    type: string
    sql: ${TABLE}.allow_deny ;;
  }

  dimension: allow_record_only {
    type: string
    sql: ${TABLE}.allow_record_only ;;
  }

  dimension: claimtransactioncategory_id {
    type: number
    sql: ${TABLE}.claimtransactioncategory_id ;;
  }

  dimension: claimtransactionpayeerequired_id {
    type: number
    sql: ${TABLE}.claimtransactionpayeerequired_id ;;
  }

  dimension: claimtransactionpttoorequired_id {
    type: number
    sql: ${TABLE}.claimtransactionpttoorequired_id ;;
  }

  dimension: claimtransactiontype_id {
    type: number
    sql: ${TABLE}.claimtransactiontype_id ;;
  }

  dimension: deduct_reimbursement {
    type: string
    sql: ${TABLE}.deduct_reimbursement ;;
  }

  dimension: disable_manual {
    type: string
    sql: ${TABLE}.disable_manual ;;
  }

  dimension: does_payment_type_apply {
    type: string
    sql: ${TABLE}.does_payment_type_apply ;;
  }

  dimension: does_recovery_type_apply {
    type: string
    sql: ${TABLE}.does_recovery_type_apply ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: dscr2 {
    type: string
    sql: ${TABLE}.dscr2 ;;
  }

  dimension: exclude_from_limit_validation {
    type: string
    sql: ${TABLE}.exclude_from_limit_validation ;;
  }

  dimension: is_payment {
    type: string
    sql: ${TABLE}.is_payment ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: report_cash {
    type: string
    sql: ${TABLE}.report_cash ;;
  }

  dimension: report_payment {
    type: string
    sql: ${TABLE}.report_payment ;;
  }

  dimension: require_manual {
    type: string
    sql: ${TABLE}.require_manual ;;
  }

  dimension: show_coinsurance {
    type: string
    sql: ${TABLE}.show_coinsurance ;;
  }

  dimension: show_deduct {
    type: string
    sql: ${TABLE}.show_deduct ;;
  }

  dimension: show_target {
    type: string
    sql: ${TABLE}.show_target ;;
  }

  dimension: statsclaimtransactiontype_id {
    type: number
    sql: ${TABLE}.statsclaimtransactiontype_id ;;
  }

  dimension: view_only {
    type: string
    sql: ${TABLE}.view_only ;;
  }

  measure: count {
    type: count
    #drill_fields: []
  }
}
