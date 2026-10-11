"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002a10; bytecode file offset 0x8ffcfc"
!SGFindResult methodsFor: 'recovered'!
openEditorForFindResult
    ^self
! !

"ASDBase.ic method 0x2000640c; bytecode file offset 0x902de8"
!SGFindResult methodsFor: 'recovered'!
replaceString: recoveredArg1 with: recoveredArg2 caseSensitive: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2001a0c0; bytecode file offset 0x92209c"
!SGFindResult methodsFor: 'recovered'!
printTypeInfoCellValue
    ^''
! !

"ASDBase.ic method 0x20065ba4; bytecode file offset 0x963428"
!SGFindResult methodsFor: 'recovered'!
componentKey
    | recoveredValue0 |
    recoveredValue0 := componentKey.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067224; bytecode file offset 0x9646f8"
!SGFindResult methodsFor: 'recovered'!
codeContainer
    | recoveredValue0 |
    recoveredValue0 := codeContainer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067fac; bytecode file offset 0x965b90"
!SGFindResult methodsFor: 'recovered'!
implementation
    | recoveredValue0 |
    recoveredValue0 := implementation.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069de8; bytecode file offset 0x966bdc"
!SGFindResult methodsFor: 'recovered'!
selectionBegin
    | recoveredValue0 |
    recoveredValue0 := selectionBegin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a65c; bytecode file offset 0x967a18"
!SGFindResult methodsFor: 'recovered'!
selectionEnd
    | recoveredValue0 |
    recoveredValue0 := selectionEnd.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b3a8; bytecode file offset 0x96873c"
!SGFindResult methodsFor: 'recovered'!
codeLine
    | recoveredValue0 |
    recoveredValue0 := codeLine.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20096230; bytecode file offset 0x992bec"
!SGFindResult methodsFor: 'recovered'!
component: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asRBDBReference.
    (self) componentKey: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009db64; bytecode file offset 0x99a578"
!SGFindResult methodsFor: 'recovered'!
printLineInfoCellValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) selectionBegin.
    recoveredValue1 := (recoveredValue0) printString.
    recoveredValue2 := ('Line: ') , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bde54; bytecode file offset 0x9bb178"
!SGFindResult methodsFor: 'recovered'!
componentKey: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentKey := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf478; bytecode file offset 0x9bc0b4"
!SGFindResult methodsFor: 'recovered'!
codeContainer: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeContainer := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfbf4; bytecode file offset 0x9bd228"
!SGFindResult methodsFor: 'recovered'!
implementation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    implementation := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1350; bytecode file offset 0x9bdf14"
!SGFindResult methodsFor: 'recovered'!
selectionBegin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectionBegin := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2154; bytecode file offset 0x9beac8"
!SGFindResult methodsFor: 'recovered'!
selectionEnd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    selectionEnd := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2570; bytecode file offset 0x9bf474"
!SGFindResult methodsFor: 'recovered'!
codeLine: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    codeLine := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e3c78; bytecode file offset 0x9e05b0"
!SGFindResult methodsFor: 'recovered'!
component
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) componentKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c3588Arg1 | 
    nil
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObjectIfUndefined: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ec9d4; bytecode file offset 0xde92bc"
!SGFindResult methodsFor: 'recovered'!
replaceString: recoveredArg1 with: recoveredArg2 inCode: recoveredArg3 caseSensitive: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 153.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := codeLine.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectionBegin.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArrayOfSubstringsSeparatedBy: (recoveredStack2) matchCase: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := [:recoveredBlock93Arg1 :recoveredBlock93Arg2 | 
    | recoveredBlock93Stack0 recoveredBlock93Stack1 recoveredBlock93Stack2 recoveredBlock93Stack3 recoveredBlock93Stack4 recoveredBlock93PC recoveredBlock93Step recoveredBlock93Done recoveredBlock93Result |
    recoveredBlock93Stack0 := self.
    recoveredBlock93PC := 100.
    recoveredBlock93Done := false.
    [recoveredBlock93Done not] whileTrue: [
        recoveredBlock93Step := recoveredBlock93PC.
        recoveredBlock93Step = 100 ifTrue: [
            recoveredBlock93Stack1 := recoveredLocal4.
            recoveredBlock93PC := 103.
        ].
        recoveredBlock93Step = 103 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg1.
            recoveredBlock93PC := 104.
        ].
        recoveredBlock93Step = 104 ifTrue: [
            (recoveredBlock93Stack1) nextPutAll: (recoveredBlock93Stack2).
            recoveredBlock93PC := 106.
        ].
        recoveredBlock93Step = 106 ifTrue: [
            recoveredBlock93Stack1 := nil.
            recoveredBlock93PC := 107.
        ].
        recoveredBlock93Step = 107 ifTrue: [
            recoveredBlock93Stack2 := recoveredBlock93Arg2.
            recoveredBlock93PC := 108.
        ].
        recoveredBlock93Step = 108 ifTrue: [
            recoveredBlock93Stack3 := recoveredLocal1.
            recoveredBlock93PC := 111.
        ].
        recoveredBlock93Step = 111 ifTrue: [
            recoveredBlock93Stack3 := (recoveredBlock93Stack3) size.
            recoveredBlock93PC := 113.
        ].
        recoveredBlock93Step = 113 ifTrue: [
            recoveredBlock93Stack2 := (recoveredBlock93Stack2) ~= (recoveredBlock93Stack3).
            recoveredBlock93PC := 114.
        ].
        recoveredBlock93Step = 114 ifTrue: [
            (recoveredBlock93Stack2) ifTrue: [recoveredBlock93PC := 118] ifFalse: [recoveredBlock93PC := 126].
        ].
        recoveredBlock93Step = 118 ifTrue: [
            recoveredBlock93PC := 119.
        ].
        recoveredBlock93Step = 119 ifTrue: [
            recoveredBlock93Stack1 := recoveredLocal4.
            recoveredBlock93PC := 122.
        ].
        recoveredBlock93Step = 122 ifTrue: [
            recoveredBlock93Stack2 := recoveredArg2.
            recoveredBlock93PC := 125.
        ].
        recoveredBlock93Step = 125 ifTrue: [
            recoveredBlock93Stack1 := (recoveredBlock93Stack1) nextPutAll: (recoveredBlock93Stack2).
            recoveredBlock93PC := 126.
        ].
        recoveredBlock93Step = 126 ifTrue: [
            recoveredBlock93Result := recoveredBlock93Stack1.
            recoveredBlock93Done := true.
        ].
    ].
    recoveredBlock93Result
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

