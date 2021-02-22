$PROBLEM 2-compartment model
$INPUT
$DATA dataset.csv IGNORE=I
$SUBROUTINE ADVAN4 TRANS1
$PK
 KA = THETA(1) * EXP(ETA(1))
 K = THETA(2) * EXP(ETA(2))
 V = THETA(3) * EXP(ETA(3))
 K23 = THETA(4) * EXP(ETA(4))
 K32 = THETA(5) * EXP(ETA(5))
 S2 = V
$ERROR 
 CP = F
 OBS_CP = CP *(1+EPS(1))
 Y = OBS_CP
$THETA 1     ; KA	
$THETA 0.0625; K
$THETA 80    ; V 
$THETA 0.05  ; K23 
$THETA 0.2   ; K32
$OMEGA 0.025 ; KA
$OMEGA 0.025 ; K
$OMEGA 0.025 ; V
$OMEGA 0.025 ; K12
$OMEGA 0.025 ; K21
$SIGMA 0.025 ; PROP
