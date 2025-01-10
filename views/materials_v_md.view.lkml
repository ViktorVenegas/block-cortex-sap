view: materials_v_md {
  sql_table_name: `@{GCP_PROJECT}.@{REPORTING_DATASET}.MaterialMD`
    ;;

  fields_hidden_by_default: yes

  dimension: client_mandt {
    type: string
    sql: ${TABLE}.Client_Mandt ;;
  }

  dimension: material_number_matnr {
    type: string
    sql: ${TABLE}.Materialnumber_Matnr ;;
    hidden: no
  }

  dimension: language_spras {
    type: string
    sql: ${TABLE}.Language_Spras ;;
    hidden: no
  }

  dimension: nombre_material {
    type: string
    sql: ${TABLE}.material_name ;;
    hidden: no
  }

  dimension: nombre1_jerarquia {
    type: string
    sql: ${TABLE}.product_hierarchy_name1 ;;
    hidden: no
  }
}
