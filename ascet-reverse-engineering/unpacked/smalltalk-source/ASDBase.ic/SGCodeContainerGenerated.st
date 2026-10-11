"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018c74; bytecode file offset 0x92209c"
!SGCodeContainerGenerated methodsFor: 'recovered'!
classInterfaceTimeStampKey
    ^'classInterface'
! !

"ASDBase.ic method 0x200202dc; bytecode file offset 0x92209c"
!SGCodeContainerGenerated methodsFor: 'recovered'!
loadableTimeStampKey
    ^'loadableTimeStamp'
! !

"ASDBase.ic method 0x200490fc; bytecode file offset 0x9459f8"
!SGCodeContainerGenerated methodsFor: 'recovered'!
reinitializePlSources
    plSources := nil.
    ^self
! !

"ASDBase.ic method 0x2006d894; bytecode file offset 0x96a390"
!SGCodeContainerGenerated methodsFor: 'recovered'!
loadableSource
    | recoveredValue0 |
    recoveredValue0 := loadableSource.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e828; bytecode file offset 0x96b41c"
!SGCodeContainerGenerated methodsFor: 'recovered'!
mdlClassInterface
    | recoveredValue0 |
    recoveredValue0 := mdlClassInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006efe4; bytecode file offset 0x96b8a0"
!SGCodeContainerGenerated methodsFor: 'recovered'!
mapFile
    | recoveredValue0 |
    recoveredValue0 := mapFile.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f558; bytecode file offset 0x96bf7c"
!SGCodeContainerGenerated methodsFor: 'recovered'!
plSources
    | recoveredValue0 |
    recoveredValue0 := plSources.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f940; bytecode file offset 0x96c1f4"
!SGCodeContainerGenerated methodsFor: 'recovered'!
plResults
    | recoveredValue0 |
    recoveredValue0 := plResults.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009b630; bytecode file offset 0x99803c"
!SGCodeContainerGenerated methodsFor: 'recovered'!
reinitialize
    (self) initialize.
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x2009f7d4; bytecode file offset 0x99c9e0"
!SGCodeContainerGenerated methodsFor: 'recovered'!
updateLoadableTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) applicationTimeStampNow.
    (self) loadableTimeStamp: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a88dc; bytecode file offset 0x9a5194"
!SGCodeContainerGenerated methodsFor: 'recovered'!
vatFile: recoveredArg1
    | recoveredValue0 |
    (self) modifiedWithoutTimeStamp.
    recoveredValue0 := recoveredArg1.
    vatFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bc93c; bytecode file offset 0x9b94b8"
!SGCodeContainerGenerated methodsFor: 'recovered'!
classInterfaceTimeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) timeStamps.
    recoveredValue1 := (self) classInterfaceTimeStampKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bc964; bytecode file offset 0x9b94b8"
!SGCodeContainerGenerated methodsFor: 'recovered'!
loadableTimeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) timeStamps.
    recoveredValue1 := (self) loadableTimeStampKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c3ea4; bytecode file offset 0x9c0bf0"
!SGCodeContainerGenerated methodsFor: 'recovered'!
loadableSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loadableSource := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9a54; bytecode file offset 0x9d6310"
!SGCodeContainerGenerated methodsFor: 'recovered'!
dbSource: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) encrypt: (recoveredValue0).
    dbSource := recoveredValue1.
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x200d9a74; bytecode file offset 0x9d6330"
!SGCodeContainerGenerated methodsFor: 'recovered'!
makeSource: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) encrypt: (recoveredValue0).
    makeSource := recoveredValue1.
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x2010686c; bytecode file offset 0xa03124"
!SGCodeContainerGenerated methodsFor: 'recovered'!
vatFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := vatFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := vatFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a520; bytecode file offset 0xa26dec"
!SGCodeContainerGenerated methodsFor: 'recovered'!
timeStamps
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := timeStamps.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            timeStamps := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := timeStamps.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012a770; bytecode file offset 0xa2702c"
!SGCodeContainerGenerated methodsFor: 'recovered'!
dbSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dbSource.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            dbSource := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := dbSource.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) decrypt: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ab38; bytecode file offset 0xa273f4"
!SGCodeContainerGenerated methodsFor: 'recovered'!
makeSource
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := makeSource.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            makeSource := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := makeSource.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) decrypt: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20175ccc; bytecode file offset 0xa72588"
!SGCodeContainerGenerated methodsFor: 'recovered'!
mapFile: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            mapFile := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            mapFile := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20192e0c; bytecode file offset 0xa8f6dc"
!SGCodeContainerGenerated methodsFor: 'recovered'!
mdlClassInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    mdlClassInterface := recoveredValue0.
    recoveredValue1 := Date.
    recoveredValue2 := (recoveredValue1) today.
    recoveredValue3 := (recoveredValue2) asSeconds.
    recoveredValue4 := Time.
    recoveredValue5 := (recoveredValue4) now.
    recoveredValue6 := (recoveredValue5) asSeconds.
    recoveredValue7 := (recoveredValue3) + (recoveredValue6).
    (self) classInterfaceTimeStamp: (recoveredValue7).
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x2020bb40; bytecode file offset 0xb08400"
!SGCodeContainerGenerated methodsFor: 'recovered'!
loadableTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) timeStamps.
    recoveredValue1 := (self) loadableTimeStampKey.
    recoveredValue2 := [
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := loadableTimeStamp.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            (recoveredBlock7Stack1 ~~ nil) ifTrue: [recoveredBlock7PC := 26] ifFalse: [recoveredBlock7PC := 20].
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := 0.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := loadableTimeStamp.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20219b44; bytecode file offset 0xb16414"
!SGCodeContainerGenerated methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) loadableSource: ('').
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    timeStamps := recoveredValue1.
    mdlClassInterface := nil.
    mapFile := nil.
    dbSource := nil.
    (self) reinitializePlSources.
    ^self
! !

