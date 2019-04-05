---
resource: costs
permalink: /docs/resources/costs/
section: Funds
partOf: company
attributes:
  - name: amount
    valuetype: number
  - name: description
relationships:
  - resource: cost_centers
    alias: cost_center
    hasMany: false
  - resource: documents
    alias: document
    hasMany: false
entry_points:
  methods:
    post: true
---