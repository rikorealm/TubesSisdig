view wave 
wave clipboard store
wave create -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ms -step 1 -repeat forever -starttime 0sec -endtime 1sec sim:/controller/clk 
wave create -driver freeze -pattern counter -startvalue 00110000 -endvalue 00111010 -type Range -direction Up -period 50ms -step 1 -repeat forever -range 7 0 -starttime 0sec -endtime 1sec sim:/controller/uart_recv 
wave create -driver freeze -pattern counter -startvalue 00110000 -endvalue 00110001 -type Range -direction Up -period 250ms -step 1 -repeat forever -range 7 0 -starttime 0sec -endtime 1sec sim:/controller/uart_recv 
wave create -driver freeze -pattern counter -startvalue 00110010 -endvalue 00110110 -type Range -direction Up -period 250ms -step 1 -repeat forever -range 7 0 -starttime 0sec -endtime 1sec sim:/controller/uart_recv 
WaveExpandAll -1
WaveCollapseAll -1
wave clipboard restore
