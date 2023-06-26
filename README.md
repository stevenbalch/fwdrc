# fwdrc
Check Point utility to display the entire DNS reverse cache in a human readable format, converting the tuple into IP addresses.

## Supported Sites:
github.com

## Usage:

*Run the fwdrc.tcl script to view the entire DNS reverse cache with IP addresses.*

  `./fwdrc.tcl`

### Extra Information:
*The DNS reverse cache table is stored in the following format:*

htab_bl, id 35, size 28672, attributes: expire, no links, #vals 40 #slinks 0

*Example:*
-------- dns_reverse_cache_tbl --------
htab_bl, id 35, size 28672, attributes: expire, no links, #vals 40 #slinks 0
<6354bf11; e1694c77, 00000000, 9a96dc8d, 00000000, 00000000, 00000000, 6499b1c7, 00000000, 00000000, 00000000; 4423/7200>
<0d20a427; 00000000, 00000000, 00000000, 00000000, 00000000, 00000000, 6499a3fa, 00000000, 4308ee98, 00007f83; 891/2939>
<4a7841f7; cfa2b355, 00000000, b09db6e9, 00000000, 00000001, 00000000, 6499b1b2, 00000000, 00000000, 00000000; 4403/7200>
<4a7841fc; cfa2b355, 00000000, b09db6e9, 00000000, 00000001, 00000000, 6499b062, 00000000, 00000000, 00000000; 4067/7200>

