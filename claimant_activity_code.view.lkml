view: claimant_activity_code {
  sql_table_name: dbo.ClaimActivityCode ;;

  dimension: claimactivitycode_id {
    type: number
    sql: ${TABLE}.claimactivitycode_id ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
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
