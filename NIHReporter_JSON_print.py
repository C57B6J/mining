import json
import requests
import time
endpoint = "https://api.reporter.nih.gov/v2/projects/search"
query_payload = {
        "criteria": {
            "advanced_text_search": { "search_field": "terms,projecttitle", "search_text": 
                "(cochlea OR \"basilar papilla\" OR \"organ of corti\" OR \"stria vascular\" OR \"basilar membrane\" OR "\reissner membrane\" OR \"inner hair cell"\ OR \"outer hair cell"\ OR \"auditory hair cell"\ OR \"spiral gangli"\ OR \"auditory nerv"\ OR \"vestibular gangli\" OR \"vestibular nerv"\ OR \"vestibular epitheli\" OR \"vestibular labyrinth\" OR \"semicircular canal\" OR \"vestibular macula\" OR otolith OR otoconi \"crista ampullaris\" OR \" utric"\ OR saccul NOT \"prostatic\" NOT \"pharyngeal\")"}
            },
        "include_fields": [
            "FiscalYear", "ProjectNum", "ActivityCode","AwardType","Organization", "AwardAmount", "AbstractText"
            ],
        "offset": 0,
        "limit": 1,   # should be 500
        "sort_field": "project_start_date",
        "sort_order": "desc"
        }
print(json.dumps(requests.post(endpoint, json=query_payload).json()))
