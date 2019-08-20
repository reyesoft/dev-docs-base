---
resource: me
permalink: /docs/resources/me/
section: Users
partOf: user
attributes:
  - name: name
    valuetype: string
  - name: first_name
    valuetype: string
  - name: last_name
    valuetype: string
  - name: avatar_url
    valuetype: string
    crud: read
  - name: email
    valuetype: string
  - name: old_password
    crud: update
    valuetype: string
  - name: new_password
    crud: create
    valuetype: string
  - name: activated
    valuetype: bool
  - name: status
    crud: read
    valuetype: invitated | accepted
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
    post: false
---
