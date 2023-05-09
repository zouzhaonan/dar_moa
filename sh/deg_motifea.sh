# Sample code for DEG-MotifEA

$ ls ~/lib
HOCOMOCOv11_full_MOUSE_mono_meme_format.meme

$ ls
Up_DEGs.fa      # Sequence of Up-regulated DEGs (TSS ± 5 kb)
Down_DEGs.fa    # Sequence of Down-regulated DEGs (TSS ± 5 kb)
stremeOut/
tomtomOut/

$ streme --dna --minw 8 --nmotifs 1000 --p Up_DEGs.fa --n Down_DEGs.fa --oc stremeOut
$ tomtom stremeOut/streme.txt ~/lib/HOCOMOCOv11_full_MOUSE_mono_meme_format.meme -oc tomtomOut
