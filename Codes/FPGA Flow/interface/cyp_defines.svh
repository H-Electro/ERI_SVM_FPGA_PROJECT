`ifndef CYP_DEFINES_SVH
`define CYP_DEFINES_SVH

    `define LOW 0
    `define HIGH 1

    `define ON 1
    `define OFF  0

    `define ON_n 0
    `define OFF_n  1

    `define DISABLE_FINISH 0
    `define ENABLE_FINISH 1

    `define CLK_PERIOD 10

    `define TEST_ITER_SMALL   100
    `define TEST_ITER_MEDIUM  1_000
    `define TEST_ITER_LARGE   5_000
    `define TEST_ITER_STRESS  10_000

    `define TIME_UNIT 1ps
    `define TIME_PRECISION 1ps

    `define display_separator \
            $display("====================================================================================");

    `define enable_constraint(constraint) \
            cyp_seq_item.constraint.constraint_mode(`ON);
    `define disable_constraints  \
            cyp_seq_item.constraint_mode(`OFF);
    `define enable_constraints  \
            cyp_seq_item.constraint_mode(`ON);
    `define disable_constraint(constraint) \
            cyp_seq_item.constraint.constraint_mode(`OFF);

`endif // CYP_DEFINES_SVH
