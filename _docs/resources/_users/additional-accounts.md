---
resource: additional_accounts
singular: additional_account
permalink: /docs/resources/additional-accounts/
section: Users
partOf: user
attributes:
  - name: email
    valuetype: string
    observation: required
  - name: activated
    crud: read
    valuetype: bool
  - name: last_login
    crud: read
    valuetype: datetimew3c
  - name: user_id
    crud: read
relationships: null
filters: null
entry_points:
  methods:
    patch: false
---
