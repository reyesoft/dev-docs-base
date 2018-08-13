---
resource: physicalpos
permalink: /docs/resources/physicalpos/
section: Founds
attributes:
  - name: number
  - name: alias
    valuetype: string
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
    alias: company
    hasMany: false
filters: null
---
