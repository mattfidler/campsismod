$PROBLEM 2-compartment model
$INPUT
$DATA dataset.csv IGNORE=I
$SUBROUTINE ADVAN4 TRANS5
$PK
 AOB = THETA(1) * EXP(ETA(1))
 ALPHA = THETA(2) * EXP(ETA(2))
 BETA = THETA(3) * EXP(ETA(3))
 KA = THETA(4) * EXP(ETA(4))
$ERROR 
 CP = F
 OBS_CP = CP *(1+EPS(1))
 Y = OBS_CP
$THETA 5    ; AOB 
$THETA 0.2  ; ALPHA
$THETA 1    ; BETA
$THETA 0.5  ; KA
$OMEGA 0.025 ; AOB 
$OMEGA 0.025 ; ALPHA
$OMEGA 0.025 ; BETA
$OMEGA 0.025 ; KA 
$SIGMA 0.025 ; PROP
