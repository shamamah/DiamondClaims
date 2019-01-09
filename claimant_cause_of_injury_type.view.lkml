view: claimant_cause_of_injury_type {
  sql_table_name: dbo.ClaimantCauseOfInjuryType ;;

  dimension_group: added {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.added_date ;;
  }

  dimension: claimantcauseofinjurycategorytype_id {
    type: number
    sql: ${TABLE}.claimantcauseofinjurycategorytype_id ;;
  }

  dimension: claimantcauseofinjurytype_id {
    type: number
    sql: ${TABLE}.claimantcauseofinjurytype_id ;;
  }

  dimension: code {
    type: number
    sql: ${TABLE}.code ;;
  }

  dimension: dscr {
    type: string
    sql: ${TABLE}.dscr ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_modified_date ;;
  }

  dimension_group: pcadded {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.pcadded_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
