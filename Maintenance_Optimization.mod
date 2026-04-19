

# SETS

set MACHINES;


# PARAMETERS
param p{MACHINES} >= 0, <= 1; # Failure probability from Machine learning model
param Cm >= 0; # Cost of performing maintenance
param Cf >= 0; # Cost incurred if machine fails
param K >= 0, integer; # Maximum number of machines that can be maintained

# DECISION VARIABLES

var x{MACHINES} binary; # 1 if machine i is selected for maintenance, 0 otherwise

# OBJECTIVE FUNCTION

minimize Total_Cost:
    sum{i in MACHINES} (
        Cm * x[i] + Cf * p[i] * (1 - x[i])
    );


# CONSTRAINTS

subject to Maintenance_Limit:
    sum{i in MACHINES} x[i] <= K; # Limit on number of machines that can be maintained

