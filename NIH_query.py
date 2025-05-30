import json
import requests
import time

endpoint = "https://api.reporter.nih.gov/v2/projects/search"

 # query_payload = {
 #     "criteria": {
 #         "advanced_text_search": { "search_field": "terms,projecttitle", "search_text": "(cochlea OR \"basilar papilla\" OR \"organ of corti\" OR \"stria vascular\" OR \"basilar membrane\" OR "\reissner membrane\" OR \"inner hair cell"\ OR \"outer hair cell"\ OR \"auditory hair cell"\ OR \"spiral gangli"\ OR \"auditory nerv"\ OR \"vestibular gangli\" OR \"vestibular nerv"\ OR \"vestibular epitheli\" OR \"vestibular labyrinth\" OR \"semicircular canal\" OR \"vestibular macula\" OR otolith OR otoconi \"crista ampullaris\" OR \" utric"\ OR saccul NOT \"prostatic\" NOT \"pharyngeal\")"}
 #     },
 #     "include_fields": [
 #             "FiscalYear", "ProjectNum"
 #     ],
 #     "offset": 0,
 #     "limit": 10,
 #     "sort_field": "appl_id",
 #     "sort_order": "desc"
 #  }



query_payload = {
    "criteria": {
            "advanced_text_search": { "search_field": "terms,projecttitle", "search_text": "(cochlea OR \"basilar papilla\" OR \"organ of corti\" OR \"stria vascular\" OR \"basilar membrane\" OR \"reissner membrane\" OR \"inner hair cell\" OR \"outer hair cell\" OR \"auditory hair cell\" OR \"spiral gangli\" OR \"auditory nerv\" OR \"vestibular gangli\" OR \"vestibular nerv\" OR \"vestibular epitheli\" OR \"vestibular labyrinth\" OR \"semicircular canal\" OR \"vestibular macula\" OR otolith OR otoconi \"crista ampullaris\" OR \" utric\" OR saccul NOT \"prostatic\" NOT \"pharyngeal\")"} }, "include_fields": [
            "FiscalYear", "ProjectNum", "ActivityCode","AwardType","Organization","AbstractText"
    ],
    "offset": 0,
    "limit": 10,   # should be 500
    "sort_field": "project_start_date",
    "sort_order": "desc"
 }



def make_request(q):
    r = requests.post(endpoint, json=q)
    return r

    # print(f"STATUS CODE: {r.status_code}")

    # print(" ----- (response) -----")

    #total_results = r.json()['meta']['total']


    #time.sleep(2)

#print(json.dumps(r.json()))


#for i in range(10):
total_results = 90
step = 10

for i in range(0, ((total_results + step ) // step) * step, step ):

    query_payload['offset'] = i
    print(query_payload['offset'])

    r = make_request(query_payload)


    with open("data.json", "a+") as outfile:
        outfile.write(json.dumps(r.json()))
    time.sleep(1)
