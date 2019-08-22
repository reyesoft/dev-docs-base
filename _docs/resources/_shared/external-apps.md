---
resource: external_apps
singular: external_app
permalink: /docs/resources/external_apps/
section: Shared
attributes:
  - name: app_type
    sort: true
  - name: name
    sort: true
relationships:
  - resource: companies
    alias: companies
filters: null
entry_points:
  methods:
    post: false
    patch: false
    delete: false
---