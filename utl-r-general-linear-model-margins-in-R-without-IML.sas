General linear model margins in R without IML                                                                                
                                                                                                                             
github                                                                                                                       
https://tinyurl.com/y6cokosv                                                                                                 
https://github.com/rogerjdeangelis/utl-r-general-linear-model-margins-in-R-without-IML                                       
                                                                                                                             
SAS Forum                                                                                                                    
https://tinyurl.com/y6rkbl3p                                                                                                 
https://communities.sas.com/t5/SASware-Ballot-Ideas/margins-without-IML/idi-p/555067                                         
                                                                                                                             
                                                                                                                             
Documentation for this example                                                                                               
https://www.brodrigues.co/blog/2017-10-26-margins_r/                                                                         
                                                                                                                             
*_                   _                                                                                                       
(_)_ __  _ __  _   _| |_                                                                                                     
| | '_ \| '_ \| | | | __|                                                                                                    
| | | | | |_) | |_| | |_                                                                                                     
|_|_| |_| .__/ \__,_|\__|                                                                                                    
        |_|                                                                                                                  
;                                                                                                                            
                                                                                                                             
* SEE COMPLETE INPUT ON END;                                                                                                 
                                                                                                                             
options ls=171;                                                                                                              
data sd1.participation;                                                                                                      
                                                                                                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. ; output;                                              
                                                                                                                             
cards4;                                                                                                                      
no 10.787 3.0 811no yes10.524 4.5 801no no 10.969 4.6 900no no 11.105 3.11120no no 11.108 4.41202no yes11.028 4.21201no      
no 11.455 5.1 800no yes10.491 3.2 802no no 10.625 3.91200no no 10.486 4.31102no no 10.661 4.51102no no 10.468 6.01200no      
no 11.230 3.31120no no 11.906 5.61400no no 11.502 5.61100no no 11.293 4.71101no no 10.861 5.0 800no yes11.844 3.91200no      
no 11.049 4.7 801no yes10.958 5.31100no no 10.860 2.91900no yes11.108 4.61101no no 10.849 4.4 802no no 10.482 2.01210no      
yes10.484 5.4 800no yes10.601 4.7 800no no 10.541 2.8 920no no 11.224 4.7 801no yes10.841 4.91200no no 10.566 3.01101no      
no 11.770 5.11100no no 10.667 2.81102no no 10.625 5.41100no no 10.537 4.9 800no no 11.136 5.31000no no 10.315 5.5 800no      
no 10.373 2.41110no no 11.507 5.0 801no yes11.157 3.61302no no 10.453 2.3 910no yes11.106 4.11202no no 10.657 2.31001no      
no 10.519 3.81002no no 10.699 5.31200no no  9.669 4.51201no no 10.922 3.71202no no 11.249 3.61520no no 10.051 4.61200no      
....                                                                                                                         
                                                                                                                             
                                                                                                                             
Up to 40 obs SD1.PARTICIPATION total obs=870                                                                                 
                                                                                                                             
Obs    LFP    LNNLINC    AGE    EDUC    NYC    NOC    FOREIGN                                                                
                                                                                                                             
  1    no      10.787    3.0      8      1      1       no                                                                   
  2    yes     10.524    4.5      8      0      1       no                                                                   
  3    no      10.969    4.6      9      0      0       no                                                                   
  4    no      11.105    3.1     11      2      0       no                                                                   
  5    no      11.108    4.4     12      0      2       no                                                                   
  6    yes     11.028    4.2     12      0      1       no                                                                   
....                                                                                                                         
                                                                                                                             
*            _               _                                                                                               
  ___  _   _| |_ _ __  _   _| |_                                                                                             
 / _ \| | | | __| '_ \| | | | __|                                                                                            
| (_) | |_| | |_| |_) | |_| | |_                                                                                             
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                            
                |_|                                                                                                          
;                                                                                                                            
                                                                                                                             
FIVE SAS DATASETS                                                                                                            
                                                                                                                             
=========================                                                                                                    
                                                                                                                             
Up to 40 obs from ANVA total obs=10                                                                                          
                                                                                                                             
bs    V1                                                                                                                     
                                                                                                                             
 1    # A tibble: 7 x 5                                                                                                      
 2      term        estimate std.error statistic  p.value                                                                    
 3      <chr>          <dbl>     <dbl>     <dbl>    <dbl>                                                                    
                                                                                                                             
 4    1 (Intercept)  10.2       2.17       4.72  2.34e- 6                                                                    
 5    2 LNNLINC      -0.804     0.206     -3.91  9.23e- 5                                                                    
 6    3 AGE          -0.507     0.0905    -5.60  2.09e- 8                                                                    
 7    4 EDUC          0.0322    0.0291     1.11  2.68e- 1                                                                    
 8    5 NYC          -1.33      0.180     -7.39  1.52e-13                                                                    
 9    6 NOC          -0.0249    0.0738    -0.337 7.36e- 1                                                                    
10    7 FOREIGNyes    1.32      0.201      6.56  5.29e-11                                                                    
                                                                                                                             
============================                                                                                                 
                                                                                                                             
Up to 40 obs from PARSUM total obs=6                                                                                         
                                                                                                                             
Obs    FACTOR           AME         SE           Z          P         LOWER       UPPER                                      
                                                                                                                             
 1     AGE           -0.10577    0.017602    -6.00897    0.00000    -0.14027    -0.07127                                     
 2     EDUC           0.00671    0.006044     1.10990    0.26704    -0.00514     0.01855                                     
 3     FOREIGNyes     0.28571    0.040072     7.12989    0.00000     0.20717     0.36425                                     
 4     LNNLINC       -0.16758    0.041501    -4.03804    0.00005    -0.24892    -0.08624                                     
 5     NOC           -0.00519    0.015393    -0.33699    0.73613    -0.03536     0.02498                                     
 6     NYC           -0.27763    0.033270    -8.34472    0.00000    -0.34284    -0.21242                                     
                                                                                                                             
=============================                                                                                                
                                                                                                                             
Up to 40 obs from EFCT total obs=2                                                                                           
                                                                                                                             
Obs                             V1                                                                                           
                                                                                                                             
 1     LNNLINC     AGE     EDUC     NYC       NOC FOREIGNyes                                                                 
 2     -0.1676 -0.1058 0.006708 -0.2776 -0.005187     0.2857                                                                 
                                                                                                                             
=============================                                                                                                
                                                                                                                             
                                                                                                                             
Up to 40 obs from EFFECTS total obs=870                                                                                      
                                                                                                                             
Obs  LFP  LNNLIN  AGE  EDUC  NYC  NOC  FOREIG   FITTED   SE_FIT    DYDX_L                                                    
                                                                                                                             
  1   1   10.787  3.0    8    1    1     no    0.25903  0.031838  -0.15423                                                   
  2   2   10.524  4.5    8    0    1     no    0.43311  0.025960  -0.19730                                                   
  3   1   10.969  4.6    9    0    0     no    0.34968  0.031998  -0.18274                                                   
                                                                                                                             
Obs   DYDX_A    DYDX_E    DYDX_N    DYDX_N_1   DYDX_F   VAR_DY    VAR_DY_1                                                   
                                                                                                                             
  1  -0.09735  .0061736  -0.25552  -.0047740  0.30816  .0017223  .00030984                                                   
  2  -0.12453  .0078975  -0.32687  -.0061071  0.30809  .0017223  .00030984                                                   
  3  -0.11534  .0073146  -0.30274  -.0056563  0.31872  .0017223  .00030984                                                   
                                                                                                                             
Obs   VAR_DY_2     VAR_DY_3     VAR_DY_4    VAR_DY_5                                                                         
                                                                                                                             
  1  .000036525    .0011069    .00023693    .0016057                                                                         
  2  .000036525    .0011069    .00023693    .0016057                                                                         
  3  .000036525    .0011069    .00023693    .0016057                                                                         
                                                                                                                             
*                                                                                                                            
 _ __  _ __ ___   ___ ___  ___ ___                                                                                           
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                          
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                          
| .__/|_|  \___/ \___\___||___/___/                                                                                          
|_|                                                                                                                          
;                                                                                                                            
                                                                                                                             
                                                                                                                             
%utlfkil(d:/xpt/particidation.xpt);                                                                                          
                                                                                                                             
%utl_submit_r64('                                                                                                            
library(haven);                                                                                                              
library(ggplot2);                                                                                                            
library(tibble);                                                                                                             
library(broom);                                                                                                              
library(margins);                                                                                                            
library(Ecdat);                                                                                                              
library(data.table);                                                                                                         
library(SASxport);                                                                                                           
Participation<-read_sas("d:/sd1/participation.sas7bdat");                                                                    
Participation$LFP=as.factor(Participation$LFP);                                                                              
logit_participation = glm(LFP ~ ., data = Participation, family = "binomial");                                               
tidy(logit_participation);                                                                                                   
anva<-as.data.table(capture.output(print(tidy(logit_participation))));                                                       
effects = margins(logit_participation);                                                                                      
efct<-as.data.table(capture.output(print(effects)));                                                                         
parsum<-summary(effects);                                                                                                    
pdf(file = "d:/pdf/paticipation.pdf", width = 10, height = 7);                                                               
plot(effects);                                                                                                               
pdf();                                                                                                                       
write.xport(parsum,effects,anva,efct,file="d:/xpt/particidation.xpt");                                                       
');                                                                                                                          
                                                                                                                             
                                                                                                                             
libname xpt xport "d:/xpt/particidation.xpt";                                                                                
data anva   ; set xpt.anva;run;quit;                                                                                         
data effects; set xpt.effects;run;quit;                                                                                      
data efct   ; set xpt.efct;run;quit;                                                                                         
data parsum ; set xpt.parsum;run;quit;                                                                                       
libname xpt clear;                                                                                                           
                                                                                                                             
                                                                                                                             
*      _ _   _                   _                                                                                           
  __ _| | | (_)_ __  _ __  _   _| |_                                                                                         
 / _` | | | | | '_ \| '_ \| | | | __|                                                                                        
| (_| | | | | | | | | |_) | |_| | |_                                                                                         
 \__,_|_|_| |_|_| |_| .__/ \__,_|\__|                                                                                        
                    |_|                                                                                                      
;                                                                                                                            
                                                                                                                             
options ls=171;                                                                                                              
data sd1.participation;                                                                                                      
                                                                                                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. @; output;                                             
  input lfp $3. LNNLINC 6.3 AGE 4.1 educ 2. nyc 1. noc 1. foreign $3. ; output;                                              
                                                                                                                             
cards4;                                                                                                                      
no 10.787 3.0 811no yes10.524 4.5 801no no 10.969 4.6 900no no 11.105 3.11120no no 11.108 4.41202no yes11.028 4.21201no      
no 11.455 5.1 800no yes10.491 3.2 802no no 10.625 3.91200no no 10.486 4.31102no no 10.661 4.51102no no 10.468 6.01200no      
no 11.230 3.31120no no 11.906 5.61400no no 11.502 5.61100no no 11.293 4.71101no no 10.861 5.0 800no yes11.844 3.91200no      
no 11.049 4.7 801no yes10.958 5.31100no no 10.860 2.91900no yes11.108 4.61101no no 10.849 4.4 802no no 10.482 2.01210no      
yes10.484 5.4 800no yes10.601 4.7 800no no 10.541 2.8 920no no 11.224 4.7 801no yes10.841 4.91200no no 10.566 3.01101no      
no 11.770 5.11100no no 10.667 2.81102no no 10.625 5.41100no no 10.537 4.9 800no no 11.136 5.31000no no 10.315 5.5 800no      
no 10.373 2.41110no no 11.507 5.0 801no yes11.157 3.61302no no 10.453 2.3 910no yes11.106 4.11202no no 10.657 2.31001no      
no 10.519 3.81002no no 10.699 5.31200no no  9.669 4.51201no no 10.922 3.71202no no 11.249 3.61520no no 10.051 4.61200no      
no 10.621 3.11011no yes10.645 4.21002no no 10.420 2.21010no yes10.467 3.2 801no yes10.478 3.4 902no yes10.435 4.4 901no      
yes10.427 5.81200no yes10.472 4.4 902no no 11.139 5.5 900no no 10.319 2.31120no no 10.306 6.01500no no 10.864 5.01002no      
no 10.466 5.9 900no no 10.224 3.5 902no no 12.019 6.11300no yes11.411 4.01302no no 10.515 2.41110no yes10.493 3.5 402no      
yes10.719 3.11011no no 11.337 6.11200no yes10.815 5.51001no no 10.316 2.0 910no no 11.097 3.11510no yes10.473 3.5 902no      
no 10.588 5.5 800no no 11.585 3.51112no no 10.619 4.41704no yes10.518 5.6 900no no 10.826 3.41002no yes10.910 4.3 800no      
yes10.364 2.41200no yes 9.646 5.4 800no no 10.157 3.4 804no yes10.280 5.2 702no no 10.571 3.4 813no no 10.764 2.1 920no      
yes10.541 3.41000no no 10.655 2.2 910no no 10.852 3.6 803no no 10.286 3.21013no no 11.339 4.41304no yes11.236 4.91202no      
no 10.472 4.91402no no 10.787 4.51003no no 10.600 2.81011no no 10.281 3.6 803no no 10.841 5.0 802no no 11.053 4.8 805no      
no 10.653 4.5 702no no 10.338 6.2 700no no 10.708 3.31220no yes10.348 4.8 800no yes11.021 3.81003no yes10.606 4.6 701no      
yes10.650 3.81001no yes10.387 5.6 700no yes10.741 3.91303no no 10.541 2.81020no no 11.081 4.61003no yes10.771 2.71000no      
no 12.286 5.81200no no 10.778 2.71220no no 10.670 5.21000no yes10.785 3.1 903no yes11.270 3.51102no yes11.347 3.41201no      
yes10.826 5.7 400no no 11.014 4.41002no no  9.575 5.6 701no yes10.529 3.4 403no yes10.741 2.71610no no 10.755 4.4 903no      
yes10.831 3.31220no no 10.491 5.2 902no no 10.363 2.6 810no no 10.813 2.8 902no no 10.763 4.6 821no yes10.700 4.2 902no      
no 10.447 2.4 610no yes10.450 2.1 800no no 10.663 5.8 400no yes10.926 4.7 804no no 10.865 3.7 802no yes11.417 3.11110no      
yes10.820 5.7 800no yes10.963 3.8 902no no  9.264 2.21310no yes10.741 4.0 802no no 11.329 4.01101no yes11.176 3.5 902no      
no 11.132 3.7 902no yes10.667 5.41200no no 11.086 5.21000no yes10.569 3.11102no no 11.036 4.61002no no 10.741 4.4 611no      
no 10.621 2.51010no no 10.871 2.7 910no yes10.665 4.5 901no no 11.865 3.11502no yes10.639 3.11302no yes10.665 3.41402no      
yes10.937 3.71102no yes11.116 5.1 800no no 10.393 5.2 900no no 10.916 3.4 802no yes10.531 4.51102no yes11.050 2.61410no      
no 10.962 4.0 901no no 10.783 4.41002no no 10.893 2.81320no no 10.637 4.1 813no no 10.804 5.81000no no 10.881 3.51001no      
no 11.996 5.61200no yes11.216 4.01304no no 10.510 3.4 911no no 10.460 2.91411no yes10.764 3.71302no yes10.756 2.61200no      
no 10.689 4.3 803no yes11.066 3.8 903no yes10.693 4.7 801no no 10.605 5.3 803no no 10.401 5.4 800no no 10.618 3.91120no      
yes10.834 3.41000no no 10.026 5.4 801no no 10.746 3.1 920no no 10.933 3.5 804no yes10.840 3.71211no no 10.715 4.0 802no      
no 10.612 2.4 820no no 11.077 3.31210no yes11.128 4.9 903no no 10.523 3.01202no no 10.660 6.1 900no no 11.733 3.21321no      
no 10.920 3.9 805no no 10.514 4.0 802no no 11.069 2.71002no no 10.619 2.0 910no no 10.562 4.31102no yes10.906 3.21311no      
no 10.951 3.41102no yes10.506 4.6 802no no 11.048 4.4 501no no 10.574 3.6 803no yes11.193 4.51202no no 10.984 3.31210no      
no 11.335 5.5 400no no 10.852 3.61202no yes10.405 3.7 800no no 10.988 3.91102no no 10.864 5.3 800no no 10.523 2.2 910no      
no 10.821 3.31202no yes10.162 4.01000no no 11.199 5.71200no no 11.226 2.91012no yes10.894 4.7 800no yes10.641 4.11000no      
no 10.850 4.1 802no yes10.661 3.11200no no 11.349 4.31201no no 11.242 5.1 801no yes11.160 3.61002no yes10.912 3.91001no      
yes10.508 3.0 802no no 10.976 3.02120no no 10.369 2.4 200no no 10.567 4.9 801no no 10.445 4.9 900no no 10.519 3.0 802no      
yes10.701 4.0 904no no 10.597 4.4 600no no 11.197 2.91311no no 10.940 2.81310no yes10.558 4.31001no no 10.755 2.91022no      
yes10.465 4.4 711no no 10.954 4.21203no yes10.801 4.5 806no no  9.774 5.7 801no no 11.043 5.1 800no yes10.949 4.41101no      
no 10.015 5.5 702no no 11.500 5.51400no yes10.607 4.81001no no 10.647 4.5 903no no 10.514 5.41100no no 11.227 5.61200no      
yes10.699 3.31320no no 10.873 4.01003no no 10.518 5.4 702no no 10.399 5.6 400no no 11.121 4.0 902no yes10.160 4.2 803no      
no 11.190 5.01401no yes10.580 4.9 900no no 10.807 5.8 800no yes 9.761 5.8 800no no 10.675 5.7 400no no 10.689 5.4 400no      
no 10.186 5.9 800no yes11.672 5.11801no no 10.795 2.61210no yes10.972 4.31002no no 10.556 3.8 902no yes10.704 3.9 802no      
yes10.429 5.3 900no no 11.051 3.81001no yes10.852 4.8 700no yes10.483 4.1 900no no 10.788 5.51200no no 10.536 3.01310no      
yes10.131 5.8 800no no 10.413 2.8 820no yes10.550 3.61500no no 10.679 5.0 401no no 10.846 2.71011no yes10.327 5.5 800no      
no 10.757 2.81210no yes10.687 4.5 802no yes10.695 3.9 400no yes10.448 3.0 901no yes11.010 5.3 800no no 10.704 2.31020no      
no 10.914 5.81300no no 10.236 4.4 901no no 11.762 5.2 901no no 10.485 2.41210no yes11.148 4.8 900no no 11.154 3.81102no      
no 10.646 5.61100no yes10.778 5.0 800no yes10.986 4.31403no no 10.629 2.81002no no 10.916 5.61200no yes10.703 3.61202no      
no 10.953 4.71101no yes10.382 3.71100no no 10.698 4.61100no no 11.052 5.7 900no no 10.657 3.31002no no 10.555 4.7 802no      
no 11.692 4.51402no yes11.473 4.21303no no 11.656 3.31122no yes10.697 4.51202no yes10.839 3.9 901no yes10.795 3.31003no      
yes10.380 2.9 411no yes10.886 4.41302no no 11.363 3.31503no no 11.132 2.61110no yes10.900 3.21200no no 11.160 2.91212no      
yes10.058 6.0 900no yes10.736 3.91102no yes 9.680 4.7 900no no 11.150 3.4 803no yes 7.187 5.71200no no 10.763 3.31202no      
no 10.642 5.6 800no yes10.821 5.5 900no no 11.697 3.71303no yes10.867 5.4 800no yes11.598 3.31412no no 11.347 5.2 401no      
yes10.440 2.51300no yes10.787 4.7 801no no 10.694 4.2 902no no 10.640 3.11202no no 10.391 3.01110no no 11.094 5.8 400no      
yes 9.952 5.71500no no 10.881 6.0 800no yes10.946 4.41101no no 10.723 2.6 812no yes10.778 5.91200no no 10.411 2.11210no      
yes10.332 5.0 900no no 11.039 4.5 900no no 10.428 4.4 801no no  9.904 2.4 810no no 10.415 3.11001no no 11.553 4.7 701no      
no 10.727 4.9 701no yes10.720 4.5 304no yes10.635 3.6 903no yes10.608 4.3 801no yes10.898 5.7 800no no 10.564 2.81001no      
no 11.009 4.31210no no 10.966 5.71101no no 11.095 5.1 800no no 10.950 2.71210no no 11.142 3.21430no yes10.956 3.81201no      
no 10.000 6.11100no yes10.883 3.31120no yes10.726 4.41100no no 10.379 4.2 800no yes10.518 5.9 800no no 10.961 3.4 801no      
no 11.017 2.61311no no 10.631 3.11111no no 10.880 4.1 901no no 10.556 5.61100no no 10.873 3.61202no no 10.975 4.71200no      
no 11.214 3.81203no no 10.566 3.9 912no no 10.757 5.2 801no yes10.218 4.3 400no yes10.772 4.91100no no 10.646 3.11612no      
yes10.610 3.81102no no 10.497 4.9 400no yes11.286 3.61102no yes10.714 2.81011no no 11.080 3.11220no yes10.766 3.91202no      
no 11.787 3.81402no no 11.405 5.41300no yes10.594 4.51201no yes10.566 2.7 800no yes11.154 4.3 900no no 10.645 6.1 800no      
yes10.963 3.01511no yes10.952 2.61012no yes11.007 5.11200no no 10.504 5.9 900no no 10.523 5.81400no yes10.444 3.11100no      
no 10.364 5.9 400no no 10.868 4.1 901no no 10.708 2.51010no yes10.960 4.51104no no 10.546 2.31200no yes10.636 4.21002no      
no 10.675 3.3 802no no 10.601 4.6 801no no 10.261 3.0 420no yes10.619 3.61004no yes10.084 2.51200no yes11.233 4.11202no      
yes10.615 2.11000no yes10.892 3.81200no no 10.987 3.4 903no yes10.901 5.5 800no no 10.997 4.31102no no 10.574 5.9 800no      
yes10.531 3.81202no yes10.751 4.3 900no yes10.304 2.2 800no yes11.072 3.61102no yes10.933 2.8 901no no 10.766 3.0 911no      
yes10.808 5.11100no yes11.130 4.4 900no yes10.140 2.01100no yes10.446 4.71200no yes10.497 4.1 700no no 10.503 4.2 802no      
no 10.813 3.11000no yes10.820 6.1 400no no 10.965 3.7 802no no 10.941 3.81202no no 10.699 2.81211no no 10.558 2.01210no      
no 10.870 5.1 800no yes10.486 2.1 900no no 10.652 2.21210no yes10.741 2.6 900no no 10.634 5.7 900no yes10.577 3.4 902no      
no 11.299 2.81200no yes10.480 3.21020no no 10.453 2.11410no yes10.472 3.8 901no no  9.744 6.1 400no no 10.640 4.3 900no      
no 10.621 2.81231no yes10.843 2.71110no no 11.257 3.41710no yes10.246 4.0 906no no 10.954 4.9 900no no 10.986 3.11120no      
no 10.480 2.61020no yes10.616 4.0 603no yes10.464 3.7 803no no 10.482 2.11110no yes10.692 3.3 903no yes10.111 3.41602no      
yes10.775 2.31200no yes10.511 3.9 803no no 10.908 5.21001no no 11.270 3.5 302no no 11.306 5.61200no no 11.344 5.11000no      
yes10.563 4.3 901no yes10.759 5.2 800no no 10.779 4.91000no yes10.779 3.61002no yes10.517 2.31500no no 11.411 4.2 502no      
no 10.538 5.8 800no no 10.406 5.7 900no no 10.924 3.41202no no 10.549 5.61300no no 10.836 5.81000no no 10.433 6.01200no      
yes11.244 4.91100no yes10.714 5.01200no no 11.070 4.11202no no 11.763 4.61201no yes10.561 2.81220no yes10.707 3.31300no      
no 10.742 3.31201no yes10.466 2.71311no no 10.851 5.11000no yes10.508 5.1 501no no 10.205 6.0 900no no 10.723 2.91220no      
yes10.700 2.81402no yes10.936 3.51202no no 12.248 3.51612no no 10.841 4.8 900no no 10.809 3.21002no yes11.276 3.51202no      
yes10.659 2.7 510no yes10.521 2.61320no yes10.540 3.61601no no 11.122 4.01104no no 10.109 2.6 720no yes10.494 2.01200no      
no 10.711 3.91013no no 10.446 2.8 910no yes10.853 4.21402no no 10.806 2.31210no no 10.628 2.4 920no no 10.500 2.51620no      
yes10.724 3.41201no no 11.000 3.7 902no yes10.261 4.91500no yes 9.866 3.6 902no yes10.580 3.7 802no yes10.550 2.81311no      
yes10.628 4.3 502no yes10.465 5.2 500no yes10.466 3.51302no no 10.631 5.51000no no 10.435 5.7 500no no 10.625 4.4 902no      
no 10.681 2.51020no yes10.892 3.81403no yes10.231 3.7 901no no 10.949 4.9 801no no 10.878 4.61000no yes10.521 2.71301no      
yes10.144 5.1 900no yes10.591 4.81102no no 10.492 2.61112no yes 9.555 4.41300no no 10.739 5.01100no no 10.625 4.8 600no      
yes10.730 4.11002no yes11.346 3.81200no yes10.882 3.51301no yes10.739 4.21501no yes10.632 4.51102no yes10.513 4.4 901no      
no 10.931 5.61200no yes11.220 2.91310no yes10.705 4.61201no no 10.674 3.31111no no 11.046 2.81411no no 10.832 5.01400no      
yes10.762 2.71400no yes10.724 3.81100no no 10.624 5.0 500no yes10.494 2.11110no no 10.453 2.4 711no no 10.094 5.5 900no      
no 11.456 3.81102no no 10.850 3.3 702no no 10.813 6.01000no no 10.763 5.3 600no no 11.026 2.91110no yes10.077 4.01001no      
yes10.660 3.91202no yes10.801 3.41411no yes10.599 4.8 401no yes10.449 3.51300no no 11.346 3.0 910no no 11.660 2.51110no      
no  9.937 5.9 900no no 11.064 5.11902no no 10.538 3.9 902no no 10.691 5.91000no no 10.656 4.0 802no no  9.398 3.6 810no      
no 10.650 4.8 802no no 10.527 2.11110no no 10.237 5.8 500no no 10.225 6.0 800no no 11.047 4.81101no yes11.304 3.51301no      
no 10.554 4.91100no yes10.260 4.4 701no no 11.384 4.71300no no 10.738 5.3 800no no 10.888 4.61202no no 11.817 5.41302no      
no  9.995 5.91100no no 10.755 5.71000no no 10.442 4.2 500no no 10.010 6.21100no no 10.583 4.6 402no no 10.811 3.51202no      
no 10.959 3.21220no no  9.946 3.51202no no 10.499 4.01102no yes10.596 2.51400no no 10.526 4.01201no no 10.783 2.91000no      
no 11.116 3.71102no no 11.151 5.3 501no no  9.825 6.0 900no yes 9.896 4.2 903no no 10.655 3.21203no no  9.764 5.9 500no      
yes 9.879 4.5 801no no 11.135 5.1 801no yes10.402 3.5 800no no 10.749 2.81100no no 10.333 5.7 500no yes10.824 2.6 710no      
yes10.321 4.2 500no no 10.656 3.11211no no 10.657 5.5 800no no 10.846 4.21502no no 11.078 4.01103no no 10.453 4.71100no      
no 10.654 4.7 901no yes10.646 2.61310no no 11.281 4.4 910no no 10.583 2.3 901no no 10.871 5.0 800no no 10.263 5.81200no      
yes11.067 4.0 902no yes10.517 3.31202no yes11.173 3.01500no no 10.597 3.11210no no 11.798 3.11220no yes10.552 3.3 911no      
no 10.794 3.51202no yes10.140 2.61100no no 10.856 2.41410no no 10.962 6.1 500no no 10.758 2.91001no yes 9.554 5.9 800no      
no 10.506 2.71210no no  9.856 6.21100no yes10.791 4.41200no yes10.653 3.61000no no 10.540 4.01102no no 11.340 4.81001no      
yes11.224 3.51602no no 11.109 3.21211no no 10.866 3.21210no no 11.187 4.9 800no yes10.192 4.31101no no 12.376 3.91204no      
no 10.472 2.71111no no 12.282 4.21203no no 10.537 5.61201no no 10.899 3.11303no yes10.659 3.7 402no no 10.442 3.8 801no      
no 10.408 5.1 800no no 10.694 5.0 900no no  9.886 6.0 500no yes10.479 3.5 902no yes11.072 3.51102no yes10.455 4.5 802no      
no 10.657 2.41120no no 10.453 3.5 811no yes10.408 3.21710no yes10.242 3.31202no no 10.594 4.6 801no no 11.764 5.0 502no      
no 10.828 3.21200no no 10.256 5.8 800no no 10.704 4.1 802no no 10.915 3.4 602no no 10.523 2.1 410no no 10.271 5.61300no      
no 10.226 3.4 803no no 10.266 3.71001no no 11.017 3.11201no no 10.608 2.21110no no 10.712 3.21111no yes10.832 4.1 803no      
no 10.760 3.71204no no 10.592 2.91000no yes10.616 4.6 901yesyes10.391 2.6 720yesyes10.795 4.4 900yesyes10.381 4.8 400yes     
yes10.565 3.4 403yesno 10.698 3.41212yesno 10.610 4.8 500yesyes10.684 2.8 612yesyes10.627 3.2 502yesyes10.410 5.0 403yes     
yes10.544 3.6 521yesyes11.230 5.01200yesno 10.504 2.51120yesyes10.696 3.01130yesyes10.421 2.5 502yesyes10.593 3.2 811yes     
yes10.531 2.91011yesno 10.586 4.4 702yesyes10.448 4.0 503yesno 10.633 5.21200yesyes10.619 2.7 821yesyes10.815 3.2 801yes     
no 10.634 3.01220yesyes10.495 4.0 501yesyes10.691 4.7 400yesyes10.389 4.8 401yesyes10.506 3.6 601yesyes10.806 3.81001yes     
yes10.606 3.8 301yesno 10.440 4.81100yesyes10.423 4.1 700yesyes10.437 3.9 402yesno 10.631 3.1 920yesno 10.945 3.2 702yes     
no 10.903 4.1 411yesyes10.706 3.6 502yesyes10.568 3.8 303yesyes10.255 5.7 300yesyes10.578 3.4 802yesyes10.563 4.2 503yes     
yes10.898 3.21100yesyes10.182 4.8 502yesyes10.392 2.2 920yesno 10.551 3.1 802yesyes10.574 2.6 400yesyes10.688 4.31101yes     
yes10.487 4.4 402yesyes10.108 4.5 401yesyes10.638 2.9 511yesyes10.368 4.6 400yesyes10.679 3.1 511yesyes10.599 2.11100yes     
yes11.165 4.11201yesno 10.614 2.8 812yesno 10.705 3.9 210yesyes10.433 4.5 301yesno 10.322 4.9 401yesyes10.574 4.21002yes     
no  9.737 5.9 400yesyes10.600 5.4 500yesyes10.277 3.3 703yesno 10.473 2.4 911yesyes10.349 3.5 500yesyes10.559 4.9 800yes     
no 10.588 4.8 512yesyes10.363 4.1 500yesyes10.422 3.7 502yesyes10.473 3.8 904yesyes10.562 4.2 701yesno 11.587 4.61101yes     
yes10.461 3.3 502yesno 11.600 5.51500yesyes10.464 5.0 502yesyes10.380 2.2 610yesno 10.501 4.0 502yesno 10.507 4.7 501yes     
yes10.628 5.01000yesyes10.610 2.8 802yesno 10.613 3.9 503yesyes10.697 3.61202yesyes10.710 3.9 402yesyes10.437 4.8 400yes     
no 10.568 2.9 520yesyes10.558 4.6 500yesyes10.379 5.8 500yesno 10.476 2.5 510yesno 10.603 2.9 512yesyes10.491 2.11100yes     
yes10.600 3.1 501yesyes10.536 3.5 402yesyes10.831 3.0 502yesyes10.462 3.1 810yesyes10.491 3.41211yesyes10.445 2.81130yes     
yes10.531 4.1 202yesno 11.255 5.9 800yesyes10.644 2.7 912yesno 11.134 5.41600yesno 11.164 4.01111yesyes10.748 3.5 701yes     
yes10.424 3.9 503yesno 10.358 4.3 502yesyes10.547 3.6 802yesyes10.168 4.6 400yesyes10.232 4.4 400yesyes10.415 4.4 600yes     
yes 9.440 2.9 120yesyes10.526 3.21012yesyes10.169 5.5 500yesyes10.404 3.4 502yesyes10.376 3.7 811yesyes10.518 2.6 501yes     
no 11.198 3.81201yesno 10.388 4.5 801yesno 10.592 3.4 802yesyes10.554 3.6 602yesyes10.592 2.61002yesyes10.406 4.0 511yes     
no 10.680 4.0 901yesno  9.282 5.7 500yesno 10.530 2.5 820yesyes10.524 3.0 801yesyes10.646 2.5 711yesyes10.610 4.3 202yes     
no 11.293 4.61001yesno 10.514 2.6 711yesyes10.364 2.3 410yesyes10.678 3.2 802yesyes10.677 3.41302yesyes10.452 3.3 311yes     
yes10.494 2.5 601yesyes10.934 3.91102yesyes10.220 3.2 910yesyes10.279 4.7 500yesyes10.377 4.6 901yesyes10.548 4.1 802yes     
yes10.458 2.5 521yesyes10.508 3.91001yesyes10.474 5.1 300yesyes10.326 5.11000yesyes10.399 4.91600yesyes10.340 3.5 812yes     
no 10.523 2.7 711yesno 10.114 4.7 401yesno 10.522 3.0 830yesno 10.414 3.2 521yesyes10.492 3.4 803yesyes10.203 4.1 400yes     
yes10.465 2.6 612yesno 10.603 3.3 820yesyes 9.546 4.9 603yesno 10.421 4.1 603yesyes11.003 3.7 902yesyes10.446 4.0 302yes     
yes10.316 5.0 601yesyes10.401 2.9 802yesno  9.701 2.6 411yesyes10.481 3.1 801yesyes10.110 3.2 501yesyes10.656 4.4 501yes     
no 10.527 2.3 810yesno 10.250 2.4 810yesno 10.743 2.7 811yesyes10.440 2.8 801yesno 10.422 5.2 401yesno 10.571 4.71202yes     
no 10.695 4.2 802yesyes10.365 4.2 501yesyes10.328 4.7 400yesyes10.178 3.6 501yesyes10.227 4.1 800yesno 10.418 3.8 311yes     
no 11.466 3.61302yesyes10.363 2.5 810yesno 10.413 4.7 501yesyes10.417 4.4 701yesno 10.484 4.4 201yesyes10.452 4.7 800yes     
yes10.187 2.0 510yesno 10.541 4.1 801yesno 10.747 5.0 701yesyes10.443 3.6 411yesyes10.308 2.0 800yesno 10.510 2.8 620yes     
yes10.303 4.4 700yesyes10.508 3.5 902yesyes10.663 4.61501yesyes10.657 2.6 910yesyes10.554 3.1 802yesno 10.501 4.9 501yes     
no 10.317 5.5 500yesyes10.729 4.0 401yesno 10.010 5.7 601yesyes10.475 5.1 502yesyes11.357 5.6 300yesyes10.484 3.3 213yes     
yes10.753 4.1 502yesno 10.559 3.21210yesno 10.216 2.51110yesyes11.574 4.71300yesyes10.806 3.11620yesno 10.946 3.31402yes     
yes10.380 2.8 502yesyes10.776 3.81100yesyes10.529 3.4 911yesyes10.469 3.3 602yesno 11.111 3.51011yesno 10.471 5.1 901yes     
no 10.148 4.1 510yesyes10.693 3.5 902yesyes10.028 4.21400yesno 10.597 2.4 421yesyes10.378 4.8 800yesno 10.134 2.4 620yes     
;;;;                                                                                                                         
run;quit;                                                                                                                    
                                                                                                                             
                                                                                                                             
                                                                                                                             
