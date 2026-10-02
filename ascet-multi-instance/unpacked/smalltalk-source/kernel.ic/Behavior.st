"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200000ac; bytecode file offset 0x4b1b0"
!Behavior methodsFor: 'recovered'!
shallowCopy
    ^self
! !

"kernel.ic method 0x200008c8; bytecode file offset 0x4b7d8"
!Behavior methodsFor: 'recovered'!
"VM primitive/special entry 0x57; native fast path not reconstructed; fallback bytecodes follow."
basicAllInstances
    | recoveredValue0 |
    recoveredValue0 := (self) primitiveFailed.
    ^recoveredValue0
! !

"kernel.ic method 0x200017c0; bytecode file offset 0x4c844"
!Behavior methodsFor: 'recovered'!
owningImage
    | recoveredValue0 |
    recoveredValue0 := System.
    ^recoveredValue0
! !

"kernel.ic method 0x20001814; bytecode file offset 0x4c844"
!Behavior methodsFor: 'recovered'!
environment
    | recoveredValue0 |
    recoveredValue0 := Smalltalk.
    ^recoveredValue0
! !

"kernel.ic method 0x20001984; bytecode file offset 0x4c9a8"
!Behavior methodsFor: 'recovered'!
isWordsFlag
    ^131072
! !

"kernel.ic method 0x2000199c; bytecode file offset 0x4c9a8"
!Behavior methodsFor: 'recovered'!
sharedPoolNames
    ^#()
! !

"kernel.ic method 0x200019cc; bytecode file offset 0x4c9a8"
!Behavior methodsFor: 'recovered'!
isBytesFlag
    ^65536
! !

"kernel.ic method 0x20001a14; bytecode file offset 0x4c9a8"
!Behavior methodsFor: 'recovered'!
isVariableMask
    ^32768
! !

"kernel.ic method 0x20001a38; bytecode file offset 0x4c9a8"
!Behavior methodsFor: 'recovered'!
isCharactersFlag
    ^16384
! !

"kernel.ic method 0x20001a68; bytecode file offset 0x4c9a8"
!Behavior methodsFor: 'recovered'!
isLongsFlag
    ^196608
! !

"kernel.ic method 0x20001a8c; bytecode file offset 0x4c9a8"
!Behavior methodsFor: 'recovered'!
fieldTypeMask
    ^196608
! !

"kernel.ic method 0x20001a98; bytecode file offset 0x4c9a8"
!Behavior methodsFor: 'recovered'!
name
    ^'a generic Behavior'
! !

"kernel.ic method 0x20001ae8; bytecode file offset 0x4ca1c"
!Behavior methodsFor: 'recovered'!
isBits
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isPointers.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"kernel.ic method 0x20001b0c; bytecode file offset 0x4ca1c"
!Behavior methodsFor: 'recovered'!
isFixed
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) isVariable.
    recoveredValue1 := (recoveredValue0) not.
    ^recoveredValue1
! !

"kernel.ic method 0x20001b60; bytecode file offset 0x4ce64"
!Behavior methodsFor: 'recovered'!
classVarNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) classPool.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"kernel.ic method 0x20001f40; bytecode file offset 0x4ce64"
!Behavior methodsFor: 'recovered'!
selectors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methodDictionary.
    recoveredValue1 := (recoveredValue0) keys.
    ^recoveredValue1
! !

"kernel.ic method 0x200022e8; bytecode file offset 0x4d23c"
!Behavior methodsFor: 'recovered'!
classPool
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"kernel.ic method 0x20002edc; bytecode file offset 0x4ddec"
!Behavior methodsFor: 'recovered'!
canUnderstand: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) whichClassIncludesSelector: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) notNil.
    ^recoveredValue2
! !

"kernel.ic method 0x20002fb4; bytecode file offset 0x4dff8"
!Behavior methodsFor: 'recovered'!
includesSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methodDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) includesKey: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200037c8; bytecode file offset 0x4e6f4"
!Behavior methodsFor: 'recovered'!
decompiler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) environment.
    recoveredValue1 := (recoveredValue0) classAt: ('Decompiler').
    ^recoveredValue1
! !

"kernel.ic method 0x200037dc; bytecode file offset 0x4e6f4"
!Behavior methodsFor: 'recovered'!
compiler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) environment.
    recoveredValue1 := (recoveredValue0) classAt: ('EsCompiler').
    ^recoveredValue1
! !

"kernel.ic method 0x20003818; bytecode file offset 0x4e75c"
!Behavior methodsFor: 'recovered'!
isPointers
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fieldType.
    recoveredValue1 := (self) isPointersFlag.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20003828; bytecode file offset 0x4e75c"
!Behavior methodsFor: 'recovered'!
isBytes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fieldType.
    recoveredValue1 := (self) isBytesFlag.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20003838; bytecode file offset 0x4e75c"
!Behavior methodsFor: 'recovered'!
isWords
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fieldType.
    recoveredValue1 := (self) isWordsFlag.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20003848; bytecode file offset 0x4e75c"
!Behavior methodsFor: 'recovered'!
isLongs
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) fieldType.
    recoveredValue1 := (self) isLongsFlag.
    recoveredValue2 := (recoveredValue0) = (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x200038ec; bytecode file offset 0x4e82c"
!Behavior methodsFor: 'recovered'!
fieldType
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) instanceShape.
    recoveredValue1 := (self) fieldTypeMask.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20003ce8; bytecode file offset 0x4ec04"
!Behavior methodsFor: 'recovered'!
specialMethods
    | recoveredValue0 |
    recoveredValue0 := specialMethods.
    ^recoveredValue0
! !

"kernel.ic method 0x20003e6c; bytecode file offset 0x4ed88"
!Behavior methodsFor: 'recovered'!
superclass
    | recoveredValue0 |
    recoveredValue0 := superclass.
    ^recoveredValue0
! !

"kernel.ic method 0x20003f50; bytecode file offset 0x4eebc"
!Behavior methodsFor: 'recovered'!
methodsArray
    | recoveredValue0 |
    recoveredValue0 := methodsArray.
    ^recoveredValue0
! !

"kernel.ic method 0x20003fec; bytecode file offset 0x4ef68"
!Behavior methodsFor: 'recovered'!
instSize
    | recoveredValue0 |
    recoveredValue0 := namedInstVarSize.
    ^recoveredValue0
! !

"kernel.ic method 0x200040b0; bytecode file offset 0x4efbc"
!Behavior methodsFor: 'recovered'!
instanceShape
    | recoveredValue0 |
    recoveredValue0 := instanceShape.
    ^recoveredValue0
! !

"kernel.ic method 0x200040f4; bytecode file offset 0x4f000"
!Behavior methodsFor: 'recovered'!
extendedMethods
    | recoveredValue0 |
    recoveredValue0 := instanceLink.
    ^recoveredValue0
! !

"kernel.ic method 0x200043c0; bytecode file offset 0x4f2dc"
!Behavior methodsFor: 'recovered'!
isPointersFlag
    ^0
! !

"kernel.ic method 0x20004618; bytecode file offset 0x4f5c4"
!Behavior methodsFor: 'recovered'!
isBehavior
    ^true
! !

"kernel.ic method 0x20005508; bytecode file offset 0x5043c"
!Behavior methodsFor: 'recovered'!
withAllSuperclasses
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allSuperclasses.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) addFirst: (self).
    ^recoveredValue0
! !

"kernel.ic method 0x20005660; bytecode file offset 0x50574"
!Behavior methodsFor: 'recovered'!
hasMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methodDictionary.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) > (0).
    ^recoveredValue2
! !

"kernel.ic method 0x200059b8; bytecode file offset 0x508cc"
!Behavior methodsFor: 'recovered'!
deleteSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) deleteSelector: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20005a74; bytecode file offset 0x509b8"
!Behavior methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20005a84; bytecode file offset 0x509b8"
!Behavior methodsFor: 'recovered'!
storeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20005cb8; bytecode file offset 0x50c0c"
!Behavior methodsFor: 'recovered'!
deleteAllSelectors: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methodDictionary.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeAllSelectors: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20005cd8; bytecode file offset 0x50c0c"
!Behavior methodsFor: 'recovered'!
methodsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) methodDictionary.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20005e40; bytecode file offset 0x50d54"
!Behavior methodsFor: 'recovered'!
compiledMethodAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) methodDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x20005fb4; bytecode file offset 0x50ecc"
!Behavior methodsFor: 'recovered'!
specialSelectors
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Core.
    recoveredValue1 := (recoveredValue0) registry.
    recoveredValue2 := (recoveredValue1) at: (35).
    ^recoveredValue2
! !

"kernel.ic method 0x20005fd4; bytecode file offset 0x50f00"
!Behavior methodsFor: 'recovered'!
initializeInactiveMethodDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MethodDictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) setInactiveMethodDictionary: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20005fe8; bytecode file offset 0x50f00"
!Behavior methodsFor: 'recovered'!
initializeMethodDictionary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := MethodDictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) setMethodDictionary: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20006258; bytecode file offset 0x51174"
!Behavior methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
newTenured
    | recoveredValue0 |
    (self) perform: ('memoryAllocationFailed').
    recoveredValue0 := (self) newTenured.
    ^recoveredValue0
! !

"kernel.ic method 0x2000627c; bytecode file offset 0x511a8"
!Behavior methodsFor: 'recovered'!
"VM primitive/special entry 0x3f; native fast path not reconstructed; fallback bytecodes follow."
basicNew
    | recoveredValue0 |
    (self) perform: ('memoryAllocationFailed').
    recoveredValue0 := (self) basicNew.
    ^recoveredValue0
! !

"kernel.ic method 0x20006290; bytecode file offset 0x511a8"
!Behavior methodsFor: 'recovered'!
"VM primitive/special entry 0x3f; native fast path not reconstructed; fallback bytecodes follow."
new
    | recoveredValue0 |
    (self) perform: ('memoryAllocationFailed').
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"kernel.ic method 0x200065a4; bytecode file offset 0x514b8"
!Behavior methodsFor: 'recovered'!
addCompiledMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) selector.
    recoveredValue2 := recoveredArg1.
    (self) addSelector: (recoveredValue1) withMethod: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x200067c8; bytecode file offset 0x516dc"
!Behavior methodsFor: 'recovered'!
removeSubclass: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subclasses.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) copyWithout: (recoveredValue1).
    subclasses := recoveredValue2.
    ^self
! !

"kernel.ic method 0x20006acc; bytecode file offset 0x519e4"
!Behavior methodsFor: 'recovered'!
superAssociation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Association.
    recoveredValue1 := (recoveredValue0) key: ('super') value: (self).
    ^recoveredValue1
! !

"kernel.ic method 0x20006e98; bytecode file offset 0x51db0"
!Behavior methodsFor: 'recovered'!
isVariable
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) instanceShape.
    recoveredValue1 := (self) isVariableMask.
    recoveredValue2 := (recoveredValue0) bitAnd: (recoveredValue1).
    recoveredValue3 := (self) isVariableMask.
    recoveredValue4 := (recoveredValue2) = (recoveredValue3).
    ^recoveredValue4
! !

"kernel.ic method 0x20007804; bytecode file offset 0x52760"
!Behavior methodsFor: 'recovered'!
methodsArray: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    methodsArray := recoveredValue0.
    ^self
! !

"kernel.ic method 0x200078f0; bytecode file offset 0x5280c"
!Behavior methodsFor: 'recovered'!
instSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    namedInstVarSize := recoveredValue0.
    ^self
! !

"kernel.ic method 0x2000792c; bytecode file offset 0x52860"
!Behavior methodsFor: 'recovered'!
instanceShape: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instanceShape := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007970; bytecode file offset 0x528a4"
!Behavior methodsFor: 'recovered'!
extendedMethods: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    instanceLink := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20007d00; bytecode file offset 0x52c24"
!Behavior methodsFor: 'recovered'!
variableAssociationAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) environment.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) variableAssociationAt: (recoveredValue0) using: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x200086e0; bytecode file offset 0x535f4"
!Behavior methodsFor: 'recovered'!
withAllSubclassesBreadthFirstDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) value: (self).
    recoveredValue1 := recoveredArg1.
    (self) allSubclassesBreadthFirstDo: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20009e54; bytecode file offset 0x54d70"
!Behavior methodsFor: 'recovered'!
includesBehavior: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) inheritsFrom: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000a06c; bytecode file offset 0x54f84"
!Behavior methodsFor: 'recovered'!
changedSelector: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialSelectors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) recomputeSpecialMethods.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000ad94; bytecode file offset 0x55ca4"
!Behavior methodsFor: 'recovered'!
subclasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := subclasses.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := subclasses.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000b1cc; bytecode file offset 0x560ec"
!Behavior methodsFor: 'recovered'!
errorAbsentSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := NlsCatKRN.
    recoveredValue1 := (recoveredValue0) indexedMsg: (41).
    recoveredValue2 := (self) name.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue1) bindWith: (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) error: (recoveredValue4).
    ^recoveredValue5
! !

"kernel.ic method 0x2000b614; bytecode file offset 0x56528"
!Behavior methodsFor: 'recovered'!
specialSelectorIndexFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialSelectors.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000b7f4; bytecode file offset 0x56708"
!Behavior methodsFor: 'recovered'!
withAllSuperclassesDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 5] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000c89c; bytecode file offset 0x577ac"
!Behavior methodsFor: 'recovered'!
variableAssociationAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^nil
].
    recoveredValue2 := (self) variableAssociationAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000d320; bytecode file offset 0x58234"
!Behavior methodsFor: 'recovered'!
allSubinstancesDo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value0) allInstancesDo: (recoveredBlock4Value1).
    recoveredBlock4Value2
].
    (self) allSubclassesDo: (recoveredValue0).
    ^self
! !

"kernel.ic method 0x2000d53c; bytecode file offset 0x58450"
!Behavior methodsFor: 'recovered'!
allSuperclassesDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000e5ec; bytecode file offset 0x59520"
!Behavior methodsFor: 'recovered'!
allClassVarNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVarNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) allClassVarNames.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) classVarNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000e604; bytecode file offset 0x59520"
!Behavior methodsFor: 'recovered'!
allSelectors
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectors.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSelectors.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) selectors.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000e840; bytecode file offset 0x59784"
!Behavior methodsFor: 'recovered'!
sourceCodeAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) errorAbsentSelector: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) sourceCodeAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000e850; bytecode file offset 0x59784"
!Behavior methodsFor: 'recovered'!
decompile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) errorAbsentSelector: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) decompile: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000e860; bytecode file offset 0x59784"
!Behavior methodsFor: 'recovered'!
compiledMethodAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) errorAbsentSelector: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000e870; bytecode file offset 0x59784"
!Behavior methodsFor: 'recovered'!
>> recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := (self) errorAbsentSelector: (recoveredBlock7Value0).
    recoveredBlock7Value1
].
    recoveredValue2 := (self) compiledMethodAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x2000e898; bytecode file offset 0x597b0"
!Behavior methodsFor: 'recovered'!
allSubclassesDepthFirstDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) subclasses.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) withAllSubclassesDepthFirstDo: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x2000e980; bytecode file offset 0x59898"
!Behavior methodsFor: 'recovered'!
deleteSelector: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) methodDictionary.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 |
    recoveredBlock8Value0 := recoveredArg2.
    recoveredBlock8Value1 := (recoveredBlock8Value0) value.
    ^recoveredBlock8Value1
].
    recoveredValue3 := (recoveredValue0) removeKey: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"kernel.ic method 0x2000ef6c; bytecode file offset 0x59e8c"
!Behavior methodsFor: 'recovered'!
allSuperclasses
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSuperclasses.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) superclass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addFirst: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000efa0; bytecode file offset 0x59ec0"
!Behavior methodsFor: 'recovered'!
allInstVarNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) instVarNames.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000f81c; bytecode file offset 0x5a73c"
!Behavior methodsFor: 'recovered'!
subclasses: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := Class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) sortBlock.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            subclasses := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000f9c4; bytecode file offset 0x5a8e8"
!Behavior methodsFor: 'recovered'!
addSelector: recoveredArg1 withMethod: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := Symbol.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2000fc10; bytecode file offset 0x5ab20"
!Behavior methodsFor: 'recovered'!
inheritsFrom: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := true.
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
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20010058; bytecode file offset 0x5af70"
!Behavior methodsFor: 'recovered'!
superclass: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isBehavior.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            superclass := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ExCLDTInvalidClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) signal.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200100ec; bytecode file offset 0x5b004"
!Behavior methodsFor: 'recovered'!
whichClassIncludesSelector: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) includesSelector: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) whichClassIncludesSelector: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001077c; bytecode file offset 0x5b690"
!Behavior methodsFor: 'recovered'!
allInstancesAndSubinstancesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) allInstancesDo: (recoveredValue0).
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) allInstancesDo: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (self) allSubclassesDo: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x200116f4; bytecode file offset 0x5c628"
!Behavior methodsFor: 'recovered'!
withAllSubclassesDepthFirstDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) value: (self).
    recoveredValue1 := (self) subclasses.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) withAllSubclassesDepthFirstDo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x2001170c; bytecode file offset 0x5c628"
!Behavior methodsFor: 'recovered'!
withAllSubclassesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) value: (self).
    recoveredValue1 := (self) subclasses.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := recoveredArg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) withAllSubclassesDo: (recoveredBlock11Value1).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x200117f0; bytecode file offset 0x5c70c"
!Behavior methodsFor: 'recovered'!
allSubclassesDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) subclasses.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    (recoveredBlock5Value0) value: (recoveredBlock5Value1).
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := recoveredArg1.
    recoveredBlock5Value4 := (recoveredBlock5Value2) allSubclassesDo: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20011928; bytecode file offset 0x5c85c"
!Behavior methodsFor: 'recovered'!
allSubclasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) add: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (self) allSubclassesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20011940; bytecode file offset 0x5c85c"
!Behavior methodsFor: 'recovered'!
withAllSubclasses
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) add: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
    (self) withAllSubclassesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20011974; bytecode file offset 0x5c890"
!Behavior methodsFor: 'recovered'!
setInactiveMethodDictionary: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) methodDictionaryClassFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) from: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := methodDictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            methodDictionary := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsArray.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            methodsArray := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) recomputeSpecialMethods.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20011ce0; bytecode file offset 0x5cc08"
!Behavior methodsFor: 'recovered'!
allInstances
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicAllInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) flushCache.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) globalGarbageCollect.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicAllInstances.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200122a8; bytecode file offset 0x5d1e4"
!Behavior methodsFor: 'recovered'!
allSharedPools
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) sharedPools.
    recoveredBlock10Value3 := (recoveredBlock10Value0) addAll: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (self) withAllSuperclassesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x200122c4; bytecode file offset 0x5d1e4"
!Behavior methodsFor: 'recovered'!
allSharedPoolNames
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := (recoveredBlock10Value1) sharedPoolNames.
    recoveredBlock10Value3 := (recoveredBlock10Value0) addAll: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    (self) withAllSuperclassesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20012860; bytecode file offset 0x5d784"
!Behavior methodsFor: 'recovered'!
"VM primitive/special entry 0x17; native fast path not reconstructed; fallback bytecodes follow."
newTenured: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveFailed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'memoryAllocationFailed'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) newTenured: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200128a0; bytecode file offset 0x5d7dc"
!Behavior methodsFor: 'recovered'!
"VM primitive/special entry 0x20; native fast path not reconstructed; fallback bytecodes follow."
basicNew: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveFailed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'memoryAllocationFailed'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicNew: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200128bc; bytecode file offset 0x5d7dc"
!Behavior methodsFor: 'recovered'!
"VM primitive/special entry 0x20; native fast path not reconstructed; fallback bytecodes follow."
new: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveFailed.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'memoryAllocationFailed'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20012c5c; bytecode file offset 0x5db78"
!Behavior methodsFor: 'recovered'!
lookupSelector: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20013514; bytecode file offset 0x5e434"
!Behavior methodsFor: 'recovered'!
setMethodDictionary: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) methodDictionaryClassFor: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) from: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := methodDictionary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            methodDictionary := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodsArray.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            methodsArray := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) recomputeSpecialMethods.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) flushCache.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20013a0c; bytecode file offset 0x5e92c"
!Behavior methodsFor: 'recovered'!
methodDictionaryClassFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) class.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := EsCompactMethod.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2 ~~ recoveredBlock7Stack3) ifTrue: [recoveredBlock7PC := 26] ifFalse: [recoveredBlock7PC := 22].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := EsMBADictionary.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := MethodDictionary.
    ^recoveredValue2
! !

"kernel.ic method 0x20014640; bytecode file offset 0x5f55c"
!Behavior methodsFor: 'recovered'!
allInstancesDo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := UndefinedObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstances.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredArg1.
    recoveredBlock18Value1 := recoveredBlock18Arg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) value: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20015b28; bytecode file offset 0x60a44"
!Behavior methodsFor: 'recovered'!
allMethodsDo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) methodDictionary.
    recoveredBlock4Value2 := recoveredArg1.
    recoveredBlock4Value3 := (recoveredBlock4Value1) do: (recoveredBlock4Value2).
    recoveredBlock4Value3
].
    (self) withAllSuperclassesDo: (recoveredValue0).
    recoveredValue1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) methodDictionary.
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := (recoveredBlock20Value1) do: (recoveredBlock20Value2).
    recoveredBlock20Value3
].
    (self) allSubclassesDo: (recoveredValue1).
    ^self
! !

"kernel.ic method 0x20015d84; bytecode file offset 0x60cb8"
!Behavior methodsFor: 'recovered'!
allSubinstances
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            (recoveredBlock10Stack2 == recoveredBlock10Stack3) ifTrue: [recoveredBlock10PC := 30] ifFalse: [recoveredBlock10PC := 24].
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) allSubinstancesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20015d9c; bytecode file offset 0x60cb8"
!Behavior methodsFor: 'recovered'!
allInstancesAndSubinstances
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack3 := recoveredLocal1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            (recoveredBlock10Stack2 == recoveredBlock10Stack3) ifTrue: [recoveredBlock10PC := 30] ifFalse: [recoveredBlock10PC := 24].
        ].
        recoveredBlock10Step = 24 ifTrue: [
            recoveredBlock10PC := 25.
        ].
        recoveredBlock10Step = 25 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 28.
        ].
        recoveredBlock10Step = 28 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 29.
        ].
        recoveredBlock10Step = 29 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) allInstancesAndSubinstancesDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20015e18; bytecode file offset 0x60d34"
!Behavior methodsFor: 'recovered'!
changedSelectors: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) specialSelectors.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Stack0 recoveredBlock11Stack1 recoveredBlock11Stack2 recoveredBlock11Stack3 recoveredBlock11Stack4 recoveredBlock11PC recoveredBlock11Step recoveredBlock11Done recoveredBlock11Result |
    recoveredBlock11Stack0 := self.
    recoveredBlock11PC := 18.
    recoveredBlock11Done := false.
    [recoveredBlock11Done not] whileTrue: [
        recoveredBlock11Step := recoveredBlock11PC.
        recoveredBlock11Step = 18 ifTrue: [
            recoveredBlock11Stack1 := nil.
            recoveredBlock11PC := 19.
        ].
        recoveredBlock11Step = 19 ifTrue: [
            recoveredBlock11Stack2 := recoveredLocal1.
            recoveredBlock11PC := 22.
        ].
        recoveredBlock11Step = 22 ifTrue: [
            recoveredBlock11Stack3 := recoveredBlock11Arg1.
            recoveredBlock11PC := 23.
        ].
        recoveredBlock11Step = 23 ifTrue: [
            recoveredBlock11Stack2 := (recoveredBlock11Stack2) includes: (recoveredBlock11Stack3).
            recoveredBlock11PC := 24.
        ].
        recoveredBlock11Step = 24 ifTrue: [
            (recoveredBlock11Stack2) ifTrue: [recoveredBlock11PC := 28] ifFalse: [recoveredBlock11PC := 32].
        ].
        recoveredBlock11Step = 28 ifTrue: [
            recoveredBlock11PC := 29.
        ].
        recoveredBlock11Step = 29 ifTrue: [
            recoveredBlock11Stack1 := self.
            recoveredBlock11PC := 30.
        ].
        recoveredBlock11Step = 30 ifTrue: [
            recoveredBlock11Stack1 := (recoveredBlock11Stack1) recomputeSpecialMethods.
            recoveredBlock11PC := 31.
        ].
        recoveredBlock11Step = 31 ifTrue: [
            ^recoveredBlock11Stack1
        ].
        recoveredBlock11Step = 32 ifTrue: [
            recoveredBlock11Result := recoveredBlock11Stack1.
            recoveredBlock11Done := true.
        ].
    ].
    recoveredBlock11Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^self
! !

"kernel.ic method 0x20016018; bytecode file offset 0x60f40"
!Behavior methodsFor: 'recovered'!
sharedPools
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) sharedPoolNames.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) environment.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := [
    | recoveredBlock5Block16Value0 recoveredBlock5Block16Value1 recoveredBlock5Block16Value2 recoveredBlock5Block16Value3 recoveredBlock5Block16Value4 |
    recoveredBlock5Block16Value0 := (self) environment.
    recoveredBlock5Block16Value1 := recoveredBlock5Arg1.
    recoveredBlock5Block16Value2 := Dictionary.
    recoveredBlock5Block16Value3 := (recoveredBlock5Block16Value2) new.
    recoveredBlock5Block16Value4 := (recoveredBlock5Block16Value0) at: (recoveredBlock5Block16Value1) put: (recoveredBlock5Block16Value3).
    recoveredBlock5Block16Value4
].
    recoveredBlock5Value3 := (recoveredBlock5Value0) at: (recoveredBlock5Value1) ifAbsent: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"kernel.ic method 0x20016b50; bytecode file offset 0x61a8c"
!Behavior methodsFor: 'recovered'!
allMethodsReferencingLiteral: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) referencesLiteral: (recoveredBlock10Stack3).
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 32].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) allMethodsDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20016b6c; bytecode file offset 0x61a8c"
!Behavior methodsFor: 'recovered'!
whichMethodsReferenceLiteral: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Stack0 recoveredBlock10Stack1 recoveredBlock10Stack2 recoveredBlock10Stack3 recoveredBlock10Stack4 recoveredBlock10PC recoveredBlock10Step recoveredBlock10Done recoveredBlock10Result |
    recoveredBlock10Stack0 := self.
    recoveredBlock10PC := 16.
    recoveredBlock10Done := false.
    [recoveredBlock10Done not] whileTrue: [
        recoveredBlock10Step := recoveredBlock10PC.
        recoveredBlock10Step = 16 ifTrue: [
            recoveredBlock10Stack1 := nil.
            recoveredBlock10PC := 17.
        ].
        recoveredBlock10Step = 17 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 18.
        ].
        recoveredBlock10Step = 18 ifTrue: [
            recoveredBlock10Stack3 := recoveredArg1.
            recoveredBlock10PC := 21.
        ].
        recoveredBlock10Step = 21 ifTrue: [
            recoveredBlock10Stack2 := (recoveredBlock10Stack2) referencesLiteral: (recoveredBlock10Stack3).
            recoveredBlock10PC := 22.
        ].
        recoveredBlock10Step = 22 ifTrue: [
            (recoveredBlock10Stack2) ifTrue: [recoveredBlock10PC := 26] ifFalse: [recoveredBlock10PC := 32].
        ].
        recoveredBlock10Step = 26 ifTrue: [
            recoveredBlock10PC := 27.
        ].
        recoveredBlock10Step = 27 ifTrue: [
            recoveredBlock10Stack1 := recoveredLocal1.
            recoveredBlock10PC := 30.
        ].
        recoveredBlock10Step = 30 ifTrue: [
            recoveredBlock10Stack2 := recoveredBlock10Arg1.
            recoveredBlock10PC := 31.
        ].
        recoveredBlock10Step = 31 ifTrue: [
            recoveredBlock10Stack1 := (recoveredBlock10Stack1) add: (recoveredBlock10Stack2).
            recoveredBlock10PC := 32.
        ].
        recoveredBlock10Step = 32 ifTrue: [
            recoveredBlock10Result := recoveredBlock10Stack1.
            recoveredBlock10Done := true.
        ].
    ].
    recoveredBlock10Result
].
    (self) methodsDo: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"kernel.ic method 0x20019ce8; bytecode file offset 0x64c10"
!Behavior methodsFor: 'recovered'!
allMethodsNamed: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 recoveredBlock10Value5 |
    recoveredBlock10Value0 := recoveredLocal2.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := recoveredArg1.
    recoveredBlock10Value3 := [].
    recoveredBlock10Value4 := (recoveredBlock10Value1) compiledMethodAt: (recoveredBlock10Value2) ifAbsent: (recoveredBlock10Value3).
    recoveredBlock10Value5 := (recoveredBlock10Value0) add: (recoveredBlock10Value4).
    recoveredBlock10Value5
].
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (self) withAllSuperclassesDo: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) allSubclassesDo: (recoveredValue4).
    recoveredValue5 := recoveredLocal2.
    ^recoveredValue5
! !

"kernel.ic method 0x2001a44c; bytecode file offset 0x65374"
!Behavior methodsFor: 'recovered'!
decompile: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) decompiler.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := NlsCatKRN.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 45.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexedMsg: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock31Value0 recoveredBlock31Value1 |
    recoveredBlock31Value0 := recoveredArg2.
    recoveredBlock31Value1 := (recoveredBlock31Value0) value.
    ^recoveredBlock31Value1
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) compiledMethodAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) decompile: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001c300; bytecode file offset 0x67220"
!Behavior methodsFor: 'recovered'!
allSubclassesBreadthFirstDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subclasses.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 |
    recoveredBlock19Value0 := recoveredArg1.
    recoveredBlock19Value1 := recoveredBlock19Arg1.
    recoveredBlock19Value2 := (recoveredBlock19Value0) value: (recoveredBlock19Value1).
    recoveredBlock19Value2
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Value0 recoveredBlock37Value1 recoveredBlock37Value2 |
    recoveredBlock37Value0 := recoveredBlock37Arg1.
    recoveredBlock37Value1 := recoveredArg1.
    recoveredBlock37Value2 := (recoveredBlock37Value0) allSubclassesBreadthFirstDo: (recoveredBlock37Value1).
    recoveredBlock37Value2
].
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001d0ac; bytecode file offset 0x67fec"
!Behavior methodsFor: 'recovered'!
instanceShapeFor: recoveredArg1 variable: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('pointers' 'bytes' 'words' 'longs').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := NlsCatKRN.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := 39.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) indexedMsg: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) isPointersFlag.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) isBytesFlag.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) isWordsFlag.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := (recoveredStack5) isLongsFlag.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) isVariableMask.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2001f028; bytecode file offset 0x69f54"
!Behavior methodsFor: 'recovered'!
whichMethodsReferenceInstVarName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) methodDictionary.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack3 := recoveredLocal1.
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) referencesInstVar: (recoveredBlock35Stack3).
            recoveredBlock35PC := 49.
        ].
        recoveredBlock35Step = 49 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 52] ifFalse: [recoveredBlock35PC := 59].
        ].
        recoveredBlock35Step = 52 ifTrue: [
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            recoveredBlock35Stack1 := recoveredLocal2.
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) add: (recoveredBlock35Stack2).
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001f0f8; bytecode file offset 0x6a018"
!Behavior methodsFor: 'recovered'!
sourceCodeAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 |
    recoveredBlock7Value0 := recoveredArg2.
    recoveredBlock7Value1 := (recoveredBlock7Value0) value.
    ^recoveredBlock7Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) compiledMethodAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'sourceString'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceString.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) decompile: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x2001f1c4; bytecode file offset 0x6a0f4"
!Behavior methodsFor: 'recovered'!
instVarNames
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) instSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) instSize.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := 'instVar'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 36] ifFalse: [recoveredLocal1 := nil. recoveredPC := 63]] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 61] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200212c8; bytecode file offset 0x6c208"
!Behavior methodsFor: 'recovered'!
recomputeSpecialMethods
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := instanceShape.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'at:'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) lookupSelector: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceShape.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCharactersFlag.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitInvert.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) primitiveNumber.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := VMprStringBasicAt.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := VMprDBStringBasicAt.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 'EsAtom'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCharactersFlag.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitOr: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceShape.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) instanceShape: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20021ddc; bytecode file offset 0x6cd20"
!Behavior methodsFor: 'recovered'!
methodDictionary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := methodDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := methodsArray.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := EsMethodArray.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := EsMBADictionary.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicNew.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) methodClass: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := MethodDictionary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicNew.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) methodClass: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := methodsArray.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReadOnly.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := EsExtendedMethodDictionary.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) baseMethodDictionary: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) extendedMethods.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := Array.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) new: (recoveredStack4).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) extendedMethods: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) methodClass: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := methodDictionary.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x20022540; bytecode file offset 0x6d48c"
!Behavior methodsFor: 'recovered'!
whichMethodsSend: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialSelectorIndexFor: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack3 := recoveredArg1.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) sendsNormalSelector: (recoveredBlock21Stack3).
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 38] ifFalse: [recoveredBlock21PC := 45].
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) add: (recoveredBlock21Stack2).
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) methodsDo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 61.
        ].
        recoveredBlock53Step = 61 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 62.
        ].
        recoveredBlock53Step = 62 ifTrue: [
            recoveredBlock53Stack3 := recoveredArg1.
            recoveredBlock53PC := 65.
        ].
        recoveredBlock53Step = 65 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) sendsSpecialSelector: (recoveredBlock53Stack3).
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            (recoveredBlock53Stack2) ifTrue: [recoveredBlock53PC := 70] ifFalse: [recoveredBlock53PC := 77].
        ].
        recoveredBlock53Step = 70 ifTrue: [
            recoveredBlock53PC := 71.
        ].
        recoveredBlock53Step = 71 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal1.
            recoveredBlock53PC := 74.
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 75.
        ].
        recoveredBlock53Step = 75 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) add: (recoveredBlock53Stack2).
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) methodsDo: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20022564; bytecode file offset 0x6d48c"
!Behavior methodsFor: 'recovered'!
allMethodsSending: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) specialSelectorIndexFor: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Stack0 recoveredBlock21Stack1 recoveredBlock21Stack2 recoveredBlock21Stack3 recoveredBlock21Stack4 recoveredBlock21PC recoveredBlock21Step recoveredBlock21Done recoveredBlock21Result |
    recoveredBlock21Stack0 := self.
    recoveredBlock21PC := 28.
    recoveredBlock21Done := false.
    [recoveredBlock21Done not] whileTrue: [
        recoveredBlock21Step := recoveredBlock21PC.
        recoveredBlock21Step = 28 ifTrue: [
            recoveredBlock21Stack1 := nil.
            recoveredBlock21PC := 29.
        ].
        recoveredBlock21Step = 29 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 30.
        ].
        recoveredBlock21Step = 30 ifTrue: [
            recoveredBlock21Stack3 := recoveredArg1.
            recoveredBlock21PC := 33.
        ].
        recoveredBlock21Step = 33 ifTrue: [
            recoveredBlock21Stack2 := (recoveredBlock21Stack2) sendsNormalSelector: (recoveredBlock21Stack3).
            recoveredBlock21PC := 34.
        ].
        recoveredBlock21Step = 34 ifTrue: [
            (recoveredBlock21Stack2) ifTrue: [recoveredBlock21PC := 38] ifFalse: [recoveredBlock21PC := 45].
        ].
        recoveredBlock21Step = 38 ifTrue: [
            recoveredBlock21PC := 39.
        ].
        recoveredBlock21Step = 39 ifTrue: [
            recoveredBlock21Stack1 := recoveredLocal1.
            recoveredBlock21PC := 42.
        ].
        recoveredBlock21Step = 42 ifTrue: [
            recoveredBlock21Stack2 := recoveredBlock21Arg1.
            recoveredBlock21PC := 43.
        ].
        recoveredBlock21Step = 43 ifTrue: [
            recoveredBlock21Stack1 := (recoveredBlock21Stack1) add: (recoveredBlock21Stack2).
            recoveredBlock21PC := 45.
        ].
        recoveredBlock21Step = 45 ifTrue: [
            recoveredBlock21Result := recoveredBlock21Stack1.
            recoveredBlock21Done := true.
        ].
    ].
    recoveredBlock21Result
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) allMethodsDo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := [:recoveredBlock53Arg1 | 
    | recoveredBlock53Stack0 recoveredBlock53Stack1 recoveredBlock53Stack2 recoveredBlock53Stack3 recoveredBlock53Stack4 recoveredBlock53PC recoveredBlock53Step recoveredBlock53Done recoveredBlock53Result |
    recoveredBlock53Stack0 := self.
    recoveredBlock53PC := 60.
    recoveredBlock53Done := false.
    [recoveredBlock53Done not] whileTrue: [
        recoveredBlock53Step := recoveredBlock53PC.
        recoveredBlock53Step = 60 ifTrue: [
            recoveredBlock53Stack1 := nil.
            recoveredBlock53PC := 61.
        ].
        recoveredBlock53Step = 61 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 62.
        ].
        recoveredBlock53Step = 62 ifTrue: [
            recoveredBlock53Stack3 := recoveredArg1.
            recoveredBlock53PC := 65.
        ].
        recoveredBlock53Step = 65 ifTrue: [
            recoveredBlock53Stack2 := (recoveredBlock53Stack2) sendsSpecialSelector: (recoveredBlock53Stack3).
            recoveredBlock53PC := 67.
        ].
        recoveredBlock53Step = 67 ifTrue: [
            (recoveredBlock53Stack2) ifTrue: [recoveredBlock53PC := 70] ifFalse: [recoveredBlock53PC := 77].
        ].
        recoveredBlock53Step = 70 ifTrue: [
            recoveredBlock53PC := 71.
        ].
        recoveredBlock53Step = 71 ifTrue: [
            recoveredBlock53Stack1 := recoveredLocal1.
            recoveredBlock53PC := 74.
        ].
        recoveredBlock53Step = 74 ifTrue: [
            recoveredBlock53Stack2 := recoveredBlock53Arg1.
            recoveredBlock53PC := 75.
        ].
        recoveredBlock53Step = 75 ifTrue: [
            recoveredBlock53Stack1 := (recoveredBlock53Stack1) add: (recoveredBlock53Stack2).
            recoveredBlock53PC := 77.
        ].
        recoveredBlock53Step = 77 ifTrue: [
            recoveredBlock53Result := recoveredBlock53Stack1.
            recoveredBlock53Done := true.
        ].
    ].
    recoveredBlock53Result
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) allMethodsDo: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20023d04; bytecode file offset 0x6ec40"
!Behavior methodsFor: 'recovered'!
instVarAt: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super instVarAt: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := IndirectInstVars.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := IndirectInstVars.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock51Value0 |
    recoveredBlock51Value0 := recoveredLocal1.
    ^recoveredBlock51Value0
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := Core.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) registry.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := 52.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20026d90; bytecode file offset 0x71cc4"
!Behavior methodsFor: 'recovered'!
allMethodsReferencingInstVarName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 recoveredBlock33Value2 recoveredBlock33Value3 |
    recoveredBlock33Value0 := recoveredBlock33Arg1.
    recoveredBlock33Value1 := (recoveredBlock33Value0) methodDictionary.
    recoveredBlock33Value2 := [:recoveredBlock33Block43Arg1 | 
    | recoveredBlock33Block43Stack0 recoveredBlock33Block43Stack1 recoveredBlock33Block43Stack2 recoveredBlock33Block43Stack3 recoveredBlock33Block43Stack4 recoveredBlock33Block43PC recoveredBlock33Block43Step recoveredBlock33Block43Done recoveredBlock33Block43Result |
    recoveredBlock33Block43Stack0 := nil.
    recoveredBlock33Block43PC := 50.
    recoveredBlock33Block43Done := false.
    [recoveredBlock33Block43Done not] whileTrue: [
        recoveredBlock33Block43Step := recoveredBlock33Block43PC.
        recoveredBlock33Block43Step = 50 ifTrue: [
            recoveredBlock33Block43Stack1 := nil.
            recoveredBlock33Block43PC := 51.
        ].
        recoveredBlock33Block43Step = 51 ifTrue: [
            recoveredBlock33Block43Stack2 := recoveredBlock33Block43Arg1.
            recoveredBlock33Block43PC := 52.
        ].
        recoveredBlock33Block43Step = 52 ifTrue: [
            recoveredBlock33Block43Stack3 := recoveredLocal1.
            recoveredBlock33Block43PC := 55.
        ].
        recoveredBlock33Block43Step = 55 ifTrue: [
            recoveredBlock33Block43Stack2 := (recoveredBlock33Block43Stack2) referencesInstVar: (recoveredBlock33Block43Stack3).
            recoveredBlock33Block43PC := 57.
        ].
        recoveredBlock33Block43Step = 57 ifTrue: [
            (recoveredBlock33Block43Stack2) ifTrue: [recoveredBlock33Block43PC := 60] ifFalse: [recoveredBlock33Block43PC := 67].
        ].
        recoveredBlock33Block43Step = 60 ifTrue: [
            recoveredBlock33Block43PC := 61.
        ].
        recoveredBlock33Block43Step = 61 ifTrue: [
            recoveredBlock33Block43Stack1 := recoveredLocal2.
            recoveredBlock33Block43PC := 64.
        ].
        recoveredBlock33Block43Step = 64 ifTrue: [
            recoveredBlock33Block43Stack2 := recoveredBlock33Block43Arg1.
            recoveredBlock33Block43PC := 65.
        ].
        recoveredBlock33Block43Step = 65 ifTrue: [
            recoveredBlock33Block43Stack1 := (recoveredBlock33Block43Stack1) add: (recoveredBlock33Block43Stack2).
            recoveredBlock33Block43PC := 67.
        ].
        recoveredBlock33Block43Step = 67 ifTrue: [
            recoveredBlock33Block43Result := recoveredBlock33Block43Stack1.
            recoveredBlock33Block43Done := true.
        ].
    ].
    recoveredBlock33Block43Result
].
    recoveredBlock33Value3 := (recoveredBlock33Value1) do: (recoveredBlock33Value2).
    recoveredBlock33Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) withAllSuperclassesDo: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Value0 recoveredBlock74Value1 recoveredBlock74Value2 recoveredBlock74Value3 |
    recoveredBlock74Value0 := recoveredBlock74Arg1.
    recoveredBlock74Value1 := (recoveredBlock74Value0) methodDictionary.
    recoveredBlock74Value2 := [:recoveredBlock74Block83Arg1 | 
    | recoveredBlock74Block83Stack0 recoveredBlock74Block83Stack1 recoveredBlock74Block83Stack2 recoveredBlock74Block83Stack3 recoveredBlock74Block83Stack4 recoveredBlock74Block83PC recoveredBlock74Block83Step recoveredBlock74Block83Done recoveredBlock74Block83Result |
    recoveredBlock74Block83Stack0 := nil.
    recoveredBlock74Block83PC := 90.
    recoveredBlock74Block83Done := false.
    [recoveredBlock74Block83Done not] whileTrue: [
        recoveredBlock74Block83Step := recoveredBlock74Block83PC.
        recoveredBlock74Block83Step = 90 ifTrue: [
            recoveredBlock74Block83Stack1 := nil.
            recoveredBlock74Block83PC := 91.
        ].
        recoveredBlock74Block83Step = 91 ifTrue: [
            recoveredBlock74Block83Stack2 := recoveredBlock74Block83Arg1.
            recoveredBlock74Block83PC := 92.
        ].
        recoveredBlock74Block83Step = 92 ifTrue: [
            recoveredBlock74Block83Stack3 := recoveredLocal1.
            recoveredBlock74Block83PC := 95.
        ].
        recoveredBlock74Block83Step = 95 ifTrue: [
            recoveredBlock74Block83Stack2 := (recoveredBlock74Block83Stack2) referencesInstVar: (recoveredBlock74Block83Stack3).
            recoveredBlock74Block83PC := 97.
        ].
        recoveredBlock74Block83Step = 97 ifTrue: [
            (recoveredBlock74Block83Stack2) ifTrue: [recoveredBlock74Block83PC := 100] ifFalse: [recoveredBlock74Block83PC := 107].
        ].
        recoveredBlock74Block83Step = 100 ifTrue: [
            recoveredBlock74Block83PC := 101.
        ].
        recoveredBlock74Block83Step = 101 ifTrue: [
            recoveredBlock74Block83Stack1 := recoveredLocal2.
            recoveredBlock74Block83PC := 104.
        ].
        recoveredBlock74Block83Step = 104 ifTrue: [
            recoveredBlock74Block83Stack2 := recoveredBlock74Block83Arg1.
            recoveredBlock74Block83PC := 105.
        ].
        recoveredBlock74Block83Step = 105 ifTrue: [
            recoveredBlock74Block83Stack1 := (recoveredBlock74Block83Stack1) add: (recoveredBlock74Block83Stack2).
            recoveredBlock74Block83PC := 107.
        ].
        recoveredBlock74Block83Step = 107 ifTrue: [
            recoveredBlock74Block83Result := recoveredBlock74Block83Stack1.
            recoveredBlock74Block83Done := true.
        ].
    ].
    recoveredBlock74Block83Result
].
    recoveredBlock74Value3 := (recoveredBlock74Value1) do: (recoveredBlock74Value2).
    recoveredBlock74Value3
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) allSubclassesDo: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200273ac; bytecode file offset 0x722f0"
!Behavior methodsFor: 'recovered'!
instVarAt: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isReadOnly.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := super instVarAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) markReadOnly: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := super instVarAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := IndirectInstVars.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := IndirectInstVars.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 |
    recoveredBlock55Value0 := recoveredArg1.
    recoveredBlock55Value1 := recoveredArg2.
    recoveredBlock55Value2 := super instVarAt: (recoveredBlock55Value0) put: (recoveredBlock55Value1).
    ^recoveredBlock55Value2
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := Core.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) registry.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 52.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := super instVarAt: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := super instVarAt: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200275c8; bytecode file offset 0x724f8"
!Behavior methodsFor: 'recovered'!
whichMethodsSendAll: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) whichMethodsSend: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 89.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Value0 recoveredBlock59Value1 recoveredBlock59Value2 |
    recoveredBlock59Value0 := recoveredBlock59Arg1.
    recoveredBlock59Value1 := recoveredLocal2.
    recoveredBlock59Value2 := (recoveredBlock59Value0) sendsSelector: (recoveredBlock59Value1).
    recoveredBlock59Value2
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 89].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := #().
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 42] ifFalse: [recoveredPC := 117]] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 113] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200279b4; bytecode file offset 0x728e8"
!Behavior methodsFor: 'recovered'!
allMethodsSendingAll: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) allMethodsSending: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := recoveredBlock72Arg1.
    recoveredBlock72Value1 := recoveredLocal2.
    recoveredBlock72Value2 := (recoveredBlock72Value0) sendsSelector: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) select: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 44] ifFalse: [recoveredPC := 119]] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 115] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x20028384; bytecode file offset 0x732bc"
!Behavior methodsFor: 'recovered'!
addSubclass: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := NlsCatKRN.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 38.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) subclasses.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) symbol.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) symbol.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 125].
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            subclasses := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"kernel.ic method 0x200289ec; bytecode file offset 0x73934"
!Behavior methodsFor: 'recovered'!
variableAssociationAt: recoveredArg1 using: recoveredArg2 ifAbsent: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'super'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) superAssociation.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asClassPoolKey.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := recoveredBlock24Arg1.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) classPool.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal2.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack3 := [].
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) associationAt: (recoveredBlock24Stack2) ifAbsent: (recoveredBlock24Stack3).
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredLocal1 := recoveredBlock24Stack1.
            recoveredBlock24PC := 42.
        ].
        recoveredBlock24Step = 42 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            recoveredBlock24Stack2 := recoveredLocal1.
            recoveredBlock24PC := 46.
        ].
        recoveredBlock24Step = 46 ifTrue: [
            (recoveredBlock24Stack2 == nil) ifTrue: [recoveredBlock24PC := 55] ifFalse: [recoveredBlock24PC := 50].
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 54.
        ].
        recoveredBlock24Step = 54 ifTrue: [
            ^recoveredBlock24Stack1
        ].
        recoveredBlock24Step = 55 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) withAllSuperclassesDo: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPoolKey.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSharedPoolNames.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Local1 recoveredBlock69Stack0 recoveredBlock69Stack1 recoveredBlock69Stack2 recoveredBlock69Stack3 recoveredBlock69Stack4 recoveredBlock69PC recoveredBlock69Step recoveredBlock69Done recoveredBlock69Result |
    recoveredBlock69Stack0 := self.
    recoveredBlock69PC := 76.
    recoveredBlock69Done := false.
    [recoveredBlock69Done not] whileTrue: [
        recoveredBlock69Step := recoveredBlock69PC.
        recoveredBlock69Step = 76 ifTrue: [
            recoveredBlock69Stack1 := recoveredArg2.
            recoveredBlock69PC := 79.
        ].
        recoveredBlock69Step = 79 ifTrue: [
            recoveredBlock69Stack2 := recoveredBlock69Arg1.
            recoveredBlock69PC := 80.
        ].
        recoveredBlock69Step = 80 ifTrue: [
            recoveredBlock69Stack3 := [
    | block280094a0Value0 block280094a0Value1 |
    block280094a0Value0 := Dictionary.
    block280094a0Value1 := (block280094a0Value0) new.
    block280094a0Value1
].
            recoveredBlock69PC := 82.
        ].
        recoveredBlock69Step = 82 ifTrue: [
            recoveredBlock69PC := 91.
        ].
        recoveredBlock69Step = 91 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) poolDictionaryAt: (recoveredBlock69Stack2) ifAbsent: (recoveredBlock69Stack3).
            recoveredBlock69PC := 93.
        ].
        recoveredBlock69Step = 93 ifTrue: [
            recoveredBlock69Local1 := recoveredBlock69Stack1.
            recoveredBlock69PC := 94.
        ].
        recoveredBlock69Step = 94 ifTrue: [
            recoveredBlock69Stack1 := recoveredBlock69Local1.
            recoveredBlock69PC := 95.
        ].
        recoveredBlock69Step = 95 ifTrue: [
            recoveredBlock69Stack2 := recoveredLocal2.
            recoveredBlock69PC := 98.
        ].
        recoveredBlock69Step = 98 ifTrue: [
            recoveredBlock69Stack3 := [].
            recoveredBlock69PC := 100.
        ].
        recoveredBlock69Step = 100 ifTrue: [
            recoveredBlock69Stack1 := (recoveredBlock69Stack1) associationAt: (recoveredBlock69Stack2) ifAbsent: (recoveredBlock69Stack3).
            recoveredBlock69PC := 102.
        ].
        recoveredBlock69Step = 102 ifTrue: [
            recoveredLocal1 := recoveredBlock69Stack1.
            recoveredBlock69PC := 105.
        ].
        recoveredBlock69Step = 105 ifTrue: [
            recoveredBlock69Stack1 := nil.
            recoveredBlock69PC := 106.
        ].
        recoveredBlock69Step = 106 ifTrue: [
            recoveredBlock69Stack2 := recoveredLocal1.
            recoveredBlock69PC := 109.
        ].
        recoveredBlock69Step = 109 ifTrue: [
            (recoveredBlock69Stack2 == nil) ifTrue: [recoveredBlock69PC := 117] ifFalse: [recoveredBlock69PC := 112].
        ].
        recoveredBlock69Step = 112 ifTrue: [
            recoveredBlock69PC := 113.
        ].
        recoveredBlock69Step = 113 ifTrue: [
            recoveredBlock69Stack1 := recoveredLocal1.
            recoveredBlock69PC := 116.
        ].
        recoveredBlock69Step = 116 ifTrue: [
            ^recoveredBlock69Stack1
        ].
        recoveredBlock69Step = 117 ifTrue: [
            recoveredBlock69Result := recoveredBlock69Stack1.
            recoveredBlock69Done := true.
        ].
    ].
    recoveredBlock69Result
].
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) asGlobalKey.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) associationAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

