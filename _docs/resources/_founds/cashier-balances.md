---
resource: cashier_balances
permalink: /docs/resources/cashier-balances/
section: Founds
partOf: company
attributes:
  - name: balance_amount
    crud: read
    valuetype: number
  - name: report_type
    valuetype: draft|confirmed
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
relationships:
  - resource: physicalpos
    hasMany: false
filters: null
---
