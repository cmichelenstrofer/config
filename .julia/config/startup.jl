# Load path
push!(LOAD_PATH, joinpath(homedir(), ".julia", "config", "environments", "sci"))
push!(LOAD_PATH, joinpath(homedir(), ".julia", "config", "environments", "dev"))

# activate local env if it exists
if isfile("Project.toml") && isfile("Manifest.toml")
    using Pkg
    Pkg.activate(".")
end

# default editor
ENV["JULIA_EDITOR"] = "vim"

# Revise
try
    using Revise
catch e
    @warn "Error initializing Revise" e
end

# OhMyREPL
atreplinit() do repl
    try
        @eval using OhMyREPL
    catch e
        @warn "Error initializing OhMyREPL" e
    end
end

