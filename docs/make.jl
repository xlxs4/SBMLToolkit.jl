using SBMLToolkit
using Documenter

cp("./docs/Manifest.toml", "./docs/src/assets/Manifest.toml", force = true)
cp("./docs/Project.toml", "./docs/src/assets/Project.toml", force = true)

DocMeta.setdocmeta!(SBMLToolkit, :DocTestSetup, :(using SBMLToolkit); recursive = true)

makedocs(;
         modules = [SBMLToolkit],
         authors = "paulflang, anandijain",
         sitename = "SBMLToolkit.jl",
         format = Documenter.HTML(;
                                  prettyurls = get(ENV, "CI", "false") == "true",
                                  canonical = "https://docs.sciml.ai/SBMLToolkit/stable/",
                                  assets = ["assets/favicon.ico"]),
         pages = [
             "Home" => "index.md",
             "API documentation" => "api.md",
         ])

deploydocs(;
           repo = "github.com/SciML/SBMLToolkit.jl")
