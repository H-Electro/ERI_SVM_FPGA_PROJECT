set script_dir [file dirname [file normalize [info script]]]
set project_path [file normalize [file join $script_dir "system_design.xpr"]]
set bd_path [file normalize [file join $script_dir "system_design.srcs" "sources_1" "bd" "system_design" "system_design.bd"]]
set source_bd_tcl [file normalize [file join $script_dir "source_bd.tcl"]]
set custom_ip_repo [file normalize [file join $script_dir ".." "IP"]]

puts "Opening project: $project_path"
open_project $project_path

if {[file exists [file join $custom_ip_repo "component.xml"]]} {
    puts "Adding custom IP repository: $custom_ip_repo"
    set_property ip_repo_paths [list $custom_ip_repo] [current_project]
    update_ip_catalog
} else {
    puts "Custom IP repository not found at: $custom_ip_repo"
}

puts "Current project:"
puts [current_project]

puts "Block designs:"
puts [get_bd_designs]

if {[file exists $source_bd_tcl]} {
    puts "Sourcing block design TCL: $source_bd_tcl"
    source $source_bd_tcl
} elseif {[file exists $bd_path]} {
    puts "Opening block design: $bd_path"
    open_bd_design $bd_path

    puts "BD cells:"
    foreach cell [get_bd_cells] {
        puts "  $cell"
    }

    puts "BD interface nets:"
    foreach net [get_bd_intf_nets] {
        puts "  $net"
    }

    puts "BD scalar nets:"
    foreach net [get_bd_nets] {
        puts "  $net"
    }
} else {
    puts "Block design not found at: $bd_path"
}

puts "Vivado GUI will remain open after this script finishes."
