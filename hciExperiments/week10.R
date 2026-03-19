###
## Scenario:   Text entry on smartphone keyboards in different postures
##
## Statistics: Factorial ANOVA, repeated measures ANOVA, main effects, 
##             interaction effects, the Aligned Rank Transform for 
##             "nonparametric ANOVAs"
###

# Mixed Factorial ANOVA on WPM
# Note: "Mixed" here is not "mixed effects" as in LMMs.
# Those will be used farther down below. "Mixed" here is 
# mixing between-Ss and within-Ss factors. By contrast, 
# "mixed" in LMMs is mixing fixed and random effects,
# which we'll cover later. Mixed factorial designs are 
# also called "mixed designs" or "split-plot designs."
# It is easy to extrapolate to purely between-Ss or 
# within-Ss factorial designs from what we do here.

# read in data file of smartphone text entry by 24 people
setwd("~/599statistics")
mbltxt <- read.csv("coursera/mbltxt.csv")
library(pander)
pander(head(mbltxt),split.table=Inf)
mbltxt <- within(mbltxt, Subject <- as.factor(Subject))
mbltxt <- within(mbltxt, Posture_Order <- as.factor(Posture_Order))
summary(mbltxt)

# explore the WPM data
library(tidyverse)
mbltxt %>%
  group_by(Keyboard,Posture) %>%
  summarize(
    WPM.median=median(WPM),
    WPM.mean=mean(WPM),
    WPM.sd=sd(WPM)
  )

# histograms for two factors
library(ggthemes)
ggplot(mbltxt,aes(x=WPM,fill=Keyboard,color=Keyboard)) +
  geom_histogram(bins=20,alpha=0.5,position="dodge") +
  scale_color_brewer() +
  scale_fill_brewer() +
  facet_grid(Keyboard~Posture) +
  theme_tufte()

ggplot(mbltxt,aes(x=Keyboard,y=WPM,fill=Keyboard)) +
  geom_boxplot(show.legend=FALSE) +
  scale_fill_brewer(palette="Greens") +
  facet_wrap(~Posture) +
  theme_tufte()

with(mbltxt,
     interaction.plot(Posture, Keyboard, WPM,
                      ylim=c(0, max(mbltxt$WPM))))

# test for a Posture order effect to ensure counterbalancing worked
library(ez)
m = ezANOVA(dv=WPM,
            between=Keyboard,
            within=Posture_Order,
            wid=Subject,
            data=mbltxt)
m$Mauchly # no violation of sphericity
m$ANOVA # non-significant for posture order

# now perform the two-way mixed factorial repeated measures ANOVA
m = ezANOVA(dv=WPM,
            between=Keyboard,
            within=Posture,
            wid=Subject,
            data=mbltxt)
m$Mauchly # sig. so use GGe correction
m$ANOVA
# note: "ges" in m$ANOVA is the generalized eta-squared measure
# of effect size, preferred to eta-squared or partial eta-squared. 
# see Bakeman (2005) in the References at ?ezANOVA.
# Now compute the corrected DFs for each corrected effect
pos = match(m$'Sphericity Corrections'$Effect,
            m$ANOVA$Effect) # positions of within-Ss efx in m$ANOVA
m$Sphericity$GGe.DFn = m$Sphericity$GGe * m$ANOVA$DFn[pos] # Greenhouse-Geisser
m$Sphericity$GGe.DFd = m$Sphericity$GGe * m$ANOVA$DFd[pos]
m$Sphericity$HFe.DFn = m$Sphericity$HFe * m$ANOVA$DFn[pos] # Huynh-Feldt
m$Sphericity$HFe.DFd = m$Sphericity$HFe * m$ANOVA$DFd[pos]
m$Sphericity # show results
# main effects plus interaction effects shown

# for completeness, note the above's uncorrected results are the same as from this
m = aov(WPM ~ Keyboard * Posture + Error(Subject/Posture),
        data=mbltxt) # fit model
summary(m) # show table

# manual post hoc pairwise comparisons in light of sig. interaction
library(reshape2)
mbltxt.wide = dcast(mbltxt, Subject + Keyboard ~ Posture,
                    value.var="WPM")
pander(head(mbltxt.wide))
sit = t.test(mbltxt.wide$Sit ~ Keyboard, data=mbltxt.wide)
std = t.test(mbltxt.wide$Stand ~ Keyboard, data=mbltxt.wide)
wlk = t.test(mbltxt.wide$Walk ~ Keyboard, data=mbltxt.wide)
p.adjust(c(sit$p.value, std$p.value, wlk$p.value), method="holm")

# just curious: also compare iPhone 'sit' and 'walk'
t.test(mbltxt.wide[mbltxt.wide$Keyboard == "iPhone",]$Sit,
       mbltxt.wide[mbltxt.wide$Keyboard == "iPhone",]$Walk,
       paired=TRUE)
boxplot(mbltxt.wide[mbltxt.wide$Keyboard == "iPhone",]$Sit,
        mbltxt.wide[mbltxt.wide$Keyboard == "iPhone",]$Walk,
        xlab="iPhone.Sit vs. iPhone.Walk", ylab="WPM")


## Nonparametric approach to factorial ANOVA
## The Aligned Rank Transform (ART) procedure
## http://depts.washington.edu/aimgroup/proj/art/

# explore the Error_Rate data
mbltxt %>%
  group_by(Keyboard,Posture) %>%
  summarize(
    WPM.median=median(Error_Rate),
    WPM.mean=mean(Error_Rate),
    WPM.sd=sd(Error_Rate)
  )

# histograms, boxplots, and interaction plot
library(ggthemes)
ggplot(mbltxt,aes(x=Error_Rate,fill=Keyboard,color=Keyboard)) +
  geom_histogram(bins=20,alpha=0.5,position="dodge") +
  scale_color_brewer() +
  scale_fill_brewer() +
  facet_grid(Keyboard~Posture) +
  theme_tufte()

ggplot(mbltxt,aes(x=Keyboard,y=Error_Rate,fill=Keyboard)) +
  geom_boxplot(show.legend=FALSE) +
  scale_fill_brewer(palette="Greens") +
  facet_wrap(~Posture) +
  theme_tufte()

with(mbltxt,
     interaction.plot(Posture, Keyboard, Error_Rate,
                      ylim=c(0, max(mbltxt$Error_Rate))))

# Aligned Rank Transform on Error_Rate
install.packages("ARTool",dependencies=TRUE)
library(ARTool) # for art, artlm
m = art(Error_Rate ~ Keyboard * Posture + (1|Subject), data=mbltxt) # uses LMM
anova(m) # report anova
shapiro.test(residuals(m)) # normality?
qqnorm(residuals(m)); qqline(residuals(m)) # seems to conform

# conduct post hoc pairwise comparisons within each factor
with(mbltxt, interaction.plot(Posture, Keyboard, Error_Rate, ylim=c(0, max(mbltxt$Error_Rate)))) # for convenience
library(lsmeans) # for lsmeans
lsmeans(artlm(m, "Keyboard"), pairwise ~ Keyboard)
lsmeans(artlm(m, "Posture"), pairwise ~ Posture)
#lsmeans(artlm(m, "Keyboard : Posture"), pairwise ~ Keyboard : Posture) # don't do this in ART!

# the above contrast-testing method is invalid for cross-factor pairwise comparisons in ART.
# and you can't just grab aligned-ranks for manual t-tests. instead, use testInteractions 
# from the phia package to perform "interaction contrasts." see vignette("art-contrasts").
library(phia)
testInteractions(artlm(m, "Keyboard:Posture"),
                 pairwise=c("Keyboard", "Posture"), adjustment="holm")
# in the output, A-B : C-D is interpreted as a difference-of-differences, i.e., the difference 
# between (A-B | C) and (A-B | D). in words, is the difference between A and B significantly 
# different in condition C from condition D?


