! Save protocol modules
COPY XNET.MAC,XNET.COM OUT:
COPY PING.MAC,PING.COM OUT:
COPY FTP.MAC,FTPNET.MAC,FTP.COM OUT:
COPY FTPSRV.MAC,FTPSRV.COM OUT:
COPY SMTP.MAC,SMPSRT.MAC,SMPNET.MAC,SMTP.COM OUT:
COPY SMPSRV.MAC,SMPSRV.COM OUT:
COPY (NETGEN,NETDUP).COM OUT:
                                                                                                                                                                                                                                                   