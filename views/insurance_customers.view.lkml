view: insurance_customers {
  sql_table_name: twinPines_Insurance.insurance_customers ;;

  dimension: address1 {
    type: string
    sql: ${TABLE}.Address1 ;;
  }
  dimension: address2 {
    type: string
    sql: ${TABLE}.Address2 ;;
  }
  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }
  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.Country ;;
  }
  dimension: customer_id {
    type: string
    sql: ${TABLE}.CustomerID ;;
  }
  dimension: customer_num {
    type: string
    sql: ${TABLE}.CustomerNum ;;
  }
  dimension: date_of_birth {
    type: string
    sql: ${TABLE}.DateOfBirth ;;
  }
  dimension: drivers_license {
    type: string
    sql: ${TABLE}.DriversLicense ;;
  }
  dimension: drivers_license_state {
    type: string
    sql: ${TABLE}.DriversLicenseState ;;
  }
  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }
  dimension: marital_status {
    type: string
    sql: ${TABLE}.MaritalStatus ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.Name ;;
  }
  dimension: phone_number {
    type: string
    sql: ${TABLE}.PhoneNumber ;;
  }
  dimension: policy_id {
    type: string
    sql: ${TABLE}.PolicyID ;;
  }
  dimension: ssn {
    type: string
    sql: ${TABLE}.SSN ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}.State ;;
  }
  dimension: zip_code {
    type: zipcode
    sql: ${TABLE}.ZipCode ;;
  }
  measure: count {
    type: count
    approximate_threshold: 100000
    drill_fields: [name]
  }
}
