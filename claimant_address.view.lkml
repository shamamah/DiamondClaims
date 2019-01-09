view: claimant_address {
  sql_table_name: dbo.Address ;;

  dimension: address_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.address_id ;;
  }

  dimension: added_date {
    type: date
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: address_num {
    type: number
    sql: ${TABLE}.address_num ;;
  }

  dimension: apt_num {
    type: string
    sql: ${TABLE}.apt_num ;;
  }

  dimension: attempted_verify {
    type: string
    sql: ${TABLE}.attempted_verify ;;
  }

  dimension: bay_distance {
    type: number
    sql: ${TABLE}.bay_distance ;;
  }

  dimension: bay_lacfcc {
    type: string
    sql: ${TABLE}.bay_lacfcc ;;
  }

  dimension: bay_local_name {
    type: string
    sql: ${TABLE}.bay_local_name ;;
  }

  dimension: bay_name {
    type: string
    sql: ${TABLE}.bay_name ;;
  }

  dimension: carrier_route {
    type: string
    sql: ${TABLE}.carrier_route ;;
  }

  dimension: changed {
    type: string
    sql: ${TABLE}.changed ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: city_min_tax_indicator {
    type: string
    sql: ${TABLE}.city_min_tax_indicator ;;
  }

  dimension: city_tax_code {
    type: string
    sql: ${TABLE}.city_tax_code ;;
  }

  dimension: city_tax_code_user_entry {
    type: string
    sql: ${TABLE}.city_tax_code_user_entry ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: county_code {
    type: number
    sql: ${TABLE}.county_code ;;
  }

  dimension: county_code_user_entry {
    type: number
    sql: ${TABLE}.county_code_user_entry ;;
  }

  dimension: county_min_tax_indicator {
    type: string
    sql: ${TABLE}.county_min_tax_indicator ;;
  }

  dimension: county_tax_code {
    type: string
    sql: ${TABLE}.county_tax_code ;;
  }

  dimension: county_tax_code_user_entry {
    type: string
    sql: ${TABLE}.county_tax_code_user_entry ;;
  }

  dimension: delivery_point_bar_code {
    type: string
    sql: ${TABLE}.delivery_point_bar_code ;;
  }

  dimension: detailstatuscode_id {
    type: number
    sql: ${TABLE}.detailstatuscode_id ;;
  }

  dimension: display_address {
    type: string
    sql: ${TABLE}.display_address ;;
  }

  dimension: fire_code {
    type: number
    sql: ${TABLE}.fire_code ;;
  }

  dimension: fire_code_user_entry {
    type: number
    sql: ${TABLE}.fire_code_user_entry ;;
  }

  dimension: geo_override {
    type: string
    sql: ${TABLE}.geo_override ;;
  }

  dimension: house_num {
    type: string
    sql: ${TABLE}.house_num ;;
  }

  dimension: in_care_of {
    type: string
    sql: ${TABLE}.in_care_of ;;
  }

  dimension: is_retain_address_ppc_lookup {
    type: string
    sql: ${TABLE}.is_retain_address_ppc_lookup ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: location_quality_code {
    type: string
    sql: ${TABLE}.location_quality_code ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: lot_code {
    type: string
    sql: ${TABLE}.lot_code ;;
  }

  dimension: lot_number {
    type: string
    sql: ${TABLE}.lot_number ;;
  }

  dimension: mainland_proximitytype_id {
    type: number
    sql: ${TABLE}.mainland_proximitytype_id ;;
  }

  dimension: match_code {
    type: string
    sql: ${TABLE}.match_code ;;
  }

  dimension: mine_code {
    type: string
    sql: ${TABLE}.mine_code ;;
  }

  dimension: mine_proximitytype_id {
    type: number
    sql: ${TABLE}.mine_proximitytype_id ;;
  }

  dimension: municipal_code {
    type: number
    sql: ${TABLE}.municipal_code ;;
  }

  dimension: municipal_code_user_entry {
    type: number
    sql: ${TABLE}.municipal_code_user_entry ;;
  }

  dimension: nameaddresssource_id {
    type: number
    sql: ${TABLE}.nameaddresssource_id ;;
  }

  dimension: ocean_distance {
    type: number
    sql: ${TABLE}.ocean_distance ;;
  }

  dimension: ocean_lacfcc {
    type: string
    sql: ${TABLE}.ocean_lacfcc ;;
  }

  dimension: ocean_local_name {
    type: string
    sql: ${TABLE}.ocean_local_name ;;
  }

  dimension: ocean_name {
    type: string
    sql: ${TABLE}.ocean_name ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}.other ;;
  }

  dimension: packagepart_num {
    type: number
    sql: ${TABLE}.packagepart_num ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: personal_mailbox {
    type: string
    sql: ${TABLE}.personal_mailbox ;;
  }

  dimension: pobox {
    type: string
    sql: ${TABLE}.pobox ;;
  }

  dimension: police_code {
    type: number
    sql: ${TABLE}.police_code ;;
  }

  dimension: police_code_user_entry {
    type: number
    sql: ${TABLE}.police_code_user_entry ;;
  }

  dimension: policy_id {
    type: number
    sql: ${TABLE}.policy_id ;;
  }

  dimension: policyimage_num {
    type: number
    sql: ${TABLE}.policyimage_num ;;
  }

  dimension: river_distance {
    type: number
    sql: ${TABLE}.river_distance ;;
  }

  dimension: river_lacfcc {
    type: string
    sql: ${TABLE}.river_lacfcc ;;
  }

  dimension: river_local_name {
    type: string
    sql: ${TABLE}.river_local_name ;;
  }

  dimension: river_name {
    type: string
    sql: ${TABLE}.river_name ;;
  }

  dimension: rural_address {
    type: string
    sql: ${TABLE}.rural_address ;;
  }

  dimension: sinkhole_proximitytype_id {
    type: number
    sql: ${TABLE}.sinkhole_proximitytype_id ;;
  }

  dimension: specific_coverage_stat_territory {
    type: number
    sql: ${TABLE}.specific_coverage_stat_territory ;;
  }

  dimension: stat_territory {
    type: number
    sql: ${TABLE}.stat_territory ;;
  }

  dimension: state_code {
    type: number
    sql: ${TABLE}.state_code ;;
  }

  dimension: state_id {
    type: number
    sql: ${TABLE}.state_id ;;
  }

  dimension: street_name {
    type: string
    sql: ${TABLE}.street_name ;;
  }

  dimension: tax_confidence_factor {
    type: string
    sql: ${TABLE}.tax_confidence_factor ;;
  }

  dimension: taxcodeaddressmatchtype_id {
    type: number
    sql: ${TABLE}.taxcodeaddressmatchtype_id ;;
  }

  dimension: territory_confidence_factor {
    type: number
    sql: ${TABLE}.territory_confidence_factor ;;
  }

  dimension: territorycode {
    type: number
    sql: ${TABLE}.territorycode ;;
  }

  dimension: territorycode_userentry {
    type: number
    sql: ${TABLE}.territorycode_userentry ;;
  }

  dimension: thirdparty_entity_id {
    type: number
    sql: ${TABLE}.thirdparty_entity_id ;;
  }

  dimension: thirdparty_group_id {
    type: number
    sql: ${TABLE}.thirdparty_group_id ;;
  }

  dimension: township {
    type: string
    sql: ${TABLE}.township ;;
  }

  dimension: verified {
    type: string
    sql: ${TABLE}.verified ;;
  }

  dimension: waterbody_distance {
    type: number
    sql: ${TABLE}.waterbody_distance ;;
  }

  dimension: waterbody_lacfcc {
    type: string
    sql: ${TABLE}.waterbody_lacfcc ;;
  }

  dimension: waterbody_local_name {
    type: string
    sql: ${TABLE}.waterbody_local_name ;;
  }

  dimension: waterbody_name {
    type: string
    sql: ${TABLE}.waterbody_name ;;
  }

  dimension: waterway_distance {
    type: number
    sql: ${TABLE}.waterway_distance ;;
  }

  dimension: waterway_lacfcc {
    type: string
    sql: ${TABLE}.waterway_lacfcc ;;
  }

  dimension: waterway_local_name {
    type: string
    sql: ${TABLE}.waterway_local_name ;;
  }

  dimension: waterway_name {
    type: string
    sql: ${TABLE}.waterway_name ;;
  }

  dimension: windpool_confidence_factor {
    type: number
    sql: ${TABLE}.windpool_confidence_factor ;;
  }

  dimension: windpool_id {
    type: number
    sql: ${TABLE}.windpool_id ;;
  }

  dimension: windpool_userentry_id {
    type: number
    sql: ${TABLE}.windpool_userentry_id ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}.zip ;;
  }

  dimension: zip_verified {
    type: string
    sql: ${TABLE}.zip_verified ;;
  }

  measure: count {
    type: count
    #drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      address_id,
      street_name,
      ocean_name,
      bay_name,
      waterway_name,
      river_name,
      ocean_local_name,
      bay_local_name,
      waterway_local_name,
      river_local_name,
      waterbody_name,
      waterbody_local_name,
      claimant_address_link.count
    ]
  }
}
