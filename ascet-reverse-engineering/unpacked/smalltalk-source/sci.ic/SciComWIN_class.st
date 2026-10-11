"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x200004ec; bytecode file offset 0x135b4"
!SciComWIN class methodsFor: 'recovered'!
startUp
    (self) initializePlatformConstants.
    ^self
! !

"sci.ic method 0x20000528; bytecode file offset 0x135b4"
!SciComWIN class methodsFor: 'recovered'!
loaded
    (self) initializePlatformConstants.
    ^self
! !

"sci.ic method 0x20000d9c; bytecode file offset 0x13e20"
!SciComWIN class methodsFor: 'recovered'!
initializePlatformConstants
    (self) initializePlatformErrorCodes.
    (self) initializePlatformSciConstants.
    ^self
! !

"sci.ic method 0x20007378; bytecode file offset 0x1a4cc"
!SciComWIN class methodsFor: 'recovered'!
initializePlatformErrorCodes
    ESCIERR := 12000.
    ESRCH := 10003.
    EINTR := 10004.
    EBADF := 10009.
    EACCES := 10013.
    EFAULT := 10014.
    EINVAL := 10022.
    EMFILE := 10024.
    EWOULDBLOCK := 10035.
    EINPROGRESS := 10036.
    EALREADY := 10037.
    ENOTSOCK := 10038.
    EDESTADDRREQ := 10039.
    EMSGSIZE := 10040.
    EPROTOTYPE := 10041.
    ENOPROTOOPT := 10042.
    EPROTONOSUPPORT := 10043.
    ESOCKTNOSUPPORT := 10044.
    EOPNOTSUPP := 10045.
    EPFNOSUPPORT := 10046.
    EAFNOSUPPORT := 10047.
    EADDRINUSE := 10048.
    EADDRNOTAVAIL := 10049.
    ENETDOWN := 10050.
    ENETUNREACH := 10051.
    ENETRESET := 10052.
    ECONNABORTED := 10053.
    ECONNRESET := 10054.
    ENOBUFS := 10055.
    EISCONN := 10056.
    ENOTCONN := 10057.
    ESHUTDOWN := 10058.
    ETOOMANYREFS := 10059.
    ETIMEDOUT := 10060.
    ECONNREFUSED := 10061.
    ELOOP := 10062.
    ENAMETOOLONG := 10063.
    EHOSTDOWN := 10064.
    EHOSTUNREACH := 10065.
    ENOTEMPTY := 10066.
    EPROCLIM := 10067.
    EUSERS := 10068.
    EDQUOT := 10069.
    ESTALE := 10070.
    EREMOTE := 10071.
    ESYSNOTREADY := 10091.
    EVERNOTSUPPORTED := 10092.
    ENOTINITIALISED := 10093.
    EHOSTNOTFOUND := 11001.
    ETRYAGAIN := 11002.
    ENORECOVERY := 11003.
    ENOADDRESS := 11004.
    ENOTDOTTEDIP := 4294967295.
    ^self
! !

"sci.ic method 0x20007c3c; bytecode file offset 0x1af80"
!SciComWIN class methodsFor: 'recovered'!
initializePlatformSciConstants
    | recoveredValue0 recoveredValue1 |
    SOCKSTREAM := 1.
    SOCKDGRAM := 2.
    SOCKRAW := 3.
    SOCKRDM := 4.
    SOCKSEQPACKET := 5.
    SODEBUG := 1.
    SOACCEPTCONN := 2.
    SOREUSEADDR := 4.
    SOKEEPALIVE := 8.
    SODONTROUTE := 16.
    SOBROADCAST := 32.
    SOUSELOOPBACK := 64.
    SOLINGER := 128.
    SOOOBINLINE := 256.
    SODONTLINGER := 65407.
    SOSNDBUF := 4097.
    SORCVBUF := 4098.
    SOSNDLOWAT := 4099.
    SORCVLOWAT := 4100.
    SOSNDTIMEO := 4101.
    SORCVTIMEO := 4102.
    SOERROR := 4103.
    SOTYPE := 4104.
    SOSNDCOPYAVOID := 4105.
    SORCVCOPYAVOID := 4106.
    SOIPMULTICASTTTL := 3.
    SOIPMULTICASTIF := 2.
    SOIPMULTICASTADD := 5.
    SOIPMULTICASTDROP := 6.
    SOLSOCKET := 65535.
    recoveredValue0 := SciSocketManager.
    recoveredValue1 := (recoveredValue0) primFdSetSize.
    FDSETSIZE := recoveredValue1.
    MSGOOB := 1.
    MSGPEEK := 2.
    MSGDONTROUTE := 4.
    MSGEOR := 8.
    MSGTRUNC := 16.
    MSGCTRUNC := 32.
    MSGWAITALL := 64.
    MSGMBUF := 4096.
    MSGNONBLOCK := 16384.
    MSGCOMPAT := 32768.
    MSGMAXIOVLEN := 16.
    IP := 0.
    ICMP := 1.
    IGMP := 2.
    GGP := 3.
    TCP := 6.
    PUP := 12.
    UDP := 17.
    HMP := 20.
    XNSIDP := 22.
    RDP := 27.
    ICMPECHOREPLY := 0.
    ICMPUNREACH := 3.
    ICMPUNREACHNET := 0.
    ICMPUNREACHHOST := 1.
    ICMPUNREACHPROTOCOL := 2.
    ICMPUNREACHPORT := 3.
    ICMPUNREACHNEEDFRAG := 4.
    ICMPUNREACHSRCFAIL := 5.
    ICMPSOURCEQUENCH := 4.
    ICMPREDIRECT := 5.
    ICMPREDIRECTNET := 0.
    ICMPREDIRECTHOST := 1.
    ICMPREDIRECTTOSNET := 2.
    ICMPREDIRECTTOSHOST := 3.
    ICMPECHO := 8.
    ICMPTIMXCEED := 11.
    ICMPTIMXCEEDINTRANS := 0.
    ICMPTIMXCEEDREASS := 1.
    ICMPPARAMPROB := 12.
    ICMPTSTAMP := 13.
    ICMPTSTAMPREPLY := 14.
    ICMPIREQ := 15.
    ICMPIREQREPLY := 16.
    ICMPMASKREQ := 17.
    ICMPMASKREPLY := 18.
    ICMPMAXTYPE := 18.
    AFUNSPEC := 0.
    AFUNIX := 1.
    AFINET := 2.
    AFIMPLINK := 3.
    AFPUP := 4.
    AFCHAOS := 5.
    AFNS := 6.
    AFNBS := 7.
    AFECMA := 8.
    AFDATAKIT := 9.
    AFCCITT := 10.
    AFSNA := 11.
    AFDECNET := 12.
    AFDLI := 13.
    AFLAT := 14.
    AFHYLINK := 15.
    AFAPPLETALK := 16.
    AFNIT := 17.
    AF802 := 18.
    AFOSI := 19.
    AFX25 := 20.
    AFOSINET := 21.
    AFGOSIP := 22.
    AFMAX := 22.
    IPPROTOIP := 0.
    IPPROTOICMP := 1.
    IPPROTOGGP := 2.
    IPPROTOTCP := 6.
    IPPROTOPUP := 12.
    IPPROTOUDP := 17.
    IPPROTOIDP := 22.
    IPPROTOND := 77.
    IPPROTORAW := 255.
    IPPROTOMAX := 256.
    IPPORTECHO := 7.
    IPPORTDISCARD := 9.
    IPPORTSYSTAT := 11.
    IPPORTDAYTIME := 13.
    IPPORTNETSTAT := 15.
    IPPORTFTP := 21.
    IPPORTTELNET := 23.
    IPPORTSMTP := 25.
    IPPORTTIMESERVER := 37.
    IPPORTNAMESERVER := 42.
    IPPORTWHOIS := 43.
    IPPORTMTP := 57.
    IPPORTTFTP := 69.
    IPPORTRJE := 77.
    IPPORTFINGER := 79.
    IPPORTTTYLINK := 87.
    IPPORTSUPDUP := 95.
    IPPORTEXECSERVER := 512.
    IPPORTLOGINSERVER := 513.
    IPPORTCMDSERVER := 514.
    IPPORTEFSSERVER := 520.
    IPPORTBIFFUDP := 512.
    IPPORTWHOSERVER := 513.
    IPPORTROUTESERVER := 520.
    IPPORTRESERVED := 1024.
    IMPLINKIP := 155.
    IMPLINKLOWEXPER := 156.
    IMPLINKHIGHEXPER := 158.
    INVALIDSOCKET := 4294967295.
    SOCKETERROR := -1.
    FIONREAD := 1074030207.
    FIONBIO := 2147772030.
    SIOCATMARK := 1074033415.
    SCIFDREAD := 1.
    SCIFDWRITE := 2.
    SCIFDOOB := 4.
    SCIFDACCEPT := 8.
    SCIFDCONNECT := 16.
    SCIFDCLOSE := 32.
    SCIFDALLFLAGS := 63.
    SCIMAXMSGSIZE := 30000.
    INADDRANY := 0.
    SCIIDSUNOS := 1.
    SCIIDHP := 2.
    SCIIDAIX := 3.
    SCIIDSOLARIS := 4.
    SCIIDSEQUENT := 5.
    SCIIDMPX := 6.
    SCIIDVXWORKS := 7.
    SCIIDQNX := 8.
    SCIIDWIN := 9.
    SCIIDPM := 10.
    SCIIDDOS32WFTP := 11.
    TCPNODELAY := 65535.
    MAXHOSTNAMELEN := 256.
    ^self
! !

