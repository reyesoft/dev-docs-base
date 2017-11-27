---
resource: cashier_entries
permalink: /docs/resources/cashier_entries/
partOf: company
attributes:
  - name: amount
    crud: create, read
    valuetype: number
  - name: date
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
