
export

    # DataWrapper,
    #
    # AbstractDataset,
    #
    #
    # AbstractDatasetIterator,
    #
    #







#
# "Represents a set of data.  One can sample from it, or iterate through it."
# abstract AbstractData
#
# 
#
# # the interface
# Base.getindex(dps::AbstractData, i::Int) = error() # dps.data[i]
# Base.getindex(dps::AbstractData, a::AVecI) = error() # AbstractData(dps.data[a])
# # Base.setindex!(dps::AbstractData, dp::DataPoint, i::Int) = error() # (dps.data[i] = dp)
# # Base.push!(dps::AbstractData, dp::DataPoint) = error() # push!(dps.data, dp)
# # Base.append!(dps::AbstractData, dps2::AbstractData) = error() # append!(dps.data, dps2.data)
# Base.length(dps::AbstractData) = error() # length(dps.data)
# Base.size(dps::AbstractData) = error() # size(dps.data)
# Base.rand(dps::AbstractData) = error() # dps[sample(1:length(dps))]
# Base.rand(dps::AbstractData, n::Int) = error() # dps[sample(1:length(dps), n)]
# Base.shuffle(dps::AbstractData) = error() # AbstractData(shuffle(dps.data))
# Base.shuffle!(dps::AbstractData) = error() # shuffle!(dps.data)
#
# # ----------------------------------------------------
#
# type MatrixData{M <: AbstractMatrix}
#     m::M
# end
#
# # ----------------------------------------------------
#
# doc"A list of input/output data points"
# type DataPoints{T} <: AbstractVector{Vector{T}}
#   data::Vector{Vector{T}}
# end
#
# # function DataPoints(x::AMatF, y::AMatF, indices::AVecI = 1:nrows(x))
# #   DataPoints([DataPoint(vec(x[i,:]), vec(y[i,:])) for i in indices])
# # end
# #
# # function DataPoints(x::AMat, y::AVec, indices::AVecI = 1:nrows(x))
# #   DataPoints([DataPoint(float(vec(x[i,:])), float(vec(y[i,:]))) for i in indices])
# # end
# #
# # function unzip(dps::DataPoints)
# #   n = length(dps)
# #   mx = length(first(dps).x)
# #   my = length(first(dps).y)
# #   x = zeros(n, mx)
# #   y = zeros(n, my)
# #   for (i,dp) in enumerate(dps)
# #     x[i,:] = dp.x
# #     y[i,:] = dp.y
# #   end
# #   x, y
# # end
# #
#
# Base.getindex(dps::DataPoints, i::Int) = dps.data[i]
# Base.getindex(dps::DataPoints, a::AVecI) = DataPoints(dps.data[a])
# Base.setindex!{T}(dps::DataPoints, dp::AbstractVector{T}, i::Int) = (dps.data[i] = convert(Vector{T}, dp))
# Base.push!{T}(dps::DataPoints, dp::AbstractVector{T}) = push!(dps.data, convert(Vector{T}, dp))
# # Base.append!(dps::DataPoints, dps2::DataPoints) = append!(dps.data, dps2.data)
# Base.length(dps::DataPoints) = length(dps.data)
# Base.size(dps::DataPoints) = size(dps.data)
#
# # function splitDataPoints(dps::DataPoints, pct::Real)
# #   r1, r2 = splitRange(length(dps), pct)
# #   DataPoints[r1], DataPoints[r2]
# # end
#
# Base.rand(dps::DataPoints) = dps[rand(1:length(dps))]
# Base.rand(dps::DataPoints, n::Int) = dps[rand(1:length(dps), n)]
#
# Base.shuffle(dps::DataPoints) = DataPoints(shuffle(dps.data))
# Base.shuffle!(dps::DataPoints) = shuffle!(dps.data)
