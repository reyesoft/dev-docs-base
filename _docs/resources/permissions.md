---
resource: permissions
permalink: /docs/resources/permissions/
attributes:
  - name: name
  - name: description
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: roles
    hasMany: true
  - resource: permissions
    hasMany: true
filters: null
---
