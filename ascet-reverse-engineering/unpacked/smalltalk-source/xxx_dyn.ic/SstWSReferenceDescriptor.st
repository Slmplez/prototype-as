"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x20000548; bytecode file offset 0x6160c"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
buildHandlerComponentsFor: recoveredArg1 in: recoveredArg2 using: recoveredArg3 inNamespace: recoveredArg4
    ^self
! !

"xxx_dyn.ic method 0x2000165c; bytecode file offset 0x62724"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
isClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) smalltalkClass.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000169c; bytecode file offset 0x62770"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
isType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isClass.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"xxx_dyn.ic method 0x2000377c; bytecode file offset 0x649e8"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003a70; bytecode file offset 0x64bac"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
smalltalkClass
    | recoveredValue0 |
    recoveredValue0 := smalltalkClass.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20003c34; bytecode file offset 0x64d78"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
type
    | recoveredValue0 |
    recoveredValue0 := type.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20007de4; bytecode file offset 0x68f50"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008028; bytecode file offset 0x69104"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
smalltalkClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    smalltalkClass := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x200080d4; bytecode file offset 0x692b8"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
type: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    type := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008258; bytecode file offset 0x69404"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
creationMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    creationMethod := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x2000b3a0; bytecode file offset 0x6c470"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
creationMethod
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := creationMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    'new'
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"xxx_dyn.ic method 0x2000cefc; bytecode file offset 0x6dfcc"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
initializeClassFor: recoveredArg1 using: recoveredArg2 inNamespace: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createClassFor: (recoveredValue0) using: (recoveredValue1) inNamespace: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) handlerFactory.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg3.
    (recoveredValue5) register: (recoveredValue6) inNamespace: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"xxx_dyn.ic method 0x2000fa54; bytecode file offset 0x70b28"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
resolveReferenceFor: recoveredArg1 using: recoveredArg2 inNamespace: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) type.
    recoveredValue2 := (recoveredValue0) localNameFor: (recoveredValue1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) type.
    recoveredValue5 := (recoveredValue3) namespaceForQName: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue6) handlerNamed: (recoveredValue7) inNamespace: (recoveredValue8) in: (recoveredValue9).
    ^recoveredValue10
! !

"xxx_dyn.ic method 0x200115dc; bytecode file offset 0x726ac"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
initializeFor: recoveredArg1 using: recoveredArg2 inNamespace: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeClassFor: (recoveredStack1) using: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) resolveReferenceFor: (recoveredStack1) using: (recoveredStack2) inNamespace: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2001b78c; bytecode file offset 0x7c884"
!SstWSReferenceDescriptor methodsFor: 'recovered'!
createClassFor: recoveredArg1 using: recoveredArg2 inNamespace: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) smalltalkClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) abrAsClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := SstWSDeploymentManager.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'The class %1 does not exist'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) smalltalkClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) fatalDeploymentError: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) creationMethod.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) buildHandlerComponentsFor: (recoveredStack1) in: (recoveredStack2) using: (recoveredStack3) inNamespace: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

