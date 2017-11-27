---
resource: cashier_balances
permalink: /docs/resources/cashier_balances/
partOf: company
attributes:
  - name: balance_amount
    crud: read
    valuetype: number
  - name: report_type
    valuetype: draft|final
  - name: date
    crud: read
    valuetype: datetimew3c
  - name: from
    crud: read
    valuetype: datetimew3c
  - name: to
    crud: create, read
    valuetype: datetimew3c
  - name: pdf_url
    crud: read
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
