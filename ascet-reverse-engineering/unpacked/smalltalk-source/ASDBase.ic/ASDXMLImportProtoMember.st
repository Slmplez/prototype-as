"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006bfd4; bytecode file offset 0x9692b0"
!ASDXMLImportProtoMember methodsFor: 'recovered'!
isPrimitive
    | recoveredValue0 |
    recoveredValue0 := isPrimitive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200740c8; bytecode file offset 0x970b34"
!ASDXMLImportProtoMember methodsFor: 'recovered'!
xmlSGClass
    ^nil
! !

"ASDBase.ic method 0x200c34fc; bytecode file offset 0x9bfde0"
!ASDXMLImportProtoMember methodsFor: 'recovered'!
isPrimitive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    isPrimitive := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20184080; bytecode file offset 0xa80938"
!ASDXMLImportProtoMember methodsFor: 'recovered'!
replaces: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := oid.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            oid := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

