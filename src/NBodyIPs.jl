
"""
# `NBodyIPs.jl`

Package for defining and fitting interatomic potentials based on the
N-Body expansion (ANOVA, HDMR, ...). The main exported type is
`NBodyIP` which is a `JuLIP` calculator.

See `?...` on how to
* `?NBodyIPs.Polys` : specify a polynomial basis set
* `?NBodyIPs.Fitting` : fit an `NBodyIP`
* `?NBodyIPs.Data` : load data sets
* `?NBodyIPs.IO` : write and read an `NBodyIP`
"""
module NBodyIPs

using Reexport

include("fastpolys.jl")

include("common.jl")


# some generically useful code that
# could be used across different n-body basis function implementations
# TODO: move some codes from Invariants submodule to here
#       or maybe other parts of the package
include("misc.jl")

include("invariants.jl")

# describe basis functions in terms of symmetry invariants
include("polynomials.jl")
@reexport using NBodyIPs.Polys

# fitting from data (e.g., least squares)
include("fitting.jl")

# loading data
include("data.jl")

# IP i/o
include("io.jl")


end # module
