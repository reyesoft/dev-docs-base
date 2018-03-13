---
resource: pricelist_products
permalink: /docs/resources/pricelist-products/
section: Products
attributes:
  - name: product_id
  - name: price
  - name: price_type
    crud: read
  - name: percent_subdist
  - name: percent_subdist_type
    crud: read
  - name: percent_prevent
  - name: percent_prevent_type
    crud: read
  - name: percent_seller_type
    crud: read
  - name: price_without_tax
    crud: read
  - name: price_with_tax
    crud: read
  - name: price_prevent
    crud: read
  - name: price_subdist
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
  - resource: pricelist
    hasMany: false
  - resource: products
    hasMany: false
filters: null
entry_points:
  methods:
    delete: false
---
