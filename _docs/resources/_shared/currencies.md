---
resource: currencies
permalink: /docs/resources/currencies/
section: Shared
attributes:
  - name: name
    crud: read
  - name: code_afip
    crud: read
  - name: code_iso
    crud: read
  - name: symbol
    crud: read
  - name: quotation_usd
    crud: read
relationships: null
filters: null
entry_points:
  methods:
    delete: false
---
