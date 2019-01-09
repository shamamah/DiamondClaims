view: claim_adjuster_type {
  sql_table_name: dbo.ClaimAdjusterType ;;

  dimension: claimadjustertype_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.claimadjustertype_id ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: enabled {
    type: string
    sql: ${TABLE}.enabled ;;
  }

  dimension: last_modified_date {
    type: date
    sql: ${TABLE}.last_modified_date ;;
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
