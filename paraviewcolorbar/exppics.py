import os

tikxlist = [
    "colorbar.tikz"
    ]

outnamelist = ["colorbar.pdf"
               ]

for indx in range(len(tikxlist)):
    os.system("cp " + tikxlist[indx] + " pgfpictoexp.tex")
    os.system("pdflatex exptikx.tex")
    os.system("cp exptikx.pdf " + outnamelist[indx])
