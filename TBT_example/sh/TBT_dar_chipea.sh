# Sample code for DAR-ChIPEA on TBT exposure data

$ ls input_data
TBT.opened.bed    # Opened DARs
TBT.closed.bed    # Closed DARs

$ head TBT.opened.bed
chr1	10039987	10040123
chr1	16228365	16228542
chr1	20890491	20890657
chr1	20951503	20951662
chr1	23433783	23433932
chr1	24612860	24613009
chr1	30921280	30921504
chr1	30949351	30949456
chr1	33883470	33883632
chr1	34472817	34472944

$ head TBT.closed.bed
chr1	24005538	24005684
chr1	36807209	36807354
chr1	38897968	38898153
chr1	39987002	39987098
chr1	43163892	43164096
chr1	46864254	46864480
chr1	52019738	52019921
chr1	54660725	54660964
chr1	54841862	54842049
chr1	60746265	60746473

$ curl -X POST \
  -d "format=text" \
  -d "result=www" \
  -d "genome=hg38" \
  -d "antigenClass=TFs and others" \
  -d "cellClass=All cell types" \
  -d "threshold=100" \
  -d "typeA=bed" \
  --data-urlencode "bedAFile@TBT.opened.bed" \
  -d "typeB=bed" \
  --data-urlencode "bedBFile@TBT.closed.bed" \
  -d "title=TBT" \
  -d "descriptionA=Opened" \
  -d "descriptionB=Closed" \
  https://ddbj.nig.ac.jp/wabi/chipatlas/
