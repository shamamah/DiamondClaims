view: claimant_injury {
  sql_table_name: dbo.ClaimantInjury ;;

  dimension_group: added {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: alleged_cause_of_injury {
    type: string
    sql: ${TABLE}.alleged_cause_of_injury ;;
  }

  dimension: ambulance_service_used {
    type: string
    sql: ${TABLE}.ambulance_service_used ;;
  }

  dimension: claimant_num {
    type: number
    sql: ${TABLE}.claimant_num ;;
  }

  dimension: claimantcauseofinjurycategorytype_id {
    type: number
    sql: ${TABLE}.claimantcauseofinjurycategorytype_id ;;
  }

  dimension: claimantcauseofinjurytype_id {
    type: number
    sql: ${TABLE}.claimantcauseofinjurytype_id ;;
  }

  dimension: claimantinjuredbodypart_id {
    type: number
    sql: ${TABLE}.claimantinjuredbodypart_id ;;
  }

  dimension: claimantinjuredbodypartcategory_id {
    type: number
    sql: ${TABLE}.claimantinjuredbodypartcategory_id ;;
  }

  dimension: claimantnatureofinjury_id {
    type: number
    sql: ${TABLE}.claimantnatureofinjury_id ;;
  }

  dimension: claimantnatureofinjurycategory_id {
    type: number
    sql: ${TABLE}.claimantnatureofinjurycategory_id ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension_group: date_of_death {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date_of_death ;;
  }

  dimension: death_result_of_injury {
    type: string
    sql: ${TABLE}.death_result_of_injury ;;
  }

  dimension: descofinjury {
    type: string
    sql: ${TABLE}.descofinjury ;;
  }

  dimension: disabled_result_of_accident {
    type: string
    sql: ${TABLE}.disabled_result_of_accident ;;
  }

  dimension: icd_10_diagnosis_code_1 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_1 ;;
  }

  dimension: icd_10_diagnosis_code_10 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_10 ;;
  }

  dimension: icd_10_diagnosis_code_11 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_11 ;;
  }

  dimension: icd_10_diagnosis_code_12 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_12 ;;
  }

  dimension: icd_10_diagnosis_code_13 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_13 ;;
  }

  dimension: icd_10_diagnosis_code_14 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_14 ;;
  }

  dimension: icd_10_diagnosis_code_15 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_15 ;;
  }

  dimension: icd_10_diagnosis_code_16 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_16 ;;
  }

  dimension: icd_10_diagnosis_code_17 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_17 ;;
  }

  dimension: icd_10_diagnosis_code_18 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_18 ;;
  }

  dimension: icd_10_diagnosis_code_19 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_19 ;;
  }

  dimension: icd_10_diagnosis_code_2 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_2 ;;
  }

  dimension: icd_10_diagnosis_code_3 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_3 ;;
  }

  dimension: icd_10_diagnosis_code_4 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_4 ;;
  }

  dimension: icd_10_diagnosis_code_5 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_5 ;;
  }

  dimension: icd_10_diagnosis_code_6 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_6 ;;
  }

  dimension: icd_10_diagnosis_code_7 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_7 ;;
  }

  dimension: icd_10_diagnosis_code_8 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_8 ;;
  }

  dimension: icd_10_diagnosis_code_9 {
    type: string
    sql: ${TABLE}.icd_10_diagnosis_code_9 ;;
  }

  dimension: icd_9_diagnosis_code_1 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_1 ;;
  }

  dimension: icd_9_diagnosis_code_10 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_10 ;;
  }

  dimension: icd_9_diagnosis_code_11 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_11 ;;
  }

  dimension: icd_9_diagnosis_code_12 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_12 ;;
  }

  dimension: icd_9_diagnosis_code_13 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_13 ;;
  }

  dimension: icd_9_diagnosis_code_14 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_14 ;;
  }

  dimension: icd_9_diagnosis_code_15 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_15 ;;
  }

  dimension: icd_9_diagnosis_code_16 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_16 ;;
  }

  dimension: icd_9_diagnosis_code_17 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_17 ;;
  }

  dimension: icd_9_diagnosis_code_18 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_18 ;;
  }

  dimension: icd_9_diagnosis_code_19 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_19 ;;
  }

  dimension: icd_9_diagnosis_code_2 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_2 ;;
  }

  dimension: icd_9_diagnosis_code_3 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_3 ;;
  }

  dimension: icd_9_diagnosis_code_4 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_4 ;;
  }

  dimension: icd_9_diagnosis_code_5 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_5 ;;
  }

  dimension: icd_9_diagnosis_code_6 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_6 ;;
  }

  dimension: icd_9_diagnosis_code_7 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_7 ;;
  }

  dimension: icd_9_diagnosis_code_8 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_8 ;;
  }

  dimension: icd_9_diagnosis_code_9 {
    type: string
    sql: ${TABLE}.icd_9_diagnosis_code_9 ;;
  }

  dimension: ime_results {
    type: string
    sql: ${TABLE}.ime_results ;;
  }

  dimension: injury_summary {
    type: string
    sql: ${TABLE}.injury_summary ;;
  }

  dimension: injurytypecategory_id {
    type: number
    sql: ${TABLE}.injurytypecategory_id ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: medicareproductliabilitytype_id {
    type: number
    sql: ${TABLE}.medicareproductliabilitytype_id ;;
  }

  dimension_group: pcadded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: permanency {
    type: string
    sql: ${TABLE}.permanency ;;
  }

  dimension: preexisitingdisablitycode_yesno_id {
    type: number
    sql: ${TABLE}.preexisitingdisablitycode_yesno_id ;;
  }

  dimension: product_alleged_harm {
    type: string
    sql: ${TABLE}.product_alleged_harm ;;
  }

  dimension: product_brand_name {
    type: string
    sql: ${TABLE}.product_brand_name ;;
  }

  dimension: product_generic_name {
    type: string
    sql: ${TABLE}.product_generic_name ;;
  }

  dimension: product_manufacturer {
    type: string
    sql: ${TABLE}.product_manufacturer ;;
  }

  dimension: vehicle_damage {
    type: string
    sql: ${TABLE}.vehicle_damage ;;
  }

  measure: count {
    type: count
    drill_fields: [product_brand_name, product_generic_name]
  }
}
