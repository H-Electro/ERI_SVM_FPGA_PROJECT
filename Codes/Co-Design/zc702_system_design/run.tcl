set script_dir [file dirname [file normalize [info script]]]
set project_path [file join $script_dir "system_design.xpr"]

puts "Opening project: $project_path"
open_project $project_path

puts "Current project:"
puts [current_project]

set bd_files [get_files -quiet *.bd]
if {[llength $bd_files] == 0} {
    set bd_files [glob -nocomplain -directory $script_dir -types f -tails -path [file join $script_dir *] *.bd]
}

puts "Block design files:"
foreach bd_file $bd_files {
    puts "  $bd_file"
}

if {[llength $bd_files] > 0} {
    set bd_path [lindex $bd_files 0]
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
    puts "No block design file was found in this project."
}

puts "Vivado GUI will remain open after this script finishes."
