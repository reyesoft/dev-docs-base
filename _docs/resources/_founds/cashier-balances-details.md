---
resource: cashier_balance_details
permalink: /docs/resources/cashier_balance_details/
section: Founds
partOf: company
attributes:
  - name: amount
    crud: read
    valuetype: number
  - name: payment_method_id
    crud: read
    valuetype: number
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
filters: null
entry_points:
  methods:
    get: false
    patch: false
    post: false
    put: false
---
**Este recurso se accede como include y relationships de [cashier_balances](https://dev.multinexo.com/docs/resources/cashier-balances/)**
