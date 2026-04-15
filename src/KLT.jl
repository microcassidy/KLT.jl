module KLT
using StatsBase
using LinearAlgebra
# Write your package code here.
export klt

function klt(X::AbstractMatrix{Float64},dims::Int=2)
    K = Hermitian(cov(X,dims=dims))
    eigen(K,sortby = λ -> -real(λ)) #descending order
end

end
