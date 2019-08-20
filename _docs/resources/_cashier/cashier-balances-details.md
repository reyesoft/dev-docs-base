---
resource: cashier_balance_details
singular: cashier_balance_detail
permalink: /docs/resources/cashier_balance_details/
section: Cashier
partOf: company
attributes:
  - name: amount
    crud: read
    valuetype: number
  - name: payment_method_id
    crud: read
    valuetype: number
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
