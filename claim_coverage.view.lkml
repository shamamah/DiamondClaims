view: claim_coverage {
  sql_table_name: dbo.ClaimCoverage ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimexposure_id, '  ', ${TABLE}.claimsubexposure_num, '  ', ${TABLE}.claimcoverage_num) ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: asl_id {
    type: number
    sql: ${TABLE}.asl_id ;;
  }

  dimension: calculate_deductible {
    type: string
    sql: ${TABLE}.calculate_deductible ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimcoverage_num {
    type: number
    sql: ${TABLE}.claimcoverage_num ;;
  }

  dimension: claimexposure_id {
    type: number
    sql: ${TABLE}.claimexposure_id ;;
  }

  dimension: claimsubexposure_num {
    type: number
    sql: ${TABLE}.claimsubexposure_num ;;
  }

  dimension: coinsurance_percent {
    type: number
    sql: ${TABLE}.coinsurance_percent ;;
  }

  dimension: coverage_limitations {
    type: string
    sql: ${TABLE}.coverage_limitations ;;
  }

  dimension: coverage_num {
    type: number
    sql: ${TABLE}.coverage_num ;;
  }

  dimension: coveragecode_id {
    type: number
    sql: ${TABLE}.coveragecode_id ;;
  }

  dimension: deductible_dscr {
    type: string
    sql: ${TABLE}.deductible_dscr ;;
  }

  dimension: eff_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.eff_date ;;
  }

  dimension: exp_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.exp_date ;;
  }

  dimension: external_coverage_identifier {
    type: string
    sql: ${TABLE}.external_coverage_identifier ;;
  }

  dimension: external_unit_identifier {
    type: string
    sql: ${TABLE}.external_unit_identifier ;;
  }

  dimension: has_coverage {
    type: string
    sql: ${TABLE}.has_coverage ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: limit_dscr {
    type: string
    sql: ${TABLE}.limit_dscr ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: record_only {
    type: string
    sql: ${TABLE}.record_only ;;
  }

  measure: count {
    type: count
    #drill_fields: []
  }
}
