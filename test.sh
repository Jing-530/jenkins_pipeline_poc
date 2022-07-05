# delete old features.zip file
#rm -f features.zip
# export feature file to features.zip from Jira
curl \
    -u jing.liang_1@signify.com:Lj@53057 \
    -H "Content-Type: application/json" \
    -X GET \
    "https://www.tracker.dtf.lighting.com/rest/raven/2.0/export/test?keys=MSI-1118&fz=true" \
    -o features.zip

## delete old files in feature folder
#rm -rf features/*.feature
## unzip exported file to features folder
#unzip -o features.zip -d features
#
## run all the test in features folder
#behave --format=json -o results/behave.json features
#
## import test results to Jira
#curl \
#     -H "Content-Type: application/json" \
#     -X POST \
#     -u jing.liang_1@signify.com:Lj@53057 \
#     --data @"results/behave.json" \
#     https://www.tracker.dtf.lighting.com/rest/raven/2.0/import/execution/behave -o response.html
#
#read
