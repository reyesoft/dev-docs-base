---
resource: physicalpos
permalink: /docs/resources/physicalpos/
attributes:
  - name: number
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
filters: null
---