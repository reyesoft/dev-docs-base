---
resource: transactions
permalink: /docs/resources/transactions/
attributes:
  - name: date
    crud: read
  - name: due_date
    valuetype: datetimew3c
  - name: observations
  - name: amount
  - name: entity_id
  - name: order_id
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
  - resource: entities
    hasMany: false
  - resource: quotations
    hasMany: true
  - resource: orders
    hasMany: true
  - resource: invoices
    hasMany: true
  - resource: availabilities
    hasMany: true
filters: null
---
