---
resource: params
permalink: /docs/resources/params/
section: Recursos
partOf: company
attributes:
  - name: company_id
    crud: red
  - name: value
    crud: read
  - name: primary_color
  - name: accent_color
  - name: subdist
    valuetype: true | false
  - name: seller
    valuetype: true | false
  - name: changeProductName
    valuetype: all | none | onlyservice
  - name: pricelist_supplier
  - name: pricelist_client
  - name: fiscal_printer
    aluetype: true | false
  - name: products_various_enabled
    aluetype: true | false
  - name: products_various_id
  - name: final_consumer_id
  - name: orders_company_header
    aluetype: true | false
  - name: generate_order
    aluetype: true | false
relationships: null
filters: null
entry_points:
  methods:
    post: false
---

Donde **params_id** es un atributo de los descritos anteriormente, exceptuando `company_id`{: .code} y `value`{: .code}.  
Por ejemplo:  `PATCH`{: .patch} [...]v1/company/{company_id}/params/**primary_color**  
En el ejemplo anterior podemos observar que usamos el atributo `primary_color`{: .code} como key.
