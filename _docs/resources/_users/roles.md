---
resource: roles
singular: role
permalink: /docs/resources/roles/
section: Users
partOf: company
attributes:
  - name: name
    valuetype: string
    observation: required
  - name: description
    valuetype: string
  - name: is_admin
    valuetype: bool
    crud: read
relationships:
  - resource: users
    hasMany: true
  - resource: permissions
    hasMany: true
filters: null
---
