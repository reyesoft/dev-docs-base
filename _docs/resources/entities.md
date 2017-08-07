---
resource: entities
permalink: /docs/resources/entities/
attributes:
  - name: name
  - name: description
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

esto es el resource enties
