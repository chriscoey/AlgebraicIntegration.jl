
module SetProg

using LinearAlgebra
using SpecialFunctions
using DynamicPolynomials
include("closed_form.jl")

using PolyJuMP
using SumOfSquares
include("sum_of_squares.jl")

end # module
