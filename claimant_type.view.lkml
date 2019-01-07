view: claimant_type {
  sql_table_name: dbo.ClaimantType ;;

  dimension: claimanttype_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.claimanttype_id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: is_driver {
    type: string
    sql: ${TABLE}.is_driver ;;
  }

  dimension: last_modified {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: pcadded {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  dimension: person {
    type: number
    sql: ${TABLE}.person ;;
  }

  measure: count {
    type: count
    #drill_fields: []
  }
}
