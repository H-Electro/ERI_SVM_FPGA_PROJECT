package cyp_wrapper_env_pkg;

    import  uvm_pkg::*;
    import  shared_wrapper_pkg::*;
    `include "cyp_defines.svh"
    `include "apb_defines.svh"
    `include "uvm_macros.svh"

    `include "objects/cyp_config.svh"
    `include "objects/cyp_apb_master_config.svh"
    `include "objects/cyp_apb_slave_config.svh"
    `include "top/test/enviroment/cyp_agent/cyp_pkg.svh"
    `include "top/test/enviroment/cyp_apb_master_agent/cyp_apb_master_pkg.svh"
    `include "top/test/enviroment/cyp_apb_slave_agent/cyp_apb_slave_pkg.svh"
    `include "top/test/enviroment/coverage_collector/cyp_coverage_collector.svh"
    `include "top/test/enviroment/scoreboard/cyp_scoreboard.svh"
    `include "top/test/enviroment/cyp_env.svh"

endpackage : cyp_wrapper_env_pkg
