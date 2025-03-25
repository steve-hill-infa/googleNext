view: insurance_summary {
  sql_table_name: twinPines_Insurance.insurance_summary ;;

  dimension: claim_amount {
    type: string
    sql: ${TABLE}.ClaimAmount ;;
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
  dimension: customer_address1 {
    type: string
    sql: ${TABLE}.Customer_Address1 ;;
  }
  dimension: customer_address2 {
    type: string
    sql: ${TABLE}.Customer_Address2 ;;
  }
  dimension: customer_city {
    type: string
    sql: ${TABLE}.Customer_City ;;
  }
  dimension: customer_dob {
    type: string
    sql: ${TABLE}.Customer_DOB ;;
  }
  dimension: customer_email {
    type: string
    sql: ${TABLE}.Customer_Email ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.CustomerID ;;
  }
  dimension: customer_name {
    type: string
    sql: ${TABLE}.Customer_Name ;;
  }
  dimension: customer_phone {
    type: string
    sql: ${TABLE}.Customer_Phone ;;
  }
  dimension: customer_state {
    type: string
    sql: ${TABLE}.Customer_State ;;
  }
  dimension: customer_zip_code {
    type: string
    sql: ${TABLE}.Customer_ZipCode ;;
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
    type: string
    sql: ${TABLE}.PremiumAmount ;;
  }
  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [customer_name]
  }
}
