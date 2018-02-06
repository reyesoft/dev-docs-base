---
resource: behaviors
permalink: /docs/resources/behaviors/
section: Recursos
attributes:
  - name: id
    crud: read
  - name: name
    crud: read
  - name: allow_negative
    crud: read
relationships:
  - resource: paymentmethods
    hasMany: true
filters: null
entry_points:
  methods:
    post: false
    put: false
    delete: false
---
