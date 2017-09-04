---
resource: fiscalbooks
permalink: /docs/resources/fiscalbooks/
attributes:
  - name: email
  - name: alias
    crud: 'read, update'
  - name: fiscalbook_type
    crud: 'create, read'
    valuetype: buys | sells
  - name: from
    crud: 'create, read'
    valuetype: datetimew3c
  - name: to
    crud: 'create, read'
    valuetype: datetimew3c
  - name: initial_folio
    crud: 'create, read'
  - name: net
    crud: read
  - name: total
    crud: read
  - name: url_pdf
    crud: read
  - name: url_csv
    crud: read
  - name: url_xls
    crud: read
  - name: url_citi
    crud: read
relationships:
  - resource: users
    hasMany: false
filters: null
---

**Formato salida PDF de url_pdf**

```
    *** IVA [COMPRAS|VENTAS] ***
RAZÓN SOCIAL: XXXXXXXXX        CUIT: XX-XXXXXXXXX-X        IVA: CONDICION IVA        PERIODO XX/XX/XXXX AL XX/XX/XXXX    FOLIO: XXX

FECHA | COMPROBANTE/NUMERO | [PROVEEDOR|CLIENTE] | C.U.I.T. | CondFiscal | NETO | RET | ImpInt | IVA% | IVA | Perc.IVA | Perc.IIBB | TOTAL
```

**Ejemplos**

```
http://www.estudiomonti.com.ar/galeria/0005000327996VENTAS.jpg  
http://www.estudiomonti.com.ar/galeria/0005000227995COMPRAS.jpg  
http://drrsystemas.no-ip.info/helpalma/images/image598.jpg
```

**Observaciones**<br>
Se elimina la relación con company ya que esta información se envía en el token.
