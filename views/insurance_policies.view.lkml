view: insurance_policies {
  sql_table_name: twinPines_Insurance.insurance_policies ;;

  dimension: customer_id {
    type: string
    sql: ${TABLE}.CustomerID ;;
  }
  dimension: policy_end_date {
    type: string
    sql: ${TABLE}.PolicyEndDate ;;
  }
  dimension: policy_id {
    type: string
    sql: ${TABLE}.PolicyID ;;
  }
  dimension: policy_start_date {
    type: string
    sql: ${TABLE}.PolicyStartDate ;;
  }
  dimension: policy_type {
    type: string
    sql: ${TABLE}.PolicyType ;;
  }
  dimension: premium_amount {
    type: number
    sql: CAST(${TABLE}.PremiumAmount as INTEGER);;
  }

  measure: count {
    type: count
    approximate_threshold: 100000
  }
}
