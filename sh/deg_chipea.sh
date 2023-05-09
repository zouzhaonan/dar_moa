# Sample code for DEG-ChIPEA

$ ls
Up_DEGs.txt      # Up-regulated DEG list
Down_DEGs.txt    # Down-regulated DEG list

$ curl -X POST \
  -d "format=text" \
  -d "result=www" \
  -d "genome=hg38" \
  -d "antigenClass=TFs and others" \
  -d "cellClass=All cell types" \
  -d "threshold=100" \
  -d "typeA=gene" \
  --data-urlencode "bedAFile@Up_DEGs.txt" \
  -d "typeB=gene" \
  --data-urlencode "bedBFile@Down_DEGs.txt" \
  -d "title=DOSING_CONDITION" \
  -d "descriptionA=Up" \
  -d "descriptionB=Down" \
  -d "distanceUp=5000" \
  -d "distanceDown=5000" \
  https://ddbj.nig.ac.jp/wabi/chipatlas/
