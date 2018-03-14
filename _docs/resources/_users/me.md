---
resource: me
permalink: /docs/resources/me/
section: Users
partOf: user
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
  - name: create_at
  - name: update_at
  - name: activated
  - name: acutal_status
relationships:
  - resource: roles
  - resource: additional_accounts
  - resource: entities
    hasMany: true
filters:
  - attribute: first_name
    type: like
    alias: null
    multivalue: false
  - attribute: trashed
    type: equals
    alias: null
    multivalue: false
entry_points:
  methods:
    delete: false
---
