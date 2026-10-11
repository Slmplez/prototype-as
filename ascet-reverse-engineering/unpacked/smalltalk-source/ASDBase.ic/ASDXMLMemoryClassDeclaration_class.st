"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017384; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
memClassConstDataKey
    ^'ConstData'
! !

"ASDBase.ic method 0x200193f4; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
memClassDistSearchResultKey
    ^'DistSearchResult'
! !

"ASDBase.ic method 0x20019a30; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
memClassCharacteristicKey
    ^'Characteristic'
! !

"ASDBase.ic method 0x2001b908; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
memorySegmentIDAutomatic
    ^'Automatic'
! !

"ASDBase.ic method 0x2001e548; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
memClassVariablKey
    ^'Variable'
! !

"ASDBase.ic method 0x200251b4; bytecode file offset 0x92209c"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
memClassCodeKey
    ^'Code'
! !

"ASDBase.ic method 0x20048c48; bytecode file offset 0x945728"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
removeInstances
    Instances := nil.
    ^self
! !

"ASDBase.ic method 0x2018d13c; bytecode file offset 0xa89a74"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
instances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Instances.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d1370Value0 block280d1370Value1 block280d1370Value2 |
    block280d1370Value0 := LookupTable.
    block280d1370Value1 := (block280d1370Value0) new.
    block280d1370Value2 := block280d1370Value1.
    Instances := block280d1370Value2.
    block280d1370Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := Instances.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20397838; bytecode file offset 0xc94110"
!ASDXMLMemoryClassDeclaration class methodsFor: 'recovered'!
createFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) new.
    recoveredBlock8Value1 := recoveredBlock8Value0.
    recoveredBlock8Value2 := recoveredArg1.
    (recoveredBlock8Value1) declarationFile: (recoveredBlock8Value2).
    recoveredBlock8Value3 := recoveredBlock8Value0.
    (recoveredBlock8Value3) initialize.
    recoveredBlock8Value0
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) isValid.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) isUpToDate.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) instances.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFor: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 71.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) instances.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) removeKey: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

