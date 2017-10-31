---
resource: cashier-balances
permalink: /docs/resources/cashier-balances/
attributes:
  - name: balance_amount
  - name: report_type
    valuetype: draft|final
  - name: date
    valuetype: datetimew3c
  - name: from
    valuetype: datetimew3c
  - name: to
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