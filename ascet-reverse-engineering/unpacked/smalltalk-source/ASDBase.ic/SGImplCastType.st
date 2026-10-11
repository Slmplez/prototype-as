"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013554; bytecode file offset 0x912098"
!SGImplCastType methodsFor: 'recovered'!
goClass
    | recoveredValue0 |
    recoveredValue0 := SGImplementationCastGO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015708; bytecode file offset 0x912098"
!SGImplCastType methodsFor: 'recovered'!
asdPrimitiveImplClass
    | recoveredValue0 |
    recoveredValue0 := ASDNoImpl.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200175e8; bytecode file offset 0x92209c"
!SGImplCastType methodsFor: 'recovered'!
typeForView
    ^'Implementation Cast'
! !

"ASDBase.ic method 0x20076e54; bytecode file offset 0x9757c8"
!SGImplCastType methodsFor: 'recovered'!
isSGImplCastType
    ^true
! !

"ASDBase.ic method 0x200dc3d4; bytecode file offset 0x9d8c98"
!SGImplCastType methodsFor: 'recovered'!
writeSpecificXMLAttributes: recoveredArg1 implementation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) extraImplInfo.
    recoveredValue3 := (recoveredValue2) isNoImplementation.
    (recoveredValue0) attr: ('ignoreImplementationCast') boolean: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200fd260; bytecode file offset 0x9f9b1c"
!SGImplCastType methodsFor: 'recovered'!
asdPrimitiveImplClassNoImpl: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) asdPrimitiveImplClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ASDElementImpl.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2010535c; bytecode file offset 0xa01c88"
!SGImplCastType methodsFor: 'recovered'!
methodPositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := SGReservedNames.
    recoveredValue4 := (recoveredValue3) implCastMethod.
    (recoveredValue2) at: (recoveredValue4) put: (#(150 350)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017b5e0; bytecode file offset 0xa77ea4"
!SGImplCastType methodsFor: 'recovered'!
createImplementation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super createImplementation.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) extraImplInfo.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) setNoImplementation.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022f398; bytecode file offset 0xb2bc70"
!SGImplCastType methodsFor: 'recovered'!
methods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Array.
    recoveredValue1 := SGAliasMethod.
    recoveredValue2 := SGReservedNames.
    recoveredValue3 := (recoveredValue2) implCastMethod.
    recoveredValue4 := SGModelDataType.
    recoveredValue5 := (recoveredValue4) createScalar.
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: ('aValue').
    recoveredValue8 := Array.
    recoveredValue9 := SGModelDataType.
    recoveredValue10 := (recoveredValue9) createScalar.
    recoveredValue11 := (recoveredValue8) with: (recoveredValue10).
    recoveredValue12 := (recoveredValue1) createWithReturn: (recoveredValue3) returnTemplate: (recoveredValue5) inputArguments: (recoveredValue7) inputTemplates: (recoveredValue11).
    recoveredValue13 := (recoveredValue0) with: (recoveredValue12).
    ^recoveredValue13
! !

