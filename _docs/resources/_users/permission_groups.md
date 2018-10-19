---
resource: permission_groups
permalink: /docs/resources/permission_groups/
section: Users
partOf: company
attributes:
  - name: name
    crud: read
  - name: slug
    crud: read
  - name: description
    crud: read
relationships:
  - resource: permissions
    hasMany: true
filters: null
entry_points:
  methods:
    delete: false
    patch: false
    post: false
---
## En develop 20 este recurso es permissions
