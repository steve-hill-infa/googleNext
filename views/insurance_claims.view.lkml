view: insurance_claims {
  sql_table_name: `twinPines_Insurance.insurance_claims` ;;

  dimension: claim_amount {
    type: number
    sql: CAST(${TABLE}.ClaimAmount as INTEGER);;
  }
  dimension: claim_date {
    type: string
    sql: ${TABLE}.ClaimDate ;;
  }
  dimension: claim_id {
    type: string
    sql: ${TABLE}.ClaimID ;;
  }
  dimension: claim_status {
    type: string
    sql: ${TABLE}.ClaimStatus ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.CustomerID ;;
  }
  dimension: policy_id {
    type: string
    sql: ${TABLE}.PolicyID ;;
  }
  measure: count {
    type: count
    approximate_threshold: 100000
  }
}
