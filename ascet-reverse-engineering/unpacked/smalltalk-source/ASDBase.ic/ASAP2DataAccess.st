"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004ba84; bytecode file offset 0x948384"
!ASAP2DataAccess methodsFor: 'recovered'!
readAccessFlashCode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004bb88; bytecode file offset 0x94877c"
!ASAP2DataAccess methodsFor: 'recovered'!
readAccessFlashData
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c274; bytecode file offset 0x948b80"
!ASAP2DataAccess methodsFor: 'recovered'!
upAndDownloadOnlyActivePage
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c468; bytecode file offset 0x948e28"
!ASAP2DataAccess methodsFor: 'recovered'!
verifyAccessFlashCode
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c5cc; bytecode file offset 0x949118"
!ASAP2DataAccess methodsFor: 'recovered'!
flashPageType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c9c4; bytecode file offset 0x9492dc"
!ASAP2DataAccess methodsFor: 'recovered'!
ramPageType
    | recoveredValue0 |
    recoveredValue0 := (self) at: (9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a4758; bytecode file offset 0x9a1ad4"
!ASAP2DataAccess methodsFor: 'recovered'!
getRamPageType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) ramPageType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4778; bytecode file offset 0x9a1ad4"
!ASAP2DataAccess methodsFor: 'recovered'!
getFlashPageType: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getInteger: (recoveredValue0).
    (self) flashPageType: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4a58; bytecode file offset 0x9a1ad4"
!ASAP2DataAccess methodsFor: 'recovered'!
getReadAccessFlashCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBoolean: (recoveredValue0).
    (self) readAccessFlashCode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4ba8; bytecode file offset 0x9a1ad4"
!ASAP2DataAccess methodsFor: 'recovered'!
getReadAccessFlashData: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBoolean: (recoveredValue0).
    (self) readAccessFlashData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a4bf8; bytecode file offset 0x9a1ad4"
!ASAP2DataAccess methodsFor: 'recovered'!
getVerifyAccessFlashCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBoolean: (recoveredValue0).
    (self) verifyAccessFlashCode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5168; bytecode file offset 0x9a1ad4"
!ASAP2DataAccess methodsFor: 'recovered'!
getUpAndDownloadOnlyActivePage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getBoolean: (recoveredValue0).
    (self) upAndDownloadOnlyActivePage: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a6434; bytecode file offset 0x9a2f38"
!ASAP2DataAccess methodsFor: 'recovered'!
readAccessFlashCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6968; bytecode file offset 0x9a32e0"
!ASAP2DataAccess methodsFor: 'recovered'!
readAccessFlashData: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6a64; bytecode file offset 0x9a3694"
!ASAP2DataAccess methodsFor: 'recovered'!
upAndDownloadOnlyActivePage: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6f2c; bytecode file offset 0x9a391c"
!ASAP2DataAccess methodsFor: 'recovered'!
verifyAccessFlashCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a707c; bytecode file offset 0x9a3b44"
!ASAP2DataAccess methodsFor: 'recovered'!
flashPageType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7358; bytecode file offset 0x9a3d0c"
!ASAP2DataAccess methodsFor: 'recovered'!
ramPageType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (9) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200fd97c; bytecode file offset 0x9fa3f4"
!ASAP2DataAccess methodsFor: 'recovered'!
putVerifyAccessFlashCodeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) verifyAccessFlashCode.
    (self) putIn: (recoveredValue1) boolean: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd990; bytecode file offset 0x9fa3f4"
!ASAP2DataAccess methodsFor: 'recovered'!
putReadAccessFlashCodeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) readAccessFlashCode.
    (self) putIn: (recoveredValue1) boolean: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fd9a4; bytecode file offset 0x9fa3f4"
!ASAP2DataAccess methodsFor: 'recovered'!
putReadAccessFlashDataIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) readAccessFlashData.
    (self) putIn: (recoveredValue1) boolean: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fda08; bytecode file offset 0x9fa3f4"
!ASAP2DataAccess methodsFor: 'recovered'!
putFlashPageTypeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) flashPageType.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fda80; bytecode file offset 0x9fa3f4"
!ASAP2DataAccess methodsFor: 'recovered'!
putUpAndDownloadOnlyActivePageIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) upAndDownloadOnlyActivePage.
    (self) putIn: (recoveredValue1) boolean: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fda94; bytecode file offset 0x9fa3f4"
!ASAP2DataAccess methodsFor: 'recovered'!
putRamPageTypeIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) ramPageType.
    (self) putIn: (recoveredValue1) integer: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2011d844; bytecode file offset 0xa1a2f8"
!ASAP2DataAccess methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201e58dc; bytecode file offset 0xae2268"
!ASAP2DataAccess methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    (self) putFlashPageTypeIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putRamPageTypeIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putReadAccessFlashDataIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putVerifyAccessFlashCodeIn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) putReadAccessFlashCodeIn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) putUpAndDownloadOnlyActivePageIn: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2024a154; bytecode file offset 0xb46a28"
!ASAP2DataAccess methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getFlashPageType: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getRamPageType: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) getReadAccessFlashData: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (self) getVerifyAccessFlashCode: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (self) getReadAccessFlashCode: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) getUpAndDownloadOnlyActivePage: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (self) parseStruct: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x2027807c; bytecode file offset 0xb74948"
!ASAP2DataAccess methodsFor: 'recovered'!
putIn: recoveredArg1 block: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) putIn: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) putBeginIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) putKeyWordIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) putParameterIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) putEndIn: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) putKeyWordIn: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

