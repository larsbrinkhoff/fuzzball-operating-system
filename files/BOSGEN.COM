! Generate the whole fuzzball world
MOUNT LD4: ARC:NSF
ASSIGN LD4: DK:
!DELETE/NOQUERY BOS*.SAV
!DELETE/NOQUERY BOS*.MAP
SQUEEZE/NOQUERY DK:
@NSF
SQUEEZE/NOQUERY DK:
MOUNT LD4: ARC:UMD
ASSIGN LD4: DK:
@UMD
!@RICE
@FORD
SQUEEZE/NOQUERY DK:
MOUNT LD4: ARC:BOS
ASSIGN LD4: DK:
!DELETE/NOQUERY BOS*.SAV
!DELETE/NOQUERY BOS*.MAP
SQUEEZE/NOQUERY DK:
@BOS
SQUEEZE/NOQUERY DK:
                                                                                                                          