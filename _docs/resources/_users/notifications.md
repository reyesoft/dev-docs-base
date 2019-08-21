---
resource: notifications
singular: notification
permalink: /docs/resources/notifications/
section: Users
partOf: user
attributes:
  - name: content_type
    valuetype: error | warning | info | success
    observation: required
  - name: message
    valuetype: string
    observation: required
  - name: read_at
    valuetype: datetime
    cru: read | update
  - name: created_at
    valuetype: datetime
    cru: read
relationships: null
filters: 
  - attribute: content_type
    type: string
    multivalue: true
  - attribute: read_at
    type: date
    multivalue: true
  - attribute: created_at
    type: date
    multivalue: true
---
