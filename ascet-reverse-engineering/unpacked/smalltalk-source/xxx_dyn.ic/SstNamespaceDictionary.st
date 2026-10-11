"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx_dyn.ic method 0x2000378c; bytecode file offset 0x649e8"
!SstNamespaceDictionary methodsFor: 'recovered'!
namespaces
    | recoveredValue0 |
    recoveredValue0 := namespaces.
    ^recoveredValue0
! !

"xxx_dyn.ic method 0x20005220; bytecode file offset 0x662ec"
!SstNamespaceDictionary methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    namespaces := recoveredValue1.
    ^self
! !

"xxx_dyn.ic method 0x20005ea4; bytecode file offset 0x66f80"
!SstNamespaceDictionary methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) namespace.
    recoveredValue3 := (self) add: (recoveredValue0) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x2000620c; bytecode file offset 0x672d8"
!SstNamespaceDictionary methodsFor: 'recovered'!
remove: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) removeObjectNamed: (recoveredValue1) inNamespace: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20006e24; bytecode file offset 0x67f08"
!SstNamespaceDictionary methodsFor: 'recovered'!
remove: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) namespace.
    recoveredValue4 := (self) removeObjectNamed: (recoveredValue1) inNamespace: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20007040; bytecode file offset 0x681b0"
!SstNamespaceDictionary methodsFor: 'recovered'!
namespace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) namespaces.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20007e1c; bytecode file offset 0x68f50"
!SstNamespaceDictionary methodsFor: 'recovered'!
namespaces: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namespaces := recoveredValue0.
    ^self
! !

"xxx_dyn.ic method 0x20008bc4; bytecode file offset 0x69ca0"
!SstNamespaceDictionary methodsFor: 'recovered'!
removeObjectNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [].
    recoveredValue3 := (self) removeObjectNamed: (recoveredValue0) inNamespace: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20008bd4; bytecode file offset 0x69ca0"
!SstNamespaceDictionary methodsFor: 'recovered'!
objectNamed: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [].
    recoveredValue3 := (self) objectNamed: (recoveredValue0) inNamespace: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"xxx_dyn.ic method 0x20008bf0; bytecode file offset 0x69ccc"
!SstNamespaceDictionary methodsFor: 'recovered'!
add: recoveredArg1 inNamespace: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) add: (recoveredValue0) named: (recoveredValue2) inNamespace: (recoveredValue3).
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20009c84; bytecode file offset 0x6ad58"
!SstNamespaceDictionary methodsFor: 'recovered'!
removeNamespace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) namespaces.
    recoveredValue1 := (self) namespaces.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) keyAtValue: (recoveredValue2).
    recoveredValue4 := [].
    recoveredValue5 := (recoveredValue0) removeKey: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"xxx_dyn.ic method 0x2000aa34; bytecode file offset 0x6bb00"
!SstNamespaceDictionary methodsFor: 'recovered'!
isEmpty
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaces.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaces.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x2000e4a0; bytecode file offset 0x6f570"
!SstNamespaceDictionary methodsFor: 'recovered'!
allObjectsInNamespace: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespace: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20010f38; bytecode file offset 0x72014"
!SstNamespaceDictionary methodsFor: 'recovered'!
add: recoveredArg1 named: recoveredArg2 inNamespace: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaces.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block2800ac44Value0 block2800ac44Value1 |
    block2800ac44Value0 := LookupTable.
    block2800ac44Value1 := (block2800ac44Value0) new.
    block2800ac44Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20012574; bytecode file offset 0x73648"
!SstNamespaceDictionary methodsFor: 'recovered'!
objectNamed: recoveredArg1 inNamespace: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) namespaces.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx_dyn.ic method 0x20018370; bytecode file offset 0x79448"
!SstNamespaceDictionary methodsFor: 'recovered'!
allObjects
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) namespaces.
    recoveredValue3 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := [:recoveredBlock11Block19Arg1 | 
    | recoveredBlock11Block19Value0 recoveredBlock11Block19Value1 recoveredBlock11Block19Value2 |
    recoveredBlock11Block19Value0 := recoveredLocal1.
    recoveredBlock11Block19Value1 := recoveredBlock11Block19Arg1.
    recoveredBlock11Block19Value2 := (recoveredBlock11Block19Value0) add: (recoveredBlock11Block19Value1).
    recoveredBlock11Block19Value2
].
    recoveredBlock11Value2 := (recoveredBlock11Value0) do: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"xxx_dyn.ic method 0x20019478; bytecode file offset 0x7a558"
!SstNamespaceDictionary methodsFor: 'recovered'!
removeObjectNamed: recoveredArg1 inNamespace: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) namespaces.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Local1 recoveredBlock12Stack0 recoveredBlock12Stack1 recoveredBlock12Stack2 recoveredBlock12Stack3 recoveredBlock12Stack4 recoveredBlock12PC recoveredBlock12Step recoveredBlock12Done recoveredBlock12Result |
    recoveredBlock12Stack0 := self.
    recoveredBlock12PC := 18.
    recoveredBlock12Done := false.
    [recoveredBlock12Done not] whileTrue: [
        recoveredBlock12Step := recoveredBlock12PC.
        recoveredBlock12Step = 18 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 19.
        ].
        recoveredBlock12Step = 19 ifTrue: [
            recoveredBlock12Stack2 := recoveredArg1.
            recoveredBlock12PC := 22.
        ].
        recoveredBlock12Step = 22 ifTrue: [
            recoveredBlock12Stack3 := recoveredArg3.
            recoveredBlock12PC := 25.
        ].
        recoveredBlock12Step = 25 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) removeKey: (recoveredBlock12Stack2) ifAbsent: (recoveredBlock12Stack3).
            recoveredBlock12PC := 27.
        ].
        recoveredBlock12Step = 27 ifTrue: [
            recoveredBlock12Local1 := recoveredBlock12Stack1.
            recoveredBlock12PC := 28.
        ].
        recoveredBlock12Step = 28 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Arg1.
            recoveredBlock12PC := 29.
        ].
        recoveredBlock12Step = 29 ifTrue: [
            recoveredBlock12Stack1 := (recoveredBlock12Stack1) isEmpty.
            recoveredBlock12PC := 31.
        ].
        recoveredBlock12Step = 31 ifTrue: [
            (recoveredBlock12Stack1) ifTrue: [recoveredBlock12PC := 34] ifFalse: [recoveredBlock12PC := 38].
        ].
        recoveredBlock12Step = 34 ifTrue: [
            recoveredBlock12Stack1 := self.
            recoveredBlock12PC := 35.
        ].
        recoveredBlock12Step = 35 ifTrue: [
            recoveredBlock12Stack2 := recoveredBlock12Arg1.
            recoveredBlock12PC := 36.
        ].
        recoveredBlock12Step = 36 ifTrue: [
            (recoveredBlock12Stack1) removeNamespace: (recoveredBlock12Stack2).
            recoveredBlock12PC := 38.
        ].
        recoveredBlock12Step = 38 ifTrue: [
            recoveredBlock12Stack1 := recoveredBlock12Local1.
            recoveredBlock12PC := 39.
        ].
        recoveredBlock12Step = 39 ifTrue: [
            recoveredBlock12Result := recoveredBlock12Stack1.
            recoveredBlock12Done := true.
        ].
    ].
    recoveredBlock12Result
].
    recoveredValue5 := (recoveredValue3) ifNotNil: (recoveredValue4).
    ^recoveredValue5
! !

