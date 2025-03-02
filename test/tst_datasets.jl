# ==============================================================

msg("Test load_iris")

X, y, vars = load_iris()

@test typeof(X) <: Matrix{Float64}
@test typeof(y) <: Vector{ASCIIString}
@test typeof(vars) <: Vector{ASCIIString}
@test size(X) == (4, 150)
@test length(y) == 150
@test length(vars) == size(X, 1)
@test_approx_eq mean(X, 2) [5.843333333333333333, 3.05733333333333333, 3.758000, 1.199333333333333]
@test_approx_eq mean(X[:,1:50], 2) [5.006, 3.428, 1.462, 0.246]
@test_approx_eq mean(X[:,51:100], 2) [5.936, 2.77, 4.26, 1.326]

# ==============================================================

msg("Test load_sin")

x, y, vars = load_sin()

@test typeof(x) <: Vector{Float64}
@test typeof(y) <: Vector{Float64}
@test typeof(vars) <: Vector{UTF8String}
@test length(x) == length(y) == 15
@test length(vars) == 2

# ==============================================================

msg("Test load_line")

x, y, vars = load_line()

@test typeof(x) <: Vector{Float64}
@test typeof(y) <: Vector{Float64}
@test typeof(vars) <: Vector{UTF8String}
@test length(x) == length(y) == 11
@test length(vars) == 2

# ==============================================================

msg("Test load_poly")

x, y, vars = load_poly()

@test typeof(x) <: Vector{Float64}
@test typeof(y) <: Vector{Float64}
@test typeof(vars) <: Vector{UTF8String}
@test length(x) == length(y) == 50
@test length(vars) == 2
