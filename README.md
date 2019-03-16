# AlgebraicIntegration.jl

A Julia package for calculating (approximate) integrals of polynomials over basic semialgebraic sets. For simple sets like the box or ball, we use closed-form formulae. For more general basic semialgebraic sets, we use sum-of-squares optimization, which requires the user to specify an appropriate conic solver.
