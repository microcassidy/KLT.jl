using KLT
using Test

@testset "KLT.jl" begin
    X = rand(9,100)
    k = klt(X)
    @test issorted(k.values,by=x->-x)
    @test size(k.vectors) == (9,9)
end
