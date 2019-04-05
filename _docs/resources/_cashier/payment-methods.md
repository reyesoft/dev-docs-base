---
resource: payment_methods
permalink: /docs/resources/payment_methods/
section: Cashier
attributes:
  - name: name
  - name: behavior
    crud: read
  - name: enabled
    valuetype: boolean
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
  - resource: companies
    alias: company
    hasMany: false
  - resource: currencies
    alias: currency
    hasMany: false
filters: null
---