---
resource: details
permalink: /docs/resources/details/
attributes:
  - name: qty
  - name: cost
  - name: net
  - name: price
  - name: use_net_for_calculation
  - name: commission
  - name: product_name
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
    hasMany: true
  - resource: quotations
    hasMany: true
  - resource: orders
    hasMany: true
  - resource: invoices
    hasMany: true
filters: null
---
