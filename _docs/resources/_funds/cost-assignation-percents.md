---
resource: cost_assignation_percents
permalink: /docs/resources/cost_assignation_percents/
section: Funds
partOf: company
attributes:
  - name: percent
    valuetype: integer
relationships:
  - resource: cost_assignation_strategies
    alias: cost_assignation_strategy
    hasMany: false
filters:
    - attribute: name
      type: like
      multivalue: false
---