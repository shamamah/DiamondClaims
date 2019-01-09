view: claim_type {
  sql_table_name: dbo.ClaimType ;;

  dimension: claimlosstype_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.claimlosstype_id ;;
  }

  dimension: claimtype_id {
    type: number
    sql: ${TABLE}.claimtype_id ;;
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
