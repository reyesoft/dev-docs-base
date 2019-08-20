---
resource: payment_methods
singular: payment_method
permalink: /docs/resources/payment_methods/
section: Cashier
attributes:
  - name: name
  - name: behavior
    valuetype: cash | cash_adjustment | current_account | check | card | other | difference
  - name: enabled
    valuetype: boolean
relationships:
  - resource: currencies
    alias: currency
    hasMany: false
filters: 
  - attribute: name
    type: like
    multivalue: false
  - attribute: behavior
    type: equal
    multivalue: true
  - attribute: enabled
    type: equal
    multivalue: false
---