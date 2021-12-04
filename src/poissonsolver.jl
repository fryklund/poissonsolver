module poissonsolver

include("julia/AnalyticDomains.jl")

using InlineTest
import AnalyticDomains

@testset "All tests" begin
		testdir = "../tests/"
		tests = filter(x -> occursin(r"^test_.*\.jl",x),readdir("tests/"))

		for t in tests
			println("#######", t ,"#######")
			include(string(testdir,t))
		end
end



end # module


