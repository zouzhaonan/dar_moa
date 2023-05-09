# Sample code for DAR-MotifEA

$ ls ~/lib
HOCOMOCOv11_full_MOUSE_mono_meme_format.meme

$ ls
Opened_DARs.fa    # Sequence of Opened DARs
Closed_DARs.fa    # Sequence of Closed DARs
stremeOut/
tomtomOut/

$ streme --dna --minw 8 --nmotifs 1000 --p Opened_DARs.fa --n Closed_DARs.fa --oc stremeOut
$ tomtom stremeOut/streme.txt ~/lib/HOCOMOCOv11_full_MOUSE_mono_meme_format.meme -oc tomtomOut
