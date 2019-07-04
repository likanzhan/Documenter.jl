"""
This is the [`DocumenterShowcase`](@ref), which contains

* [`DocumenterShowcase.foo`](@ref)
* [`DocumenterShowcase.hello`](@ref)
"""
module DocumenterShowcase

"""
Docstring for `foo(::Integer)`.
"""
foo(::Integer) = nothing

"""
Docstring for `foo(::AbstractString)`.
"""
foo(::AbstractString) = nothing

"""
Docstring for `bar(::Integer)`.
"""
bar(::Integer) = nothing

"""
Docstring for `bar(::AbstractString)`.
"""
bar(::AbstractString) = nothing

function hello(who)
    println("Hello, $(who)!")
end

struct SVGCircle
    stroke :: String
    fill :: String
end
function Base.show(io, ::MIME"image/svg+xml", c::SVGCircle)
    write(io, """
    <svg width="50" height="50">
      <g style="stroke-width: 3">
        <circle cx="20" cy="20" r="20" style="stroke: #$(c.stroke); fill: #$(c.fill)" />
      </g>
    </svg>
    """)
end

end # module
