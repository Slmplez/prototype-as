"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006cec; bytecode file offset 0x908be4"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
additionalCSourceLines
    | recoveredValue0 |
    recoveredValue0 := (self) numOfAdditionalLinesInC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20008f6c; bytecode file offset 0x908be4"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
additionalHSourceLines
    | recoveredValue0 |
    recoveredValue0 := (self) numOfAdditionalLinesInH.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20015a64; bytecode file offset 0x92209c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
cppInlineLabel
    ^'_ASD_INLINE_DECL'
! !

"ASDBase.ic method 0x2001a2ac; bytecode file offset 0x92209c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
includesInHKey
    ^'HIncludes'
! !

"ASDBase.ic method 0x2001e8c0; bytecode file offset 0x92209c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
includesInCKey
    ^'CIncludes'
! !

"ASDBase.ic method 0x2001ef5c; bytecode file offset 0x92209c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
includesInIHKey
    ^'IHIncludes'
! !

"ASDBase.ic method 0x20021080; bytecode file offset 0x92209c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
includesInHInlineKey
    ^'HInlineIncludes'
! !

"ASDBase.ic method 0x2003e538; bytecode file offset 0x93bf94"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
headerFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048ecc; bytecode file offset 0x945780"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
resetCSourceDefines
    allCSourceDefines := nil.
    ^self
! !

"ASDBase.ic method 0x2004902c; bytecode file offset 0x9458f0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
resetCSourceIncludes
    includesInC := nil.
    ^self
! !

"ASDBase.ic method 0x200625dc; bytecode file offset 0x95f8b0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
hSourceIncludes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) includesInH.
    recoveredValue1 := (self) includesInHKey.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062744; bytecode file offset 0x95f8b0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
hInlineSourceIncludes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) includesInHInline.
    recoveredValue1 := (self) includesInHInlineKey.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006299c; bytecode file offset 0x95f8b0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
cSourceIncludes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) includesInC.
    recoveredValue1 := (self) includesInCKey.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062ca8; bytecode file offset 0x95f8b0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
ihSourceIncludes
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) includesInIH.
    recoveredValue1 := (self) includesInIHKey.
    recoveredValue2 := (recoveredValue0) at: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200916f0; bytecode file offset 0x98e0cc"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x200acfc0; bytecode file offset 0x9a987c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
addAllOSDefine: recoveredArg1 target: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) allCSourceDefines.
    (recoveredValue0) defineRequiresOSInterface: (recoveredValue1) commands: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c4984; bytecode file offset 0x9c16b0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
globalHeaders: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    globalHeaders := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5080; bytecode file offset 0x9c1afc"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
globalHeadersToCFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    globalHeadersToCFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5458; bytecode file offset 0x9c1f64"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
globalHeadersToHFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    globalHeadersToHFile := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105bcc; bytecode file offset 0xa02480"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
numOfAdditionalLinesInH
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numOfAdditionalLinesInH.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := numOfAdditionalLinesInH.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105e34; bytecode file offset 0xa026f0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
numOfAdditionalLinesInC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numOfAdditionalLinesInC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := numOfAdditionalLinesInC.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20105f5c; bytecode file offset 0xa02818"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
numOfAdditionalLinesInHInline
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := numOfAdditionalLinesInHInline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := numOfAdditionalLinesInHInline.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106508; bytecode file offset 0xa02dcc"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
globalHeadersToCFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := globalHeadersToCFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            globalHeadersToCFile := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := globalHeadersToCFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20106620; bytecode file offset 0xa02ef4"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
globalHeadersToHFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := globalHeadersToHFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            globalHeadersToHFile := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := globalHeadersToHFile.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011658c; bytecode file offset 0xa12e44"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
globalHeaders
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := globalHeaders.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            globalHeaders := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := globalHeaders.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20144a8c; bytecode file offset 0xa4139c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
addAllCSourceDefines: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := (self) allCSourceDefines.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := (recoveredBlock5Value0) add: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2018d78c; bytecode file offset 0xa8a074"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
allCSourceDefines
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := allCSourceDefines.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := OrderedCollection.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    allCSourceDefines := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := allCSourceDefines.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2018d998; bytecode file offset 0xa8a26c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
allInlineHDefines
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := allInlineHDefines.
    recoveredValue1 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 |
    recoveredBlock6Value0 := OrderedCollection.
    recoveredBlock6Value1 := (recoveredBlock6Value0) new.
    recoveredBlock6Value2 := recoveredBlock6Value1.
    allInlineHDefines := recoveredBlock6Value2.
    recoveredBlock6Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := allInlineHDefines.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201c7780; bytecode file offset 0xac4048"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
includesInC
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := includesInC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            includesInC := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := includesInC.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) includesInCKey.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := includesInC.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c77b8; bytecode file offset 0xac4080"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
includesInH
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := includesInH.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            includesInH := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := includesInH.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) includesInHKey.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := includesInH.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c77f0; bytecode file offset 0xac40b8"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
includesInHInline
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := includesInHInline.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            includesInHInline := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := includesInHInline.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) includesInHInlineKey.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := includesInHInline.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c7828; bytecode file offset 0xac40f0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
includesInIH
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := includesInIH.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            includesInIH := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := includesInIH.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) includesInIHKey.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := includesInIH.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2026da90; bytecode file offset 0xb6a3ac"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
addAllCHeaders: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) includesInC.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := [
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 recoveredBlock7Block18Value2 |
    recoveredBlock7Block18Value0 := (self) cSourceIncludes.
    recoveredBlock7Block18Value1 := recoveredBlock7Arg1.
    (recoveredBlock7Block18Value0) add: (recoveredBlock7Block18Value1).
    recoveredBlock7Block18Value2 := recoveredBlock7Arg1.
    recoveredBlock7Block18Value2
].
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: (recoveredBlock7Value1) ifAbsentPut: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2026daac; bytecode file offset 0xb6a3ac"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
addAllIHHeaders: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) includesInIH.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := [
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 recoveredBlock7Block18Value2 |
    recoveredBlock7Block18Value0 := (self) ihSourceIncludes.
    recoveredBlock7Block18Value1 := recoveredBlock7Arg1.
    (recoveredBlock7Block18Value0) add: (recoveredBlock7Block18Value1).
    recoveredBlock7Block18Value2 := recoveredBlock7Arg1.
    recoveredBlock7Block18Value2
].
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: (recoveredBlock7Value1) ifAbsentPut: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2026dac8; bytecode file offset 0xb6a3ac"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
addAllHInlineHeaders: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) includesInHInline.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := [
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 recoveredBlock7Block18Value2 |
    recoveredBlock7Block18Value0 := (self) hInlineSourceIncludes.
    recoveredBlock7Block18Value1 := recoveredBlock7Arg1.
    (recoveredBlock7Block18Value0) add: (recoveredBlock7Block18Value1).
    recoveredBlock7Block18Value2 := recoveredBlock7Arg1.
    recoveredBlock7Block18Value2
].
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: (recoveredBlock7Value1) ifAbsentPut: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2026dae4; bytecode file offset 0xb6a3ac"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
addAllHHeaders: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) includesInH.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := [
    | recoveredBlock7Block18Value0 recoveredBlock7Block18Value1 recoveredBlock7Block18Value2 |
    recoveredBlock7Block18Value0 := (self) hSourceIncludes.
    recoveredBlock7Block18Value1 := recoveredBlock7Arg1.
    (recoveredBlock7Block18Value0) add: (recoveredBlock7Block18Value1).
    recoveredBlock7Block18Value2 := recoveredBlock7Arg1.
    recoveredBlock7Block18Value2
].
    recoveredBlock7Value3 := (recoveredBlock7Value0) at: (recoveredBlock7Value1) ifAbsentPut: (recoveredBlock7Value2).
    recoveredBlock7Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202972a0; bytecode file offset 0xb93b94"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
allHSourceIncludes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalHeadersToHFile.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalHeaders.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) includesInH.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := [
    | recoveredBlock10Block20Value0 recoveredBlock10Block20Value1 recoveredBlock10Block20Value2 |
    recoveredBlock10Block20Value0 := (self) hSourceIncludes.
    recoveredBlock10Block20Value1 := recoveredBlock10Arg1.
    (recoveredBlock10Block20Value0) addFirst: (recoveredBlock10Block20Value1).
    recoveredBlock10Block20Value2 := recoveredBlock10Arg1.
    recoveredBlock10Block20Value2
].
    recoveredBlock10Value3 := (recoveredBlock10Value0) at: (recoveredBlock10Value1) ifAbsentPut: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) hSourceIncludes.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202972c4; bytecode file offset 0xb93b94"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
allCSourceIncludes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalHeadersToCFile.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalHeaders.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := (self) includesInC.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    recoveredBlock10Value2 := [
    | recoveredBlock10Block20Value0 recoveredBlock10Block20Value1 recoveredBlock10Block20Value2 |
    recoveredBlock10Block20Value0 := (self) cSourceIncludes.
    recoveredBlock10Block20Value1 := recoveredBlock10Arg1.
    (recoveredBlock10Block20Value0) addFirst: (recoveredBlock10Block20Value1).
    recoveredBlock10Block20Value2 := recoveredBlock10Arg1.
    recoveredBlock10Block20Value2
].
    recoveredBlock10Value3 := (recoveredBlock10Value0) at: (recoveredBlock10Value1) ifAbsentPut: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) cSourceIncludes.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202dafdc; bytecode file offset 0xbd78a0"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
printHSourceCommandsOn: recoveredArg1 externCode: recoveredArg2 internal: recoveredArg3 fileName: recoveredArg4 countLines: recoveredArg5
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack4 := (recoveredStack4) ihSourceIncludes.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) printHSourceCommandsOn: (recoveredStack2) externCode: (recoveredStack3) includes: (recoveredStack4) fileName: (recoveredStack5).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) numOfLines.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            numOfAdditionalLinesInIH := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) allHSourceIncludes.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) printHSourceCommandsOn: (recoveredStack2) externCode: (recoveredStack3) includes: (recoveredStack4) fileName: (recoveredStack5).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) numOfLines.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            numOfAdditionalLinesInH := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038bfa4; bytecode file offset 0xc88884"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
printInlineHSourceCommandsOn: recoveredArg1 countLines: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAnsiCCodeStream.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInlineHDefines.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 41].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'Defines'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) sectionBanner: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInlineHDefines.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 |
    recoveredBlock25Value0 := recoveredLocal1.
    recoveredBlock25Value1 := recoveredBlock25Arg1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) cppDefine: (recoveredBlock25Value1).
    recoveredBlock25Value2
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := (recoveredStack3) hInlineSourceIncludes.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) printHSourceCommandsOn: (recoveredStack1) externCode: (recoveredStack2) includes: (recoveredStack3) fileName: (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) numOfLines.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            numOfAdditionalLinesInHInline := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20442df0; bytecode file offset 0xd3f6c8"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
allUsedHeaders: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 30.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) hSourceIncludes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) add: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) hInlineSourceIncludes.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := recoveredBlock31Arg1.
    recoveredBlock31Value2 := (recoveredBlock31Value0) add: (recoveredBlock31Value1).
    recoveredBlock31Value2
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) ihSourceIncludes.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 |
    recoveredBlock49Value0 := recoveredLocal1.
    recoveredBlock49Value1 := recoveredBlock49Arg1.
    recoveredBlock49Value2 := (recoveredBlock49Value0) add: (recoveredBlock49Value1).
    recoveredBlock49Value2
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) globalHeaders.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 recoveredBlock67Value2 |
    recoveredBlock67Value0 := recoveredLocal1.
    recoveredBlock67Value1 := recoveredBlock67Arg1.
    recoveredBlock67Value2 := (recoveredBlock67Value0) add: (recoveredBlock67Value1).
    recoveredBlock67Value2
].
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) cSourceIncludes.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := [:recoveredBlock91Arg1 | 
    | recoveredBlock91Value0 recoveredBlock91Value1 recoveredBlock91Value2 |
    recoveredBlock91Value0 := recoveredLocal1.
    recoveredBlock91Value1 := recoveredBlock91Arg1.
    recoveredBlock91Value2 := (recoveredBlock91Value0) add: (recoveredBlock91Value1).
    recoveredBlock91Value2
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2044baf0; bytecode file offset 0xd483d8"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
printCSourceCommandsOn: recoveredArg1 externCode: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAnsiCCodeStream.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allCSourceDefines.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'Defines'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) sectionBanner: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 |
    recoveredBlock30Value0 := recoveredLocal2.
    recoveredBlock30Value1 := recoveredBlock30Arg1.
    recoveredBlock30Value2 := (recoveredBlock30Value0) cppDefine: (recoveredBlock30Value1).
    recoveredBlock30Value2
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) allCSourceIncludes.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'Include files'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) sectionBanner: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := [:recoveredBlock72Arg1 | 
    | recoveredBlock72Value0 recoveredBlock72Value1 recoveredBlock72Value2 |
    recoveredBlock72Value0 := recoveredLocal2.
    recoveredBlock72Value1 := recoveredBlock72Arg1.
    recoveredBlock72Value2 := (recoveredBlock72Value0) cppInclude: (recoveredBlock72Value1).
    recoveredBlock72Value2
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) bannerExternalCode.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) numOfLines.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            numOfAdditionalLinesInC := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20468304; bytecode file offset 0xd64be8"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
printHSourceCommandsOn: recoveredArg1 externCode: recoveredArg2 includes: recoveredArg3 fileName: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asAnsiCCodeStream.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 'Include files'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) sectionBanner: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := '.h'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 |
    recoveredBlock45Value0 := recoveredBlock45Arg1.
    recoveredBlock45Value1 := recoveredLocal1.
    recoveredBlock45Value2 := (recoveredBlock45Value0) equals: (recoveredBlock45Value1).
    recoveredBlock45Value2
].
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 |
    recoveredBlock61Value0 := recoveredLocal2.
    recoveredBlock61Value1 := recoveredBlock61Arg1.
    recoveredBlock61Value2 := (recoveredBlock61Value0) cppInclude: (recoveredBlock61Value1).
    recoveredBlock61Value2
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := [:recoveredBlock87Arg1 | 
    | recoveredBlock87Value0 recoveredBlock87Value1 recoveredBlock87Value2 |
    recoveredBlock87Value0 := recoveredLocal2.
    recoveredBlock87Value1 := recoveredBlock87Arg1.
    recoveredBlock87Value2 := (recoveredBlock87Value0) cppInclude: (recoveredBlock87Value1).
    recoveredBlock87Value2
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 119].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) bannerExternalCode.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e7988; bytecode file offset 0xde426c"
!SGMakePreprocessorCommands methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('Header file').
    (recoveredValue0) cr.
    recoveredValue2 := (self) allHSourceIncludes.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredArg1.
    recoveredBlock15Value1 := recoveredBlock15Value0.
    (recoveredBlock15Value1) nextPutAll: ('#include ').
    recoveredBlock15Value2 := recoveredBlock15Value0.
    recoveredBlock15Value3 := recoveredBlock15Arg1.
    (recoveredBlock15Value2) nextPutAll: (recoveredBlock15Value3).
    recoveredBlock15Value4 := (recoveredBlock15Value0) cr.
    recoveredBlock15Value4
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('Internal C-Code Header file').
    (recoveredValue5) cr.
    recoveredValue7 := (self) ihSourceIncludes.
    recoveredValue8 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Value0 recoveredBlock56Value1 recoveredBlock56Value2 recoveredBlock56Value3 recoveredBlock56Value4 |
    recoveredBlock56Value0 := recoveredArg1.
    recoveredBlock56Value1 := recoveredBlock56Value0.
    (recoveredBlock56Value1) nextPutAll: ('#include ').
    recoveredBlock56Value2 := recoveredBlock56Value0.
    recoveredBlock56Value3 := recoveredBlock56Arg1.
    (recoveredBlock56Value2) nextPutAll: (recoveredBlock56Value3).
    recoveredBlock56Value4 := (recoveredBlock56Value0) cr.
    recoveredBlock56Value4
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) cr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    (recoveredValue11) nextPutAll: ('Inline header includes').
    (recoveredValue10) cr.
    recoveredValue12 := (self) hInlineSourceIncludes.
    recoveredValue13 := [:recoveredBlock96Arg1 | 
    | recoveredBlock96Value0 recoveredBlock96Value1 recoveredBlock96Value2 recoveredBlock96Value3 recoveredBlock96Value4 |
    recoveredBlock96Value0 := recoveredArg1.
    recoveredBlock96Value1 := recoveredBlock96Value0.
    (recoveredBlock96Value1) nextPutAll: ('#include ').
    recoveredBlock96Value2 := recoveredBlock96Value0.
    recoveredBlock96Value3 := recoveredBlock96Arg1.
    (recoveredBlock96Value2) nextPutAll: (recoveredBlock96Value3).
    recoveredBlock96Value4 := (recoveredBlock96Value0) cr.
    recoveredBlock96Value4
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := recoveredArg1.
    (recoveredValue14) cr.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    (recoveredValue16) nextPutAll: ('Cfile').
    (recoveredValue15) cr.
    recoveredValue17 := (self) allCSourceIncludes.
    recoveredValue18 := [:recoveredBlock136Arg1 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 recoveredBlock136Value2 recoveredBlock136Value3 recoveredBlock136Value4 |
    recoveredBlock136Value0 := recoveredArg1.
    recoveredBlock136Value1 := recoveredBlock136Value0.
    (recoveredBlock136Value1) nextPutAll: ('#include ').
    recoveredBlock136Value2 := recoveredBlock136Value0.
    recoveredBlock136Value3 := recoveredBlock136Arg1.
    (recoveredBlock136Value2) nextPutAll: (recoveredBlock136Value3).
    recoveredBlock136Value4 := (recoveredBlock136Value0) cr.
    recoveredBlock136Value4
].
    (recoveredValue17) do: (recoveredValue18).
    recoveredValue19 := recoveredArg1.
    (recoveredValue19) cr.
    ^self
! !

