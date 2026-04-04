vlib work
vlog  -f "list.f" -mfcu +cover -covercells
vsim -sv_seed random -voptargs=+acc work.tb_random_forest_seq -cover -classdebug -uvmcontrol=all -fsmdebug 
onfinish stop
if {![file exists "reports"]} {
    file mkdir "reports"
}
run -all

quit -sim