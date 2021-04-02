[PK]
AOB=THETA_AOB*exp(ETA_AOB)
ALPHA=THETA_ALPHA*exp(ETA_ALPHA)
BETA=THETA_BETA*exp(ETA_BETA)
KA=THETA_KA*exp(ETA_KA)

[DES]
d/dt(A_DEPOT)=-KA*A_DEPOT
d/dt(A_CENTRAL)=KA*A_DEPOT + (ALPHA + AOB*BETA)*A_PERIPHERAL/(AOB + 1) + (-ALPHA*BETA/K32 - ALPHA - BETA + K + K32)*A_CENTRAL
d/dt(A_PERIPHERAL)=-(ALPHA + AOB*BETA)*A_PERIPHERAL/(AOB + 1) + (ALPHA + BETA - K - K32)*A_CENTRAL
d/dt(A_OUTPUT)=ALPHA*BETA*A_CENTRAL/K32
F=A_CENTRAL/S2

[ERROR]
CP=F
OBS_CP=CP*(EPS_PROP + 1)
Y=OBS_CP

