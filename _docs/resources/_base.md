---
resource: products
permalink: /docs/resources/products/
partOf: company|user|''
attributes:
  - name: sku
    crud: 'create,read,update'
    valuetype: string
  - name: conduct
    crud: 'create,read,update'
    valuetype: common | compound | variant_common | variant_parent
relationships:
  - resource: suppliers
    hasMany: true
  - resource: categories
    alias: categories
    hasMany: false
filters:
  - attribute: name
    type: like
    multivalue: true
  - attribute: sku
    multivalue: false
  - attribute: trashed
    multivalue: false
    values: null|onlyTrashed|withTrashed
---

Este es un texto alternativo en MD para productos