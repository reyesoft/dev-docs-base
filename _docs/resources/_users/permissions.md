---
resource: permissions
permalink: /docs/resources/permissions/
singular: resource
section: Users
partOf: guest
attributes:
  -
    name: name
    crud: 'create, read, update'
    required: true
    value_type: string
    rules:
      - 'max:96'
relationships:
  -
    resource: permission_group
    alias: permission_group
    crud: 'create, read, update'

---
