#!/bin/bash

SOLVERS=(
  "PGD[prox=prox_fast_stack,acceleration=fista]"
  "PGD[prox=prox_fast_stack,acceleration=bb]"
  "PGD[prox=prox_fast_stack,acceleration=anderson]"
  "ADMM[adaptive_rho=False,rho=100]"
  "sortedl1"
  "skglm"
  "SlopePath"
  "Newt-ALM[inner_solver=standard]"
  "PGD_safe_screening[accelerated=True]"
)

DATASETS=(
  "Simulated[X_density=1.0,n_features=20000,n_samples=100,rho=0.6,n_signals=20]"
  "Simulated[X_density=1.0,n_features=100,n_samples=20000,rho=0.6,n_signals=40]"
  "Simulated[X_density=0.001,n_features=200000,n_samples=2000,rho=0.6,n_signals=20]"
  "breheny[dataset=brca1,standardize=True]"
  "breheny[dataset=Rhee2006,standardize=True]"
  "breheny[dataset=Koussounadis2014,standardize=True]"
  "libsvm[dataset=rcv1.binary,standardize=True]"
  "libsvm[dataset=real-sim,standardize=True]"
  "libsvm[dataset=YearPredictionMSD,standardize=True]"
)

OBJECTIVES=(
  "SLOPE[fit_intercept=False,q=0.2,reg=0.5]"
  "SLOPE[fit_intercept=False,q=0.2,reg=0.1]"
  "SLOPE[fit_intercept=False,q=0.2,reg=0.02]"
)
