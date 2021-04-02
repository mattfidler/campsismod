[PK]
KA=THETA_KA*exp(ETA_KA)
CL=THETA_CL*exp(ETA_CL)
V2=THETA_V2*exp(ETA_V2)
V3=THETA_V3*exp(ETA_V3)
Q=THETA_Q*exp(ETA_Q)
S2=V2

[DES]
d/dt(A_DEPOT)=-KA*A_DEPOT
d/dt(A_CENTRAL)=KA*A_DEPOT + Q*A_PERIPHERAL/V3 + (-CL/V2 - Q/V2)*A_CENTRAL
d/dt(A_PERIPHERAL)=-Q*A_PERIPHERAL/V3 + Q*A_CENTRAL/V2
d/dt(A_OUTPUT)=CL*A_CENTRAL/V2
F=A_CENTRAL/S2
lag(A_DEPOT)=ALAG1
f(A_DEPOT)=F1
dur(A_DEPOT)=D1
rate(A_CENTRAL)=R2

[ERROR]
CP=F
OBS_CP=CP*(EPS_PROP + 1)
Y=OBS_CP

