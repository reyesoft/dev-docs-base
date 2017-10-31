---
resource: cashier-entries
permalink: /docs/resources/cashier-entries/
attributes:
  - name: amount
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
filters: null
---