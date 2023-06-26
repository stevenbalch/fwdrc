#!/usr/bin/tclsh

#-----------------------------------------
# fwrdc -- 1.00
# Display the DNS Reverse Cache in a Human Readable Format
# Created by Steven W. Balch Jr.
#-----------------------------------------

#-----------------------------------------
puts ""
puts "Displaying the DNS Reverse Cache - Human Readable"
puts ""
#-----------------------------------------

#-----------------------------------------
proc getdnstable {} {
global src srchex

if [catch {set dtable [exec fw ctl multik print_bl dns_reverse_cache_tbl]} err] {
puts $err
} else {
#puts $dtable

set content [split $dtable \n]

foreach line $content {

set liner1 [split $line >]
set liner2 [lindex $liner1 0]
set liner3 [split $liner2 ;]
set liner4 [lindex $liner3 0]
set liner5 [string trimleft $liner4 ?<?]
set clean1 [string trim $liner5 \{\;\}]

#puts $clean1

if {[string compare -nocase -------- $clean1] == 0} {
# delete false information
} else {
if {[string compare -nocase {htab_bl,} $clean1] ==0} {
# delete false information
} else {
#puts $clean1

set clean2 [string trimright [regsub -all {..} $clean1 {& }]]
#puts $clean2

set cl1 [split $clean2 ]
set dc1 [lindex $cl1 0]
set dc2 [lindex $cl1 1]
set dc3 [lindex $cl1 2]
set dc4 [lindex $cl1 3]

set d1 [expr 0x$dc1]
set d2 [expr 0x$dc2]
set d3 [expr 0x$dc3]
set d4 [expr 0x$dc4]

puts "$d1.$d2.$d3.$d4"

       }
       }


                      }
       }
                  }
#-----------------------------------------

#-----------------------------------------
getdnstable
#-----------------------------------------
puts ""
#-----------------------------------------
