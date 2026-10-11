"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20049124; bytecode file offset 0x9459f8"
!ASDAbstractSingleton class methodsFor: 'recovered'!
removeInstance
    theInstance := nil.
    ^self
! !

"ASDBase.ic method 0x2006f660; bytecode file offset 0x96bf7c"
!ASDAbstractSingleton class methodsFor: 'recovered'!
theInstance
    | recoveredValue0 |
    recoveredValue0 := theInstance.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007afa4; bytecode file offset 0x97c330"
!ASDAbstractSingleton class methodsFor: 'recovered'!
isRTSInstalled
    ^false
! !

"ASDBase.ic method 0x2007da5c; bytecode file offset 0x97c330"
!ASDAbstractSingleton class methodsFor: 'recovered'!
isSCMInstalled
    ^false
! !

"ASDBase.ic method 0x2007e8b4; bytecode file offset 0x97c330"
!ASDAbstractSingleton class methodsFor: 'recovered'!
isTraceManagementInstalled
    ^false
! !

"ASDBase.ic method 0x2007f354; bytecode file offset 0x97c330"
!ASDAbstractSingleton class methodsFor: 'recovered'!
isSCMActive
    ^false
! !

"ASDBase.ic method 0x2007f35c; bytecode file offset 0x97c330"
!ASDAbstractSingleton class methodsFor: 'recovered'!
isTraceManagementActive
    ^false
! !

"ASDBase.ic method 0x2010a7e8; bytecode file offset 0xa070bc"
!ASDAbstractSingleton class methodsFor: 'recovered'!
instance
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) theInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            theInstance := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) theInstance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20208594; bytecode file offset 0xb04e50"
!ASDAbstractSingleton class methodsFor: 'recovered'!
mockWith: recoveredArg1 while: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) theInstance.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    theInstance := recoveredValue1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Value0.
    theInstance := recoveredBlock16Value1.
    recoveredBlock16Value0
].
    recoveredValue4 := (recoveredValue2) ensure: (recoveredValue3).
    ^recoveredValue4
! !

