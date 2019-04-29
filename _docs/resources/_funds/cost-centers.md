---
resource: cost_centers
permalink: /docs/resources/cost_centers/
section: Funds
partOf: company
attributes:
  - name: name
  - name: description
  - name: deleted
    valuetype: boolean
  - name: parent_id
    crud: 'read'
relationships:
  - resource: cost_assignation_strategies
    alias: cost_assignation_strategy
    hasMany: false
  - resource: cost_centers
    alias: cost_center_parent
    hasMany: false
  - resource: costs
    hasMany: true
  - resource: cost_centers
    alias: cost_center_children
    hasMany: true
filters:
  - attribute: name
    type: like
    multivalue: false
  - attribute: deleted
    type: equals
    multivalue: true
  - attribute: parent_id
    type: equals
    multivalue: false
---