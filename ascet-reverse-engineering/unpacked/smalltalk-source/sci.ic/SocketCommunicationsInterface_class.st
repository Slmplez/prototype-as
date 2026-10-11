"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000008; bytecode file offset 0x130b4"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
_PRAGMA_SciFunctions
    ^self
! !

"sci.ic method 0x20000010; bytecode file offset 0x130b4"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
_PRAGMA_SciSocketErrorCodes
    ^self
! !

"sci.ic method 0x20000020; bytecode file offset 0x130b4"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
_PRAGMA_SciSocketConstants
    ^self
! !

"sci.ic method 0x2000062c; bytecode file offset 0x13760"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
exiting
    | recoveredValue0 |
    recoveredValue0 := SciSocketManager.
    (recoveredValue0) exiting.
    ^self
! !

"sci.ic method 0x2000064c; bytecode file offset 0x13760"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
loaded
    | recoveredValue0 |
    recoveredValue0 := SciSocketManager.
    (recoveredValue0) loaded.
    ^self
! !

"sci.ic method 0x2000069c; bytecode file offset 0x13760"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
preStartUp
    | recoveredValue0 |
    recoveredValue0 := SciSocketManager.
    (recoveredValue0) preStartUp.
    ^self
! !

"sci.ic method 0x200006bc; bytecode file offset 0x13760"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := SciSocketManager.
    (recoveredValue0) reset.
    ^self
! !

"sci.ic method 0x200013d8; bytecode file offset 0x14460"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
startUp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SciSocketManager.
    (recoveredValue0) startUp.
    recoveredValue1 := SciError.
    (recoveredValue1) startUp.
    ^self
! !

"sci.ic method 0x20002764; bytecode file offset 0x157fc"
!SocketCommunicationsInterface class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) ignoreNoImplementorErrorsForMessageSend: ('supported') inClassMethod: ('realBlockingSupported') inClassNamed: ('SciSocketManager').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) ignoreNoImplementorErrorsForMessageSend: ('fromFamily:') inClassMethod: ('family:') inClassNamed: ('SciSocketAddress').
    ^self
! !

