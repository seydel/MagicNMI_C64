# MagicNMI_C64


## "Retrocomputing": Some fun with the Non Maskable Interrupt on the C64


The C64 BASIC program "MAGICNMI.PG" "pokes" machine code that redirects the non-maskable interrupt (NMI).

The modified NMI can be used to interrupt nearly any program and return to it subsequent to carrying out the NMI routine.

The modified NMI is demonstrated by listing the floppy disk directory.

Subsequent to invoking the modified NMI by pressing the keys "C="+"RESTORE" and doing the demonstration, the routine returns to the orignal program. 

The standard NMI invoked by pressing "RUN/STOP"+"RESTORE" remains unaffected.

The C64 BASIC listing "MAGICNMI.PRG" writes the machine code to the address provided by the user.
This address has to be an integer multiple of 256. In the event that a wrong address is specified, 
the program automatically determines the nearest lower correct address.


Subsequently, all absolute addresses within the code are automatically adjusted relative to the chosen start address.
(Without adjustment, all addresses are relative to the start address $0000.)


The machine code is contained in lines 11 to 23 of the BASIC code. The addresses to be corrected are in line 30.
The loop to transfer the machine code to the chosen memory area (converting the hexadecimal to decimal number for "POKE")
is contained in lines 25 to 27.
Line 27 contains the loop to correct the absolute address. Line 28 redirects the NMI handling routine.


The commented assembler code corresponding to the machine code contained in the "DATA" lines in the BASIC code is given in the file "machine_code_magic_nmi.txt".


**Disclaimer**

Suitable hardware being unvailable, and cloning a *github* repository to an original C64 still posing a challenge, this version of the code has not yet been tested.
