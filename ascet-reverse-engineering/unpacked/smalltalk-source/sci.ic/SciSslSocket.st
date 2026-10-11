"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000274; bytecode file offset 0x132f4"
!SciSslSocket methodsFor: 'recovered'!
isSecure
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sslHandle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"sci.ic method 0x200003f4; bytecode file offset 0x134a8"
!SciSslSocket methodsFor: 'recovered'!
blockingDispatcher
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"sci.ic method 0x20000404; bytecode file offset 0x134a8"
!SciSslSocket methodsFor: 'recovered'!
nonBlockingDispatcher
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"sci.ic method 0x200007c0; bytecode file offset 0x1385c"
!SciSslSocket methodsFor: 'recovered'!
sslAccept
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dispatcher.
    recoveredValue1 := (self) sslHandle.
    recoveredValue2 := (recoveredValue0) callSSL_acceptWith: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x200007d4; bytecode file offset 0x1385c"
!SciSslSocket methodsFor: 'recovered'!
sslConnect
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) dispatcher.
    recoveredValue1 := (self) sslHandle.
    recoveredValue2 := (recoveredValue0) callSSL_connectWith: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x200007f4; bytecode file offset 0x13874"
!SciSslSocket methodsFor: 'recovered'!
readyForReading
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sslBytesAvailableToRead.
    recoveredValue1 := (recoveredValue0) > (0).
    ^recoveredValue1
! !

"sci.ic method 0x20000a04; bytecode file offset 0x13a88"
!SciSslSocket methodsFor: 'recovered'!
socketIdHandle
    | recoveredValue0 |
    recoveredValue0 := sslHandle.
    ^recoveredValue0
! !

"sci.ic method 0x20000a0c; bytecode file offset 0x13a88"
!SciSslSocket methodsFor: 'recovered'!
sslHandle
    | recoveredValue0 |
    recoveredValue0 := sslHandle.
    ^recoveredValue0
! !

"sci.ic method 0x20000ab8; bytecode file offset 0x13b3c"
!SciSslSocket methodsFor: 'recovered'!
setSession: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) sslHandle.
    recoveredValue2 := (recoveredValue0) setSessionForSslHandle: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x20000b3c; bytecode file offset 0x13bc4"
!SciSslSocket methodsFor: 'recovered'!
getSession
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := OSSslSession.
    recoveredValue1 := (self) sslHandle.
    recoveredValue2 := (recoveredValue0) newSessionFromSslHandle: (recoveredValue1).
    ^recoveredValue2
! !

"sci.ic method 0x20000f30; bytecode file offset 0x13fb8"
!SciSslSocket methodsFor: 'recovered'!
sslVerifyCertificate
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) dispatcher.
    recoveredValue1 := (self) sslHandle.
    recoveredValue2 := (recoveredValue0) callSSL_get_verify_resultWith: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredLocal1 := recoveredValue3.
    ^recoveredValue2
! !

"sci.ic method 0x200015bc; bytecode file offset 0x14648"
!SciSslSocket methodsFor: 'recovered'!
sslSetVerifyDepth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (self) sslHandle.
    recoveredValue3 := recoveredArg1.
    (recoveredValue1) callSSL_set_verify_depthWith: (recoveredValue2) with: (recoveredValue3).
    ^self
! !

"sci.ic method 0x20001834; bytecode file offset 0x148c0"
!SciSslSocket methodsFor: 'recovered'!
sslSetVerify: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (self) sslHandle.
    recoveredValue3 := recoveredArg1.
    (recoveredValue1) callSSL_set_verifyWith: (recoveredValue2) with: (recoveredValue3) with: (nil).
    ^self
! !

"sci.ic method 0x20002170; bytecode file offset 0x151f8"
!SciSslSocket methodsFor: 'recovered'!
sslBytesAvailableToRead
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sslHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatcher.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) sslHandle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) callSSL_pendingWith: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002908; bytecode file offset 0x15998"
!SciSslSocket methodsFor: 'recovered'!
sslGetPeerCertificate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatcher.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) sslHandle.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) callSSL_get_peer_certificateWith: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OSSslX509.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) buildInstanceOrErrorFromAddress: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20003ba8; bytecode file offset 0x16c44"
!SciSslSocket methodsFor: 'recovered'!
close
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) socketIdHandle.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatcher.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) sslHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) callSSL_shutdownWith: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) shutDown: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatcher.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) sslHandle.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) callSSL_freeWith: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := super close.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200045b4; bytecode file offset 0x17650"
!SciSslSocket methodsFor: 'recovered'!
sslInitialize: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSciSslContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSslError.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatcher.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) osObject.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) callSSL_newWith: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            sslHandle := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) socketIdHandle.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) dispatcher.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) socketIdHandle.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) platformHandle.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) callSSL_set_fdWith: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

