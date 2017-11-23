---
resource: cashier_balances_details
permalink: /docs/resources/cashier_balances_details/
attributes:
  - name: amount
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
  - resource: cashier_balances
    hasMany: false
  - resource: payment_methods
    hasMnay: false
filters: null
---
