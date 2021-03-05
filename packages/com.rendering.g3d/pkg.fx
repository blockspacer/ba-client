using <"fx/internals/interfaces/pkg_layout">

extern const fx::PKG* const pkg {
    std::string name = "com.rendering.g3d"
    bool useComAsRoot = true
}
$->do_extern_global(pkg);