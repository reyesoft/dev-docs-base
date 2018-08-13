---
resource: payment_methods
permalink: /docs/resources/payment_methods/
section: Founds
attributes:
  - name: name
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
    hasMany: true
  - resource: behaviors
    alias: behavior
    hasmany: false
filters: null
---