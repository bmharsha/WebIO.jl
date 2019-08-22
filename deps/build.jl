using JSON

download_info = Dict(
    "CORE_BUNDLE_URL" => ("https://github.com/WebIO/WebIO/releases/download/v0.8.9/webio.bundle.js", "49931a0d14ec3f33e91739836539bc9c6f218024f2dd786349b0b38b3cad436510dc0431dcde4c445fa80ff0ff85b06f74effda3df9932184131d32302cce51d"),
    "GENERIC_HTTP_BUNDLE_URL" => ("https://github.com/WebIO/WebIO/releases/download/v0.8.9/generic-http.bundle.js", "f9fd4d2fbd4bcb2bc7b5ef540f6115d3d2dc9859715c60030a68fe37b065cae41421c4ca5204c8e76eb3bad643ff501f3940d9ffc357ef044bed7a3e0a880a51"),
    "MUX_BUNDLE_URL" => ("https://github.com/WebIO/WebIO/releases/download/v0.8.9/mux.bundle.js", "b87aba569a80d6a94050dd359c3a8a5f1aa5a2519c0e0565cc91dbb3cd7721c687fef8bb907ace2caa4ee9b27d9ac45bbdfacb6e104af07102f687dfa58904cb"),
	"JUPYTER_NBEXTENSION_URL" => ("https://github.com/WebIO/WebIO/releases/download/v0.8.9/jupyter-notebook.bundle.js", "eb72793b924f5e4e662cf9275e8a06566a43ec964152548bec80166ba49b8f98865ab322627e44abf33497a7af2875a213a3b04853e03acaeeb0d12fd399bca6"),
	"BLINK_BUNDLE_URL" => ("https://github.com/WebIO/WebIO/releases/download/v0.8.9/blink.bundle.js", "e5cb237c1f09ee087decba70b062c64b4b280ff6fd31ceaf566c1667faf7d2049d36646171051b8e153de38d7ffab3699e8af3ba00b87c595f1777bf0ef33dc7"),
)


include("./bundlepaths.jl")
include("./jupyter.jl")

download_js_bundles()

# See https://github.com/JuliaGizmos/WebIO.jl/issues/314 for the rational behind
# why we're not installing Jupyter packages by default anymore.
@warn(
    "WebIO no longer Jupyter extensions automatically; please run "
    * "`WebIO.install_jupyter_notebook()` or `WebIO.install_jupyter_lab()` if "
    * "needed."
)
