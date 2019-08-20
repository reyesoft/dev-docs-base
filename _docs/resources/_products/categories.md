---
resource: categories
singular: category
permalink: /docs/resources/categories/
section: Products
attributes:
  - name: name
    valuetype: string
    observation: required
  - name: deleted
    crud: read
relationships:
  - resource: categories
    alias: children
    hasMany: true
  - resource: categories
    alias: parentcategory
  - resource: pricelist_categories
    hasMany: true
filters:
  - attribute: name
    type: like
    multivalue: false
  - attribute: deleted
    type: bool
    multivalue: true
sorts:
  - attribute: name
    enabled: true
---
