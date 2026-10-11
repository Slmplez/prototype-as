"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013314; bytecode file offset 0x912098"
!MDFFileF4Float class methodsFor: 'recovered'!
fileTypeString
    | recoveredValue0 |
    recoveredValue0 := SCFileTypeMDF4.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20023a2c; bytecode file offset 0x92209c"
!MDFFileF4Float class methodsFor: 'recovered'!
fileExtension
    ^'mf4'
! !

"ASDBase.ic method 0x20023e94; bytecode file offset 0x92209c"
!MDFFileF4Float class methodsFor: 'recovered'!
fileTypeSymbol
    ^'ETASMDF4'
! !

"ASDBase.ic method 0x200aef1c; bytecode file offset 0x9ab7d8"
!MDFFileF4Float class methodsFor: 'recovered'!
createFile: recoveredArg1 elementAccessors: recoveredArg2 sampleCount: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) convertElementAccessors: (recoveredValue1).
    recoveredValue3 := (self) createFile: (recoveredValue0) elementAccessors: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200dec1c; bytecode file offset 0x9db4d8"
!MDFFileF4Float class methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3 sampleCount: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) replaceInvalidFloatFormats: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := (self) createFile: (recoveredValue0) recordFormat: (recoveredValue2) nameTable: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200ed048; bytecode file offset 0x9e991c"
!MDFFileF4Float class methodsFor: 'recovered'!
createFile: recoveredArg1 recordFormat: recoveredArg2 nameTable: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) replaceInvalidFloatFormats: (recoveredValue1).
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := super createFile: (recoveredValue0) recordFormat: (recoveredValue2) nameTable: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2040490c; bytecode file offset 0xd011f0"
!MDFFileF4Float class methodsFor: 'recovered'!
replaceInvalidFloatFormats: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Stack0 recoveredBlock41Stack1 recoveredBlock41Stack2 recoveredBlock41Stack3 recoveredBlock41Stack4 recoveredBlock41PC recoveredBlock41Step recoveredBlock41Done recoveredBlock41Result |
    recoveredBlock41Stack0 := self.
    recoveredBlock41PC := 48.
    recoveredBlock41Done := false.
    [recoveredBlock41Done not] whileTrue: [
        recoveredBlock41Step := recoveredBlock41PC.
        recoveredBlock41Step = 48 ifTrue: [
            recoveredBlock41Stack1 := #('f8' 'f10').
            recoveredBlock41PC := 50.
        ].
        recoveredBlock41Step = 50 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Arg1.
            recoveredBlock41PC := 51.
        ].
        recoveredBlock41Step = 51 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) includes: (recoveredBlock41Stack2).
            recoveredBlock41PC := 53.
        ].
        recoveredBlock41Step = 53 ifTrue: [
            (recoveredBlock41Stack1) ifTrue: [recoveredBlock41PC := 56] ifFalse: [recoveredBlock41PC := 74].
        ].
        recoveredBlock41Step = 56 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 59.
        ].
        recoveredBlock41Step = 59 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 60.
        ].
        recoveredBlock41Step = 60 ifTrue: [
            recoveredBlock41Stack3 := 'f4'.
            recoveredBlock41PC := 62.
        ].
        recoveredBlock41Step = 62 ifTrue: [
            (recoveredBlock41Stack2) nextPutAll: (recoveredBlock41Stack3).
            recoveredBlock41PC := 64.
        ].
        recoveredBlock41Step = 64 ifTrue: [
            recoveredBlock41Stack2 := $ .
            recoveredBlock41PC := 68.
        ].
        recoveredBlock41Step = 68 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) nextPut: (recoveredBlock41Stack2).
            recoveredBlock41PC := 70.
        ].
        recoveredBlock41Step = 70 ifTrue: [
            recoveredBlock41PC := 86.
        ].
        recoveredBlock41Step = 74 ifTrue: [
            recoveredBlock41Stack1 := recoveredLocal1.
            recoveredBlock41PC := 77.
        ].
        recoveredBlock41Step = 77 ifTrue: [
            recoveredBlock41Stack2 := recoveredBlock41Stack1.
            recoveredBlock41PC := 78.
        ].
        recoveredBlock41Step = 78 ifTrue: [
            recoveredBlock41Stack3 := recoveredBlock41Arg1.
            recoveredBlock41PC := 79.
        ].
        recoveredBlock41Step = 79 ifTrue: [
            (recoveredBlock41Stack2) nextPutAll: (recoveredBlock41Stack3).
            recoveredBlock41PC := 81.
        ].
        recoveredBlock41Step = 81 ifTrue: [
            recoveredBlock41Stack2 := $ .
            recoveredBlock41PC := 84.
        ].
        recoveredBlock41Step = 84 ifTrue: [
            recoveredBlock41Stack1 := (recoveredBlock41Stack1) nextPut: (recoveredBlock41Stack2).
            recoveredBlock41PC := 86.
        ].
        recoveredBlock41Step = 86 ifTrue: [
            recoveredBlock41Result := recoveredBlock41Stack1.
            recoveredBlock41Done := true.
        ].
    ].
    recoveredBlock41Result
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20459b24; bytecode file offset 0xd56408"
!MDFFileF4Float class methodsFor: 'recovered'!
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
            recoveredStack2 := [:block28100108Arg1 | 
    | block28100108Value0 block28100108Value1 |
    block28100108Value0 := block28100108Arg1.
    block28100108Value1 := (block28100108Value0) deepCopy.
    block28100108Value1
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
    | recoveredBlock28Local1 recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 recoveredBlock28Value5 recoveredBlock28Value6 recoveredBlock28Value7 recoveredBlock28Value8 recoveredBlock28Value9 recoveredBlock28Value10 recoveredBlock28Value11 recoveredBlock28Value12 |
    recoveredBlock28Value0 := recoveredBlock28Arg1.
    recoveredBlock28Value1 := (recoveredBlock28Value0) changeF8ToF4.
    recoveredBlock28Value2 := (recoveredBlock28Value1) asIntegerStringAccessor.
    recoveredBlock28Value3 := recoveredLocal1.
    recoveredBlock28Value4 := (recoveredBlock28Value2) adjustAlignment: (recoveredBlock28Value3).
    recoveredBlock28Local1 := recoveredBlock28Value4.
    recoveredBlock28Value5 := recoveredLocal2.
    recoveredBlock28Value6 := [:recoveredBlock28Block51Arg1 :recoveredBlock28Block51Arg2 | 
    | recoveredBlock28Block51Stack0 recoveredBlock28Block51Stack1 recoveredBlock28Block51Stack2 recoveredBlock28Block51Stack3 recoveredBlock28Block51Stack4 recoveredBlock28Block51PC recoveredBlock28Block51Step recoveredBlock28Block51Done recoveredBlock28Block51Result |
    recoveredBlock28Block51Stack0 := nil.
    recoveredBlock28Block51PC := 58.
    recoveredBlock28Block51Done := false.
    [recoveredBlock28Block51Done not] whileTrue: [
        recoveredBlock28Block51Step := recoveredBlock28Block51PC.
        recoveredBlock28Block51Step = 58 ifTrue: [
            recoveredBlock28Block51Stack1 := nil.
            recoveredBlock28Block51PC := 59.
        ].
        recoveredBlock28Block51Step = 59 ifTrue: [
            recoveredBlock28Block51Stack2 := recoveredBlock28Block51Arg1.
            recoveredBlock28Block51PC := 60.
        ].
        recoveredBlock28Block51Step = 60 ifTrue: [
            recoveredBlock28Block51Stack2 := (recoveredBlock28Block51Stack2) recordBitOffset.
            recoveredBlock28Block51PC := 62.
        ].
        recoveredBlock28Block51Step = 62 ifTrue: [
            recoveredBlock28Block51Stack3 := recoveredBlock28Local1.
            recoveredBlock28Block51PC := 65.
        ].
        recoveredBlock28Block51Step = 65 ifTrue: [
            recoveredBlock28Block51Stack3 := (recoveredBlock28Block51Stack3) recordBitOffset.
            recoveredBlock28Block51PC := 67.
        ].
        recoveredBlock28Block51Step = 67 ifTrue: [
            recoveredBlock28Block51Stack2 := (recoveredBlock28Block51Stack2) > (recoveredBlock28Block51Stack3).
            recoveredBlock28Block51PC := 68.
        ].
        recoveredBlock28Block51Step = 68 ifTrue: [
            (recoveredBlock28Block51Stack2) ifTrue: [recoveredBlock28Block51PC := 72] ifFalse: [recoveredBlock28Block51PC := 82].
        ].
        recoveredBlock28Block51Step = 72 ifTrue: [
            recoveredBlock28Block51Stack2 := recoveredBlock28Block51Arg2.
            recoveredBlock28Block51PC := 73.
        ].
        recoveredBlock28Block51Step = 73 ifTrue: [
            recoveredBlock28Block51Stack3 := recoveredBlock28Arg2.
            recoveredBlock28Block51PC := 76.
        ].
        recoveredBlock28Block51Step = 76 ifTrue: [
            recoveredBlock28Block51Stack2 := (recoveredBlock28Block51Stack2) < (recoveredBlock28Block51Stack3).
            recoveredBlock28Block51PC := 77.
        ].
        recoveredBlock28Block51Step = 77 ifTrue: [
            (recoveredBlock28Block51Stack2) ifTrue: [recoveredBlock28Block51PC := 80] ifFalse: [recoveredBlock28Block51PC := 82].
        ].
        recoveredBlock28Block51Step = 80 ifTrue: [
            recoveredBlock28Block51PC := 81.
        ].
        recoveredBlock28Block51Step = 81 ifTrue: [
            recoveredBlock28Block51Stack1 := nil.
            recoveredBlock28Block51PC := 82.
        ].
        recoveredBlock28Block51Step = 82 ifTrue: [
            recoveredBlock28Block51Result := recoveredBlock28Block51Stack1.
            recoveredBlock28Block51Done := true.
        ].
    ].
    recoveredBlock28Block51Result
].
    (recoveredBlock28Value5) doWithIndex: (recoveredBlock28Value6).
    recoveredBlock28Value7 := recoveredBlock28Local1.
    recoveredBlock28Value8 := (recoveredBlock28Value7) recordBitOffset.
    recoveredBlock28Value9 := recoveredBlock28Local1.
    recoveredBlock28Value10 := (recoveredBlock28Value9) recordBitSize.
    recoveredBlock28Value11 := (recoveredBlock28Value8) + (recoveredBlock28Value10).
    recoveredLocal1 := recoveredBlock28Value11.
    recoveredBlock28Value12 := recoveredBlock28Local1.
    recoveredBlock28Value12
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectWithIndex: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := super convertElementAccessors: (recoveredStack1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

