"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x2000021c; bytecode file offset 0x132cc"
!SciSslContext methodsFor: 'recovered'!
defaultSslMethod
    | recoveredValue0 |
    recoveredValue0 := SSLv23.
    ^recoveredValue0
! !

"sci.ic method 0x200008d0; bytecode file offset 0x13984"
!SciSslContext methodsFor: 'recovered'!
osObject
    | recoveredValue0 |
    recoveredValue0 := osObject.
    ^recoveredValue0
! !

"sci.ic method 0x2000123c; bytecode file offset 0x142c8"
!SciSslContext methodsFor: 'recovered'!
sslMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sslMethod := recoveredValue0.
    ^self
! !

"sci.ic method 0x20001260; bytecode file offset 0x142fc"
!SciSslContext methodsFor: 'recovered'!
osObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    osObject := recoveredValue0.
    ^self
! !

"sci.ic method 0x20001598; bytecode file offset 0x14620"
!SciSslContext methodsFor: 'recovered'!
certificateChainFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := osObject.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) callSSL_CTX_use_certificate_chain_file: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"sci.ic method 0x2000198c; bytecode file offset 0x14a30"
!SciSslContext methodsFor: 'recovered'!
certificateFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := osObject.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := SSL_FILETYPE_PEM.
    recoveredValue5 := (recoveredValue1) callSSL_CTX_use_certificate_fileWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"sci.ic method 0x200019a4; bytecode file offset 0x14a30"
!SciSslContext methodsFor: 'recovered'!
privateKeyFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := osObject.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := SSL_FILETYPE_PEM.
    recoveredValue5 := (recoveredValue1) callSSL_CTX_use_RSAPrivateKey_fileWith: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    ^recoveredValue5
! !

"sci.ic method 0x20001b14; bytecode file offset 0x14b94"
!SciSslContext methodsFor: 'recovered'!
sslMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sslMethod.
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
            recoveredStack1 := (recoveredStack1) defaultSslMethod.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            sslMethod := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := sslMethod.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20001d68; bytecode file offset 0x14df0"
!SciSslContext methodsFor: 'recovered'!
free
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) osObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) osObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) sslMethod: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x200030bc; bytecode file offset 0x16158"
!SciSslContext methodsFor: 'recovered'!
createOsObject
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SciSslBlockingDispatcher.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) sslMethod.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := #().
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) callWithNoErrorCheck: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OSSslCtx.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) newForMethod: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            osObject := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSciError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := osObject.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

