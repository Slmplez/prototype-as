"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20073640; bytecode file offset 0x970b34"
!SelfDumpingLookupTable methodsFor: 'recovered'!
getLinkObject
    ^nil
! !

"ASDBase.ic method 0x2007775c; bytecode file offset 0x9757c8"
!SelfDumpingLookupTable methodsFor: 'recovered'!
isKnowMyLinks
    ^true
! !

"ASDBase.ic method 0x2007acb4; bytecode file offset 0x97c330"
!SelfDumpingLookupTable methodsFor: 'recovered'!
isSelfDumpAndLoad
    ^false
! !

"ASDBase.ic method 0x202e3b9c; bytecode file offset 0xbe0470"
!SelfDumpingLookupTable methodsFor: 'recovered'!
postLoad: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) valueArray.
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
            recoveredStack0 := (recoveredStack0) valueArray.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := DBLinDeLinError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'table is damaged'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) createBasic: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock21Value0 |
    recoveredBlock21Value0 := (self) rehash.
    recoveredBlock21Value0
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := ExCLDTIndexOutOfRange.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [:recoveredBlock33Arg1 | 
    | recoveredBlock33Value0 recoveredBlock33Value1 |
    recoveredBlock33Value0 := DBLinDeLinError.
    recoveredBlock33Value1 := (recoveredBlock33Value0) createBasic: ('table is damaged').
    ^recoveredBlock33Value1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

