---
resource: pricelist_products
permalink: /docs/resources/pricelist_products/
section: Products
attributes:
  - name: product_id
  - name: client_value
  - name: client_value_type
    crud: read
  - name: subdist_value
  - name: subdist_value_type
    crud: read
  - name: prevent_value
  - name: prevent_value_type
    crud: read
  - name: percent_seller_type
    crud: read
  - name: client_net_price
    crud: read
  - name: client_price
    crud: read
  - name: prevent_price
    crud: read
  - name: subdist_price
    crud: read
  - name: activated
    crud: 'create, update'
  - name: price_cache
    crud: 'create, update'
  - name: price_subdist_cache
    crud: 'create, update'
  - name: price_prevent_cache
    crud: 'create, update'
  - name: pricelist_id
  - name: type
    valuetype: products | futurePrices
  - name: price_cache_update_at
    crud: 'create, update'
    valuetype: datetimew3c
  - name: fortype
    crud: 'create, update'
  - name: gondola_printed_at
    crud: 'create, update'
    valuetype: datetimew3c
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
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
