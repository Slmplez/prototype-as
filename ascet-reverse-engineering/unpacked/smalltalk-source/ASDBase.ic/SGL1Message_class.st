"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20048de0; bytecode file offset 0x945728"
!SGL1Message class methodsFor: 'recovered'!
initL1Messages
    Instances := nil.
    ^self
! !

"ASDBase.ic method 0x20060558; bytecode file offset 0x95cf04"
!SGL1Message class methodsFor: 'recovered'!
createInvalidL1Message
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createSmall.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setToInvalid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b7c00; bytecode file offset 0x9b44c0"
!SGL1Message class methodsFor: 'recovered'!
getL1ErrorMessage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := L1Errors.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012c6e8; bytecode file offset 0xa28fb4"
!SGL1Message class methodsFor: 'recovered'!
createLarge
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := ByteArray.
    recoveredValue4 := (recoveredValue3) new: (32767).
    (recoveredValue2) setData: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2012c71c; bytecode file offset 0xa28fe4"
!SGL1Message class methodsFor: 'recovered'!
createSmall
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := ByteArray.
    recoveredValue4 := (recoveredValue3) new: (255).
    (recoveredValue2) setData: (recoveredValue4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2013a000; bytecode file offset 0xa368dc"
!SGL1Message class methodsFor: 'recovered'!
getSmallL1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Instances.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGL1Instances.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Instances := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Instances.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getSmallL1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2013a018; bytecode file offset 0xa368dc"
!SGL1Message class methodsFor: 'recovered'!
getLargeL1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Instances.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGL1Instances.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            Instances := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := Instances.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLargeL1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20157248; bytecode file offset 0xa53b48"
!SGL1Message class methodsFor: 'recovered'!
delinNoCheckForErrors: recoveredArg1 server: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) setData: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) setServer: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) delin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x201b5258; bytecode file offset 0xab1b34"
!SGL1Message class methodsFor: 'recovered'!
getL1ErrorDeveloperAdvice: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := L1ErrorsDeveloperAdvice.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := L1ErrorsDeveloperAdvice.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201b5270; bytecode file offset 0xab1b34"
!SGL1Message class methodsFor: 'recovered'!
getL1ErrorUserAdvice: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := L1ErrorsUserAdvice.
    recoveredValue1 := [
    ^nil
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := L1ErrorsUserAdvice.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x201b70bc; bytecode file offset 0xab3988"
!SGL1Message class methodsFor: 'recovered'!
createLargePid: recoveredArg1 oid: recoveredArg2 cmd: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) getLargeL1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) setPid: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) setOid: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg3.
    (recoveredValue6) setCmd: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) setErr: (0).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20228bc8; bytecode file offset 0xb25494"
!SGL1Message class methodsFor: 'recovered'!
getDescriptionForPID: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := L1DescriptionPID.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ^'Unknown, data not initialized'
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := L1DescriptionPID.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    'Unknown'
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20285e84; bytecode file offset 0xb82764"
!SGL1Message class methodsFor: 'recovered'!
createSmallPid: recoveredArg1 oid: recoveredArg2 cmd: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := ('Rnz') == ('L1_Debugging').
    recoveredValue1 := (self) getSmallL1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) initialize.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setPid: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) setOid: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) setCmd: (recoveredValue8).
    recoveredValue9 := recoveredValue1.
    (recoveredValue9) setErr: (0).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) senderContext: ('').
    recoveredValue11 := recoveredValue1.
    (recoveredValue11) senderCommand: ('').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20299b20; bytecode file offset 0xb96408"
!SGL1Message class methodsFor: 'recovered'!
delinAndCheckForErrors: recoveredArg1 server: recoveredArg2 originalMessage: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := ('Rnz') == ('L1_Debugging').
    recoveredValue1 := (self) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) initialize.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) setData: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) setServer: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) senderCommand.
    (recoveredValue7) senderCommand: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := (recoveredValue11) senderContext.
    (recoveredValue10) senderContext: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := recoveredArg3.
    recoveredValue15 := (recoveredValue14) senderStack.
    (recoveredValue13) senderStack: (recoveredValue15).
    recoveredValue16 := recoveredValue1.
    (recoveredValue16) delinAndCheckForErrors.
    ^recoveredValue1
! !

"ASDBase.ic method 0x202f0ab4; bytecode file offset 0xbed3d0"
!SGL1Message class methodsFor: 'recovered'!
createLargePid: recoveredArg1 oid: recoveredArg2 cmd: recoveredArg3 contextDesc: recoveredArg4 commandDesc: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := ('Rnz') == ('L1_Debugging').
    recoveredValue1 := (self) getLargeL1.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) initialize.
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) setPid: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) setOid: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) setCmd: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) setErr: (0).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg4.
    (recoveredValue11) senderContext: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := recoveredArg5.
    (recoveredValue13) senderCommand: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := (self) stSenderMethod.
    (recoveredValue15) senderStack: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x202f0aec; bytecode file offset 0xbed3d0"
!SGL1Message class methodsFor: 'recovered'!
createSmallPid: recoveredArg1 oid: recoveredArg2 cmd: recoveredArg3 contextDesc: recoveredArg4 commandDesc: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := ('Rnz') == ('L1_Debugging').
    recoveredValue1 := (self) getSmallL1.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) initialize.
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) setPid: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) setOid: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := recoveredArg3.
    (recoveredValue8) setCmd: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    (recoveredValue10) setErr: (0).
    recoveredValue11 := recoveredValue1.
    recoveredValue12 := recoveredArg4.
    (recoveredValue11) senderContext: (recoveredValue12).
    recoveredValue13 := recoveredValue1.
    recoveredValue14 := recoveredArg5.
    (recoveredValue13) senderCommand: (recoveredValue14).
    recoveredValue15 := recoveredValue1.
    recoveredValue16 := (self) stSenderMethod.
    (recoveredValue15) senderStack: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x20301230; bytecode file offset 0xbfdafc"
!SGL1Message class methodsFor: 'recovered'!
getDescriptionForPID: recoveredArg1 OID: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := L1DescriptionOID.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ^'Unknown, data not initialized'
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := L1DescriptionOID.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := [
    ^'Unknown'
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := [
    'Unknown'
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203562f4; bytecode file offset 0xc52bcc"
!SGL1Message class methodsFor: 'recovered'!
descriptiveErrorMessageFor: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := L1DescriptiveErrorMessages.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := '<unknown>'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'The error occurred while '.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := L1DescriptiveErrorMessages.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := [
    ^nil
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204350d4; bytecode file offset 0xd3199c"
!SGL1Message class methodsFor: 'recovered'!
getDescriptionForPID: recoveredArg1 OID: recoveredArg2 CMD: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := L1DescriptionCMD.
    recoveredValue1 := [
    ^'Unknown, data not initialized'
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := L1DescriptionCMD.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^'Unknown'
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    recoveredLocal2 := recoveredValue5.
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := [
    ^'Unknown, data not initialized'
].
    (recoveredValue6) ifNil: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := [
    ^'Unknown'
].
    recoveredValue11 := (recoveredValue8) at: (recoveredValue9) ifAbsent: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := [
    ^'Unknown, data not initialized'
].
    (recoveredValue12) ifNil: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredArg3.
    recoveredValue16 := [
    ^'Unknown'
].
    recoveredValue17 := (recoveredValue14) at: (recoveredValue15) ifAbsent: (recoveredValue16).
    ^recoveredValue17
! !

"ASDBase.ic method 0x2068112c; bytecode file offset 0xf7dc84"
!SGL1Message class methodsFor: 'recovered'!
initializeL1Errors
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 recoveredValue107 recoveredValue108 recoveredValue109 recoveredValue110 recoveredValue111 recoveredValue112 recoveredValue113 recoveredValue114 recoveredValue115 recoveredValue116 recoveredValue117 recoveredValue118 recoveredValue119 recoveredValue120 recoveredValue121 recoveredValue122 recoveredValue123 recoveredValue124 recoveredValue125 recoveredValue126 recoveredValue127 recoveredValue128 recoveredValue129 recoveredValue130 recoveredValue131 recoveredValue132 recoveredValue133 recoveredValue134 recoveredValue135 recoveredValue136 recoveredValue137 recoveredValue138 recoveredValue139 recoveredValue140 recoveredValue141 recoveredValue142 recoveredValue143 recoveredValue144 recoveredValue145 recoveredValue146 recoveredValue147 recoveredValue148 recoveredValue149 recoveredValue150 recoveredValue151 recoveredValue152 recoveredValue153 recoveredValue154 recoveredValue155 recoveredValue156 recoveredValue157 recoveredValue158 recoveredValue159 recoveredValue160 recoveredValue161 recoveredValue162 recoveredValue163 recoveredValue164 recoveredValue165 recoveredValue166 recoveredValue167 recoveredValue168 recoveredValue169 recoveredValue170 recoveredValue171 recoveredValue172 recoveredValue173 recoveredValue174 recoveredValue175 recoveredValue176 recoveredValue177 recoveredValue178 recoveredValue179 recoveredValue180 recoveredValue181 recoveredValue182 recoveredValue183 recoveredValue184 recoveredValue185 recoveredValue186 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    L1Errors := recoveredValue1.
    recoveredValue2 := L1Errors.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) at: (0) put: ('No Error').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) at: (2) put: ('Target Exception: Floating Point Exception (NotANumber)').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) at: (5) put: ('Target Exception: Invalid Memory Access').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) at: (6) put: ('Target Exception: Invalid Array Access').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) at: (7) put: ('Target Exception: Datatype Misalignment').
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) at: (8) put: ('Target Exception: Illegal Instruction').
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) at: (9) put: ('Target Exception: Stack Overflow').
    recoveredValue10 := recoveredValue2.
    (recoveredValue10) at: (101) put: ('Undefined Object').
    recoveredValue11 := recoveredValue2.
    (recoveredValue11) at: (102) put: ('Undefined method table').
    recoveredValue12 := recoveredValue2.
    (recoveredValue12) at: (103) put: ('Invalid simulation object method').
    recoveredValue13 := recoveredValue2.
    (recoveredValue13) at: (104) put: ('Invalid Object Number (OID)').
    recoveredValue14 := recoveredValue2.
    (recoveredValue14) at: (105) put: ('Invalid Process Number (PID)').
    recoveredValue15 := recoveredValue2.
    (recoveredValue15) at: (106) put: ('L1-Routing failed').
    recoveredValue16 := recoveredValue2.
    (recoveredValue16) at: (107) put: ('Data buffer returned from target has invalid length.').
    recoveredValue17 := recoveredValue2.
    (recoveredValue17) at: (108) put: ('Target is out of memory').
    recoveredValue18 := recoveredValue2.
    (recoveredValue18) at: (109) put: ('Unknown Exception occurred in Target').
    recoveredValue19 := recoveredValue2.
    (recoveredValue19) at: (112) put: ('PPC: Watchdog Reset').
    recoveredValue20 := recoveredValue2.
    (recoveredValue20) at: (113) put: ('PPC: Machine Check Exception (0x00200)').
    recoveredValue21 := recoveredValue2.
    (recoveredValue21) at: (114) put: ('PPC: DSI Exception (0x00300)').
    recoveredValue22 := recoveredValue2.
    (recoveredValue22) at: (115) put: ('PPC: ISI Exception (0x00400)').
    recoveredValue23 := recoveredValue2.
    (recoveredValue23) at: (116) put: ('PPC: Alignment Exception (0x00600)').
    recoveredValue24 := recoveredValue2.
    (recoveredValue24) at: (117) put: ('PPC: Program Exception (0x00700)').
    recoveredValue25 := recoveredValue2.
    (recoveredValue25) at: (118) put: ('PPC: Floating-Point Unavailable Exception (0x00800)').
    recoveredValue26 := recoveredValue2.
    (recoveredValue26) at: (119) put: ('PPC: System Call Exception (0x00C00)').
    recoveredValue27 := recoveredValue2.
    (recoveredValue27) at: (120) put: ('PPC: Trace Exception (0x00D00)').
    recoveredValue28 := recoveredValue2.
    (recoveredValue28) at: (121) put: ('PPC: Instruction Address Breakpoint Exception (0x01300)').
    recoveredValue29 := recoveredValue2.
    (recoveredValue29) at: (122) put: ('PPC: System Management Interrupt (0x01400)').
    recoveredValue30 := recoveredValue2.
    (recoveredValue30) at: (200) put: ('Could not read Data from L1-Buffer').
    recoveredValue31 := recoveredValue2.
    (recoveredValue31) at: (201) put: ('An invalid floating point value was read from the target').
    recoveredValue32 := recoveredValue2.
    (recoveredValue32) at: (202) put: ('Unhandled Exception occured').
    recoveredValue33 := recoveredValue2.
    (recoveredValue33) at: (126) put: ('Numeric Exception: Integer Overflow').
    recoveredValue34 := recoveredValue2.
    (recoveredValue34) at: (127) put: ('Numeric Exception: Integer Division by Zero').
    recoveredValue35 := recoveredValue2.
    (recoveredValue35) at: (129) put: ('Floating Point Exception: invalid operation').
    recoveredValue36 := recoveredValue2.
    (recoveredValue36) at: (131) put: ('Floating Point Exception: division by zero').
    recoveredValue37 := recoveredValue2.
    (recoveredValue37) at: (132) put: ('Floating Point Exception: overflow').
    recoveredValue38 := recoveredValue2.
    (recoveredValue38) at: (133) put: ('Floating Point Exception: underflow').
    recoveredValue39 := recoveredValue2.
    (recoveredValue39) at: (134) put: ('Floating Point Exception: precision loss').
    recoveredValue40 := recoveredValue2.
    (recoveredValue40) at: (135) put: ('Floating Point Exception: stack overflow').
    recoveredValue41 := recoveredValue2.
    (recoveredValue41) at: (138) put: ('Floating Point Exception: denormal operand').
    recoveredValue42 := recoveredValue2.
    (recoveredValue42) at: (140) put: ('Floating Point Exception (explicitly raised)').
    recoveredValue43 := recoveredValue2.
    (recoveredValue43) at: (150) put: ('The L1-routing on the measurement controller failed').
    recoveredValue44 := recoveredValue2.
    (recoveredValue44) at: (151) put: ('The L1-routing by communication controller failed').
    recoveredValue45 := recoveredValue2.
    (recoveredValue45) at: (152) put: ('The administration of the simulation controller failed').
    recoveredValue46 := recoveredValue2.
    (recoveredValue46) at: (153) put: ('General Loader failure').
    recoveredValue47 := recoveredValue2.
    (recoveredValue47) at: (160) put: ('OSEK Watchdog Reset').
    recoveredValue48 := recoveredValue2.
    (recoveredValue48) at: (161) put: ('USER Watchdog Reset').
    recoveredValue49 := recoveredValue2.
    (recoveredValue49) at: (162) put: ('Overtemperature').
    recoveredValue50 := recoveredValue2.
    (recoveredValue50) at: (163) put: ('Shutdown triggered by Wakeup Logic"').
    recoveredValue51 := recoveredValue2.
    (recoveredValue51) at: (164) put: ('License is missing').
    recoveredValue52 := recoveredValue2.
    (recoveredValue52) at: (165) put: ('Persistent Memory Failure (probably USB Stick Missing)').
    (recoveredValue2) at: (300) put: ('A firmware update of the communication controller is necessary').
    recoveredValue53 := Dictionary.
    recoveredValue54 := (recoveredValue53) new.
    recoveredValue55 := recoveredValue54.
    L1ErrorsDeveloperAdvice := recoveredValue55.
    recoveredValue56 := recoveredValue54.
    (recoveredValue56) at: (103) put: ('The object on the target might be of a different type than ASCET expects. Check:
- Is order of elements in the generated code and the simulation data structure the same?
- Is the flag "Generate Method Body" deactivated?').
    recoveredValue57 := recoveredValue54.
    (recoveredValue57) at: (107) put: ('The object on the target might be of a different type than ASCET expects. Check whether the order of elements in the generated code and the simulation data structure is the same').
    recoveredValue58 := recoveredValue54.
    (recoveredValue58) at: (109) put: ('Attach a debugger and watch out for any numerical or memory access exceptions.').
    recoveredValue59 := recoveredValue54.
    (recoveredValue59) at: (200) put: ('Attach a debugger and watch out for any numerical or memory access exceptions.').
    recoveredValue60 := recoveredValue54.
    (recoveredValue60) at: (201) put: ('Attach a debugger and watch out for any numerical or memory access exceptions.').
    (recoveredValue54) at: (202) put: ('Attach a debugger and watch out for any exceptions.').
    recoveredValue61 := Dictionary.
    recoveredValue62 := (recoveredValue61) new.
    recoveredValue63 := recoveredValue62.
    L1DescriptionPID := recoveredValue63.
    recoveredValue64 := recoveredValue62.
    (recoveredValue64) at: (0) put: ('Simulation process').
    recoveredValue65 := recoveredValue62.
    (recoveredValue65) at: (2) put: ('Event control process').
    recoveredValue66 := recoveredValue62.
    (recoveredValue66) at: (3) put: ('Data acquisiton process').
    recoveredValue67 := recoveredValue62.
    (recoveredValue67) at: (2047) put: ('Loader process').
    (recoveredValue62) at: (2048) put: ('Admin process').
    recoveredValue68 := Dictionary.
    recoveredValue69 := (recoveredValue68) new.
    L1DescriptionOID := recoveredValue69.
    recoveredValue70 := L1DescriptionOID.
    recoveredValue71 := Dictionary.
    recoveredValue72 := (recoveredValue71) new.
    recoveredValue73 := recoveredValue72.
    (recoveredValue73) at: (0) put: ('debugSim').
    recoveredValue74 := recoveredValue72.
    (recoveredValue74) at: (1) put: ('simMan_c').
    recoveredValue75 := recoveredValue72.
    (recoveredValue75) at: (2) put: ('ercosMan_c').
    recoveredValue76 := recoveredValue72.
    (recoveredValue76) at: (3) put: ('userDebug string').
    recoveredValue77 := recoveredValue72.
    (recoveredValue77) at: (4) put: ('userError string').
    recoveredValue78 := recoveredValue72.
    (recoveredValue78) at: (5) put: ('crossbarMan_c').
    recoveredValue79 := recoveredValue72.
    (recoveredValue79) at: (6) put: ('stimuliGenMan_c').
    recoveredValue80 := recoveredValue72.
    (recoveredValue80) at: (7) put: ('rtioMan_c').
    recoveredValue81 := recoveredValue72.
    (recoveredValue81) at: (8) put: ('olmMan_c').
    recoveredValue82 := recoveredValue72.
    (recoveredValue82) at: (9) put: ('matlabMan_c').
    recoveredValue83 := recoveredValue72.
    (recoveredValue83) at: (10) put: ('nvramMan_c').
    (recoveredValue70) at: (0) put: (recoveredValue72).
    recoveredValue84 := L1DescriptionOID.
    recoveredValue85 := Dictionary.
    recoveredValue86 := (recoveredValue85) new.
    recoveredValue87 := recoveredValue86.
    (recoveredValue87) at: (0) put: ('debugTim').
    recoveredValue88 := recoveredValue86.
    (recoveredValue88) at: (1) put: ('eventControl_c').
    (recoveredValue84) at: (2) put: (recoveredValue86).
    recoveredValue89 := L1DescriptionOID.
    recoveredValue90 := Dictionary.
    recoveredValue91 := (recoveredValue90) new.
    recoveredValue92 := recoveredValue91.
    (recoveredValue92) at: (0) put: ('debugAcqui').
    recoveredValue93 := recoveredValue91.
    (recoveredValue93) at: (1) put: ('dacq_c').
    recoveredValue94 := recoveredValue91.
    (recoveredValue94) at: (2) put: ('dacqLog_c').
    recoveredValue95 := recoveredValue91.
    (recoveredValue95) at: (3) put: ('a1bDacq_c').
    (recoveredValue89) at: (3) put: (recoveredValue91).
    recoveredValue96 := L1DescriptionOID.
    recoveredValue97 := Dictionary.
    recoveredValue98 := (recoveredValue97) new.
    recoveredValue99 := recoveredValue98.
    (recoveredValue99) at: (0) put: ('debugVppc').
    recoveredValue100 := recoveredValue98.
    (recoveredValue100) at: (1) put: ('vppcMan_c').
    (recoveredValue96) at: (2047) put: (recoveredValue98).
    recoveredValue101 := L1DescriptionOID.
    recoveredValue102 := Dictionary.
    recoveredValue103 := (recoveredValue102) new.
    recoveredValue104 := recoveredValue103.
    (recoveredValue104) at: (0) put: ('debugUsap / debugVppc').
    recoveredValue105 := recoveredValue103.
    (recoveredValue105) at: (1) put: ('usapMan_c / vppcMan_c').
    (recoveredValue101) at: (2048) put: (recoveredValue103).
    recoveredValue106 := Dictionary.
    recoveredValue107 := (recoveredValue106) new.
    L1DescriptionCMD := recoveredValue107.
    recoveredValue108 := L1DescriptionCMD.
    recoveredValue109 := Dictionary.
    recoveredValue110 := (recoveredValue109) new.
    recoveredValue111 := recoveredValue110.
    recoveredValue112 := Dictionary.
    recoveredValue113 := (recoveredValue112) new.
    recoveredValue114 := recoveredValue113.
    (recoveredValue114) at: (0) put: ('readString').
    (recoveredValue111) at: (0) put: (recoveredValue113).
    recoveredValue115 := recoveredValue110.
    recoveredValue116 := Dictionary.
    recoveredValue117 := (recoveredValue116) new.
    recoveredValue118 := recoveredValue117.
    (recoveredValue118) at: (0) put: ('getUsedMemory()').
    recoveredValue119 := recoveredValue117.
    (recoveredValue119) at: (1) put: ('getSimOIDForKey()').
    recoveredValue120 := recoveredValue117.
    (recoveredValue120) at: (2) put: ('initModel()').
    recoveredValue121 := recoveredValue117.
    (recoveredValue121) at: (3) put: ('freeMemory()').
    recoveredValue122 := recoveredValue117.
    (recoveredValue122) at: (4) put: ('startedWithoutHost()').
    recoveredValue123 := recoveredValue117.
    (recoveredValue123) at: (5) put: ('getProgramIdentifier()').
    recoveredValue124 := recoveredValue117.
    (recoveredValue124) at: (6) put: ('getAvailableMemory()').
    recoveredValue125 := recoveredValue117.
    (recoveredValue125) at: (7) put: ('getTargetIdentifier()').
    recoveredValue126 := recoveredValue117.
    (recoveredValue126) at: (8) put: ('uploadTargetData()').
    recoveredValue127 := recoveredValue117.
    (recoveredValue127) at: (9) put: ('downloadTargetData()').
    recoveredValue128 := recoveredValue117.
    (recoveredValue128) at: (10) put: ('prepareLoading()').
    recoveredValue129 := recoveredValue117.
    (recoveredValue129) at: (11) put: ('finishLoading()').
    recoveredValue130 := recoveredValue117.
    (recoveredValue130) at: (12) put: ('getSWVersion()').
    recoveredValue131 := recoveredValue117.
    (recoveredValue131) at: (13) put: ('getSubModelPseudoAdr()').
    recoveredValue132 := recoveredValue117.
    (recoveredValue132) at: (14) put: ('getModelType()').
    (recoveredValue115) at: (1) put: (recoveredValue117).
    recoveredValue133 := recoveredValue110.
    recoveredValue134 := Dictionary.
    recoveredValue135 := (recoveredValue134) new.
    recoveredValue136 := recoveredValue135.
    (recoveredValue136) at: (0) put: ('initERCOSmanager()').
    recoveredValue137 := recoveredValue135.
    (recoveredValue137) at: (1) put: ('startOffLine()').
    recoveredValue138 := recoveredValue135.
    (recoveredValue138) at: (2) put: ('startOnLine()').
    recoveredValue139 := recoveredValue135.
    (recoveredValue139) at: (3) put: ('startUserMode()').
    recoveredValue140 := recoveredValue135.
    (recoveredValue140) at: (4) put: ('stopUserMode()').
    recoveredValue141 := recoveredValue135.
    (recoveredValue141) at: (5) put: ('switchToOpMode()').
    recoveredValue142 := recoveredValue135.
    (recoveredValue142) at: (6) put: ('getOpMode()').
    recoveredValue143 := recoveredValue135.
    (recoveredValue143) at: (7) put: ('activateTask()').
    recoveredValue144 := recoveredValue135.
    (recoveredValue144) at: (8) put: ('getTaskId()').
    (recoveredValue133) at: (2) put: (recoveredValue135).
    recoveredValue145 := recoveredValue110.
    recoveredValue146 := Dictionary.
    recoveredValue147 := (recoveredValue146) new.
    recoveredValue148 := recoveredValue147.
    (recoveredValue148) at: (0) put: ('readString').
    (recoveredValue145) at: (3) put: (recoveredValue147).
    recoveredValue149 := recoveredValue110.
    recoveredValue150 := Dictionary.
    recoveredValue151 := (recoveredValue150) new.
    recoveredValue152 := recoveredValue151.
    (recoveredValue152) at: (0) put: ('readString').
    (recoveredValue149) at: (4) put: (recoveredValue151).
    (recoveredValue108) at: (0) put: (recoveredValue110).
    recoveredValue153 := Dictionary.
    recoveredValue154 := (recoveredValue153) new.
    recoveredValue155 := recoveredValue154.
    L1DescriptiveErrorMessages := recoveredValue155.
    recoveredValue156 := recoveredValue154.
    (recoveredValue156) at: ('L1_nvRamManager') put: ('executing the NV RAM Manager method %1.').
    recoveredValue157 := recoveredValue154.
    (recoveredValue157) at: ('L1_getSelfPtr') put: ('retrieving the self pointer for %1.').
    recoveredValue158 := recoveredValue154.
    (recoveredValue158) at: ('L1_AccessElement') put: ('executing the access element method %1.').
    recoveredValue159 := recoveredValue154.
    (recoveredValue159) at: ('L1_SimOIDForKey') put: ('retrieving the OID for pseudo address %1.').
    recoveredValue160 := recoveredValue154.
    (recoveredValue160) at: ('L1_OS') put: ('executing the operating system procedure %1.').
    recoveredValue161 := recoveredValue154.
    (recoveredValue161) at: ('L1_activateTaskWithId') put: ('executing the task %1.').
    recoveredValue162 := recoveredValue154.
    (recoveredValue162) at: ('L1_readMaxSize') put: ('reading the max size of matrix %1.').
    recoveredValue163 := recoveredValue154.
    (recoveredValue163) at: ('L1_readMatrixAtXYIndex') put: ('reading the matrix element %1.').
    recoveredValue164 := recoveredValue154.
    (recoveredValue164) at: ('L1_writeMatrixAt') put: ('writing the matrix element %1.').
    recoveredValue165 := recoveredValue154.
    (recoveredValue165) at: ('L1_getValuePointerAtXIndex') put: ('reading the matrix value pointer %1.').
    recoveredValue166 := recoveredValue154.
    (recoveredValue166) at: ('L1_getScalar') put: ('reading the scalar value %1.').
    recoveredValue167 := recoveredValue154.
    (recoveredValue167) at: ('L1_setScalar') put: ('writing the scalar value %1.').
    recoveredValue168 := recoveredValue154.
    (recoveredValue168) at: ('L1_getMinMaxQuant') put: ('getting minimum, maximum, and quantization of scalar value %1.').
    recoveredValue169 := recoveredValue154.
    (recoveredValue169) at: ('L1_setMinMaxQuant') put: ('setting minimum, maximum, and quantization of scalar value %1.').
    recoveredValue170 := recoveredValue154.
    (recoveredValue170) at: ('L1_getValuePtr') put: ('retrieving the value pointer of scalar value %1.').
    recoveredValue171 := recoveredValue154.
    (recoveredValue171) at: ('L1_performASG') put: ('executing the method %1.').
    recoveredValue172 := recoveredValue154.
    (recoveredValue172) at: ('L1_dependentParameters') put: ('updating the dependent parameters for %1.').
    recoveredValue173 := recoveredValue154.
    (recoveredValue173) at: ('L1_vector_getValuePtr') put: ('retrieving the value pointer of vector value %1.').
    recoveredValue174 := recoveredValue154.
    (recoveredValue174) at: ('L1_readVectorAtIndex') put: ('reading the vector value %1.').
    recoveredValue175 := recoveredValue154.
    (recoveredValue175) at: ('L1_writeVectorAtIndex') put: ('writing the vector value %1.').
    recoveredValue176 := recoveredValue154.
    (recoveredValue176) at: ('L1_getVectorMaxSize') put: ('reading the max size of vector %1.').
    recoveredValue177 := recoveredValue154.
    (recoveredValue177) at: ('L1_getWorkingPoint') put: ('reading the working point of a vector using %1.').
    recoveredValue178 := recoveredValue154.
    (recoveredValue178) at: ('L1_AccessAdmin') put: ('executing target access procedure call %1.').
    recoveredValue179 := recoveredValue154.
    (recoveredValue179) at: ('L1_AccessOperatingSystem') put: ('executing target OS procedure call %1.').
    recoveredValue180 := Dictionary.
    recoveredValue181 := (recoveredValue180) new.
    recoveredValue182 := recoveredValue181.
    L1ErrorsUserAdvice := recoveredValue182.
    recoveredValue183 := recoveredValue181.
    recoveredValue184 := ('Hint: Make sure the generation of method bodies is enabled in the implementation editor for this component. \Make sure the project option to generate protected vector indices is enabled') withCrs.
    (recoveredValue183) at: (103) put: (recoveredValue184).
    recoveredValue185 := recoveredValue181.
    (recoveredValue185) at: (107) put: ('Hint: Make sure the generation of method bodies is enabled in the implementation editor for this component. ').
    recoveredValue186 := recoveredValue181.
    (recoveredValue186) at: (201) put: ('Hint: This error might have been caused by code that performs illegal floating point operations (e.g. divison by zero)').
    (recoveredValue181) at: (202) put: ('Hint: This error might have been caused by model code that performs operations').
    ^self
! !

