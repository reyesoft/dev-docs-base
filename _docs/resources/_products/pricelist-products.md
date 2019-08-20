---
resource: pricelist_products
singular: pricelist_product
permalink: /docs/resources/pricelist_products/
section: Products
attributes:
  - name: client_value
    valuetype: float
  - name: client_value_type
    crud: read
    valuetype: auto | percent | amount
  - name: subdist_value
    valuetype: float
  - name: subdist_value_type
    crud: read
    valuetype: auto | percent | amount
  - name: prevent_value
    valuetype: float
  - name: prevent_value_type
    crud: read
    valuetype: auto | percent
  - name: client_net_price
    crud: read
    valuetype: float
  - name: client_price
    crud: read
    valuetype: float
  - name: prevent_price
    crud: read
    valuetype: float
  - name: subdist_price
    crud: read
    valuetype: float
  - name: fortype
    valuetype: products | futurePrices
relationships:
  - resource: products
    alias: product
  - resource: pricelists
    alias: pricelist
filters: null
entry_points:
  methods:
    delete: false
---
