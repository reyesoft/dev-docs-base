---
resource: cashier_entries
permalink: /docs/resources/cashier_entries/
section: Cashier
partOf: company
attributes:
  - name: amount
    crud: create, read
    valuetype: number
relationships:
  - resource: physicalpos
    hasMany: false
  - resource: payment_methods
    alias: payment_method
    hasMany: false
  - resource: users
    alias: user
    hasMany: false
  - resource: documents
    alias: document
    hasMany: false
filters: null
entry_points:
  methods:
    patch: false
    delete: false
---
