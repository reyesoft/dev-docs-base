---
resource: cashier_balances
singular: cashier_balance
permalink: /docs/resources/cashier_balances/
section: Cashier
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
  - name: physicalpos_id
    crud: read
  - name: date
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: physicalpos
    hasMany: false
  - resource: cashier_balance_details
    hasMany: true
filters: null
---
**Included**
- [cashier_balances_details](https://dev.multinexo.com/docs/resources/cashier-balances-details/)
