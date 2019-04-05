---
resource: behaviors
permalink: /docs/resources/behaviors/
section: Cashier
attributes:
  - name: id
    crud: read
  - name: name
    crud: read
  - name: allow_negative
    crud: read
relationships:
  - resource: payment_methods
    hasMany: true
filters: null
entry_points:
  methods:
    post: false
    patch: false
    delete: false
---
