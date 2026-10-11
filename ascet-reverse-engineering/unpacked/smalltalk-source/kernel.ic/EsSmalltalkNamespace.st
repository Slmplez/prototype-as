"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200020ec; bytecode file offset 0x4d074"
!EsSmalltalkNamespace methodsFor: 'recovered'!
emConvertKey: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asGlobalKey.
    ^recoveredValue1
! !

"kernel.ic method 0x200024a8; bytecode file offset 0x4d424"
!EsSmalltalkNamespace methodsFor: 'recovered'!
allNamespaceNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := managedNames.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"kernel.ic method 0x20002560; bytecode file offset 0x4d4a0"
!EsSmalltalkNamespace methodsFor: 'recovered'!
owningImage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := unmanagedNames.
    recoveredValue1 := (recoveredValue0) owningImage.
    ^recoveredValue1
! !

"kernel.ic method 0x20002590; bytecode file offset 0x4d4a0"
!EsSmalltalkNamespace methodsFor: 'recovered'!
removedAssociations
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := unmanagedNames.
    recoveredValue1 := (recoveredValue0) removedAssociations.
    ^recoveredValue1
! !

"kernel.ic method 0x20002eac; bytecode file offset 0x4ddc0"
!EsSmalltalkNamespace methodsFor: 'recovered'!
findDictionaryForConvertedKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asGlobalKey.
    recoveredValue2 := (self) findDictionaryForKey: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200034d8; bytecode file offset 0x4e3e8"
!EsSmalltalkNamespace methodsFor: 'recovered'!
purgeRemovedAssociations
    | recoveredValue0 |
    recoveredValue0 := unmanagedNames.
    (recoveredValue0) purgeRemovedAssociations.
    ^self
! !

"kernel.ic method 0x20003d34; bytecode file offset 0x4ed88"
!EsSmalltalkNamespace methodsFor: 'recovered'!
unmanagedNamespace
    | recoveredValue0 |
    recoveredValue0 := unmanagedNames.
    ^recoveredValue0
! !

"kernel.ic method 0x20004a44; bytecode file offset 0x4f954"
!EsSmalltalkNamespace methodsFor: 'recovered'!
namespaceAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := managedNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20004d20; bytecode file offset 0x4fc64"
!EsSmalltalkNamespace methodsFor: 'recovered'!
undeclare: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForConvertedKeyWithFlush: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) undeclare: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20004d30; bytecode file offset 0x4fc64"
!EsSmalltalkNamespace methodsFor: 'recovered'!
removeClassNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForConvertedKeyWithFlush: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) removeClassNamed: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20004d40; bytecode file offset 0x4fc64"
!EsSmalltalkNamespace methodsFor: 'recovered'!
declarePoolDictionary: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForConvertedKey: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) declarePoolDictionary: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20004d50; bytecode file offset 0x4fc64"
!EsSmalltalkNamespace methodsFor: 'recovered'!
declareVariable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForConvertedKey: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) declareVariable: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20005194; bytecode file offset 0x500a8"
!EsSmalltalkNamespace methodsFor: 'recovered'!
flushNameCache
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    nameCache := recoveredValue1.
    ^self
! !

"kernel.ic method 0x200057dc; bytecode file offset 0x506ec"
!EsSmalltalkNamespace methodsFor: 'recovered'!
managedNamespacesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := managedNames.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x2000580c; bytecode file offset 0x50728"
!EsSmalltalkNamespace methodsFor: 'recovered'!
owningImage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := unmanagedNames.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) owningImage: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20005b9c; bytecode file offset 0x50adc"
!EsSmalltalkNamespace methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) key.
    recoveredValue2 := (self) findDictionaryForKey: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) add: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20005bb0; bytecode file offset 0x50adc"
!EsSmalltalkNamespace methodsFor: 'recovered'!
installClass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) symbol.
    recoveredValue2 := (self) findDictionaryForConvertedKey: (recoveredValue1).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) installClass: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000685c; bytecode file offset 0x5176c"
!EsSmalltalkNamespace methodsFor: 'recovered'!
namespaceAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := managedNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x200068d8; bytecode file offset 0x517ec"
!EsSmalltalkNamespace methodsFor: 'recovered'!
declareVariable: recoveredArg1 poolName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) findDictionaryForConvertedKey: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) declareVariable: (recoveredValue2) poolName: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20006978; bytecode file offset 0x518cc"
!EsSmalltalkNamespace methodsFor: 'recovered'!
poolDictionaryAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForConvertedKey: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) poolDictionaryAt: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20006988; bytecode file offset 0x518cc"
!EsSmalltalkNamespace methodsFor: 'recovered'!
declareConstant: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForConvertedKey: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) declareConstant: (recoveredValue2) value: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20006998; bytecode file offset 0x518cc"
!EsSmalltalkNamespace methodsFor: 'recovered'!
undeclare: recoveredArg1 poolName: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForConvertedKeyWithFlush: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) undeclare: (recoveredValue2) poolName: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x200069a8; bytecode file offset 0x518cc"
!EsSmalltalkNamespace methodsFor: 'recovered'!
at: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForKey: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) at: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x200069b8; bytecode file offset 0x518cc"
!EsSmalltalkNamespace methodsFor: 'recovered'!
classAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForConvertedKey: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) classAt: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x2000715c; bytecode file offset 0x52070"
!EsSmalltalkNamespace methodsFor: 'recovered'!
flushNameCacheForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := nameCache.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20007688; bytecode file offset 0x52654"
!EsSmalltalkNamespace methodsFor: 'recovered'!
unmanagedNamespace: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    unmanagedNames := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20008ad8; bytecode file offset 0x539ec"
!EsSmalltalkNamespace methodsFor: 'recovered'!
declareConstant: recoveredArg1 poolName: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) findDictionaryForConvertedKey: (recoveredValue0).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue1) declareConstant: (recoveredValue2) poolName: (recoveredValue3) value: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2000ab70; bytecode file offset 0x55a88"
!EsSmalltalkNamespace methodsFor: 'recovered'!
findDictionaryForConvertedKeyWithFlush: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asGlobalKey.
    recoveredValue2 := recoveredValue1.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := (self) findDictionaryForKey: (recoveredValue1).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal2.
    (self) flushNameCacheForKey: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"kernel.ic method 0x2000b7d4; bytecode file offset 0x566e4"
!EsSmalltalkNamespace methodsFor: 'recovered'!
findDictionaryForKey: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) findManagedDictionaryForKey: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := unmanagedNames.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000c884; bytecode file offset 0x577ac"
!EsSmalltalkNamespace methodsFor: 'recovered'!
classAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) classAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000d0d0; bytecode file offset 0x57fe8"
!EsSmalltalkNamespace methodsFor: 'recovered'!
initialize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    managedNames := recoveredValue1.
    recoveredValue2 := EsSmalltalkDictionary.
    recoveredValue3 := (recoveredValue2) new.
    unmanagedNames := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    nameCache := recoveredValue5.
    ^self
! !

"kernel.ic method 0x2000e434; bytecode file offset 0x5934c"
!EsSmalltalkNamespace methodsFor: 'recovered'!
size
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := managedNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := unmanagedNames.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := [:block28008724Arg1 :block28008724Arg2 | 
    | block28008724Value0 block28008724Value1 block28008724Value2 block28008724Value3 |
    block28008724Value0 := block28008724Arg1.
    block28008724Value1 := block28008724Arg2.
    block28008724Value2 := (block28008724Value1) size.
    block28008724Value3 := (block28008724Value0) + (block28008724Value2).
    block28008724Value3
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2) into: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000e460; bytecode file offset 0x59378"
!EsSmalltalkNamespace methodsFor: 'recovered'!
rehash
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := managedNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28008748Arg1 | 
    | block28008748Value0 block28008748Value1 |
    block28008748Value0 := block28008748Arg1.
    block28008748Value1 := (block28008748Value0) rehash.
    block28008748Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := unmanagedNames.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) rehash.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000f8a4; bytecode file offset 0x5a7b8"
!EsSmalltalkNamespace methodsFor: 'recovered'!
declareNamespace: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := managedNames.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (self) createNamespace: (recoveredBlock9Value0).
    recoveredBlock9Value1
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2001064c; bytecode file offset 0x5b570"
!EsSmalltalkNamespace methodsFor: 'recovered'!
createNamespace: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := managedNames.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    | block28008ad0Value0 block28008ad0Value1 |
    block28008ad0Value0 := EsSmalltalkDictionary.
    block28008ad0Value1 := (block28008ad0Value0) new.
    block28008ad0Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := unmanagedNames.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) removedAssociations.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) removedAssociations: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20011694; bytecode file offset 0x5c5b0"
!EsSmalltalkNamespace methodsFor: 'recovered'!
do: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := managedNames.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) do: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := unmanagedNames.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"kernel.ic method 0x200116c8; bytecode file offset 0x5c5dc"
!EsSmalltalkNamespace methodsFor: 'recovered'!
associationsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := managedNames.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredArg1.
    recoveredBlock6Value2 := (recoveredBlock6Value0) associationsDo: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := unmanagedNames.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) associationsDo: (recoveredValue3).
    ^self
! !

"kernel.ic method 0x200139d8; bytecode file offset 0x5e8f0"
!EsSmalltalkNamespace methodsFor: 'recovered'!
basicFindDictionaryForKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nameCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) flushNameCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nameCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := (self) fillCacheForKey: (recoveredBlock18Value0).
    ^recoveredBlock18Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001613c; bytecode file offset 0x61054"
!EsSmalltalkNamespace methodsFor: 'recovered'!
fillCacheForKey: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := managedNames.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) includesKey: (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 32].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := nameCache.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 28.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) at: (recoveredBlock6Stack2) put: (recoveredBlock6Stack3).
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := unmanagedNames.
    ^recoveredValue2
! !

"kernel.ic method 0x20016644; bytecode file offset 0x61560"
!EsSmalltalkNamespace methodsFor: 'recovered'!
removeKey: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) findDictionaryForKey: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    (self) flushNameCacheForKey: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [
    | recoveredBlock23Value0 recoveredBlock23Value1 |
    recoveredBlock23Value0 := recoveredArg2.
    recoveredBlock23Value1 := (recoveredBlock23Value0) value.
    ^recoveredBlock23Value1
].
    recoveredValue6 := (recoveredValue3) removeKey: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"kernel.ic method 0x2001af0c; bytecode file offset 0x65e40"
!EsSmalltalkNamespace methodsFor: 'recovered'!
at: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicFindDictionaryForKey: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack2 := unmanagedNames.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack1 ~~ recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 35] ifFalse: [recoveredBlock15PC := 30].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg2.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) value.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) fillCacheForKey: (recoveredBlock15Stack1).
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg2.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) at: (recoveredBlock15Stack1) ifAbsent: (recoveredBlock15Stack2).
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    recoveredValue5 := (recoveredValue1) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2001af24; bytecode file offset 0x65e40"
!EsSmalltalkNamespace methodsFor: 'recovered'!
associationAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicFindDictionaryForKey: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack2 := unmanagedNames.
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack1 ~~ recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 35] ifFalse: [recoveredBlock15PC := 30].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg2.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) value.
            recoveredBlock15PC := 34.
        ].
        recoveredBlock15Step = 34 ifTrue: [
            ^recoveredBlock15Stack1
        ].
        recoveredBlock15Step = 35 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 38.
        ].
        recoveredBlock15Step = 38 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) fillCacheForKey: (recoveredBlock15Stack1).
            recoveredBlock15PC := 39.
        ].
        recoveredBlock15Step = 39 ifTrue: [
            recoveredBlock15Stack1 := recoveredArg1.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack2 := recoveredArg2.
            recoveredBlock15PC := 45.
        ].
        recoveredBlock15Step = 45 ifTrue: [
            recoveredBlock15Stack0 := (recoveredBlock15Stack0) associationAt: (recoveredBlock15Stack1) ifAbsent: (recoveredBlock15Stack2).
            recoveredBlock15PC := 47.
        ].
        recoveredBlock15Step = 47 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack0.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    recoveredValue5 := (recoveredValue1) associationAt: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2001b3dc; bytecode file offset 0x66304"
!EsSmalltalkNamespace methodsFor: 'recovered'!
removeNamespace: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    (self) flushNameCache.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) namespaceAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) keys.
    recoveredValue5 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := recoveredLocal1.
    recoveredBlock27Value1 := recoveredBlock27Arg1.
    recoveredBlock27Value2 := (recoveredBlock27Value0) removeKey: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := managedNames.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := [].
    recoveredValue9 := (recoveredValue6) removeKey: (recoveredValue7) ifAbsent: (recoveredValue8).
    ^recoveredValue9
! !

"kernel.ic method 0x2001de20; bytecode file offset 0x68d44"
!EsSmalltalkNamespace methodsFor: 'recovered'!
findManagedDictionaryForKey: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := nameCache.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) flushNameCache.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nameCache.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := (self) fillCacheForKey: (recoveredBlock18Value0).
    ^recoveredBlock18Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := nameCache.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) removeKey: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) fillCacheForKey: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2002417c; bytecode file offset 0x6f0a0"
!EsSmalltalkNamespace methodsFor: 'recovered'!
findMultipleKeys
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := Set.
    recoveredValue3 := (recoveredValue2) new.
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := managedNames.
    recoveredValue5 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := [:recoveredBlock18Block25Arg1 | 
    | recoveredBlock18Block25Stack0 recoveredBlock18Block25Stack1 recoveredBlock18Block25Stack2 recoveredBlock18Block25Stack3 recoveredBlock18Block25PC recoveredBlock18Block25Step recoveredBlock18Block25Done recoveredBlock18Block25Result |
    recoveredBlock18Block25Stack0 := nil.
    recoveredBlock18Block25PC := 32.
    recoveredBlock18Block25Done := false.
    [recoveredBlock18Block25Done not] whileTrue: [
        recoveredBlock18Block25Step := recoveredBlock18Block25PC.
        recoveredBlock18Block25Step = 32 ifTrue: [
            recoveredBlock18Block25Stack1 := recoveredLocal2.
            recoveredBlock18Block25PC := 35.
        ].
        recoveredBlock18Block25Step = 35 ifTrue: [
            recoveredBlock18Block25Stack2 := recoveredBlock18Block25Arg1.
            recoveredBlock18Block25PC := 36.
        ].
        recoveredBlock18Block25Step = 36 ifTrue: [
            recoveredBlock18Block25Stack1 := (recoveredBlock18Block25Stack1) includesKey: (recoveredBlock18Block25Stack2).
            recoveredBlock18Block25PC := 37.
        ].
        recoveredBlock18Block25Step = 37 ifTrue: [
            (recoveredBlock18Block25Stack1) ifTrue: [recoveredBlock18Block25PC := 40] ifFalse: [recoveredBlock18Block25PC := 48].
        ].
        recoveredBlock18Block25Step = 40 ifTrue: [
            recoveredBlock18Block25Stack1 := recoveredLocal1.
            recoveredBlock18Block25PC := 43.
        ].
        recoveredBlock18Block25Step = 43 ifTrue: [
            recoveredBlock18Block25Stack2 := recoveredBlock18Block25Arg1.
            recoveredBlock18Block25PC := 44.
        ].
        recoveredBlock18Block25Step = 44 ifTrue: [
            recoveredBlock18Block25Stack1 := (recoveredBlock18Block25Stack1) add: (recoveredBlock18Block25Stack2).
            recoveredBlock18Block25PC := 45.
        ].
        recoveredBlock18Block25Step = 45 ifTrue: [
            recoveredBlock18Block25PC := 53.
        ].
        recoveredBlock18Block25Step = 48 ifTrue: [
            recoveredBlock18Block25Stack1 := recoveredLocal2.
            recoveredBlock18Block25PC := 51.
        ].
        recoveredBlock18Block25Step = 51 ifTrue: [
            recoveredBlock18Block25Stack2 := recoveredBlock18Block25Arg1.
            recoveredBlock18Block25PC := 52.
        ].
        recoveredBlock18Block25Step = 52 ifTrue: [
            recoveredBlock18Block25Stack1 := (recoveredBlock18Block25Stack1) add: (recoveredBlock18Block25Stack2).
            recoveredBlock18Block25PC := 53.
        ].
        recoveredBlock18Block25Step = 53 ifTrue: [
            recoveredBlock18Block25Result := recoveredBlock18Block25Stack1.
            recoveredBlock18Block25Done := true.
        ].
    ].
    recoveredBlock18Block25Result
].
    recoveredBlock18Value2 := (recoveredBlock18Value0) keysDo: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := unmanagedNames.
    recoveredValue7 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Stack0 recoveredBlock61Stack1 recoveredBlock61Stack2 recoveredBlock61Stack3 recoveredBlock61PC recoveredBlock61Step recoveredBlock61Done recoveredBlock61Result |
    recoveredBlock61Stack0 := self.
    recoveredBlock61PC := 68.
    recoveredBlock61Done := false.
    [recoveredBlock61Done not] whileTrue: [
        recoveredBlock61Step := recoveredBlock61PC.
        recoveredBlock61Step = 68 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 71.
        ].
        recoveredBlock61Step = 71 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 72.
        ].
        recoveredBlock61Step = 72 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) includesKey: (recoveredBlock61Stack2).
            recoveredBlock61PC := 73.
        ].
        recoveredBlock61Step = 73 ifTrue: [
            (recoveredBlock61Stack1) ifTrue: [recoveredBlock61PC := 76] ifFalse: [recoveredBlock61PC := 84].
        ].
        recoveredBlock61Step = 76 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal1.
            recoveredBlock61PC := 79.
        ].
        recoveredBlock61Step = 79 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 80.
        ].
        recoveredBlock61Step = 80 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) add: (recoveredBlock61Stack2).
            recoveredBlock61PC := 81.
        ].
        recoveredBlock61Step = 81 ifTrue: [
            recoveredBlock61PC := 89.
        ].
        recoveredBlock61Step = 84 ifTrue: [
            recoveredBlock61Stack1 := recoveredLocal2.
            recoveredBlock61PC := 87.
        ].
        recoveredBlock61Step = 87 ifTrue: [
            recoveredBlock61Stack2 := recoveredBlock61Arg1.
            recoveredBlock61PC := 88.
        ].
        recoveredBlock61Step = 88 ifTrue: [
            recoveredBlock61Stack1 := (recoveredBlock61Stack1) add: (recoveredBlock61Stack2).
            recoveredBlock61PC := 89.
        ].
        recoveredBlock61Step = 89 ifTrue: [
            recoveredBlock61Result := recoveredBlock61Stack1.
            recoveredBlock61Done := true.
        ].
    ].
    recoveredBlock61Result
].
    (recoveredValue6) keysDo: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"kernel.ic method 0x20026894; bytecode file offset 0x717c8"
!EsSmalltalkNamespace methodsFor: 'recovered'!
keysDo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := managedNames.
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := [:recoveredBlock12Block19Arg1 | 
    | recoveredBlock12Block19Stack0 recoveredBlock12Block19Stack1 recoveredBlock12Block19Stack2 recoveredBlock12Block19Stack3 recoveredBlock12Block19Stack4 recoveredBlock12Block19Stack5 recoveredBlock12Block19Stack6 recoveredBlock12Block19PC recoveredBlock12Block19Step recoveredBlock12Block19Done recoveredBlock12Block19Result |
    recoveredBlock12Block19Stack0 := nil.
    recoveredBlock12Block19PC := 26.
    recoveredBlock12Block19Done := false.
    [recoveredBlock12Block19Done not] whileTrue: [
        recoveredBlock12Block19Step := recoveredBlock12Block19PC.
        recoveredBlock12Block19Step = 26 ifTrue: [
            recoveredBlock12Block19Stack1 := recoveredLocal1.
            recoveredBlock12Block19PC := 29.
        ].
        recoveredBlock12Block19Step = 29 ifTrue: [
            recoveredBlock12Block19Stack2 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 30.
        ].
        recoveredBlock12Block19Step = 30 ifTrue: [
            recoveredBlock12Block19Stack3 := recoveredLocal1.
            recoveredBlock12Block19PC := 33.
        ].
        recoveredBlock12Block19Step = 33 ifTrue: [
            recoveredBlock12Block19Stack4 := recoveredBlock12Block19Arg1.
            recoveredBlock12Block19PC := 34.
        ].
        recoveredBlock12Block19Step = 34 ifTrue: [
            recoveredBlock12Block19Stack5 := [
    0
].
            recoveredBlock12Block19PC := 36.
        ].
        recoveredBlock12Block19Step = 36 ifTrue: [
            recoveredBlock12Block19PC := 43.
        ].
        recoveredBlock12Block19Step = 43 ifTrue: [
            recoveredBlock12Block19Stack3 := (recoveredBlock12Block19Stack3) at: (recoveredBlock12Block19Stack4) ifAbsent: (recoveredBlock12Block19Stack5).
            recoveredBlock12Block19PC := 45.
        ].
        recoveredBlock12Block19Step = 45 ifTrue: [
            recoveredBlock12Block19Stack3 := (recoveredBlock12Block19Stack3) + (1).
            recoveredBlock12Block19PC := 46.
        ].
        recoveredBlock12Block19Step = 46 ifTrue: [
            recoveredBlock12Block19Stack1 := (recoveredBlock12Block19Stack1) at: (recoveredBlock12Block19Stack2) put: (recoveredBlock12Block19Stack3).
            recoveredBlock12Block19PC := 48.
        ].
        recoveredBlock12Block19Step = 48 ifTrue: [
            recoveredBlock12Block19Result := recoveredBlock12Block19Stack1.
            recoveredBlock12Block19Done := true.
        ].
    ].
    recoveredBlock12Block19Result
].
    recoveredBlock12Value2 := (recoveredBlock12Value0) keysDo: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := unmanagedNames.
    recoveredValue5 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56Stack5 recoveredBlock56Stack6 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal1.
            recoveredBlock56PC := 65.
        ].
        recoveredBlock56Step = 65 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 66.
        ].
        recoveredBlock56Step = 66 ifTrue: [
            recoveredBlock56Stack3 := recoveredLocal1.
            recoveredBlock56PC := 69.
        ].
        recoveredBlock56Step = 69 ifTrue: [
            recoveredBlock56Stack4 := recoveredBlock56Arg1.
            recoveredBlock56PC := 70.
        ].
        recoveredBlock56Step = 70 ifTrue: [
            recoveredBlock56Stack5 := [
    0
].
            recoveredBlock56PC := 72.
        ].
        recoveredBlock56Step = 72 ifTrue: [
            recoveredBlock56PC := 79.
        ].
        recoveredBlock56Step = 79 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) at: (recoveredBlock56Stack4) ifAbsent: (recoveredBlock56Stack5).
            recoveredBlock56PC := 81.
        ].
        recoveredBlock56Step = 81 ifTrue: [
            recoveredBlock56Stack3 := (recoveredBlock56Stack3) + (1).
            recoveredBlock56PC := 82.
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) at: (recoveredBlock56Stack2) put: (recoveredBlock56Stack3).
            recoveredBlock56PC := 84.
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
    (recoveredValue4) keysDo: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [:recoveredBlock90Arg1 :recoveredBlock90Arg2 | 
    | recoveredBlock90Stack0 recoveredBlock90Stack1 recoveredBlock90Stack2 recoveredBlock90Stack3 recoveredBlock90Stack4 recoveredBlock90PC recoveredBlock90Step recoveredBlock90Done recoveredBlock90Result |
    recoveredBlock90Stack0 := self.
    recoveredBlock90PC := 96.
    recoveredBlock90Done := false.
    [recoveredBlock90Done not] whileTrue: [
        recoveredBlock90Step := recoveredBlock90PC.
        recoveredBlock90Step = 96 ifTrue: [
            recoveredBlock90Stack1 := nil.
            recoveredBlock90PC := 97.
        ].
        recoveredBlock90Step = 97 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg2.
            recoveredBlock90PC := 98.
        ].
        recoveredBlock90Step = 98 ifTrue: [
            recoveredBlock90Stack3 := 1.
            recoveredBlock90PC := 100.
        ].
        recoveredBlock90Step = 100 ifTrue: [
            recoveredBlock90Stack2 := (recoveredBlock90Stack2) = (recoveredBlock90Stack3).
            recoveredBlock90PC := 101.
        ].
        recoveredBlock90Step = 101 ifTrue: [
            (recoveredBlock90Stack2) ifTrue: [recoveredBlock90PC := 104] ifFalse: [recoveredBlock90PC := 111].
        ].
        recoveredBlock90Step = 104 ifTrue: [
            recoveredBlock90PC := 105.
        ].
        recoveredBlock90Step = 105 ifTrue: [
            recoveredBlock90Stack1 := recoveredArg1.
            recoveredBlock90PC := 108.
        ].
        recoveredBlock90Step = 108 ifTrue: [
            recoveredBlock90Stack2 := recoveredBlock90Arg1.
            recoveredBlock90PC := 109.
        ].
        recoveredBlock90Step = 109 ifTrue: [
            recoveredBlock90Stack1 := (recoveredBlock90Stack1) value: (recoveredBlock90Stack2).
            recoveredBlock90PC := 111.
        ].
        recoveredBlock90Step = 111 ifTrue: [
            recoveredBlock90Result := recoveredBlock90Stack1.
            recoveredBlock90Done := true.
        ].
    ].
    recoveredBlock90Result
].
    (recoveredValue6) keysAndValuesDo: (recoveredValue7).
    ^self
! !

