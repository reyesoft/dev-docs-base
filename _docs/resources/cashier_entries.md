---
resource: cashier_entries
permalink: /docs/resources/cashier_entries/
attributes:
  - name: amount
    valuetype: number
  - name: date
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
  - resource: physicalpos
    hasMany: false
  - resource: companies
    hasMany: false
  - resource: users
    hasMany: false
  - resource: documents
    hasMnay: false
filters: null
---
