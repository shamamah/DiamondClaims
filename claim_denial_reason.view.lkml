view: claim_denial_reason {
  sql_table_name: dbo.ClaimDenialReason ;;

  dimension: claimdenialreason_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.claimdenialreason_id ;;
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
