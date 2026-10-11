"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200667bc; bytecode file offset 0x963428"
!IniSection methodsFor: 'recovered'!
iniFileName
    | recoveredValue0 |
    recoveredValue0 := iniFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067994; bytecode file offset 0x9646f8"
!IniSection methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006925c; bytecode file offset 0x965b90"
!IniSection methodsFor: 'recovered'!
entries
    | recoveredValue0 |
    recoveredValue0 := entries.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a220; bytecode file offset 0x966bdc"
!IniSection methodsFor: 'recovered'!
sequenceNumber
    | recoveredValue0 |
    recoveredValue0 := sequenceNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006aa0c; bytecode file offset 0x967a18"
!IniSection methodsFor: 'recovered'!
entryList
    | recoveredValue0 |
    recoveredValue0 := entryList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200bdc24; bytecode file offset 0x9bb178"
!IniSection methodsFor: 'recovered'!
iniFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    iniFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf620; bytecode file offset 0x9bc0b4"
!IniSection methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfbdc; bytecode file offset 0x9bd228"
!IniSection methodsFor: 'recovered'!
entries: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    entries := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0dd8; bytecode file offset 0x9bdf14"
!IniSection methodsFor: 'recovered'!
sequenceNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sequenceNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d7738; bytecode file offset 0x9d3ff8"
!IniSection methodsFor: 'recovered'!
entryForName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := entries.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asLowercase.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200e75b4; bytecode file offset 0x9e3e78"
!IniSection methodsFor: 'recovered'!
removeEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := entries.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue2) asLowercase.
    recoveredValue4 := [].
    (recoveredValue0) removeKey: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200f0104; bytecode file offset 0x9ec9c4"
!IniSection methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EsOrderedDictionary.
    recoveredValue1 := (recoveredValue0) new.
    entries := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    entryList := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20130918; bytecode file offset 0xa2d1dc"
!IniSection methodsFor: 'recovered'!
addEntry: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := entries.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) name.
    recoveredValue3 := (recoveredValue2) asLowercase.
    recoveredValue4 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue3) put: (recoveredValue4).
    recoveredValue5 := entryList.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) add: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201381f0; bytecode file offset 0xa34ab4"
!IniSection methodsFor: 'recovered'!
valueForName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) entryForName: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ''.
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
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026cf24; bytecode file offset 0xb697f8"
!IniSection methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) nextPutAll: ('[  ').
    recoveredValue3 := (self) name.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printOn: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    (recoveredValue5) nextPutAll: ('  ]').
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) cr.
    recoveredValue7 := entries.
    recoveredValue8 := (recoveredValue7) size.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202a1e0c; bytecode file offset 0xb9e6d4"
!IniSection methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPut: ($[).
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := name.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPut: ($]).
    (recoveredValue0) cr.
    recoveredValue5 := entries.
    recoveredValue6 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := recoveredArg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) putIn: (recoveredBlock30Value1).
    recoveredBlock30Value2
].
    (recoveredValue5) do: (recoveredValue6).
    ^self
! !

