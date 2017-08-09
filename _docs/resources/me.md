---
resource: me
permalink: /docs/resources/me/
attributes:
  - name: name
  - name: first_name
  - name: last_name
  - name: avatar_url
    crud: read
  - name: email
  - name: old_password
    crud: update
  - name: new_password
    crud: create
relationships:
  - resource: roles
    hasMany: true
filters: null
---
