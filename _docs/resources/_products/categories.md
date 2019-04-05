---
resource: categories
permalink: /docs/resources/categories/
section: Products
attributes:
  - name: name
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
  - name: deleted
relationships:
  - resource: categories
    alias: children
    hasMany: true
  - resource: categories
    alias: parent
  - resource: pricelist_categories
    hasMany: true
filters:
  - attribute: name
    type: like
    multivalue: false
  - attribute: deleted
    multivalue: false
    values: null|onlyTrashed|withTrashed
sorts:
  - attribute: name
    enabled: true
---
