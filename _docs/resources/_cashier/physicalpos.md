---
resource: physicalpos
singular: physicalpos
permalink: /docs/resources/physicalpos/
section: Cashier
attributes:
  - name: number
  - name: alias
    valuetype: string
  - name: enabled
    valuetype: boolean
relationships:
  - resource: cashier_balance_details
    hasMany: true
  - resource: cashier_balance_details
    hasMany: true
filters: 
  - attribute: number
    type: equal
    multivalue: false
  - attribute: enabled
    type: equal
    multivalue: false
  - attribute: alias
    type: like
    multivalue: false
---
