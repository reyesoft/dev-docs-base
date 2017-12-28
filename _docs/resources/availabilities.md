---
resource: availabilities
permalink: /docs/resources/availabilities/
section: Recursos
attributes:
  - name: amount
  - name: avalabilities_type
    valuetype: transfer | check | card | cash
  - name: number
  - name: bank_number
    valuetype: only (check | transfer
relationships:
  - resource: transactions
    hasMany: true
filters: null
---

```javascript
{
    "meta": {
        "total_resources": 6,
        "resources_per_page": 500,
        "page": 1
    },
    "links": {
        "first": "http:\/\/localhost\/v1\/companies\/159\/availabilities?page=1",
        "last": "http:\/\/localhost\/v1\/companies\/159\/availabilities?page=1",
        "prev": "",
        "next": ""
    },
    "data": [
        {
            "type": "availabilities",
            "id": "323",
            "attributes": {
                "amount": 134,
                "avalabilities_type": "transfer",
                "emitter": "20405209111",
                "bank_number": "00854483"
            },
            "relationships": {
                "transactions": {
                    "data": {
                        "type": "transactions",
                        "id": "25"
                    }
                }
            },
            "links": {
                "self": "http:\/\/localhost\/v1\/companies\/159\/availabilities\/323"
            }
        },
        {
            "type": "availabilities",
            "id": "324",
            "attributes": {
                "amount": 523,
                "avalabilities_type": "transfer",
                "emitter": "20621784281",
                "bank_number": "09608510"
            },
            "relationships": {
                "transactions": {
                    "data": {
                        "type": "transactions",
                        "id": "24"
                    }
                }
            },
            "links": {
                "self": "http:\/\/localhost\/v1\/companies\/159\/availabilities\/324"
            }
        },
        {
            "type": "availabilities",
            "id": "325",
            "attributes": {
                "amount": 607,
                "avalabilities_type": "card"
            },
            "relationships": {
                "transactions": {
                    "data": {
                        "type": "transactions",
                        "id": "11"
                    }
                }
            },
            "links": {
                "self": "http:\/\/localhost\/v1\/companies\/159\/availabilities\/325"
            }
        },
        {
            "type": "availabilities",
            "id": "326",
            "attributes": {
                "amount": 614,
                "avalabilities_type": "transfer",
                "emitter": "20464181051",
                "bank_number": "65370028"
            },
            "relationships": {
                "transactions": {
                    "data": {
                        "type": "transactions",
                        "id": "23"
                    }
                }
            },
            "links": {
                "self": "http:\/\/localhost\/v1\/companies\/159\/availabilities\/326"
            }
        },
        {
            "type": "availabilities",
            "id": "327",
            "attributes": {
                "amount": 561,
                "avalabilities_type": "transfer",
                "emitter": "20611539051",
                "bank_number": "47996335"
            },
            "relationships": {
                "transactions": {
                    "data": {
                        "type": "transactions",
                        "id": "7"
                    }
                }
            },
            "links": {
                "self": "http:\/\/localhost\/v1\/companies\/159\/availabilities\/327"
            }
        },
        {
            "type": "availabilities",
            "id": "328",
            "attributes": {
                "amount": 583,
                "avalabilities_type": "card"
            },
            "relationships": {
                "transactions": {
                    "data": {
                        "type": "transactions",
                        "id": "11"
                    }
                }
            },
            "links": {
                "self": "http:\/\/localhost\/v1\/companies\/159\/availabilities\/328"
            }
        }
    ]
}
```
