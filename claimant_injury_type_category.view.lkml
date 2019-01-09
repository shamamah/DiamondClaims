view: claimant_injury_type_category {
  sql_table_name: dbo.InjuryTypeCategory ;;

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension: injurytypecategory_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.injurytypecategory_id ;;
  }

  dimension: last_modified {
    type: date
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension: pcadded_date {
    type: date
    sql: ${TABLE}.pcadded_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
