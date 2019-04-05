---
resource: cost_assignation_strategies
permalink: /docs/resources/cost_assignation_strategies/
section: Funds
partOf: company
attributes:
  - name: name
  - name: description
relationships:
  - resource: cost_assignation_percents
    hasMany: true
filters:
    - attribute: name
      type: like
      multivalue: false
---