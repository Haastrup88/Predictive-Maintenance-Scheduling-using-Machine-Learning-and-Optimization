# Predictive-Maintenance-Scheduling-using-Machine-Learning-and-Optimization
This project combines Machine Learning and Mathematical Optimization (AMPL) to solve a predictive maintenance scheduling problem. The goal is to determine which machines should undergo maintenance in order to minimize expected total cost, balancing:
Maintenance cost
Failure risk cost (based on probability of failure)
The solution integrates data-driven predictions with optimization modelling to support intelligent decision-making in industrial systems.

# Problem Statement
In industrial environments, maintaining all machines is expensive, while ignoring maintenance increases failure risk and cost. This project addresses the question:
Which machines should be maintained to minimize total expected cost while considering failure probabilities?

# Machine Learning Component
Failure probabilities are estimated using historical data; https://github.com/Haastrup88/Machine-Predictive-Maintenance-Classification-using-Machine-Learning
Data preprocessing and exploratory analysis are performed using Python (Pandas, NumPy, Scikit-learn)

# Optimization Component (AMPL)
A binary decision variable is defined:
x[i] = 1 → machine i is maintained
x[i] = 0 → machine i is not maintained
Objective: minimize total expected cost

# Output Example
The optimization returns a binary vector:
1 → Maintenance needed
0 → No maintenance required

