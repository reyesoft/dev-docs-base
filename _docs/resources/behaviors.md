---
resource: behaviors
permalink: /docs/resources/behaviors/
attributes:
  - name: name
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
