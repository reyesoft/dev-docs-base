---
resource: notifications
permalink: /docs/resources/notifications/
singular: resource
section: Notifications
partOf: user
attributes:
  -
    name: content_type
    crud: 'create, read, update'
    filter: StringFilter
    required: true
    value_type: 'in [error, warning, info, success]'
  -
    name: message
    crud: 'create, read, update'
    required: true
  -
    name: read_at
    crud: 'read, update'
    filter: DateFilter
  -
    name: created_at
    crud: read
    filter: DateFilter
relationships: {  }

---
