---
resource: cashier_entries
permalink: /docs/resources/cashier-entries/
section: Recursos
partOf: company
attributes:
  - name: amount
    crud: create, read
    valuetype: number
relationships:
  - resource: physicalpos
    hasMany: false
  - resource: paymentmethods
    hasMany: false
  - resource: users
    hasMany: false
  - resource: documents
    hasMany: false
  - resource: transactions
    hasMany: false
filters: null
---
