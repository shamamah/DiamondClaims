view: claimant_feature_transaction {
  sql_table_name: dbo.ClaimTransaction ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimant_num, '  ', ${TABLE}.claimfeature_num, '  ', ${TABLE}.claimtransaction_num) ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }

  dimension: approved {
    type: string
    sql: ${TABLE}.approved ;;
  }

  dimension: approved_date {
    type: date
    sql: ${TABLE}.approved_date ;;
  }

  dimension: approvedby_users_id {
    type: number
    sql: ${TABLE}.approvedby_users_id ;;
  }

  dimension: benefit {
    type: string
    sql: ${TABLE}.benefit ;;
  }

  dimension: benefit_end {
    type: date
    sql: ${TABLE}.benefit_end ;;
  }

  dimension: benefit_start {
    type: date
    sql: ${TABLE}.benefit_start ;;
  }

  dimension: check_author {
    type: string
    sql: ${TABLE}.check_author ;;
  }

  dimension: check_date {
    type: date
    sql: ${TABLE}.check_date ;;
  }

  dimension: check_number {
    type: string
    sql: ${TABLE}.check_number ;;
  }

  dimension: check_possession {
    type: string
    sql: ${TABLE}.check_possession ;;
  }

  dimension: checkitem_id {
    type: number
    sql: ${TABLE}.checkitem_id ;;
  }

  dimension: claimant_num {
    type: number
    sql: ${TABLE}.claimant_num ;;
  }

  dimension: claimchecktype_id {
    type: number
    sql: ${TABLE}.claimchecktype_id ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimfeature_num {
    type: number
    sql: ${TABLE}.claimfeature_num ;;
  }

  dimension: claimpaymentformtype_id {
    type: number
    sql: ${TABLE}.claimpaymentformtype_id ;;
  }

  dimension: claimpaytype_id {
    type: number
    sql: ${TABLE}.claimpaytype_id ;;
  }

  dimension: claimrecoverytype_id {
    type: number
    sql: ${TABLE}.claimrecoverytype_id ;;
  }

  dimension: claimscheduledpaymentcycle_id {
    type: number
    sql: ${TABLE}.claimscheduledpaymentcycle_id ;;
  }

  dimension: claimstoppmt_id {
    type: number
    sql: ${TABLE}.claimstoppmt_id ;;
  }

  dimension: claimtransaction_num {
    type: number
    sql: ${TABLE}.claimtransaction_num ;;
  }

  dimension: claimtransactioncategory_id {
    type: number
    sql: ${TABLE}.claimtransactioncategory_id ;;
  }

  dimension: claimtransactionsplit_num {
    type: number
    sql: ${TABLE}.claimtransactionsplit_num ;;
  }

  dimension: claimtransactionstatus_id {
    type: number
    sql: ${TABLE}.claimtransactionstatus_id ;;
  }

  dimension: claimtransactiontrackingcode_id {
    type: number
    sql: ${TABLE}.claimtransactiontrackingcode_id ;;
  }

  dimension: claimtransactiontype_id {
    type: number
    sql: ${TABLE}.claimtransactiontype_id ;;
  }

  dimension: claimtransactionvoidreason_id {
    type: number
    sql: ${TABLE}.claimtransactionvoidreason_id ;;
  }

  dimension: coinsurance_amount {
    type: string
    sql: ${TABLE}.coinsurance_amount ;;
  }

  dimension: deductible_amount {
    type: string
    sql: ${TABLE}.deductible_amount ;;
  }

  dimension: deductible_applied {
    type: string
    sql: ${TABLE}.deductible_applied ;;
  }

  dimension: eff_date {
    type: date
    sql: ${TABLE}.eff_date ;;
  }

  dimension: enclosures {
    type: string
    sql: ${TABLE}.enclosures ;;
  }

  dimension: invoice_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.invoice_date ;;
  }

  dimension: invoice_number {
    type: string
    sql: ${TABLE}.invoice_number ;;
  }

  dimension: is_converted {
    type: string
    sql: ${TABLE}.is_converted ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: manual_check {
    type: string
    sql: ${TABLE}.manual_check ;;
  }

  dimension: memo {
    type: string
    sql: ${TABLE}.memo ;;
  }

  dimension: new_reserve {
    type: string
    sql: ${TABLE}.new_reserve ;;
  }

  dimension: old_reserve {
    type: string
    sql: ${TABLE}.old_reserve ;;
  }

  dimension: pay_to_the_order_of {
    type: string
    sql: ${TABLE}.pay_to_the_order_of ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: processed_by_eod {
    type: string
    sql: ${TABLE}.processed_by_eod ;;
  }

  dimension: reissued {
    type: string
    sql: ${TABLE}.reissued ;;
  }

  dimension: reissued_date {
    type: date
    sql: ${TABLE}.reissued_date ;;
  }

  dimension: rejected {
    type: string
    sql: ${TABLE}.rejected ;;
  }

  dimension: rejected_date {
    type: date
    sql: ${TABLE}.rejected_date ;;
  }

  dimension: rejectedby_users_id {
    type: number
    sql: ${TABLE}.rejectedby_users_id ;;
  }

  dimension: related_claimtransaction_num {
    type: number
    sql: ${TABLE}.related_claimtransaction_num ;;
  }

  dimension: remark {
    type: string
    sql: ${TABLE}.remark ;;
  }

  dimension: should_reimburse_deductible {
    type: string
    sql: ${TABLE}.should_reimburse_deductible ;;
  }

  dimension: system_generated {
    type: string
    sql: ${TABLE}.system_generated ;;
  }

  dimension: target {
    type: string
    sql: ${TABLE}.target ;;
  }

  dimension: total_amount {
    type: string
    sql: ${TABLE}.total_amount ;;
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}.users_id ;;
  }

  dimension: vendor_claim_type {
    type: string
    sql: ${TABLE}.vendor_claim_type ;;
  }

  dimension: voided_date {
    type: date
    sql: ${TABLE}.voided_date ;;
  }

  measure: count {
    type: count
    #drill_fields: []
  }
}
