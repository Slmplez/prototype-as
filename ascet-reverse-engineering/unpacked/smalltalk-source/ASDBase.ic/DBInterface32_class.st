"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001646c; bytecode file offset 0x92209c"
!DBInterface32 class methodsFor: 'recovered'!
defaultUser
    ^'Willi.E.Coyote, genius'
! !

"ASDBase.ic method 0x20016a6c; bytecode file offset 0x92209c"
!DBInterface32 class methodsFor: 'recovered'!
defaultPath
    ^'c:\test'
! !

"ASDBase.ic method 0x2004eedc; bytecode file offset 0x94d048"
!DBInterface32 class methodsFor: 'recovered'!
saving
    (self) closeAllDataBases.
    ^self
! !

"ASDBase.ic method 0x2009b9c0; bytecode file offset 0x99829c"
!DBInterface32 class methodsFor: 'recovered'!
libraries
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Smalltalk.
    recoveredValue1 := (recoveredValue0) at: ('RBDBInterface').
    recoveredValue2 := (recoveredValue1) libraries.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200caaf0; bytecode file offset 0x9c73bc"
!DBInterface32 class methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) createOnly.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (self) setDBInterfaceGlobal: (recoveredValue1).
    recoveredValue2 := recoveredLocal1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200cab98; bytecode file offset 0x9c7458"
!DBInterface32 class methodsFor: 'recovered'!
createOnly
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) clearSelfClosing.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20241ccc; bytecode file offset 0xb3e5a4"
!DBInterface32 class methodsFor: 'recovered'!
closeAllDataBases
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasComponentLoader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) terminate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInterfaceGlobal.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:block280de228Arg1 | 
    | block280de228Stack0 block280de228Stack1 block280de228Stack2 block280de228Stack3 block280de228PC block280de228Step block280de228Done block280de228Result |
    block280de228Stack0 := self.
    block280de228PC := 4.
    block280de228Done := false.
    [block280de228Done not] whileTrue: [
        block280de228Step := block280de228PC.
        block280de228Step = 4 ifTrue: [
            block280de228Stack1 := nil.
            block280de228PC := 5.
        ].
        block280de228Step = 5 ifTrue: [
            block280de228Stack2 := block280de228Arg1.
            block280de228PC := 6.
        ].
        block280de228Step = 6 ifTrue: [
            block280de228Stack2 := (block280de228Stack2) isOpen.
            block280de228PC := 8.
        ].
        block280de228Step = 8 ifTrue: [
            (block280de228Stack2) ifTrue: [block280de228PC := 12] ifFalse: [block280de228PC := 16].
        ].
        block280de228Step = 12 ifTrue: [
            block280de228PC := 13.
        ].
        block280de228Step = 13 ifTrue: [
            block280de228Stack1 := block280de228Arg1.
            block280de228PC := 14.
        ].
        block280de228Step = 14 ifTrue: [
            block280de228Stack1 := (block280de228Stack1) closeLocalDatabase.
            block280de228PC := 16.
        ].
        block280de228Step = 16 ifTrue: [
            block280de228Result := block280de228Stack1.
            block280de228Done := true.
        ].
    ].
    block280de228Result
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := CTIFil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) closeOpenFiles.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDBInterfaceGlobal.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203dbddc; bytecode file offset 0xcd86c8"
!DBInterface32 class methodsFor: 'recovered'!
interfaceTypes
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := CTreeLocalObjectInterface.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := CTreeLocalAttributeInterface.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := CTreeLocalSearchInterface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := CTreeOldInterface.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'DBFileInterface'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 recoveredBlock32Value5 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := Array.
    recoveredBlock32Value2 := recoveredBlock32Arg1.
    recoveredBlock32Value3 := (recoveredBlock32Value1) with: (recoveredBlock32Value2).
    recoveredBlock32Value4 := (recoveredBlock32Value0) , (recoveredBlock32Value3).
    recoveredBlock32Value5 := recoveredBlock32Value4.
    recoveredLocal1 := recoveredBlock32Value5.
    recoveredBlock32Value4
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'DBAttributeFileInterface'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 recoveredBlock59Value3 recoveredBlock59Value4 recoveredBlock59Value5 |
    recoveredBlock59Value0 := recoveredLocal1.
    recoveredBlock59Value1 := Array.
    recoveredBlock59Value2 := recoveredBlock59Arg1.
    recoveredBlock59Value3 := (recoveredBlock59Value1) with: (recoveredBlock59Value2).
    recoveredBlock59Value4 := (recoveredBlock59Value0) , (recoveredBlock59Value3).
    recoveredBlock59Value5 := recoveredBlock59Value4.
    recoveredLocal1 := recoveredBlock59Value5.
    recoveredBlock59Value4
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

