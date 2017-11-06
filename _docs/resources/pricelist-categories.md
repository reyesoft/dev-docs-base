---
resource: pricelist_categories
permalink: /docs/resources/pricelist-categories/
attributes:
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
  - name: activated READ/WRITE
  - name: category_id
    crud: read
  - name: pricelist_id
    crud: read
  - name: type
    valuetype: products | futurePrices
  - name: price_cache_update_at
    crud: read
    valuetype: datetimew3c
  - name: gondola_printed_at
    crud: read
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
