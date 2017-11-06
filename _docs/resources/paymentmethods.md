---
resource: paymentmethods
permalink: /docs/resources/paymentmethods/
attributes:
  - name: number
  - name: behavior
    valuetype: cash|current_account|check|card|other|difference
  - name: enabled
    valuetype: true|false
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
    hasMany: false
  - resource: currencies
    hasMany: true
  - resource: behaviors
    hasmany: false
filters: null
---