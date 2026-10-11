"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027948; bytecode file offset 0x924260"
!SGUIContext methodsFor: 'recovered'!
hasUI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userInterface.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20069858; bytecode file offset 0x966bdc"
!SGUIContext methodsFor: 'recovered'!
userInterface
    | recoveredValue0 |
    recoveredValue0 := userInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aacc; bytecode file offset 0x967a18"
!SGUIContext methodsFor: 'recovered'!
logStream
    | recoveredValue0 |
    recoveredValue0 := logStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b990; bytecode file offset 0x96873c"
!SGUIContext methodsFor: 'recovered'!
progressDialog
    | recoveredValue0 |
    recoveredValue0 := progressDialog.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c404; bytecode file offset 0x9692b0"
!SGUIContext methodsFor: 'recovered'!
lastScrollPosList
    | recoveredValue0 |
    recoveredValue0 := lastScrollPosList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c0f88; bytecode file offset 0x9bdf14"
!SGUIContext methodsFor: 'recovered'!
userInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    userInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c187c; bytecode file offset 0x9beac8"
!SGUIContext methodsFor: 'recovered'!
logStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    logStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2990; bytecode file offset 0x9bf474"
!SGUIContext methodsFor: 'recovered'!
progressDialog: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    progressDialog := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c309c; bytecode file offset 0x9bfde0"
!SGUIContext methodsFor: 'recovered'!
lastScrollPosList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastScrollPosList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201645f8; bytecode file offset 0xa60ee0"
!SGUIContext methodsFor: 'recovered'!
setLastScrollPos: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lastScrollPosList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            lastScrollPosList := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := lastScrollPosList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20228a60; bytecode file offset 0xb25340"
!SGUIContext methodsFor: 'recovered'!
duplicateForLibrary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) library: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := (self) project.
    (recoveredValue4) project: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := (self) makeConfig.
    (recoveredValue6) makeConfig: (recoveredValue7).
    recoveredValue8 := recoveredValue1.
    recoveredValue9 := (self) lastScrollPosList.
    (recoveredValue8) lastScrollPosList: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := (self) userInterface.
    (recoveredValue10) userInterface: (recoveredValue11).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2023b438; bytecode file offset 0xb37d04"
!SGUIContext methodsFor: 'recovered'!
getLastScrollPos
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := lastScrollPosList.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            lastScrollPosList := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := lastScrollPosList.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := Point.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) x: (recoveredStack2) y: (recoveredStack3).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := lastScrollPosList.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeLast.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

