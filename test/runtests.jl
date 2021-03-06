# This file is a part of JuliaFEM.
# License is MIT: see https://github.com/JuliaFEM/FEMBasis.jl/blob/master/LICENSE

using Base.Test
using TimerOutputs
const to = TimerOutput()

test_files = String[]
push!(test_files, "test_create_basis.jl")
push!(test_files, "test_lagrange_elements.jl")
push!(test_files, "test_nurbs_elements.jl")
push!(test_files, "test_math.jl")

@testset "FEMBasis.jl" begin
    for fn in test_files
        timeit(to, fn) do
            include(fn)
        end
    end
end
println()
println("Test statistics:")
println(to)
