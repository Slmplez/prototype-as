"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200132b4; bytecode file offset 0x912098"
!MDFFileWithCorrections class methodsFor: 'recovered'!
fileTypeString
    | recoveredValue0 |
    recoveredValue0 := SCFileTypeMDFCorrected.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016178; bytecode file offset 0x92209c"
!MDFFileWithCorrections class methodsFor: 'recovered'!
fileTypeSymbol
    ^'ETASMDFCorrected'
! !

"ASDBase.ic method 0x2001ffd0; bytecode file offset 0x92209c"
!MDFFileWithCorrections class methodsFor: 'recovered'!
fileExtension
    ^'mdfc'
! !

"ASDBase.ic method 0x201695fc; bytecode file offset 0xa65ecc"
!MDFFileWithCorrections class methodsFor: 'recovered'!
createFile: recoveredArg1 elementAccessors: recoveredArg2 sampleCount: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := MDFAlignmentCheck.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) bindWith: (recoveredValue3).
    (recoveredValue1) addText: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (self) convertElementAccessors: (recoveredValue6).
    recoveredValue8 := (self) createFile: (recoveredValue5) elementAccessors: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x2044b7f4; bytecode file offset 0xd480d0"
!MDFFileWithCorrections class methodsFor: 'recovered'!
convertElementAccessors: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280ff148Arg1 | 
    | block280ff148Value0 block280ff148Value1 |
    block280ff148Value0 := block280ff148Arg1.
    block280ff148Value1 := (block280ff148Value0) deepCopy.
    block280ff148Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 :recoveredBlock28Arg2 | 
    | recoveredBlock28Local1 recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 recoveredBlock28Value7 recoveredBlock28Value8 recoveredBlock28Value9 recoveredBlock28Value10 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := recoveredLocal1.
    recoveredBlock28Value2 := (recoveredBlock28Value0) adjustAlignment: (recoveredBlock28Value1).
    recoveredBlock28Local1 := recoveredBlock28Value2.
    recoveredBlock28Value3 := recoveredLocal2.
    recoveredBlock28Value4 := [:recoveredBlock28Block47Arg1 :recoveredBlock28Block47Arg2 | 
    | recoveredBlock28Block47Stack0 recoveredBlock28Block47Stack1 recoveredBlock28Block47Stack2 recoveredBlock28Block47Stack3 recoveredBlock28Block47Stack4 recoveredBlock28Block47PC recoveredBlock28Block47Step recoveredBlock28Block47Done recoveredBlock28Block47Result |
    recoveredBlock28Block47Stack0 := nil.
    recoveredBlock28Block47PC := 54.
    recoveredBlock28Block47Done := false.
    [recoveredBlock28Block47Done not] whileTrue: [
        recoveredBlock28Block47Step := recoveredBlock28Block47PC.
        recoveredBlock28Block47Step = 54 ifTrue: [
            recoveredBlock28Block47Stack1 := nil.
            recoveredBlock28Block47PC := 55.
        ].
        recoveredBlock28Block47Step = 55 ifTrue: [
            recoveredBlock28Block47Stack2 := recoveredBlock28Block47Arg1.
            recoveredBlock28Block47PC := 56.
        ].
        recoveredBlock28Block47Step = 56 ifTrue: [
            recoveredBlock28Block47Stack2 := (recoveredBlock28Block47Stack2) recordBitOffset.
            recoveredBlock28Block47PC := 58.
        ].
        recoveredBlock28Block47Step = 58 ifTrue: [
            recoveredBlock28Block47Stack3 := recoveredBlock28Local1.
            recoveredBlock28Block47PC := 61.
        ].
        recoveredBlock28Block47Step = 61 ifTrue: [
            recoveredBlock28Block47Stack3 := (recoveredBlock28Block47Stack3) recordBitOffset.
            recoveredBlock28Block47PC := 63.
        ].
        recoveredBlock28Block47Step = 63 ifTrue: [
            recoveredBlock28Block47Stack2 := (recoveredBlock28Block47Stack2) > (recoveredBlock28Block47Stack3).
            recoveredBlock28Block47PC := 64.
        ].
        recoveredBlock28Block47Step = 64 ifTrue: [
            (recoveredBlock28Block47Stack2) ifTrue: [recoveredBlock28Block47PC := 68] ifFalse: [recoveredBlock28Block47PC := 78].
        ].
        recoveredBlock28Block47Step = 68 ifTrue: [
            recoveredBlock28Block47Stack2 := recoveredBlock28Block47Arg2.
            recoveredBlock28Block47PC := 69.
        ].
        recoveredBlock28Block47Step = 69 ifTrue: [
            recoveredBlock28Block47Stack3 := recoveredBlock28Arg2.
            recoveredBlock28Block47PC := 72.
        ].
        recoveredBlock28Block47Step = 72 ifTrue: [
            recoveredBlock28Block47Stack2 := (recoveredBlock28Block47Stack2) < (recoveredBlock28Block47Stack3).
            recoveredBlock28Block47PC := 73.
        ].
        recoveredBlock28Block47Step = 73 ifTrue: [
            (recoveredBlock28Block47Stack2) ifTrue: [recoveredBlock28Block47PC := 76] ifFalse: [recoveredBlock28Block47PC := 78].
        ].
        recoveredBlock28Block47Step = 76 ifTrue: [
            recoveredBlock28Block47PC := 77.
        ].
        recoveredBlock28Block47Step = 77 ifTrue: [
            recoveredBlock28Block47Stack1 := nil.
            recoveredBlock28Block47PC := 78.
        ].
        recoveredBlock28Block47Step = 78 ifTrue: [
            recoveredBlock28Block47Result := recoveredBlock28Block47Stack1.
            recoveredBlock28Block47Done := true.
        ].
    ].
    recoveredBlock28Block47Result
].
    (recoveredBlock28Value3) doWithIndex: (recoveredBlock28Value4).
    recoveredBlock28Value5 := recoveredBlock28Local1.
    recoveredBlock28Value6 := (recoveredBlock28Value5) recordBitOffset.
    recoveredBlock28Value7 := recoveredBlock28Local1.
    recoveredBlock28Value8 := (recoveredBlock28Value7) recordBitSize.
    recoveredBlock28Value9 := (recoveredBlock28Value6) + (recoveredBlock28Value8).
    recoveredLocal1 := recoveredBlock28Value9.
    recoveredBlock28Value10 := recoveredBlock28Local1.
    recoveredBlock28Value10
].
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectWithIndex: (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := super convertElementAccessors: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

