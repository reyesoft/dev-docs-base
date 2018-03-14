---
resource: taxes
permalink: /docs/resources/taxes/
section: Products
attributes:
  - name: name
    crud: read
  - name: email
    crud: read
  - name: code_afip
    crud: read
  - name: percent_value
    crud: read
relationships: null
filters: null
entry_points:
  methods:
    delete: false
    post: false
    patch: false
---
