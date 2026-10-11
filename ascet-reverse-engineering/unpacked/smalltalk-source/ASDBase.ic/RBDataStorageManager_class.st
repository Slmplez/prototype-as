"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012c84; bytecode file offset 0x912098"
!RBDataStorageManager class methodsFor: 'recovered'!
defaultErrorClass
    | recoveredValue0 |
    recoveredValue0 := RBMeasureError.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013b3c; bytecode file offset 0x912098"
!RBDataStorageManager class methodsFor: 'recovered'!
defaultOfflineDataIdClass
    | recoveredValue0 |
    recoveredValue0 := RBOfflineDataId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200155b8; bytecode file offset 0x912098"
!RBDataStorageManager class methodsFor: 'recovered'!
lastFileName
    | recoveredValue0 |
    recoveredValue0 := LastFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003eb18; bytecode file offset 0x93bf94"
!RBDataStorageManager class methodsFor: 'recovered'!
defaultMDFHeaderInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBMDFHeaderInfo.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200543bc; bytecode file offset 0x951190"
!RBDataStorageManager class methodsFor: 'recovered'!
mdfHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MDFHeaderInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200544ac; bytecode file offset 0x951190"
!RBDataStorageManager class methodsFor: 'recovered'!
lastFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LastFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20061a00; bytecode file offset 0x95e838"
!RBDataStorageManager class methodsFor: 'recovered'!
getConfigurationObject
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdfHeader.
    recoveredValue1 := (recoveredValue0) text: ('').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d9488; bytecode file offset 0x9d5d4c"
!RBDataStorageManager class methodsFor: 'recovered'!
putConfigurationObject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
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
            (recoveredStack1) mdfHeader: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20114f40; bytecode file offset 0xa1183c"
!RBDataStorageManager class methodsFor: 'recovered'!
mdfHeader
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MDFHeaderInfo.
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
            recoveredStack1 := (recoveredStack1) defaultMDFHeaderInfo.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            MDFHeaderInfo := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := MDFHeaderInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

