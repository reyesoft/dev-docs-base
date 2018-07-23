---
resource: messages
permalink: /docs/resources/messages/
section: Companies
partOf: company
attributes:
  - name: to
    valuetype: string
  - name: subject
    valuetype: string
  - name: content
    valuetype: string
  - name: status
    valuetype: draft | sent | queued | failed
relationships:
  - resource: companies
    hasMany: false
  - resource: documents
    hasMany: true
  - resource: fiscalbooks
    hasMany: true
  - alias: pricelistsreports
    resource: pricelistsreport
    hasMany: true          
filters: null
---