"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000884; bytecode file offset 0x13930"
!SciSslSocketConfiguration methodsFor: 'recovered'!
sslVersion
    | recoveredValue0 |
    recoveredValue0 := sslVersion.
    ^recoveredValue0
! !

"sci.ic method 0x200008f0; bytecode file offset 0x13984"
!SciSslSocketConfiguration methodsFor: 'recovered'!
certificateFilename
    | recoveredValue0 |
    recoveredValue0 := certificateFilename.
    ^recoveredValue0
! !

"sci.ic method 0x2000092c; bytecode file offset 0x139c8"
!SciSslSocketConfiguration methodsFor: 'recovered'!
certificateChainFilename
    | recoveredValue0 |
    recoveredValue0 := certificateChainFilename.
    ^recoveredValue0
! !

"sci.ic method 0x20000978; bytecode file offset 0x139fc"
!SciSslSocketConfiguration methodsFor: 'recovered'!
privateKeyFilename
    | recoveredValue0 |
    recoveredValue0 := privateKeyFilename.
    ^recoveredValue0
! !

"sci.ic method 0x200009b8; bytecode file offset 0x13a3c"
!SciSslSocketConfiguration methodsFor: 'recovered'!
caFile
    | recoveredValue0 |
    recoveredValue0 := caFile.
    ^recoveredValue0
! !

"sci.ic method 0x200009dc; bytecode file offset 0x13a58"
!SciSslSocketConfiguration methodsFor: 'recovered'!
caPath
    | recoveredValue0 |
    recoveredValue0 := caPath.
    ^recoveredValue0
! !

"sci.ic method 0x20001190; bytecode file offset 0x1421c"
!SciSslSocketConfiguration methodsFor: 'recovered'!
sslCtxSetDefaultVerifyPathsForContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) osObject.
    (recoveredValue1) callSSL_CTX_set_default_verify_paths: (recoveredValue3).
    ^self
! !

"sci.ic method 0x2000121c; bytecode file offset 0x142c8"
!SciSslSocketConfiguration methodsFor: 'recovered'!
sslVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sslVersion := recoveredValue0.
    ^self
! !

"sci.ic method 0x20001270; bytecode file offset 0x142fc"
!SciSslSocketConfiguration methodsFor: 'recovered'!
certificateFilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    certificateFilename := recoveredValue0.
    ^self
! !

"sci.ic method 0x200012a4; bytecode file offset 0x14328"
!SciSslSocketConfiguration methodsFor: 'recovered'!
certificateChainFilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    certificateChainFilename := recoveredValue0.
    ^self
! !

"sci.ic method 0x200012c0; bytecode file offset 0x14354"
!SciSslSocketConfiguration methodsFor: 'recovered'!
privateKeyFilename: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    privateKeyFilename := recoveredValue0.
    ^self
! !

"sci.ic method 0x200012f4; bytecode file offset 0x14380"
!SciSslSocketConfiguration methodsFor: 'recovered'!
verifyDepth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    verifyDepth := recoveredValue0.
    ^self
! !

"sci.ic method 0x20001320; bytecode file offset 0x1439c"
!SciSslSocketConfiguration methodsFor: 'recovered'!
caFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    caFile := recoveredValue0.
    ^self
! !

"sci.ic method 0x20001334; bytecode file offset 0x143b8"
!SciSslSocketConfiguration methodsFor: 'recovered'!
caPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    caPath := recoveredValue0.
    ^self
! !

"sci.ic method 0x20001358; bytecode file offset 0x143d4"
!SciSslSocketConfiguration methodsFor: 'recovered'!
verify: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    verify := recoveredValue0.
    ^self
! !

"sci.ic method 0x20001644; bytecode file offset 0x146d0"
!SciSslSocketConfiguration methodsFor: 'recovered'!
sslCtxSetVerifyDepthForContext: recoveredArg1 depth: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) osObject.
    recoveredValue4 := recoveredArg2.
    (recoveredValue1) callSSL_CTX_set_verify_depthWith: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

"sci.ic method 0x20001748; bytecode file offset 0x147d4"
!SciSslSocketConfiguration methodsFor: 'recovered'!
loadRandomBytes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) asPSZ.
    recoveredValue4 := (recoveredValue1) callRAND_load_fileWith: (recoveredValue3) with: (-1).
    ^recoveredValue4
! !

"sci.ic method 0x2000192c; bytecode file offset 0x149b8"
!SciSslSocketConfiguration methodsFor: 'recovered'!
sslCtxSetVerifyForContext: recoveredArg1 mode: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) osObject.
    recoveredValue4 := recoveredArg2.
    (recoveredValue1) callSSL_CTX_set_verifyWith: (recoveredValue3) with: (recoveredValue4) with: (nil).
    ^self
! !

"sci.ic method 0x20001970; bytecode file offset 0x149f0"
!SciSslSocketConfiguration methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := certificateFilename.
    recoveredValue1 := (recoveredValue0) hash.
    recoveredValue2 := privateKeyFilename.
    recoveredValue3 := (recoveredValue2) hash.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := sslVersion.
    recoveredValue6 := (recoveredValue5) hash.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    ^recoveredValue7
! !

"sci.ic method 0x200019cc; bytecode file offset 0x14a60"
!SciSslSocketConfiguration methodsFor: 'recovered'!
sslCtxSetContextCipherListForContext: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := SciSslBlockingDispatcher.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) osObject.
    recoveredValue4 := ('ALL') abrAsPSZ.
    (recoveredValue1) callSSL_CTX_set_cipher_listWith: (recoveredValue3) with: (recoveredValue4).
    ^self
! !

"sci.ic method 0x20001b34; bytecode file offset 0x14bb0"
!SciSslSocketConfiguration methodsFor: 'recovered'!
verifyDepth
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := verifyDepth.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            verifyDepth := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := verifyDepth.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20001b50; bytecode file offset 0x14bd0"
!SciSslSocketConfiguration methodsFor: 'recovered'!
verify
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := verify.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SSL_VERIFY_NONE.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            verify := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := verify.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20002098; bytecode file offset 0x1512c"
!SciSslSocketConfiguration methodsFor: 'recovered'!
sslCtxUseCertificateChainFileForContext: recoveredArg1 chainFile: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    (self) certificateChainFilename: (recoveredValue0).
    recoveredValue1 := SciSslBlockingDispatcher.
    recoveredValue2 := (recoveredValue1) default.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) osObject.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) abrAsPSZ.
    (recoveredValue2) callSSL_CTX_use_certificate_chain_file: (recoveredValue4) with: (recoveredValue6).
    ^self
! !

"sci.ic method 0x20002260; bytecode file offset 0x152e8"
!SciSslSocketConfiguration methodsFor: 'recovered'!
getSciSslContext
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookupContextForConfiguration: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) primitiveGetSciSslContext.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"sci.ic method 0x20002fe0; bytecode file offset 0x16080"
!SciSslSocketConfiguration methodsFor: 'recovered'!
sslCtxLoadVerifyLocationsForContext: recoveredArg1 caFile: recoveredArg2 caPath: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    (self) caFile: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) caPath: (recoveredValue1).
    recoveredValue2 := SciSslBlockingDispatcher.
    recoveredValue3 := (recoveredValue2) default.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) osObject.
    recoveredValue6 := (self) caFile.
    recoveredValue7 := (recoveredValue6) abrAsPSZ.
    recoveredValue8 := (self) caPath.
    recoveredValue9 := (recoveredValue8) abrAsPSZ.
    recoveredValue10 := (recoveredValue3) callSSL_CTX_load_verify_locations: (recoveredValue5) with: (recoveredValue7) with: (recoveredValue9).
    ^recoveredValue10
! !

"sci.ic method 0x20003ac4; bytecode file offset 0x16b50"
!SciSslSocketConfiguration methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) certificateFilename.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) certificateFilename.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) privateKeyFilename.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := (recoveredStack3) privateKeyFilename.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) sslVersion.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) sslVersion.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20006f78; bytecode file offset 0x1a04c"
!SciSslSocketConfiguration methodsFor: 'recovered'!
primitiveGetSciSslContext
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SciSslContext.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) sslVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) withMethod: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSciError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) verify.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := SSL_VERIFY_NONE.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) verify.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) sslCtxSetVerifyForContext: (recoveredStack1) mode: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := (recoveredStack2) verifyDepth.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) sslCtxSetVerifyDepthForContext: (recoveredStack1) depth: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) caFile.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) caPath.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) sslCtxLoadVerifyLocationsForContext: (recoveredStack1) caFile: (recoveredStack2) caPath: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) sslCtxSetDefaultVerifyPathsForContext: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) certificateChainFilename.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) certificateFilename.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) addConfiguration: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) certificateFilename.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) certificateFile: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) certificateChainFilename.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) certificateChainFile: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateKeyFilename.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 154].
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) privateKeyFilename.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := (recoveredStack0) privateKeyFile: (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSslError.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 170].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack0) addConfiguration: (recoveredStack1) context: (recoveredStack2).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

