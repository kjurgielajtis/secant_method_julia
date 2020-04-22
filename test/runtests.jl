using secant, Test

@testset "secant_testset" begin
    x, f = 1, x -> x^3 + x - 1
    @test my_secant(f, 0, 1, 0.0001) == 0.6823257814098928

    x, f = 1, x -> x
    @test my_secant(f, -10, 10, 0.0001) == 0.0

    x, f = 1, x -> x^3 - 3x + 2
    @test my_secant(f, -10, 10, 0.0001) == 0.9997674646231173
end