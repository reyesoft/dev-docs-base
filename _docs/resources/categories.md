---
resource: categories
permalink: /docs/resources/categories/
attributes:
  - name: name
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: categories
    hasMany: true
  - resource: parentcategories
    hasMany: true
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
