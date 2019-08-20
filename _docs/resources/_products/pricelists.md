---
resource: pricelists
singular: pricelist
permalink: /docs/resources/pricelists/
section: Products
attributes:
  - name: name
    valuetype: string
    observation: required
  - name: client_price
    valuetype: float
  - name: subdist_percent
    valuetype: float
  - name: prevent_percent
    valuetype: float
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: entities
    hasMany: true
  - resource: prielist_products
    hasMany: true
filters:
  - attribute: deleted
    type: bool
    multivalue: true
---
