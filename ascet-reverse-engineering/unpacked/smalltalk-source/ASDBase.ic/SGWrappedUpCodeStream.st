"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002508; bytecode file offset 0x8ffcfc"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
asWrappedUpCodeStream
    ^self
! !

"ASDBase.ic method 0x2006a300; bytecode file offset 0x966bdc"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
linePosition
    | recoveredValue0 |
    recoveredValue0 := linePosition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b478; bytecode file offset 0x96873c"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
wrapUpCharacters
    | recoveredValue0 |
    recoveredValue0 := wrapUpCharacters.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c22f0; bytecode file offset 0x9bf474"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
wrapUpCharacters: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    wrapUpCharacters := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e4dd8; bytecode file offset 0x9e16fc"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
cr
    | recoveredValue0 |
    recoveredValue0 := (self) linePosition.
    (recoveredValue0) reset.
    super cr.
    ^self
! !

"ASDBase.ic method 0x200e4e20; bytecode file offset 0x9e16fc"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
newline
    | recoveredValue0 |
    recoveredValue0 := (self) linePosition.
    (recoveredValue0) reset.
    super newline.
    ^self
! !

"ASDBase.ic method 0x200e5cf0; bytecode file offset 0x9e25cc"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
createNewInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super createNewInstance.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) wrapUpCharacters.
    (recoveredValue1) wrapUpCharacters: (recoveredValue2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200fa0b4; bytecode file offset 0x9f6a08"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := SGCgCounter.
    recoveredValue1 := (recoveredValue0) create.
    linePosition := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200ff260; bytecode file offset 0x9fbb24"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
nextPut: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) linePosition.
    (recoveredValue0) increment.
    recoveredValue1 := recoveredArg1.
    super nextPut: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20112d34; bytecode file offset 0xa0f5f8"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
asPerlCodeStream
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super asPerlCodeStream.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) wrapUpCharacters.
    (self) wrapUpCharacters: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20135370; bytecode file offset 0xa31c38"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
nextPutAll: recoveredArg1 escape: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) linePosition.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) size.
    (recoveredValue0) increment: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    super nextPutAll: (recoveredValue3) escape: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2019fc00; bytecode file offset 0xa9c4b8"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
maxLinePosition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := maxLinePosition.
    recoveredValue1 := [
    maxLinePosition := 200.
    200
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := maxLinePosition.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20206d94; bytecode file offset 0xb03660"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
nextPutAll: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) nextPutAllWrapUp: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) nextPutAllWrapUp: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 16].
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

"ASDBase.ic method 0x2021c5ac; bytecode file offset 0xb18e80"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
nextPutAllNoWrapUp: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) linePosition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxLinePosition.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) halt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) linePosition.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) increment: (recoveredStack1).
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
            super nextPutAll: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20433f0c; bytecode file offset 0xd307fc"
!SGWrappedUpCodeStream methodsFor: 'recovered'!
nextPutAllWrapUp: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) linePosition.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) maxLinePosition.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) wrapUpCharacters.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := [:recoveredBlock21Arg1 | 
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := recoveredBlock21Arg1.
    recoveredBlock21Value2 := (recoveredBlock21Value0) includes: (recoveredBlock21Value1).
    recoveredBlock21Value2
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := (self) writeStream.
    (recoveredBlock35Value0) cr.
    recoveredBlock35Value1 := (self) linePosition.
    (recoveredBlock35Value1) reset.
    recoveredBlock35Value2 := recoveredArg1.
    recoveredBlock35Value3 := (self) nextPutAllNoWrapUp: (recoveredBlock35Value2).
    ^recoveredBlock35Value3
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := [:recoveredBlock70Arg1 | 
    | recoveredBlock70Value0 recoveredBlock70Value1 |
    recoveredBlock70Value0 := recoveredBlock70Arg1.
    recoveredBlock70Value1 := (self) nextPutAllWrapUp: (recoveredBlock70Value0).
    recoveredBlock70Value1
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock80Value0 recoveredBlock80Value1 |
    recoveredBlock80Value0 := recoveredLocal1.
    recoveredBlock80Value1 := (self) nextPut: (recoveredBlock80Value0).
    recoveredBlock80Value1
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) do: (recoveredStack1) andBetweenDo: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) nextPutAllNoWrapUp: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

