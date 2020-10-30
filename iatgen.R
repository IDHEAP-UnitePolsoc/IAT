####################################
####################################
#   IATGEN (from Carpenter et al.) #
####################################
####################################

# Carlo Knotz

setwd("/Users/carloknotz/Dropbox (IDHEAP)/NCCR_WelfareSolidarity/NCCR Project/Survey I_international")

# install.packages("devtools")
# install.packages("stringr")
# devtools::install_github("iatgen/iatgen")
library(iatgen)

# IAT setup -- words only
writeIATfull(IATname="iat_immigr_names",
             posname="Pleasant", 
             negname="Unpleasant",
             Aname="Natives",
             Bname="Foreigners",
             catType="words",
             poswords = c("smile", "honest", "sincere", "lucky", "diamond", "peace", "sweet"), # from Project Implicit
             negwords = c("disaster", "agony", "hatred", "grief", "rotten", "crash", "tragedy"),
             tgtType="words",
             Awords = c("Steven", "Jennifer", "Bradley", "Wendy", "Hunter", "Susan", "Jack"), # from Conaway/Bethune
             Bwords = c("Ahmad", "Shamika", "Enrique", "Tyrone", "Lupita", "Fatima", "Jose"),
             
             #advanced options with recommended IAT settings
             n=c(20, 20, 20, 40, 40, 20, 40),   # number of trials per block
             qsf=TRUE,                          # outputs qualtrics file. If false, generates raw code
             note=TRUE,                         # include note reminding online particpnats of key assignments
             correct.error=TRUE,                # require particpnats to correct errors before proceeding
             pause=250,                         # pause between trials
             errorpause=300,                    # duration error message on screen; ignored if correct.error=TRUE
             tgtCol="black",                    # color for target labels + text stimuli
             catCol="green"                     # color for category labels + text stimuli
)

# IAT setup -- words as categories, images as targets
Ajpg <- c("~/childrace/BF_13.jpg",
          "~/childrace/BM_09.jpg",
          "~/childrace/BF_15.jpg",
          "~/childrace/BM_12.jpg")

Bjpg <- c("~/childrace/WF_05.jpg",
          "~/childrace/WM_03.jpg",
          "~/childrace/WF_08.jpg",
          "~/childrace/WM_01.jpg")


writeIATfull(IATname="iat_race_pics",
             posname="Pleasant",
             negname="Unpleasant",
             Aname="Foreigners",
             Bname="Natives",
             catType="words",
             poswords = c("smile", "honest", "sincere", "lucky", "diamond", "peace", "sweet"), # from Project Implicit
             negwords = c("disaster", "agony", "hatred", "grief", "rotten", "crash", "tragedy"),
             tgtType="images",
             Aimgs = Ajpg,
             Bimgs = Bjpg,

             #advanced options with recommended IAT settings
             n=c(20, 20, 20, 40, 40, 20, 40),   # number of trials per block
             qsf=TRUE,                          # outputs qualtrics file. If false, generates raw code
             note=TRUE,                         # include note reminding online particpnats of key assignments
             correct.error=TRUE,                # require particpnats to correct errors before proceeding
             pause=250,                         # pause between trials
             errorpause=300,                    # duration error message on screen; ignored if correct.error=TRUE
             tgtCol="black",                    # color for target labels + text stimuli
             catCol="green"                     # color for category labels + text stimuli
)