import json
import sys
from pprint import pprint

regId = str(sys.argv[1])
jsonFile = str(sys.argv[2])

data = json.load(open(jsonFile))

# output file
outputFile = "/tmp/results/analysis_%s.json" % regId

image = data["images"][0]
info = image["info"]

result = {} 

# resumes
result["complianceVulnerabilities"] = info["complianceVulnerabilities"]
# counters
result["cveVulnerabilitiesCnt"] = info["cveVulnerabilitiesCnt"]
result["complianceVulnerabilitiesCnt"] = info["complianceVulnerabilitiesCnt"]
# distribution
result["cveVulnerabilityDistribution"] = info["cveVulnerabilityDistribution"]
result["complianceDistribution"] = info["complianceDistribution"]
# scores
result["vulnerabilityRiskScore"] = info["vulnerabilityRiskScore"]
result["complianceRiskScore"] = info["complianceRiskScore"]

# write output
with open(outputFile, 'w') as output_file:
    json.dump(result, output_file)