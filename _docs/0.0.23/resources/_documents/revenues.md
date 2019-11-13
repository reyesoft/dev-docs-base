---
version: 0.0.23
resource: revenues
permalink: /docs/0.0.23/resources/revenues/
singular: resource
section: Documents
partOf: company
attributes:
  -
    name: date
    crud: 'create, read, update'
    filter: DateFilter
  -
    name: cost
    crud: 'create, read, update'
  -
    name: commission
    crud: 'create, read, update'
  -
    name: total
    crud: 'create, read, update'
  -
    name: revenue
    crud: 'create, read, update'
relationships: {  }

---
