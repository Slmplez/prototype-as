"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20009878; bytecode file offset 0x908be4"
!SGMdCSInterface methodsFor: 'recovered'!
methods
    | recoveredValue0 |
    recoveredValue0 := (self) selectMethodsFromTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003d668; bytecode file offset 0x93bf94"
!SGMdCSInterface methodsFor: 'recovered'!
arBaseCategory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgAutosarSettings.
    recoveredValue1 := (recoveredValue0) categoryCSInterface.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200558fc; bytecode file offset 0x952a9c"
!SGMdCSInterface methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlCSInterface: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200751a4; bytecode file offset 0x9757c8"
!SGMdCSInterface methodsFor: 'recovered'!
isMdlCSInterface
    ^true
! !

"ASDBase.ic method 0x2007b0c4; bytecode file offset 0x97c330"
!SGMdCSInterface methodsFor: 'recovered'!
hasMdlRcvInArgList
    ^false
! !

"ASDBase.ic method 0x20086cf8; bytecode file offset 0x98376c"
!SGMdCSInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) lookup: (recoveredValue0) ifFail: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018bfec; bytecode file offset 0xa888c8"
!SGMdCSInterface methodsFor: 'recovered'!
deepLookup: recoveredArg1 accessChain: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) lookup: (recoveredStack1) ifFail: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

