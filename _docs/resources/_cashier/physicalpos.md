---
resource: physicalpos
permalink: /docs/resources/physicalpos/
singular: resource
section: Cashier
partOf: company
attributes:
  -
    name: number
    crud: 'create, read, update'
    filter: StringFilter
    required: true
    value_type: integer
  -
    name: enabled
    crud: 'create, read, update'
    filter: StringFilter
    value_type: boolean
  -
    name: alias
    crud: 'create, read, update'
    filter: LikeFilter
relationships:
  -
    resource: cashier_balances
    alias: cashier_balances
    crud: read

---
