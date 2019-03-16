
# TODO over polytope https://hal.archives-ouvertes.fr/hal-00320882/document and https://math.nist.gov/mcsd/Seminars/2012/2012-09-19-DeLoera-presentation.pdf

module AlgebraicIntegration

using LinearAlgebra
using DynamicPolynomials
import GSL: sf_gamma
include("closed_form.jl")

using PolyJuMP
using SumOfSquares
include("sum_of_squares.jl")

end # module
