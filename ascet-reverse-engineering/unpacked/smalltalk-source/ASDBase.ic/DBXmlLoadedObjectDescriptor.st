"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200665cc; bytecode file offset 0x963428"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
behaviors
    | recoveredValue0 |
    recoveredValue0 := behaviors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067bbc; bytecode file offset 0x9646f8"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
objects
    | recoveredValue0 |
    recoveredValue0 := objects.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068814; bytecode file offset 0x965b90"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
rootID
    | recoveredValue0 |
    recoveredValue0 := rootID.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ac7dc; bytecode file offset 0x9a9094"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
objectFor: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := objects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b886c; bytecode file offset 0x9b5138"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
getClassDescriptionFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := behaviors.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b89b4; bytecode file offset 0x9b5270"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
add: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := objects.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) oid.
    recoveredValue3 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200cdd3c; bytecode file offset 0x9ca5f8"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
getRootObject
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := objects.
    recoveredValue1 := rootID.
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200f00b8; bytecode file offset 0x9ec978"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    behaviors := recoveredValue1.
    recoveredValue2 := DBLargeDictionary.
    recoveredValue3 := (recoveredValue2) new.
    objects := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2014cfd4; bytecode file offset 0xa49890"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
resolveObjectReferences
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := objects.
    recoveredValue1 := [:recoveredBlock6Arg1 :recoveredBlock6Arg2 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := recoveredBlock6Arg2.
    recoveredBlock6Value1 := objects.
    recoveredBlock6Value2 := (recoveredBlock6Value0) resolveXmlObjectReferencesUsing: (recoveredBlock6Value1).
    recoveredBlock6Value2
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201f57d8; bytecode file offset 0xaf20a4"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) behaviors.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := (self) objects.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := recoveredArg1.
    (recoveredValue6) printOn: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x204549ac; bytecode file offset 0xd51298"
!DBXmlLoadedObjectDescriptor methodsFor: 'recovered'!
valueOfAttributeNamed: recoveredArg1 put: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := #('instance' 'variableInstance' 'variableByteInstance').
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := objects.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) oid.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := #('class' 'variableClass' 'variableByteClass').
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := behaviors.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := 'rootID'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            rootID := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := rootID.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := $r.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := rootID.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := rootID.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            rootID := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := rootID.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock94Value0 recoveredBlock94Value1 recoveredBlock94Value2 |
    recoveredBlock94Value0 := (self) class.
    recoveredBlock94Value1 := recoveredArg1.
    recoveredBlock94Value2 := (recoveredBlock94Value0) noSuchAttribute: (recoveredBlock94Value1).
    recoveredBlock94Value2
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueOfAttributeNamed: (recoveredStack1) ifAbsent: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

