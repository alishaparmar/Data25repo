import requests
from pprint import pprint
requests_bbc = requests.get("https://www.bbc.co.uk/")

pprint(requests_bbc.content)