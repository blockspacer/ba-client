// File Name: com.mfd.packages.cfg.fx
// Written by: Nikita Petko
// Description: MFD Client packages config.
// Version 8

/*

The Mfd Client uses the following packages:
com.mfd
com.sys
com.sys.io
com.sys.engine
com.notable
com.notable.io
com.notable.engine
com.sys.net
com.sys.net.http
com.consider
com.rendering.g3d

*/

// The new syntax make this more convenient
// Instead of a __pkg_mgr_conf__ block, you can just import packages.fx
using <"fx/internals/builtin/com/com.mfd.packages">;
using namespace com;

/* Try to get rid of this namespace expression syntax */
__namespace_expr(set_below->{ com::main }; comes_from->{ com::mfd });
mfd::packages::pkg_set* ::__init_pkg_cfg_no_opt__() {
    mfd::packages::pkg_manager* pkg_manager = new mfd::packages::pkg_manager(false, false, true, false, "mfd", com);
    pkg_manager->import("com.mfd", "_I__USE_LATEST", false, "mfd", com, mfd::packages::visibility::__global_n_);
    pkg_manager->import("com.sys", "_I__USE_LATEST", false, "mfd", com, mfd::packages::visibility::__global_n_);
    pkg_manager->import("com.sys.io", "_I__USE_LATEST", false, "mfd", com, mfd::packages::visibility::__global_n_);
    pkg_manager->import("com.sys.engine", "v0.031.1", true, "mfd", com, mfd::packages::visibility::__global_n_); // This version is stable compared to the latest
    pkg_manager->import("com.notable", "_I__USE_LATEST", true, "mfd", com, mfd::packages::visibility::__global_n_);
    pkg_manager->import("com.notable.io", "_I__USE_LATEST", false, "mfd", com, mfd::packages::visibility::__global_n_);
    pkg_manager->import("com.notable.engine", "_I__USE_LATEST", false, "mfd", com, mfd::packages::visibility::__global_n_);
    pkg_manager->import("com.sys.net", "v1.232.0943", true, "mfd", com, mfd::packages::visibility::__global_n_);
    pkg_manager->import("com.sys.net.http", "v1.341.45312", false, "mfd", com, mfd::packages::visibility::__global_n_);
    pkg_manager->import("com.consider", "_I__USE_LATEST", false, "mfd", com, mfd::packages::visibility::__consider_g_n_nxk__);
    pkg_manager->import("com.rendering.g3d", "_I__USE_LATEST", true, "mfd", com, mfd::packages::visibility::__global_n_);
    return pkg_manager.get()->feed_out_set<mfd::packages::at_servo_rutime_enum::non_runtime>();
}