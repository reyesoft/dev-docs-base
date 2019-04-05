---
resource: physicalpos
permalink: /docs/resources/physicalpos/
section: Cashier
attributes:
  - name: number
  - name: alias
    valuetype: string
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
  - resource: cashier_balance_details
    hasMany: true
filters: null
---
