! Generate fuzzball system binaries
!
! "Laugh it up, fuzzball."
!	Han Solo to Chewbacca, "The Empire Strikes Back"
!
! Assign ARC: to the device where the archives live.
!
! logical devices used
! INP: 	input device
! OUT: 	output device
! ARC: 	archive device
!
! logical volumes and devices used
! LD1: ARC:FUZZ1	distribution sources 1
! LD2: ARC:FUZZ2	distribution sources 2
! LD3: ARC:FUZZ3	new distribution binaries
!
! Initialize working volumes
!
MOUNT LD1: ARC:FUZZ1
MOUNT LD2: ARC:FUZZ2
CREATE ARC:FUZZ3.DSK/ALLOCATE:1976
MOUNT LD3: ARC:FUZZ3
INITIALIZE/NOQUERY LD3:
ASSIGN LD3: DK:
ASSIGN LD3: OUT:
!
! Generate resident system
!
ASSIGN LD2: INP:
@INP:SMLGEN
ASSIGN LD1: INP:
@INP:DSRGEN
@INP:USEGEN
@INP:TCPGEN
!
! Generate nonresident system
!
@INP:LIBGEN
@INP:RUNGEN
ASSIGN LD2: INP:
@INP:LOGGEN
@INP:NETGEN
@INP:SRVGEN
@INP:GENDUP
                                                                                                                                     