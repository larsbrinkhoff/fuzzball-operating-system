! Save common configuration modules
COPY (DCNLIB,MOSLIB,NETLIB,CFGLIB,SUP).MAC OUT:
COPY (SYSDUP,DSTDUP,SYSGEN,SMLGEN).COM OUT:
COPY (SUPDUP,GENDUP).COM OUT:
COPY (HELP1,HELP2,HELP3).MLB OUT:
COPY (MSG,SNDMSG,CRMAIL,SYSMGR,HELP).SAV OUT:
COPY (MSG.HLP,README.TXT) OUT:
                                                                                                                                                                                                                                            