---
resource: imports
permalink: /docs/resources/imports/
partOf: company
attributes:
  - name: resource
  - name: has_header
    valuetype: boolean
  - name: headers
    valuetype: Array<string>
  - name: records
    valuetype: json
  - name: status
    valuetype: queued|ok|error
  - name: observation
    crud: read
relationships: null
entry_points:
  methods:
    post: false
    delete: false
filters: null
---

### A tener en cuenta  
Actualmente los archivos soportados para importar son en formato **.XLS** y **.CSV**.  
Este recurso solo soporta POST por fuera de JSON-API

#### Entry points externos a JSON-API  
```
POST: http://api.multinexo.com/v1/companies/{companyId}/imports
```
#### Datos obligatorios para POST
```
resource: string;
(binary) file;
```
