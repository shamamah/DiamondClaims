view: claimant {
  sql_table_name: dbo.Claimant ;;

  dimension: compound_primary_key {
    primary_key: yes
    hidden: yes
    type: string
    sql: CONCAT(${TABLE}.claimcontrol_id, '  ', ${TABLE}.claimant_num) ;;
  }

  dimension: activity_involved {
    type: string
    sql: ${TABLE}.activity_involved ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: additionalpolicyholder_num {
    type: number
    sql: ${TABLE}.additionalpolicyholder_num ;;
  }

  dimension: admin_notified_date {
    type: date
    sql: ${TABLE}.admin_notified_date ;;
  }

  dimension: applicant_num {
    type: number
    sql: ${TABLE}.applicant_num ;;
  }

  dimension: average_weekly_wage {
    type: string
    sql: ${TABLE}.average_weekly_wage ;;
  }

  dimension: benefitpaymenttotype_id {
    type: number
    sql: ${TABLE}.benefitpaymenttotype_id ;;
  }

  dimension: carrier_claim_number {
    type: string
    sql: ${TABLE}.carrier_claim_number ;;
  }

  dimension: carrier_policy_number {
    type: string
    sql: ${TABLE}.carrier_policy_number ;;
  }

  dimension: carrier_remark {
    type: string
    sql: ${TABLE}.carrier_remark ;;
  }

  dimension: claimant_num {
    type: number
    sql: ${TABLE}.claimant_num ;;
  }

  dimension: claimantstatus_id {
    type: number
    sql: ${TABLE}.claimantstatus_id ;;
  }

  dimension: claimanttype_id {
    type: number
    sql: ${TABLE}.claimanttype_id ;;
  }

  dimension: claimattorney_id {
    type: number
    sql: ${TABLE}.claimattorney_id ;;
  }

  dimension: claimattorney_num {
    type: number
    sql: ${TABLE}.claimattorney_num ;;
  }

  dimension: claimbenefittypecode_id {
    type: number
    sql: ${TABLE}.claimbenefittypecode_id ;;
  }

  dimension: claimcareprovider_id {
    type: number
    sql: ${TABLE}.claimcareprovider_id ;;
  }

  dimension: claimcarrier_id {
    type: number
    sql: ${TABLE}.claimcarrier_id ;;
  }

  dimension: claimcarrieradjuster_id {
    type: number
    sql: ${TABLE}.claimcarrieradjuster_id ;;
  }

  dimension: claimclueoperator_id {
    type: number
    sql: ${TABLE}.claimclueoperator_id ;;
  }

  dimension: claimcontrol_id {
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimcontrolproperty_num {
    type: number
    sql: ${TABLE}.claimcontrolproperty_num ;;
  }

  dimension: claimcontrolvehicle_num {
    type: number
    sql: ${TABLE}.claimcontrolvehicle_num ;;
  }

  dimension: claimfinancials_num {
    type: number
    sql: ${TABLE}.claimfinancials_num ;;
  }

  dimension: claimfirm_id {
    type: number
    sql: ${TABLE}.claimfirm_id ;;
  }

  dimension: claimfirmattorney_claimfirm_id {
    type: number
    sql: ${TABLE}.claimfirmattorney_claimfirm_id ;;
  }

  dimension: claimpayee_id {
    type: number
    sql: ${TABLE}.claimpayee_id ;;
  }

  dimension: contacted {
    type: string
    sql: ${TABLE}.contacted ;;
  }

  dimension: contacted_date {
    type: date
    sql: ${TABLE}.contacted_date ;;
  }

  dimension: cpt_code {
    type: string
    sql: ${TABLE}.cpt_code ;;
  }

  dimension: date_hired {
    type: date
    sql: ${TABLE}.date_hired ;;
  }

  dimension: date_of_disability {
    type: date
    sql: ${TABLE}.date_of_disability ;;
  }

  dimension: date_of_retirement {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_retirement ;;
  }

  dimension: date_of_return {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_return ;;
  }

  dimension: date_of_strike {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_strike ;;
  }

  dimension: days_per_week {
    type: number
    sql: ${TABLE}.days_per_week ;;
  }

  dimension: department_of_location {
    type: string
    sql: ${TABLE}.department_of_location ;;
  }

  dimension: dependents {
    type: number
    sql: ${TABLE}.dependents ;;
  }

  dimension: driver_num {
    type: number
    sql: ${TABLE}.driver_num ;;
  }

  dimension: driverexcludetype_id {
    type: number
    sql: ${TABLE}.driverexcludetype_id ;;
  }

  dimension: employeed_at_time_of_loss {
    type: string
    sql: ${TABLE}.employeed_at_time_of_loss ;;
  }

  dimension: employer_notified_date {
    type: date
    sql: ${TABLE}.employer_notified_date ;;
  }

  dimension: employmentstatustype_id {
    type: number
    sql: ${TABLE}.employmentstatustype_id ;;
  }

  dimension: equipment_involved {
    type: string
    sql: ${TABLE}.equipment_involved ;;
  }

  dimension: estimated_date_of_return {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.estimated_date_of_return ;;
  }

  dimension: external_unit_identifier {
    type: string
    sql: ${TABLE}.external_unit_identifier ;;
  }

  dimension: gross_income {
    type: string
    sql: ${TABLE}.gross_income ;;
  }

  dimension: hours_per_day {
    type: number
    sql: ${TABLE}.hours_per_day ;;
  }

  dimension: injury {
    type: string
    sql: ${TABLE}.injury ;;
  }

  dimension: is_insured1 {
    type: string
    sql: ${TABLE}.is_insured1 ;;
  }

  dimension: is_insured2 {
    type: string
    sql: ${TABLE}.is_insured2 ;;
  }

  dimension: is_invalid_iso_data {
    type: string
    sql: ${TABLE}.is_invalid_iso_data ;;
  }

  dimension: is_represented {
    type: string
    sql: ${TABLE}.is_represented ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: last_work_date {
    type: date
    sql: ${TABLE}.last_work_date ;;
  }

  dimension: medicare_recipient {
    type: string
    sql: ${TABLE}.medicare_recipient ;;
  }

  dimension: medicare_waiver_received {
    type: string
    sql: ${TABLE}.medicare_waiver_received ;;
  }

  dimension: minor_medical {
    type: string
    sql: ${TABLE}.minor_medical ;;
  }

  dimension: ncci_class_code {
    type: string
    sql: ${TABLE}.ncci_class_code ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: occupationtype_id {
    type: number
    sql: ${TABLE}.occupationtype_id ;;
  }

  dimension: occurred_on_premises {
    type: string
    sql: ${TABLE}.occurred_on_premises ;;
  }

  dimension: paid_day_of_injury {
    type: date
    sql: ${TABLE}.paid_day_of_injury ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: prepared_date {
    type: date
    sql: ${TABLE}.prepared_date ;;
  }

  dimension: prior3qtr_from_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prior3qtr_from_date ;;
  }

  dimension: prior3qtr_hours {
    type: number
    sql: ${TABLE}.prior3qtr_hours ;;
  }

  dimension: prior3qtr_to_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.prior3qtr_to_date ;;
  }

  dimension: prior3qtr_weeks {
    type: number
    sql: ${TABLE}.prior3qtr_weeks ;;
  }

  dimension: process_involved {
    type: string
    sql: ${TABLE}.process_involved ;;
  }

  dimension: property_dscr {
    type: string
    sql: ${TABLE}.property_dscr ;;
  }

  dimension: relationship_id {
    type: number
    sql: ${TABLE}.relationship_id ;;
  }

  dimension: salary_continued {
    type: string
    sql: ${TABLE}.salary_continued ;;
  }

  dimension: state_id {
    type: number
    sql: ${TABLE}.state_id ;;
  }

  dimension: statute_of_limitations {
    type: date
    sql: ${TABLE}.statute_of_limitations ;;
  }

  dimension: supervisor_name {
    type: string
    sql: ${TABLE}.supervisor_name ;;
  }

  dimension: termination_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.termination_date ;;
  }

  dimension: time_workday_begin {
    type: date
    sql: ${TABLE}.time_workday_begin ;;
  }

  dimension: unit_num {
    type: number
    sql: ${TABLE}.unit_num ;;
  }

  dimension: users_id {
    type: number
    sql: ${TABLE}.users_id ;;
  }

  dimension: wage {
    type: string
    sql: ${TABLE}.wage ;;
  }

  dimension: workcomp {
    type: string
    sql: ${TABLE}.workcomp ;;
  }

  measure: count {
    type: sum
    sql: CASE WHEN ${claimant_num} IS NULL THEN 0 ELSE 1 END ;;
    #drill_fields: [detail*]
  }

}
