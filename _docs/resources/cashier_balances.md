---
resource: cashier_balances
permalink: /docs/resources/cashier_balances/
attributes:
  - name: balance_amount
    valuetype: number
  - name: report_type
    valuetype: draft|final
  - name: date
    valuetype: datetimew3c
  - name: from
    valuetype: datetimew3c
  - name: to
    valuetype: datetimew3c
  - name: pdf_url
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
filters: null
---
