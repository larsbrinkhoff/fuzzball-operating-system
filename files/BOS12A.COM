! timer.nta.no
! lsi-11/23 (256k), kwv11, rx02, rl02, dlv11, interlan ether
MACRO DAT12+CFGLIB.SML/LIBRARY
MACRO SUP12+SUP+DCNLIB.SML/LIBRARY
MACRO NTARE+CFGLIB.SML/LIBRARY
LINK/EXECUTE:BOS12/BOUNDARY:100/PROMPT/MAP:BOS12/GLOBAL DAT12,SUP12
NTARE,DSRLIB,TCPLIB//
$USEI
DELETE/NOQUERY NTARE.OBJ
! timer.unik.no
! lsi-11/23 (256k), kwv11, rx02, rl02, dlv11, DEQ ether
MACRO DAT13A+CFGLIB.SML/LIBRARY
MACRO UNIK+CFGLIB.SML/LIBRARY
LINK/EXECUTE:BOS13/BOUNDARY:100/PROMPT/MAP:BOS13/GLOBAL DAT13A,SUP12
UNIK,DSRLIB,TCPLIB//
$USEI
DELETE/NOQUERY (DAT12A,ADAT13,SUP12,UNIK).OBJ
                                                                                                                                                                                                                                                                                                                                                                                                                                                     