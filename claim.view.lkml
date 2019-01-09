view: claim {
  sql_table_name: dbo.ClaimControl ;;

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

  dimension: ccr1_yesno_id {
    type: number
    sql: ${TABLE}.ccr1_yesno_id ;;
  }

  dimension: ccr2_yesno_id {
    type: number
    sql: ${TABLE}.ccr2_yesno_id ;;
  }

  dimension: claim_amount_requested {
    type: string
    sql: ${TABLE}.claim_amount_requested ;;
  }

  dimension: claim_number {
    type: string
    sql: ${TABLE}.claim_number ;;
  }

  dimension: claim_type_id {
    type: number
    sql: ${TABLE}.claim_type_id ;;
  }

  dimension: claimadministrator_id {
    type: number
    sql: ${TABLE}.claimadministrator_id ;;
  }

  dimension: claimassistant_id {
    type: number
    sql: ${TABLE}.claimassistant_id ;;
  }

  dimension: claimcatastrophe_id {
    type: number
    sql: ${TABLE}.claimcatastrophe_id ;;
  }

  dimension: claimclosereason_id {
    type: number
    sql: ${TABLE}.claimclosereason_id ;;
  }

  dimension: claimcluedisp_id {
    type: number
    sql: ${TABLE}.claimcluedisp_id ;;
  }

  dimension: claimcontact_id {
    type: number
    sql: ${TABLE}.claimcontact_id ;;
  }

  dimension: claimcontrol_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.claimcontrol_id ;;
  }

  dimension: claimcontrolstatus_id {
    type: number
    sql: ${TABLE}.claimcontrolstatus_id ;;
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

  dimension: claimfault_id {
    type: number
    sql: ${TABLE}.claimfault_id ;;
  }

  dimension: claimfinancials_num {
    type: number
    sql: ${TABLE}.claimfinancials_num ;;
  }

  dimension: claimfiredept_id {
    type: number
    sql: ${TABLE}.claimfiredept_id ;;
  }

  dimension: claimliabilitydecision_added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.claimliabilitydecision_added_date ;;
  }

  dimension: claimliabilitydecision_percentage {
    type: number
    sql: ${TABLE}.claimliabilitydecision_percentage ;;
  }

  dimension: claimliabilitydecision_user_id {
    type: number
    sql: ${TABLE}.claimliabilitydecision_user_id ;;
  }

  dimension: claimliabilitydecisiontype_id {
    type: number
    sql: ${TABLE}.claimliabilitydecisiontype_id ;;
  }

  dimension: claimlnimage_num {
    type: number
    sql: ${TABLE}.claimlnimage_num ;;
  }

  dimension: claimlnmaster_id {
    type: number
    sql: ${TABLE}.claimlnmaster_id ;;
  }

  dimension: claimlossdescriptiontype_id {
    type: number
    sql: ${TABLE}.claimlossdescriptiontype_id ;;
  }

  dimension: claimlosstype_id {
    type: number
    sql: ${TABLE}.claimlosstype_id ;;
  }

  dimension: claimoffice_id {
    type: number
    sql: ${TABLE}.claimoffice_id ;;
  }

  dimension: claimpolicedept_id {
    type: number
    sql: ${TABLE}.claimpolicedept_id ;;
  }

  dimension: claimpoliceofficer_id {
    type: number
    sql: ${TABLE}.claimpoliceofficer_id ;;
  }

  dimension: claimreportedby_id {
    type: number
    sql: ${TABLE}.claimreportedby_id ;;
  }

  dimension: claimreportedbymethod_id {
    type: number
    sql: ${TABLE}.claimreportedbymethod_id ;;
  }

  dimension: claims_made {
    type: string
    sql: ${TABLE}.claims_made ;;
  }

  dimension: claimseverity_id {
    type: number
    sql: ${TABLE}.claimseverity_id ;;
  }

  dimension: client_id {
    type: number
    sql: ${TABLE}.client_id ;;
  }

  dimension: destruction_date {
    type: date
    sql: ${TABLE}.destruction_date ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: external_policy_version_number {
    type: number
    sql: ${TABLE}.external_policy_version_number ;;
  }

  dimension: external_policysystem_identifier {
    type: number
    value_format_name: id
    sql: ${TABLE}.external_policysystem_identifier ;;
  }

  dimension: fraud_indicator {
    type: string
    sql: ${TABLE}.fraud_indicator ;;
  }

  dimension: has_other_insurance {
    type: string
    sql: ${TABLE}.has_other_insurance ;;
  }

  dimension: has_public_adjuster {
    type: string
    sql: ${TABLE}.has_public_adjuster ;;
  }

  dimension: has_related_treatments {
    type: string
    sql: ${TABLE}.has_related_treatments ;;
  }

  dimension: hit_and_run_loss {
    type: string
    sql: ${TABLE}.hit_and_run_loss ;;
  }

  dimension: hospital_admittance_date {
    type: date
    sql: ${TABLE}.hospital_admittance_date ;;
  }

  dimension: hospital_discharge_date {
    type: date
    sql: ${TABLE}.hospital_discharge_date ;;
  }

  dimension: hospital_duration_days {
    type: number
    sql: ${TABLE}.hospital_duration_days ;;
  }

  dimension: illness_start_date {
    type: date
    sql: ${TABLE}.illness_start_date ;;
  }

  dimension: inside_adjuster_id {
    type: number
    sql: ${TABLE}.inside_adjuster_id ;;
  }

  dimension: is_clinic_notified {
    type: string
    sql: ${TABLE}.is_clinic_notified ;;
  }

  dimension: is_converted {
    type: string
    sql: ${TABLE}.is_converted ;;
  }

  dimension: is_euthanized {
    type: string
    sql: ${TABLE}.is_euthanized ;;
  }

  dimension: is_euthanized_vet_advice {
    type: string
    sql: ${TABLE}.is_euthanized_vet_advice ;;
  }

  dimension: is_external_policy {
    type: string
    sql: ${TABLE}.is_external_policy ;;
  }

  dimension: is_policy_verified {
    type: string
    sql: ${TABLE}.is_policy_verified ;;
  }

  dimension: is_shell_policy {
    type: string
    sql: ${TABLE}.is_shell_policy ;;
  }

  dimension: is_vacation_cancelled {
    type: string
    sql: ${TABLE}.is_vacation_cancelled ;;
  }

  dimension: is_vacation_planned {
    type: string
    sql: ${TABLE}.is_vacation_planned ;;
  }

  dimension: last_known_location {
    type: string
    sql: ${TABLE}.last_known_location ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: last_transaction_date {
    type: date
    sql: ${TABLE}.last_transaction_date ;;
  }

  dimension: loss_address_id {
    type: number
    sql: ${TABLE}.loss_address_id ;;
  }

  dimension: loss_date {
    type: date
    sql: ${TABLE}.loss_date ;;
  }

  dimension: loss_location {
    type: string
    sql: ${TABLE}.loss_location ;;
  }

  dimension: losstimegiven {
    type: string
    sql: ${TABLE}.losstimegiven ;;
  }

  dimension: officer_badge_no {
    type: string
    sql: ${TABLE}.officer_badge_no ;;
  }

  dimension: original_iso_loss_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.original_iso_loss_date ;;
  }

  dimension: other_insurance_dscr {
    type: string
    sql: ${TABLE}.other_insurance_dscr ;;
  }

  dimension: outside_adjuster_id {
    type: number
    sql: ${TABLE}.outside_adjuster_id ;;
  }

  dimension: packagepart_num {
    type: number
    sql: ${TABLE}.packagepart_num ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: police_case_no {
    type: string
    sql: ${TABLE}.police_case_no ;;
  }

  dimension: police_notified {
    type: string
    sql: ${TABLE}.police_notified ;;
  }

  dimension: policy_id {
    type: number
    sql: ${TABLE}.policy_id ;;
  }

  dimension: policyimage_num {
    type: number
    sql: ${TABLE}.policyimage_num ;;
  }

  dimension: previous_claim_number {
    type: string
    sql: ${TABLE}.previous_claim_number ;;
  }

  dimension: previous_loss_indicator {
    type: string
    sql: ${TABLE}.previous_loss_indicator ;;
  }

  dimension: previously_reported {
    type: string
    sql: ${TABLE}.previously_reported ;;
  }

  dimension: process_medical_bill {
    type: string
    sql: ${TABLE}.process_medical_bill ;;
  }

  dimension: reinsurance_claim_number {
    type: string
    sql: ${TABLE}.reinsurance_claim_number ;;
  }

  dimension: related_treatment_dscr {
    type: string
    sql: ${TABLE}.related_treatment_dscr ;;
  }

  dimension: reported_date {
    type: date
    sql: ${TABLE}.reported_date ;;
  }

  dimension: reported_to_iso {
    type: string
    sql: ${TABLE}.reported_to_iso ;;
  }

  dimension: reported_to_iso_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.reported_to_iso_date ;;
  }

  dimension: reported_to_iso_last_submitted_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.reported_to_iso_last_submitted_date ;;
  }

  dimension: reported_to_iso_update_claim {
    type: string
    sql: ${TABLE}.reported_to_iso_update_claim ;;
  }

  dimension: request_claimsdirector_search {
    type: string
    sql: ${TABLE}.request_claimsdirector_search ;;
  }

  dimension: single_vehicle_loss {
    type: string
    sql: ${TABLE}.single_vehicle_loss ;;
  }

  dimension: siu_indicator {
    type: string
    sql: ${TABLE}.siu_indicator ;;
  }

  dimension: submit_to_iso {
    type: string
    sql: ${TABLE}.submit_to_iso ;;
  }

  dimension: update_iso_loss_date {
    type: string
    sql: ${TABLE}.update_iso_loss_date ;;
  }

  dimension: violation_text {
    type: string
    sql: ${TABLE}.violation_text ;;
  }

  dimension: waive_clue_reporting {
    type: string
    sql: ${TABLE}.waive_clue_reporting ;;
  }

  dimension: xref_claimadjuster {
    type: string
    sql: ${TABLE}.xref_claimadjuster ;;
  }

  dimension: xref_claimnumber {
    type: string
    sql: ${TABLE}.xref_claimnumber ;;
  }

  measure: count {
    type: count
    #drill_fields: []
  }
}
