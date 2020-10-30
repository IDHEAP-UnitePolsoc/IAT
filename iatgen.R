####################################
####################################
#   IATGEN (from Carpenter et al.) #
####################################
####################################

# Carlo Knotz

setwd("/Users/carloknotz/Dropbox (IDHEAP)/NCCR_WelfareSolidarity/NCCR Project/Survey I_international/IAT")

# install.packages("devtools")
# install.packages("stringr")
# devtools::install_github("iatgen/iatgen")
library(iatgen)
library(stringr)

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
Ajpg <- c("~/skintone/dark/TONE0031B.jpg",
          "~/skintone/dark/TONE0041B.jpg",
          "~/skintone/dark/TONE0051B.jpg",
          "~/skintone/dark/TONE0061B.jpg",
          "~/skintone/dark/TONE0071B.jpg",
          "~/skintone/dark/TONE0081B.jpg",
          "~/skintone/dark/TONE0091B.jpg",
          "~/skintone/dark/TONE0101B.jpg",
          "~/skintone/dark/TONE0111B.jpg",
          "~/skintone/dark/TONE0112B.jpg",
          "~/skintone/dark/TONE0113B.jpg",
          "~/skintone/dark/TONE0114B.jpg")

Bjpg <- c("~/skintone/light/TONE0031A.jpg",
          "~/skintone/light/TONE0041A.jpg",
          "~/skintone/light/TONE0051A.jpg",
          "~/skintone/light/TONE0061A.jpg",
          "~/skintone/light/TONE0071A.jpg",
          "~/skintone/light/TONE0081A.jpg",
          "~/skintone/light/TONE0091A.jpg",
          "~/skintone/light/TONE0101A.jpg",
          "~/skintone/light/TONE0111A.jpg",
          "~/skintone/light/TONE0112A.jpg",
          "~/skintone/light/TONE0113A.jpg",
          "~/skintone/light/TONE0114A.jpg")


writeIATfull(IATname="iat_skintone_basic",
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