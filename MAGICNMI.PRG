10 REM "-- MAGIC NMI LISTING C64 BASIC --"
11 DATA48,8A,48,98,48,A9,7F,8D,00,DC,AD,01,DC,29,20,F0,03,4C,4C,FE,AD,1F,00,F0
12 DATA0A,68,A8,68,AA,68,40,00,24,54,53,CE,1F,00,A0,00,BA,BD,00,01,99,48,01,C8
13 DATAE8,D0,F6,BA,A9,41,9D,05,01,A9,00,9D,06,01,18,90,D8,A9,01,A2,08,A0,00,20
14 DATABA,FF,A9,01,A2,20,A0,00,20,BD,FF,20,C0,FF,B0,41,A2,01,20,C6,FF,20,CF,FF
15 DATA20,CF,FF,20,CC,FF,A2,01,20,C6,FF,20,CF,FF,20,CF,FF,20,B7,FF,D0,1B,20,CF
16 DATAFF,20,CF,FF,20,CF,FF,C9,00,F0,06,20,D2,FF,18,90,F3,A9,0D,20,D2,FF,18,90
17 DATAD5,20,CC,FF,A9,01,20,C3,FF,A0,00,C0,10,F0,0E,20,CF,FF,C9,0D,F0,07,99,38
18 DATA01,C8,18,90,EE,C0,01,F0,60,C8,C8,98,A2,36,A0,01,20,BD,FF,A9,02,A2,08,A0
19 DATA00,20,BA,FF,20,C0,FF,B0,14,A2,02,20,C6,FF,20,CF,FF,A8,20,CF,FF,AA,A9,20
20 DATA20,D2,FF,A9,24,20,D2,FF,8A,4A,4A,4A,4A,EA,18,20,2A,01,8A,29,0F,18,20,2A
21 DATA01,98,4A,4A,4A,4A,EA,18,20,2A,01,98,29,0F,18,20,2A,01,EA,EA,A9,02,20,C3
22 DATAFF,A9,0D,20,D2,FF,20,E7,FF,EE,1F,00,A0,05,B9,49,01,48,88,C0,02,D0,F7,B9
23 DATA49,01,88,BE,49,01,AC,49,01,40,69,30,C9,3A,30,02,69,06,20,D2,FF,60,4F,3A
24 PRINT"MAGIC NMI BY TILO SEYDEL, NOVEMBER 1988":INPUT"ADDRESS:";A
25 P=INT(A/256):A=P*256=FORX=0T0311:READK$:W=ASC(LEFT$(K$,1)):IFW>57THENW=W-7
26 W=(W-48)*16:V=ASC(RIGHT$(K$,1))—48:IFV>9THENV=V-7
27 POKEA+X,W+V:NEXT:FORX=0T015:READN:POKEA+N,PEEK(A+N)+P:NEXT
28 POKE792,0:POKE793,P:PRINT"TURN ON DISK DRIVE, INSERT DISK!”
29 PRINT"C=/RESTORE : DIRECTORY AND START ADDRESS, STOP/RESTORE : RESET"
30 DATA22,37,46,58,79,168,183,233,240,275,250,257,280,289,293,296

