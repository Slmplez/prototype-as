"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024338; bytecode file offset 0x92209c"
!DBKey methodsFor: 'recovered'!
name
    ^'key'
! !

"ASDBase.ic method 0x20040cb4; bytecode file offset 0x93d83c"
!DBKey methodsFor: 'recovered'!
significantBytes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := keyValue.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059438; bytecode file offset 0x956284"
!DBKey methodsFor: 'recovered'!
keyValueFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) keyValueFor: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20065c14; bytecode file offset 0x963428"
!DBKey methodsFor: 'recovered'!
keyNumber
    | recoveredValue0 |
    recoveredValue0 := keyNumber.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067de4; bytecode file offset 0x9646f8"
!DBKey methodsFor: 'recovered'!
keyValue
    | recoveredValue0 |
    recoveredValue0 := keyValue.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006839c; bytecode file offset 0x965b90"
!DBKey methodsFor: 'recovered'!
keyLength
    | recoveredValue0 |
    recoveredValue0 := keyLength.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200695b8; bytecode file offset 0x966bdc"
!DBKey methodsFor: 'recovered'!
interface
    | recoveredValue0 |
    recoveredValue0 := interface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200adf7c; bytecode file offset 0x9aa834"
!DBKey methodsFor: 'recovered'!
is: recoveredArg1 greater: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) keyValueFor: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) keyValueFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) > (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200adf94; bytecode file offset 0x9aa84c"
!DBKey methodsFor: 'recovered'!
match: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) keyValueFor: (recoveredValue0).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (self) keyValueFor: (recoveredValue2).
    recoveredValue4 := (recoveredValue1) = (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200be63c; bytecode file offset 0x9bb178"
!DBKey methodsFor: 'recovered'!
keyNumber: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keyNumber := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bec78; bytecode file offset 0x9bc0b4"
!DBKey methodsFor: 'recovered'!
keyValue: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keyValue := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfc9c; bytecode file offset 0x9bd228"
!DBKey methodsFor: 'recovered'!
keyLength: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    keyLength := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0d70; bytecode file offset 0x9bdf14"
!DBKey methodsFor: 'recovered'!
interface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e0e58; bytecode file offset 0x9dd71c"
!DBKey methodsFor: 'recovered'!
sortCollection
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := (self) sortBlock.
    recoveredValue3 := (recoveredValue1) initialize: (16) sortBlock: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012c658; bytecode file offset 0xa28f10"
!DBKey methodsFor: 'recovered'!
sortBlock
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) keyValueFor: (recoveredBlock4Value0).
    recoveredBlock4Value2 := recoveredBlock4Arg2.
    recoveredBlock4Value3 := (self) keyValueFor: (recoveredBlock4Value2).
    recoveredBlock4Value4 := (recoveredBlock4Value1) <= (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    ^recoveredValue0
! !

"ASDBase.ic method 0x20157788; bytecode file offset 0xa54048"
!DBKey methodsFor: 'recovered'!
setKeyValue: recoveredArg1 interface: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) keyValueFor: (recoveredValue1).
    keyValue := recoveredValue2.
    recoveredValue3 := keyValue.
    recoveredValue4 := (recoveredValue3) size.
    keyLength := recoveredValue4.
    recoveredValue5 := recoveredArg2.
    interface := recoveredValue5.
    recoveredValue6 := keyValue.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20167964; bytecode file offset 0xa64228"
!DBKey methodsFor: 'recovered'!
setKeyValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) keyValueFor: (recoveredValue1).
    keyValue := recoveredValue2.
    recoveredValue3 := keyValue.
    recoveredValue4 := (recoveredValue3) size.
    keyLength := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) interface.
    interface := recoveredValue6.
    recoveredValue7 := keyValue.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2019cc68; bytecode file offset 0xa99520"
!DBKey methodsFor: 'recovered'!
is: recoveredArg1 between: recoveredArg2 and: recoveredArg3
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
            recoveredStack0 := (recoveredStack0) keyValueFor: (recoveredStack1).
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
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyValueFor: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) keyValueFor: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
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

"ASDBase.ic method 0x201f037c; bytecode file offset 0xaecc3c"
!DBKey methodsFor: 'recovered'!
initializeInstances
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := KeyMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            keyNumber := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := KeyMap.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            keyNumber := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            keyLength := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028ee1c; bytecode file offset 0xb8b6e0"
!DBKey methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPut: ($n).
    recoveredValue2 := keyNumber.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPut: ($l).
    recoveredValue5 := keyLength.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) printOn: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) cr.
    recoveredValue8 := keyValue.
    recoveredValue9 := recoveredArg1.
    (recoveredValue8) printOn: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x202d35b8; bytecode file offset 0xbcfe90"
!DBKey methodsFor: 'recovered'!
uniqueLabelResult: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := DBExtendedSet.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (recoveredValue0) create: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) hashMethod: ('completeNameHash').
    (recoveredValue4) equalMethod: ('completeNameEqual:').
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredLocal1.
    recoveredBlock29Value1 := recoveredBlock29Arg1.
    recoveredBlock29Value2 := (recoveredBlock29Value0) add: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

