---
resource: params
singular: param
permalink: /docs/resources/params/
section: Companies
partOf: company
attributes:
- name: value
  crud: read, update
  valuetype: string
relationships: null
filters: null
entry_points:
  methods:
    post: false
    delete: false
---

Donde **param_id** puede ser uno de los siguientes:
- name: primary_color
  - valuetype: string
- name: accent_color
  - valuetype: string
- name: subdist
  - valuetype: boolean
- name: prevent
  - valuetype: boolean
- name: changeProductName
  - options: all, none, onlyservice
- name: pricelist_client
  - valuetype: string
- name: fiscal_printer
  - valuetype: boolean
- name: products_various_enabled
  - valuetype: boolean
- name: products_various_id
  - valuetype: number
- name: final_consumer_id
  - valuetype: number
- name: orders_company_header
  - valuetype: boolean
- name: generate_order
  - valuetype: boolean
- name: ri_type
  - options: a, a_cbu, m
- name: invoice_footer_legend
  - valuetype: string
- name: document_max_discount
  - valuetype: decimal
- name: cashier_enabled
  - valuetype: boolean


Por ejemplo:  `PATCH`{: .patch} [...]v1/company/{company_id}/params/**primary_color**  
En el ejemplo anterior podemos observar que usamos el atributo `primary_color`{: .code} como key.
