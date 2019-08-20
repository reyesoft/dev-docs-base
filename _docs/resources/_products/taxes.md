---
resource: taxes
singular: tax
permalink: /docs/resources/taxes/
section: Products
attributes:
  - name: name
    crud: read
    valuetype: string
  - name: email
    crud: read
    valuetype: string
  - name: code_afip
    crud: read
    valuetype: string
  - name: percent_value
    crud: read
    valuetype: float
relationships: null
filters: null
entry_points:
  methods:
    delete: false
    post: false
    patch: false
---
