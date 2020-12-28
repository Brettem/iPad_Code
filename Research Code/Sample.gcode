M73 P0 R0 
M201 X9000 Y9000 Z500 E10000 ; sets maximum accelerations, mm/sec^2 
M203 X500 Y500 Z12 E120 ; sets maximum feedrates, mm/sec 
M204 P2000 R1500 T2000 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2 
M205 X10.00 Y10.00 Z0.20 E4.50 ; sets the jerk limits, mm/sec 
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec 
M107 
M862.3 P "MK2.5S" ; printer model check 
M862.1 P0.4 ; nozzle diameter check 
M115 U3.9.1 ; tell printer latest fw version 
G90 ; use absolute coordinates 
M83  ; extruder relative mode 

M104 S215 ; set extruder temp 
M140 S60 ; set bed temp 

M190 S60 ; wait for bed temp 
M109 S215 ; wait for extruder temp 
G28 W ; home all without mesh bed level 
G80 ; mesh bed leveling 
G1 Y-3.0 F1000.0 ; go outside print area 
G92 E0.0 
G1 X60.0 E9.0 F1000.0 ; intro line 
M73 P14 R0 
G1 X100.0 E12.5 F1000.0 ; intro line 
G92 E0.0 
G21 ; set units to millimeters 
G90 ; use absolute coordinates 
M83 ; use relative distances for extrusion 
M900 K0.05 ; Filament gcode LA 1.5 
M900 K30 ; Filament gcode LA 1.0 
G92 E0.0 
G1 Z0.200 F10800.000 


G1 X50 Y105 Z4.890000000000001 
M204 S1000 
G1 X200 F300 E104.10710204081634 


G1 F10800.000 
G4 ; wait 
M104 S0 ; turn off temperature 
M140 S0 ; turn off heatbed 
M107 ; turn off fan 
G1 Z30.2 ; Move print head up 
M73 P91 R0 
G1 X0 Y200 F3000 ; home X axis 
M900 K0 ; reset LA 
M84 ; disable motors 
M73 P100 R0 
