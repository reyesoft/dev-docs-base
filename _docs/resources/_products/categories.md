---
resource: categories
permalink: /docs/resources/categories/
section: Products
attributes:
  - name: name
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: categories
    hasMany: true
  - resource: parentcategories
  - resource: pricelist_categories
    hasMany: true
filters:
  - attribute: name
    type: like
    multivalue: false
  - attribute: trashed
    multivalue: false
    values: null|onlyTrashed|withTrashed
---
