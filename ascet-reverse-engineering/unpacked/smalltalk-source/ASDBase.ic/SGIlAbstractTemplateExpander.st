"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006a308; bytecode file offset 0x966bdc"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
templateConfigStream
    | recoveredValue0 |
    recoveredValue0 := templateConfigStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b3788; bytecode file offset 0x9b0070"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
listSeparator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) listSeparator.
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x200d9fcc; bytecode file offset 0x9d68a0"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
banner: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) paragraphBanner: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e6448; bytecode file offset 0x9e2d1c"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
initialize
    | recoveredValue0 |
    super initialize.
    recoveredValue0 := (self) createPerlCodeStream.
    templateConfigStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f6ee4; bytecode file offset 0x9f37d8"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
endStructure
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newline.
    (recoveredValue0) endHashRef.
    ^self
! !

"ASDBase.ic method 0x200f6efc; bytecode file offset 0x9f37d8"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
beginStructure
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) beginHashRef.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) incIndent.
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x200f6f14; bytecode file offset 0x9f37d8"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
endList
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) decIndent.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newline.
    (recoveredValue0) endArray.
    ^self
! !

"ASDBase.ic method 0x20101080; bytecode file offset 0x9fd95c"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
attribute: recoveredArg1 valueInteger: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) nextPutHashKey: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    (recoveredValue0) nextPutAll: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20101098; bytecode file offset 0x9fd95c"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
attribute: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) nextPutHashKey: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) asString.
    (recoveredValue0) valueString: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2010f358; bytecode file offset 0xa0bc1c"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
beginStructure: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) nextPutHashKey: (recoveredValue2).
    (self) beginStructure.
    ^self
! !

"ASDBase.ic method 0x20176ac8; bytecode file offset 0xa73390"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
beginList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) newline.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) nextPutHashKey: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) beginArray.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) incIndent.
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x201b5d5c; bytecode file offset 0xab2618"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
attribute: recoveredArg1 valueBool: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) valueInteger: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) valueInteger: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c5494; bytecode file offset 0xbc1d74"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
endDataStructure: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    (self) endStructure.
    recoveredValue0 := (self) templateConfigStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) endStmnt.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) newline.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) newlinePutAll: ('return $').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) nextPutAll: (';').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) decIndent.
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) newline.
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) newlinePutAll: ('}').
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) newline.
    (recoveredValue0) newlinePutAll: ('1;').
    ^self
! !

"ASDBase.ic method 0x203ef5a8; bytecode file offset 0xcebe98"
!SGIlAbstractTemplateExpander methodsFor: 'recovered'!
attribute: recoveredArg1 list: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) templateConfigStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) nextPutHashKey: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) beginArray.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) templateConfigStream.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) incIndent.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:recoveredBlock34Arg1 | 
    | recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := (self) templateConfigStream.
    recoveredBlock34Value1 := recoveredBlock34Arg1.
    recoveredBlock34Value2 := (recoveredBlock34Value1) asString.
    recoveredBlock34Value3 := (recoveredBlock34Value0) valueString: (recoveredBlock34Value2).
    recoveredBlock34Value3
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock47Value0 |
    recoveredBlock47Value0 := (self) listSeparator.
    recoveredBlock47Value0
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) templateConfigStream.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) decIndent.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) newline.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) templateConfigStream.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) space.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) first.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) valueString: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) space.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) templateConfigStream.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) endArray.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

