---
- dashboard: amount_invoice_us
  title: Monto de Facturas en US
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: bJO5OaafvE8E7vDHu9ynNm
  elements:
  - title: Vendedores en US
    name: Vendedores en US
    model: cortex_sap_operational
    explore: vendor_performance
    type: looker_grid
    fields: [vendor_performance.Invoice_date_month, vendor_performance.country_key_land1,
      vendor_performance.name1, vendor_performance.sum_invoice_amount_in_target_currency]
    filters: {}
    sorts: [vendor_performance.Invoice_date_month desc]
    limit: 5000
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    listen:
      Invoice Date Year: vendor_performance.Invoice_date_year
      Vendor Country: vendor_performance.country_key_land1
    row: 0
    col: 9
    width: 12
    height: 7
  - title: Montos US
    name: Montos US
    model: cortex_sap_operational
    explore: vendor_performance
    type: looker_column
    fields: [vendor_performance.Invoice_date_month, vendor_performance.country_key_land1,
      vendor_performance.name1, vendor_performance.sum_invoice_amount_in_target_currency]
    filters: {}
    sorts: [vendor_performance.Invoice_date_month desc]
    limit: 5000
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen:
      Vendor Country: vendor_performance.country_key_land1
      Invoice Date Year: vendor_performance.Invoice_date_year
    row: 7
    col: 0
    width: 9
    height: 8
  - title: Total Monto de Facturas
    name: Total Monto de Facturas
    model: cortex_sap_operational
    explore: vendor_performance
    type: single_value
    fields: [vendor_performance.sum_invoice_amount]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#079c98"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Vendor Country: vendor_performance.country_key_land1
      Invoice Date Year: vendor_performance.Invoice_date_year
    row: 0
    col: 0
    width: 9
    height: 7
  filters:
  - name: Vendor Country
    title: Vendor Country
    type: field_filter
    default_value: US
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: cortex_sap_operational
    explore: vendor_performance
    listens_to_filters: []
    field: vendor_performance.country_key_land1
  - name: Invoice Date Year
    title: Invoice Date Year
    type: field_filter
    default_value: '2022'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: cortex_sap_operational
    explore: vendor_performance
    listens_to_filters: []
    field: vendor_performance.Invoice_date_year
