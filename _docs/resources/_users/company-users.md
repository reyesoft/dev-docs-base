---
resource: company_users
singular: company_user
permalink: /docs/resources/company_users/
section: Users
partOf: company
attributes:
  - name: email
    observation: required
    valuetype: string
    crud: create, read
  - name: invitation_status
    valuetype: pending | accepted | rejected
    crud: read
  - name: company_id
    valuetype: int    
  - name: deleted
    valuetype: datetimew3c
relationships:
  - resource: roles
    hasMany: true
  - resource: permissions
    hasMany: true
  - resource: users
    alias: user
  - resource: entities
    alias: entity
filters:
  - attribute: deleted
    type: bool
    multivalue: true

---