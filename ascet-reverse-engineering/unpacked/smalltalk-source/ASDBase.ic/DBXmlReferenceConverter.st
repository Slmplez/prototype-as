"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200007f8; bytecode file offset 0x8ffcfc"
!DBXmlReferenceConverter methodsFor: 'recovered'!
initialize
    ^self
! !

"ASDBase.ic method 0x200664ec; bytecode file offset 0x963428"
!DBXmlReferenceConverter methodsFor: 'recovered'!
oid
    | recoveredValue0 |
    recoveredValue0 := oid.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20078c0c; bytecode file offset 0x9757c8"
!DBXmlReferenceConverter methodsFor: 'recovered'!
isXmlObjectReference
    ^true
! !

"ASDBase.ic method 0x200bdc8c; bytecode file offset 0x9bb178"
!DBXmlReferenceConverter methodsFor: 'recovered'!
, recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    oid := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012c8b4; bytecode file offset 0xa29170"
!DBXmlReferenceConverter methodsFor: 'recovered'!
convert
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) LoadedObjectDescriptor.
    recoveredValue1 := oid.
    recoveredValue2 := [
    self
].
    recoveredValue3 := (recoveredValue0) objectFor: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201769b8; bytecode file offset 0xa7327c"
!DBXmlReferenceConverter methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := (self) oid.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    ^self
! !

"ASDBase.ic method 0x201cbf50; bytecode file offset 0xac8810"
!DBXmlReferenceConverter methodsFor: 'recovered'!
resolveXmlObjectReferencesUsing: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := oid.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [
    self
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := [:block280d50c0Arg1 | 
    | block280d50c0Value0 block280d50c0Value1 |
    block280d50c0Value0 := block280d50c0Arg1.
    block280d50c0Value1 := (block280d50c0Value0) object.
    block280d50c0Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

