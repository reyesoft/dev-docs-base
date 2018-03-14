---
resource: params
permalink: /docs/resources/params/
section: Companies
partOf: company
attributes:
  - name: primary_color
    valuetype: string
    crud: 'read, update'
  - name: accent_color
    valuetype: string
    crud: 'read, update'
  - name: subdist
    valuetype: boolean
    crud: 'read, update'
  - name: prevent
    valuetype: boolean
    crud: 'read, update'
  - name: changeProductName
    valuetype: all | none | onlyservice
    crud: 'read, update'
  - name: pricelist_client
    valuetype: string
    crud: 'read, update'
  - name: fiscal_printer
    valuetype: boolean
    crud: 'read, update'
  - name: products_various_enabled
    valuetype: boolean
    crud: 'read, update'
  - name: products_various_id
    valuetype: number
    crud: 'read, update'
  - name: final_consumer_id
    valuetype: number
    crud: 'read, update'
  - name: orders_company_header
    valuetype: boolean
    crud: 'read, update'
  - name: generate_order
    valuetype: boolean
    crud: 'read, update'
relationships: null
filters: null
entry_points:
  methods:
    post: false
---

Donde **params_id** es un atributo de los descritos anteriormente, exceptuando `company_id`{: .code} y `value`{: .code}.  
Por ejemplo:  `PATCH`{: .patch} [...]v1/company/{company_id}/params/**primary_color**  
En el ejemplo anterior podemos observar que usamos el atributo `primary_color`{: .code} como key.
