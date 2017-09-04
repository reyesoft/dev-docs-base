---
resource: transactions
permalink: /docs/resources/transactions/
attributes:
  - name: date
    crud: read
  - name: due_date
    valuetype: datetimew3c
  - name: observations
  - name: amount
  - name: entity_id
  - name: order_id
  - name: created_at
    crud: read
    valuetype: datetimew3c
  - name: updated_at
    crud: read
    valuetype: datetimew3c
  - name: deleted_at
    crud: read
    valuetype: datetimew3c
relationships:
  - resource: entities
    hasMany: false
  - resource: quotations
    hasMany: true
  - resource: orders
    hasMany: true
  - resource: invoices
    hasMany: true
  - resource: availabilities
    hasMany: true
filters: null
---

**Included**

- availabilities: 1../required

**Entry Points**

```
companies/{company_id}/transactions/{transaction_id}
companies/{company_id}/entities/{entity_id}/transactions
```

```javascript
Example
{
    "meta": {
        "total_resources": 2,
        "resources_per_page": 500,
        "page": 1
    },
    "links": {
        "first": "http:\/\/localhost\/v1\/companies\/159\/transactions?page=1",
        "last": "http:\/\/localhost\/v1\/companies\/159\/transactions?page=1",
        "prev": "",
        "next": ""
    },
    "data": [
        {
            "type": "transactions",
            "id": "15",
            "attributes": {
                "date": "2016-12-26T12:59:46-03:00",
                "due_date": "2016-12-26T12:59:46-03:00",
                "observations": "",
                "amount": -4366.38
            },
            "relationships": {
                "entities": {
                    "data": {
                        "type": "entities",
                        "id": "170"
                    }
                },
                "documents": {
                    "data": [
                        {
                            "type": "documents",
                            "id": "269"
                        }
                    ]
                },
                "availabilities": {
                    "data": []
                }
            },
            "links": {
                "self": "http:\/\/localhost\/v1\/companies\/159\/transactions\/15"
            }
        },
        {
            "type": "transactions",
            "id": "17",
            "attributes": {
                "date": "2016-12-26T12:59:52-03:00",
                "due_date": "2016-12-26T12:59:52-03:00",
                "observations": "Possimus reprehenderit iusto.",
                "amount": 4459.33
            },
            "relationships": {
                "entities": {
                    "data": {
                        "type": "entities",
                        "id": "171"
                    }
                },
                "documents": {
                    "data": []
                },
                "availabilities": {
                    "data": [
                        {
                            "type": "availabilities",
                            "id": "288"
                        },
                        {
                            "type": "availabilities",
                            "id": "289"
                        },
                        {
                            "type": "availabilities",
                            "id": "290"
                        },
                        {
                            "type": "availabilities",
                            "id": "291"
                        },
                        {
                            "type": "availabilities",
                            "id": "292"
                        },
                        {
                            "type": "availabilities",
                            "id": "293"
                        },
                        {
                            "type": "availabilities",
                            "id": "294"
                        },
                        {
                            "type": "availabilities",
                            "id": "295"
                        },
                        {
                            "type": "availabilities",
                            "id": "296"
                        },
                        {
                            "type": "availabilities",
                            "id": "297"
                        }
                    ]
                }
            },
            "links": {
                "self": "http:\/\/localhost\/v1\/companies\/159\/transactions\/17"
            }
        }
    ],
    "included": [
        {
            "type": "availabilities",
            "id": "288",
            "attributes": {
                "amount": 303,
                "avalabilities_type": "cash"
            }
        },
        {
            "type": "availabilities",
            "id": "289",
            "attributes": {
                "amount": 142,
                "avalabilities_type": "transfer",
                "emitter": "20967987431",
                "bank_number": "07425933"
            }
        },
        {
            "type": "availabilities",
            "id": "290",
            "attributes": {
                "amount": 232,
                "avalabilities_type": "check",
                "number": "95288633",
                "bank_number": "14997499"
            }
        },
        {
            "type": "availabilities",
            "id": "291",
            "attributes": {
                "amount": 712,
                "avalabilities_type": "transfer",
                "emitter": "20912248671",
                "bank_number": "61207649"
            }
        },
        {
            "type": "availabilities",
            "id": "292",
            "attributes": {
                "amount": 485,
                "avalabilities_type": "transfer",
                "emitter": "20430044251",
                "bank_number": "69070324"
            }
        },
        {
            "type": "availabilities",
            "id": "293",
            "attributes": {
                "amount": 578,
                "avalabilities_type": "check",
                "number": "22826456",
                "bank_number": "26414252"
            }
        },
        {
            "type": "availabilities",
            "id": "294",
            "attributes": {
                "amount": 154,
                "avalabilities_type": "transfer",
                "emitter": "20306523531",
                "bank_number": "63184931"
            }
        },
        {
            "type": "availabilities",
            "id": "295",
            "attributes": {
                "amount": 350,
                "avalabilities_type": "transfer",
                "emitter": "20203928771",
                "bank_number": "53125930"
            }
        },
        {
            "type": "availabilities",
            "id": "296",
            "attributes": {
                "amount": 546,
                "avalabilities_type": "check",
                "number": "29909532",
                "bank_number": "60481824"
            }
        },
        {
            "type": "availabilities",
            "id": "297",
            "attributes": {
                "amount": 813,
                "avalabilities_type": "transfer",
                "emitter": "20880209351",
                "bank_number": "16489490"
            }
        }
    ]
}
```
