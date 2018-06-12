---
resource: cashier_entries
permalink: /docs/resources/cashier-entries/
section: Founds
partOf: company
attributes:
  - name: amount
    crud: create, read
    valuetype: number
relationships:
  - resource: physicalpos
    hasMany: false
  - resource: payment_methods
    hasMany: false
  - resource: users
    hasMany: false
  - resource: documents
    hasMany: false
filters: null
entry_points:
  methods:
    patch: false
    delete: false
---
