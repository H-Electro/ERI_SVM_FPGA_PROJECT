vlib work
vlog  -f "scripts/list.f" -mfcu +cover -covercells
vsim -sv_seed random -voptargs=+acc work.tb_top -cover -classdebug -uvmcontrol=all -fsmdebug 
onfinish stop
if {![file exists "reports"]} {
    file mkdir "reports"
}

#*******************************************#
# Code Coverage
#*******************************************#
vcd file waves/waves.vcd
vcd add -r /* 
run -all
coverage save top.ucdb
# #*******************************************#
# Functional Coverage Report
coverage report -detail -cvg -directive \
    -output "reports/Functional Coverage Report.txt" \
    /cyp_wrapper_env_pkg/cyp_coverage/*

coverage report -detail -cvg -directive \
    -html -output "reports/Functional Coverage Report(HTML)" \
    /cyp_wrapper_env_pkg/cyp_coverage/*

# #*******************************************#
quit -sim
# Save Coverage Report
vcover report top.ucdb -details -annotate -all -output "reports/Full Coverage Report.txt"
vcover report top.ucdb -details -annotate -html -output "reports/Full Coverage Report(HTML)"
quit -f
