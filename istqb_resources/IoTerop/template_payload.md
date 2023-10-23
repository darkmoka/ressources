[
    {
      "id": "thing-id",
      "name": "thing-name",
      "things": [
        {
            "id": "device",
            "name": "device",
            "properties":[
                {
                    "id": "error_code",
                    "name": "error_code",
                    "items":[
                        {
                            "id": "error_code",
                            "name": "error_code",
                            "mapping": {
                                "protocol": "LWM2M",
                                "protocolPath": "/3/0/11"
                              }
                        }
                    ]
                }
            ]
          }
      ],
      "properties":[
        {
            "id": "error_code_bis",
            "name": "error_code_bis",
            "mapping": {
                "protocol": "LWM2M",
                "protocolPath": "/3/0/11"
                }
        }
      ],
      "actions":[
        {
            "id": "reboot",
            "name": "reboot",
            "mapping": {
                "protocol": "LWM2M",
                "protocolPath": "/3/0/4"
                }
        }
      ]
    }
]