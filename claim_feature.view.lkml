view: claim_feature {
  sql_table_name: dbo.ClaimFeature ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimant_num, '  ', ${TABLE}.claimfeature_num) ;;
  }

  dimension: added {
    type: date
    sql: ${TABLE}.added ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: attorney_involved_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.attorney_involved_date ;;
  }

  dimension: claimant_num {
    type: number
    sql: ${TABLE}.claimant_num ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimcoverage_num {
    type: number
    sql: ${TABLE}.claimcoverage_num ;;
  }

  dimension: claimdenial_date {
    type: date
    sql: ${TABLE}.claimdenial_date ;;
  }

  dimension: claimdenialreason_id {
    type: number
    sql: ${TABLE}.claimdenialreason_id ;;
  }

  dimension: claimdenialreason_remarks {
    type: string
    sql: ${TABLE}.claimdenialreason_remarks ;;
  }

  dimension: claimdenialusers_id {
    type: number
    sql: ${TABLE}.claimdenialusers_id ;;
  }

  dimension: claimexposure_id {
    type: number
    sql: ${TABLE}.claimexposure_id ;;
  }

  dimension: claimfeature_num {
    type: number
    sql: ${TABLE}.claimfeature_num ;;
  }

  dimension: claimfeature_userdef_1_id {
    type: number
    sql: ${TABLE}.claimfeature_userdef_1_id ;;
  }

  dimension: claimfeature_userdef_2_id {
    type: number
    sql: ${TABLE}.claimfeature_userdef_2_id ;;
  }

  dimension: claimfeature_userdef_3_id {
    type: number
    sql: ${TABLE}.claimfeature_userdef_3_id ;;
  }

  dimension: claimfeatureclosereason_id {
    type: number
    sql: ${TABLE}.claimfeatureclosereason_id ;;
  }

  dimension: claimfeaturestatus_id {
    type: number
    sql: ${TABLE}.claimfeaturestatus_id ;;
  }

  dimension: claimfinancials_num {
    type: number
    sql: ${TABLE}.claimfinancials_num ;;
  }

  dimension: claimoffice_id {
    type: number
    sql: ${TABLE}.claimoffice_id ;;
  }

  dimension: claimreportedby_id {
    type: number
    sql: ${TABLE}.claimreportedby_id ;;
  }

  dimension: claimreportedbymethod_id {
    type: number
    sql: ${TABLE}.claimreportedbymethod_id ;;
  }

  dimension: claimsubcoverage_num {
    type: number
    sql: ${TABLE}.claimsubcoverage_num ;;
  }

  dimension: claimsubexposure_num {
    type: number
    sql: ${TABLE}.claimsubexposure_num ;;
  }

  dimension: claimsubropotentialtype_id {
    type: number
    sql: ${TABLE}.claimsubropotentialtype_id ;;
  }

  dimension: clue_date {
    type: date
    sql: ${TABLE}.clue_date ;;
  }

  dimension: corvel_approved_amount {
    type: string
    sql: ${TABLE}.corvel_approved_amount ;;
  }

  dimension: coverage_dscr {
    type: string
    sql: ${TABLE}.coverage_dscr ;;
  }

  dimension: coverage_limitations {
    type: string
    sql: ${TABLE}.coverage_limitations ;;
  }

  dimension: deductible {
    type: string
    sql: ${TABLE}.deductible ;;
  }

  dimension: deductible_amount {
    type: string
    sql: ${TABLE}.deductible_amount ;;
  }

  dimension: deductible_applied {
    type: string
    sql: ${TABLE}.deductible_applied ;;
  }

  dimension: deductible_applied_amount {
    type: string
    sql: ${TABLE}.deductible_applied_amount ;;
  }

  dimension: deductible_available_amount {
    type: string
    sql: ${TABLE}.deductible_available_amount ;;
  }

  dimension: deductible_waived {
    type: string
    sql: ${TABLE}.deductible_waived ;;
  }

  dimension: denied {
    type: string
    sql: ${TABLE}.denied ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: exclude_from_medical {
    type: string
    sql: ${TABLE}.exclude_from_medical ;;
  }

  dimension: exposure_dscr {
    type: string
    sql: ${TABLE}.exposure_dscr ;;
  }

  dimension: first_indemnity_payment_num {
    type: number
    sql: ${TABLE}.first_indemnity_payment_num ;;
  }

  dimension: first_indemnity_payment_set {
    type: string
    sql: ${TABLE}.first_indemnity_payment_set ;;
  }

  dimension: first_indemnity_reserve {
    type: string
    sql: ${TABLE}.first_indemnity_reserve ;;
  }

  dimension: first_indemnity_reserve_date {
    type: date
    sql: ${TABLE}.first_indemnity_reserve_date ;;
  }

  dimension: first_indemnity_reserve_num {
    type: number
    sql: ${TABLE}.first_indemnity_reserve_num ;;
  }

  dimension: first_indemnity_reserve_set {
    type: string
    sql: ${TABLE}.first_indemnity_reserve_set ;;
  }

  dimension: in_litigation {
    type: string
    sql: ${TABLE}.in_litigation ;;
  }

  dimension: in_litigation_yesno_id {
    type: number
    sql: ${TABLE}.in_litigation_yesno_id ;;
  }

  dimension: in_salvage {
    type: string
    sql: ${TABLE}.in_salvage ;;
  }

  dimension: in_suit {
    type: string
    sql: ${TABLE}.in_suit ;;
  }

  dimension: inside_adjuster_id {
    type: number
    sql: ${TABLE}.inside_adjuster_id ;;
  }

  dimension: is_early_settlement_opportunity {
    type: string
    sql: ${TABLE}.is_early_settlement_opportunity ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: notify_underwriting {
    type: string
    sql: ${TABLE}.notify_underwriting ;;
  }

  dimension: old_coverage_num {
    type: number
    sql: ${TABLE}.old_coverage_num ;;
  }

  dimension: old_coveragecode_id {
    type: number
    sql: ${TABLE}.old_coveragecode_id ;;
  }

  dimension: old_exposure_id {
    type: number
    sql: ${TABLE}.old_exposure_id ;;
  }

  dimension: old_subcoveragecode_id {
    type: number
    sql: ${TABLE}.old_subcoveragecode_id ;;
  }

  dimension: old_subexposure_id {
    type: number
    sql: ${TABLE}.old_subexposure_id ;;
  }

  dimension: old_subexposure_num {
    type: number
    sql: ${TABLE}.old_subexposure_num ;;
  }

  dimension: old_subexposure_ver {
    type: number
    sql: ${TABLE}.old_subexposure_ver ;;
  }

  dimension: outside_adjuster_id {
    type: number
    sql: ${TABLE}.outside_adjuster_id ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: peroccur_limit {
    type: string
    sql: ${TABLE}.peroccur_limit ;;
  }

  dimension: perperson_limit {
    type: string
    sql: ${TABLE}.perperson_limit ;;
  }

  dimension: record_only {
    type: string
    sql: ${TABLE}.record_only ;;
  }

  dimension: reopened {
    type: string
    sql: ${TABLE}.reopened ;;
  }

  dimension: reopened_date {
    type: date
    sql: ${TABLE}.reopened_date ;;
  }

  dimension: reported_date {
    type: date
    sql: ${TABLE}.reported_date ;;
  }

  dimension: statute_of_limitations_date {
    type: date
    sql: ${TABLE}.statute_of_limitations_date ;;
  }

  dimension: subcoverage_dscr {
    type: string
    sql: ${TABLE}.subcoverage_dscr ;;
  }

  dimension: subexposure_dscr {
    type: string
    sql: ${TABLE}.subexposure_dscr ;;
  }

  dimension: tort_id {
    type: number
    sql: ${TABLE}.tort_id ;;
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}.users_id ;;
  }

  dimension: waive_iso_reporting {
    type: string
    sql: ${TABLE}.waive_iso_reporting ;;
  }

  dimension: zero_tort {
    type: string
    sql: ${TABLE}.zero_tort ;;
  }

  measure: count {
    type: sum
    sql: CASE WHEN ${claimfeature_num} IS NULL THEN 0 ELSE 1 END ;;
    drill_fields: [detail*]
  }

  set: detail {
    fields: [added,added_date,attorney_involved_date,claimant_num,claimcontrol_id,claimcoverage_num,claimdenial_date,claimdenialreason_id,claimdenialreason_remarks,claimdenialusers_id,claimexposure_id,claimfeature_num,
      claimfeature_userdef_1_id,claimfeature_userdef_2_id,claimfeature_userdef_3_id,claimfeatureclosereason_id,claimfeaturestatus_id,claimfinancials_num,claimoffice_id,claimreportedby_id,claimreportedbymethod_id,
      claimsubcoverage_num,claimsubexposure_num,claimsubropotentialtype_id,clue_date,corvel_approved_amount,coverage_dscr,coverage_limitations,deductible,deductible_amount,deductible_applied,deductible_applied_amount,
      deductible_available_amount,deductible_waived,denied,dscr,exclude_from_medical,exposure_dscr,first_indemnity_payment_num,first_indemnity_payment_set,first_indemnity_reserve,first_indemnity_reserve_date,
      first_indemnity_reserve_num,first_indemnity_reserve_set,in_litigation,in_litigation_yesno_id,in_salvage,in_suit,inside_adjuster_id,is_early_settlement_opportunity,last_modified_date,notify_underwriting,
      old_coverage_num,old_coveragecode_id,old_exposure_id,old_subcoveragecode_id,old_subexposure_id,old_subexposure_num,old_subexposure_ver,outside_adjuster_id,pcadded_date,peroccur_limit,perperson_limit,
      record_only,reopened,reopened_date,reported_date,statute_of_limitations_date,subcoverage_dscr,subexposure_dscr,tort_id,users_id,waive_iso_reporting,zero_tort]
  }
}
