"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x200005b4; bytecode file offset 0x13638"
!SciError class methodsFor: 'recovered'!
errorCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) errorCode: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x20000740; bytecode file offset 0x137c0"
!SciError class methodsFor: 'recovered'!
startUp
    (self) messageDictionary: (nil).
    ^self
! !

"sci.ic method 0x20000a88; bytecode file offset 0x13b20"
!SciError class methodsFor: 'recovered'!
messageDictionary: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    MessageDictionary := recoveredValue1.
    ^recoveredValue0
! !

"sci.ic method 0x20000cbc; bytecode file offset 0x13d40"
!SciError class methodsFor: 'recovered'!
from: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) int32At: (0).
    recoveredValue2 := (self) errorCode: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x20001790; bytecode file offset 0x14818"
!SciError class methodsFor: 'recovered'!
errorCode: recoveredArg1 errorObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) errorCode: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) errorObject: (recoveredValue4).
    ^recoveredValue0
! !

"sci.ic method 0x20001a94; bytecode file offset 0x14b48"
!SciError class methodsFor: 'recovered'!
messageDictionary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MessageDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessages.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            MessageDictionary := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := MessageDictionary.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x2000759c; bytecode file offset 0x1a7a4"
!SciError class methodsFor: 'recovered'!
errorMessages
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := ECONNREFUSED.
    (recoveredValue2) at: (recoveredValue3) put: ('Connection refused').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := ENOTEMPTY.
    (recoveredValue4) at: (recoveredValue5) put: ('Directory not empty').
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := ELOOP.
    (recoveredValue6) at: (recoveredValue7) put: ('Too many levels of symbolic links').
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := EADDRNOTAVAIL.
    (recoveredValue8) at: (recoveredValue9) put: ('Can''t assign requested address').
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := ECONNABORTED.
    (recoveredValue10) at: (recoveredValue11) put: ('Software caused connection abort').
    recoveredValue12 := recoveredValue1.
    recoveredValue13 := EINTR.
    (recoveredValue12) at: (recoveredValue13) put: ('Interrupts system call').
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := EHOSTDOWN.
    (recoveredValue14) at: (recoveredValue15) put: ('Host is down').
    recoveredValue16 := recoveredValue1.
    recoveredValue17 := EDESTADDRREQ.
    (recoveredValue16) at: (recoveredValue17) put: ('Destination address is required').
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := EINVAL.
    (recoveredValue18) at: (recoveredValue19) put: ('Invalid argument').
    recoveredValue20 := recoveredValue1.
    recoveredValue21 := EWOULDBLOCK.
    (recoveredValue20) at: (recoveredValue21) put: ('Operation would block').
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := EPIPE.
    (recoveredValue22) at: (recoveredValue23) put: ('Broken pipe').
    recoveredValue24 := recoveredValue1.
    recoveredValue25 := ENXIO.
    (recoveredValue24) at: (recoveredValue25) put: ('No device or address').
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := ESHUTDOWN.
    (recoveredValue26) at: (recoveredValue27) put: ('Can''t send after socket shutdown').
    recoveredValue28 := recoveredValue1.
    recoveredValue29 := ENAMETOOLONG.
    (recoveredValue28) at: (recoveredValue29) put: ('File name too long').
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := ENOBUFS.
    (recoveredValue30) at: (recoveredValue31) put: ('No buffer space available').
    recoveredValue32 := recoveredValue1.
    recoveredValue33 := ENETDOWN.
    (recoveredValue32) at: (recoveredValue33) put: ('Network is down').
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := ENETUNREACH.
    (recoveredValue34) at: (recoveredValue35) put: ('Network is unreachable').
    recoveredValue36 := recoveredValue1.
    recoveredValue37 := EPERM.
    (recoveredValue36) at: (recoveredValue37) put: ('Not super-user').
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := EISCONN.
    (recoveredValue38) at: (recoveredValue39) put: ('Socket is already connected').
    recoveredValue40 := recoveredValue1.
    recoveredValue41 := EPROTOTYPE.
    (recoveredValue40) at: (recoveredValue41) put: ('Protocol is wrong type for socket').
    recoveredValue42 := recoveredValue1.
    recoveredValue43 := ENETRESET.
    (recoveredValue42) at: (recoveredValue43) put: ('Network dropped connection on reset').
    recoveredValue44 := recoveredValue1.
    recoveredValue45 := EMFILE.
    (recoveredValue44) at: (recoveredValue45) put: ('Too many open files').
    recoveredValue46 := recoveredValue1.
    recoveredValue47 := EPROTONOSUPPORT.
    (recoveredValue46) at: (recoveredValue47) put: ('Protocol not supported').
    recoveredValue48 := recoveredValue1.
    recoveredValue49 := EPFNOSUPPORT.
    (recoveredValue48) at: (recoveredValue49) put: ('Protocol family not supported').
    recoveredValue50 := recoveredValue1.
    recoveredValue51 := EMSGSIZE.
    (recoveredValue50) at: (recoveredValue51) put: ('Message too long').
    recoveredValue52 := recoveredValue1.
    recoveredValue53 := ETOOMANYREFS.
    (recoveredValue52) at: (recoveredValue53) put: ('Too many references: can''t splice').
    recoveredValue54 := recoveredValue1.
    recoveredValue55 := EADDRINUSE.
    (recoveredValue54) at: (recoveredValue55) put: ('Address already in use').
    recoveredValue56 := recoveredValue1.
    recoveredValue57 := ESOCKTNOSUPPORT.
    (recoveredValue56) at: (recoveredValue57) put: ('Socket not supported').
    recoveredValue58 := recoveredValue1.
    recoveredValue59 := EINPROGRESS.
    (recoveredValue58) at: (recoveredValue59) put: ('Operation now in progress').
    recoveredValue60 := recoveredValue1.
    recoveredValue61 := ETIMEDOUT.
    (recoveredValue60) at: (recoveredValue61) put: ('Connection timed out').
    recoveredValue62 := recoveredValue1.
    recoveredValue63 := ECONNRESET.
    (recoveredValue62) at: (recoveredValue63) put: ('Connection reset by peer').
    recoveredValue64 := recoveredValue1.
    recoveredValue65 := EBADF.
    (recoveredValue64) at: (recoveredValue65) put: ('Bad file number').
    recoveredValue66 := recoveredValue1.
    recoveredValue67 := EACCES.
    (recoveredValue66) at: (recoveredValue67) put: ('Permission denied').
    recoveredValue68 := recoveredValue1.
    recoveredValue69 := ENOTSOCK.
    (recoveredValue68) at: (recoveredValue69) put: ('Socket operation on non-socket').
    recoveredValue70 := recoveredValue1.
    recoveredValue71 := ENOPROTOOPT.
    (recoveredValue70) at: (recoveredValue71) put: ('Protocol not available').
    recoveredValue72 := recoveredValue1.
    recoveredValue73 := ENOTCONN.
    (recoveredValue72) at: (recoveredValue73) put: ('Socket is not connected').
    recoveredValue74 := recoveredValue1.
    recoveredValue75 := ESRCH.
    (recoveredValue74) at: (recoveredValue75) put: ('').
    recoveredValue76 := recoveredValue1.
    recoveredValue77 := EFAULT.
    (recoveredValue76) at: (recoveredValue77) put: ('Bad address').
    recoveredValue78 := recoveredValue1.
    recoveredValue79 := EHOSTUNREACH.
    (recoveredValue78) at: (recoveredValue79) put: ('No route to host').
    recoveredValue80 := recoveredValue1.
    recoveredValue81 := EOPNOTSUPP.
    (recoveredValue80) at: (recoveredValue81) put: ('Operation not supported').
    recoveredValue82 := recoveredValue1.
    recoveredValue83 := EALREADY.
    (recoveredValue82) at: (recoveredValue83) put: ('Operation already in progress').
    recoveredValue84 := recoveredValue1.
    recoveredValue85 := EAFNOSUPPORT.
    (recoveredValue84) at: (recoveredValue85) put: ('Address family not supported by protocol family').
    recoveredValue86 := recoveredValue1.
    recoveredValue87 := ERESTART.
    (recoveredValue86) at: (recoveredValue87) put: ('Restart System Request').
    recoveredValue88 := recoveredValue1.
    recoveredValue89 := EHOSTNOTFOUND.
    (recoveredValue88) at: (recoveredValue89) put: ('Host not found').
    recoveredValue90 := recoveredValue1.
    recoveredValue91 := ENOADDRESS.
    (recoveredValue90) at: (recoveredValue91) put: ('No address or No Data').
    recoveredValue92 := recoveredValue1.
    recoveredValue93 := ENORECOVERY.
    (recoveredValue92) at: (recoveredValue93) put: ('No recovery').
    recoveredValue94 := recoveredValue1.
    recoveredValue95 := ETRYAGAIN.
    (recoveredValue94) at: (recoveredValue95) put: ('Non authoritive response - try again').
    recoveredValue96 := recoveredValue1.
    recoveredValue97 := ESCIERR.
    (recoveredValue96) at: (recoveredValue97) put: ('SCI-generated error - check error object').
    ^recoveredValue1
! !

