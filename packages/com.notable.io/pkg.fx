using <"fx/internals/interfaces/pkg_layout">

extern const fx::PKG* const pkg {
    std::string name = "com.notable.io"
    bool useComAsRoot = true
}
$->do_extern_global(pkg);