require(devtools)
devtools::install_github('r4ss/r4ss')
library(r4ss)
#update_r4ss_files()


dirloc <- "C:/Users/Felipe/Dropbox/Sardines/SS-2010/M_0.5"
aaa <- SS_output(dirloc)

#SSsummarize(aaa)

SS_plots(aaa, plot=1:23)


?SS_plots
