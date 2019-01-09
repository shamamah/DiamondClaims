view: claimant_address_source {
  sql_table_name: dbo.NameAddressSource ;;

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: enable_address_verification {
    type: string
    sql: ${TABLE}.enable_address_verification ;;
  }

  dimension: enable_address_verification_automatic {
    type: string
    sql: ${TABLE}.enable_address_verification_automatic ;;
  }

  dimension: enable_address_verification_renewal {
    type: string
    sql: ${TABLE}.enable_address_verification_renewal ;;
  }

  dimension: iso_role {
    type: string
    sql: ${TABLE}.iso_role ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: nameaddresssource_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.nameaddresssource_id ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  measure: count {
    type: count
    #drill_fields: []
  }
}
