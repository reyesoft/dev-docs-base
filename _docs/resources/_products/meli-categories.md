---
resource: meli_categories
permalink: /docs/resources/meli_categories/
singular: resource
section: Products
partOf: guest
attributes:
  -
    name: name
    crud: 'create, read, update'
    filter: StringFilter
    sortable: 'true'
  -
    name: parent_id
    crud: 'create, read, update'
    filter: StringFilter
    sortable: 'true'
relationships:
  -
    resource: children
    alias: children
    crud: 'create, read, update'
  -
    resource: parent
    alias: parent
    crud: 'create, read, update'

---
