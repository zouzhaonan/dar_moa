# Sample code for DAR-ChIPEA

$ ls
Opened_DARs.bed    # Opened DARs
Closed_DARs.bed    # Closed DARs

$ curl -X POST \
  -d "format=text" \
  -d "result=www" \
  -d "genome=hg38" \
  -d "antigenClass=TFs and others" \
  -d "cellClass=All cell types" \
  -d "threshold=100" \
  -d "typeA=bed" \
  --data-urlencode "bedAFile@Opened_DARs.bed" \
  -d "typeB=bed" \
  --data-urlencode "bedBFile@Closed_DARs.bed" \
  -d "title=DOSING_CONDITION" \
  -d "descriptionA=Opened" \
  -d "descriptionB=Closed" \
  https://ddbj.nig.ac.jp/wabi/chipatlas/
