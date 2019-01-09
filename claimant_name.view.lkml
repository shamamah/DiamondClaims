view: claimant_name {
  sql_table_name: dbo.Name ;;

  dimension: name_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.name_id ;;
  }

  dimension: active_military {
    type: string
    sql: ${TABLE}.active_military ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: best_contact_time_details {
    type: string
    sql: ${TABLE}.best_contact_time_details ;;
  }

  dimension: birth_date {
    type: date
    sql: ${TABLE}.birth_date ;;
  }

  dimension: commercial_name1 {
    type: string
    sql: ${TABLE}.commercial_name1 ;;
  }

  dimension: commercial_name2 {
    type: string
    sql: ${TABLE}.commercial_name2 ;;
  }

  dimension: commercialweb {
    type: string
    sql: ${TABLE}.commercialweb ;;
  }

  dimension: contactreasontype_id {
    type: number
    sql: ${TABLE}.contactreasontype_id ;;
  }

  dimension: customer_encrypted_taxnum {
    type: string
    sql: ${TABLE}.customer_encrypted_taxnum ;;
  }

  dimension: date_business_started {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_business_started ;;
  }

  dimension: description_of_operations {
    type: string
    sql: ${TABLE}.description_of_operations ;;
  }

  dimension: detailstatuscode_id {
    type: number
    sql: ${TABLE}.detailstatuscode_id ;;
  }

  dimension: display_name {
    type: string
    sql: ${TABLE}.display_name ;;
  }

  dimension: dln {
    type: string
    sql: ${TABLE}.dln ;;
  }

  dimension: dln_date {
    type: date
    sql: ${TABLE}.dln_date ;;
  }

  dimension: dlstate_id {
    type: number
    sql: ${TABLE}.dlstate_id ;;
  }

  dimension: doing_business_as {
    type: string
    sql: ${TABLE}.doing_business_as ;;
  }

  dimension: entitytype_id {
    type: number
    sql: ${TABLE}.entitytype_id ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: health_insurance_claim_number {
    type: string
    sql: ${TABLE}.health_insurance_claim_number ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: lexis_nexis_identifier {
    type: number
    value_format_name: id
    sql: ${TABLE}.lexis_nexis_identifier ;;
  }

  dimension: maritalstatus_id {
    type: number
    sql: ${TABLE}.maritalstatus_id ;;
  }

  dimension: middle_name {
    type: string
    sql: ${TABLE}.middle_name ;;
  }

  dimension: naics_code {
    type: string
    sql: ${TABLE}.naics_code ;;
  }

  dimension: name_display_num {
    type: number
    sql: ${TABLE}.name_display_num ;;
  }

  dimension: name_num {
    type: number
    sql: ${TABLE}.name_num ;;
  }

  dimension: nameaddresssource_id {
    type: number
    sql: ${TABLE}.nameaddresssource_id ;;
  }

  dimension: nametype_id {
    type: number
    sql: ${TABLE}.nametype_id ;;
  }

  dimension: okay_to_call {
    type: string
    sql: ${TABLE}.okay_to_call ;;
  }

  dimension: okay_to_email {
    type: string
    sql: ${TABLE}.okay_to_email ;;
  }

  dimension: okay_to_text {
    type: string
    sql: ${TABLE}.okay_to_text ;;
  }

  dimension: other_legal_entity_description {
    type: string
    sql: ${TABLE}.other_legal_entity_description ;;
  }

  dimension: packagepart_num {
    type: number
    sql: ${TABLE}.packagepart_num ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: policy_id {
    type: number
    sql: ${TABLE}.policy_id ;;
  }

  dimension: policyimage_num {
    type: number
    sql: ${TABLE}.policyimage_num ;;
  }

  dimension: position_title {
    type: string
    sql: ${TABLE}.position_title ;;
  }

  dimension: prefix_name {
    type: string
    sql: ${TABLE}.prefix_name ;;
  }

  dimension: riskgradelookup_id {
    type: number
    sql: ${TABLE}.riskgradelookup_id ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}.salutation ;;
  }

  dimension: sex_id {
    type: number
    sql: ${TABLE}.sex_id ;;
  }

  dimension: sic_code {
    type: string
    sql: ${TABLE}.sic_code ;;
  }

  dimension: sort_name {
    type: string
    sql: ${TABLE}.sort_name ;;
  }

  dimension: suffix_name {
    type: string
    sql: ${TABLE}.suffix_name ;;
  }

  dimension: taxnum {
    type: string
    sql: ${TABLE}.taxnum ;;
  }

  dimension: taxtype_id {
    type: number
    sql: ${TABLE}.taxtype_id ;;
  }

  dimension: thirdparty_entity_id {
    type: number
    sql: ${TABLE}.thirdparty_entity_id ;;
  }

  dimension: thirdparty_group_id {
    type: number
    sql: ${TABLE}.thirdparty_group_id ;;
  }

  dimension: vendor_birth_date_changed {
    type: string
    sql: ${TABLE}.vendor_birth_date_changed ;;
  }

  dimension: vendor_dln_changed {
    type: string
    sql: ${TABLE}.vendor_dln_changed ;;
  }

  dimension: vendor_taxnum_changed {
    type: string
    sql: ${TABLE}.vendor_taxnum_changed ;;
  }

  dimension: years_experience {
    type: number
    sql: ${TABLE}.years_experience ;;
  }

  measure: count {
    type: count
    #drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name_id,
      display_name,
      sort_name,
      prefix_name,
      first_name,
      middle_name,
      last_name,
      suffix_name
    ]
  }
}
