# Chaos-detection file Methods_for_chaos_detection_tested_on_LogisticTest


The mathematica file contains folowing methods for chaos detection:  1. Box-counting dimension, 2. Correlation dimension, 3. Lyapunov exponent. 4. Recurrence quantification analysis - RR (reccurance rate), DET (determinism), ENTR (entropy), L (diagonal line length), and Machine learnig for which the treining set is made out of the results of previously mentioned algorithms.

For most of the methods there is several versions of them according to parameters and architecture.

There is demonstration of the methods on Logistic map and the grpahics shows the estimated value of chaos on the bifurcation diagram.


The computation of the final graphic (FinalPic.png) takes some time (cca 3 hours on Intel i7 7th. gen.) in order to get faster result lower the iterations to e.g. 100, EnD2 = 100;


# rqaRQA

The code in R is made to find threshold for desired value of Reccurence rate measure of Reccurenc quantification analysis RQA

# RP

The code in R produces the Reccurence plot
