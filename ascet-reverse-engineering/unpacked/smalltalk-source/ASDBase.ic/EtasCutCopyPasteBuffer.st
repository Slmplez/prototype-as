"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000cb34; bytecode file offset 0x909658"
!EtasCutCopyPasteBuffer methodsFor: 'recovered'!
containsItem: recoveredArg1
    ^false
! !

"ASDBase.ic method 0x2000d3e4; bytecode file offset 0x909e08"
!EtasCutCopyPasteBuffer methodsFor: 'recovered'!
deleteIsPossibleFor: recoveredArg1
    ^true
! !

"ASDBase.ic method 0x200663d4; bytecode file offset 0x963428"
!EtasCutCopyPasteBuffer methodsFor: 'recovered'!
contents
    | recoveredValue0 |
    recoveredValue0 := contents.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008c3ec; bytecode file offset 0x989498"
!EtasCutCopyPasteBuffer methodsFor: 'recovered'!
resetBuffer
    (self) contents: (#()).
    ^self
! !

"ASDBase.ic method 0x200bda64; bytecode file offset 0x9bb178"
!EtasCutCopyPasteBuffer methodsFor: 'recovered'!
contents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    contents := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9d84; bytecode file offset 0x9f6678"
!EtasCutCopyPasteBuffer methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    contents := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2025f16c; bytecode file offset 0xb5ba40"
!EtasCutCopyPasteBuffer methodsFor: 'recovered'!
pasteIsPossible
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_56336'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280df884Arg1 | 
    | block280df884Stack0 block280df884Stack1 block280df884Stack2 block280df884PC block280df884Step block280df884Done block280df884Result |
    block280df884Stack0 := self.
    block280df884PC := 4.
    block280df884Done := false.
    [block280df884Done not] whileTrue: [
        block280df884Step := block280df884PC.
        block280df884Step = 4 ifTrue: [
            block280df884Stack1 := block280df884Arg1.
            block280df884PC := 5.
        ].
        block280df884Step = 5 ifTrue: [
            block280df884Stack1 := (block280df884Stack1) item.
            block280df884PC := 7.
        ].
        block280df884Step = 7 ifTrue: [
            (block280df884Stack1 ~~ nil) ifTrue: [block280df884PC := 14] ifFalse: [block280df884PC := 10].
        ].
        block280df884Step = 10 ifTrue: [
            block280df884Stack1 := true.
            block280df884PC := 11.
        ].
        block280df884Step = 11 ifTrue: [
            block280df884PC := 20.
        ].
        block280df884Step = 14 ifTrue: [
            block280df884Stack1 := block280df884Arg1.
            block280df884PC := 15.
        ].
        block280df884Step = 15 ifTrue: [
            block280df884Stack1 := (block280df884Stack1) item.
            block280df884PC := 17.
        ].
        block280df884Step = 17 ifTrue: [
            block280df884Stack1 := (block280df884Stack1) isRead.
            block280df884PC := 19.
        ].
        block280df884Step = 19 ifTrue: [
            block280df884Stack1 := (block280df884Stack1) not.
            block280df884PC := 20.
        ].
        block280df884Step = 20 ifTrue: [
            block280df884Result := block280df884Stack1.
            block280df884Done := true.
        ].
    ].
    block280df884Result
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isNil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

