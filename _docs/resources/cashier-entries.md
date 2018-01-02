---
resource: cashier_entries
permalink: /docs/resources/cashier-entries/
section: Recursos
partOf: company
attributes:
  - name: amount
    crud: create, read
    valuetype: number
  - name: date
    crud: 'create, read'
    valuetype: datetimew3c
relationships:
  - resource: physicalpos
    hasMany: false
  - resource: paymentmethods
    hasMany: false
  - resource: users
    hasMany: false
  - resource: documents
    hasMnay: false
filters: null
---
