
# TODO use a type for box and ball etc and dispatch
# TODO generalize for other balls and boxes

# integrate monomial (without coefficient) over unit box (side length 2, center 0)
function integrate_monomial_box(t, n)
    α = exponents(t)
    @assert length(α) == n # TODO if this fails, formula could be wrong
    if any(isodd, α)
        return 0.0
    else
        return 2.0 / prod(p + 1 for p in α)
    end
end

# integrate polynomial over unit box
integrate_box(p, n) = sum(coefficient(t) * integrate_monomial_box(t, n) for t in terms(p))

# integrate monomial (without coefficient) over unit Euclidean ball (radius 1, center 0)
function integrate_monomial_ball(t, n)
    α = exponents(t)
    @assert length(α) == n # TODO if this fails, formula could be wrong
    if any(isodd, α)
        return 0.0
    else
        β = 0.5 * (α .+ 1.0)
        return 2.0 * prod(sf_gamma.(β)) / (sf_gamma(sum(β)) * (sum(α) + n))
    end
end

# integrate polynomial over unit Euclidean ball
integrate_ball(p, n) = sum(coefficient(t) * integrate_monomial_ball(t, n) for t in terms(p))
