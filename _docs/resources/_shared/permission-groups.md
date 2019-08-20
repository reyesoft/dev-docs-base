---
resource: permission_groups
singular: permission_group
permalink: /docs/resources/permission_groups/
section: Shared
attributes:
  - name: name
    crud: read
    valuetype: string
  - name: slug
    crud: read
    valuetype: string
  - name: description
    crud: read
    valuetype: string
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
