using <"fx/internals/interfaces/pkg_layout">

extern const fx::PKG* const pkg {
    std::string name = "com.consider"
    bool useComAsRoot = true
}
$->do_extern_global(pkg);