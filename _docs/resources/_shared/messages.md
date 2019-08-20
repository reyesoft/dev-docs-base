---
resource: messages
singular: message
permalink: /docs/resources/messages/
section: Shared
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
  - name: resources
    crud: read
    valuetype: documents | fiscalbooks | pricelist_reports
relationships:
  - resource: documents
    hasMany: true
  - resource: fiscalbooks
    hasMany: true
  - alias: pricelistsreports
    resource: pricelistsreport
    hasMany: true          
filters: 
  - attribute: resources
    type: equal
    multivalue: true
---
