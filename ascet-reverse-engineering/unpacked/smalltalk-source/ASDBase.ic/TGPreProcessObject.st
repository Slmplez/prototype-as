"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200279f8; bytecode file offset 0x9242d4"
!TGPreProcessObject methodsFor: 'recovered'!
noCppErrors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cppErrors.
    recoveredValue1 := (recoveredValue0) isNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006e594; bytecode file offset 0x96af48"
!TGPreProcessObject methodsFor: 'recovered'!
sourceCode
    | recoveredValue0 |
    recoveredValue0 := sourceCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ee7c; bytecode file offset 0x96b8a0"
!TGPreProcessObject methodsFor: 'recovered'!
cppErrors
    | recoveredValue0 |
    recoveredValue0 := cppErrors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f1d0; bytecode file offset 0x96bc1c"
!TGPreProcessObject methodsFor: 'recovered'!
toolExe
    | recoveredValue0 |
    recoveredValue0 := toolExe.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f690; bytecode file offset 0x96bf7c"
!TGPreProcessObject methodsFor: 'recovered'!
resultFileName
    | recoveredValue0 |
    recoveredValue0 := resultFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f888; bytecode file offset 0x96c1f4"
!TGPreProcessObject methodsFor: 'recovered'!
errorFileName
    | recoveredValue0 |
    recoveredValue0 := errorFileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083e50; bytecode file offset 0x9807dc"
!TGPreProcessObject methodsFor: 'recovered'!
upToAllGetCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) pmiEndFunctionMarker.
    recoveredValue2 := (recoveredValue0) upToAll: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20099338; bytecode file offset 0x995c04"
!TGPreProcessObject methodsFor: 'recovered'!
pmiMarkEndFunction: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) pmiEndFunctionMarker.
    (recoveredValue0) newlinePutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c4b74; bytecode file offset 0x9c16b0"
!TGPreProcessObject methodsFor: 'recovered'!
sourceCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c50f0; bytecode file offset 0x9c1afc"
!TGPreProcessObject methodsFor: 'recovered'!
resultCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resultCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5330; bytecode file offset 0x9c1f64"
!TGPreProcessObject methodsFor: 'recovered'!
cppErrors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cppErrors := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c59cc; bytecode file offset 0x9c22c8"
!TGPreProcessObject methodsFor: 'recovered'!
toolExe: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    toolExe := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5a78; bytecode file offset 0x9c25bc"
!TGPreProcessObject methodsFor: 'recovered'!
resultFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    resultFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5d60; bytecode file offset 0x9c2804"
!TGPreProcessObject methodsFor: 'recovered'!
errorFileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorFileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d1e98; bytecode file offset 0x9ce7ec"
!TGPreProcessObject methodsFor: 'recovered'!
pmiEndFunctionMarker
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('/*') , ('_ASCET_FUNCTION_END').
    recoveredValue1 := (recoveredValue0) , ('*/').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d1f28; bytecode file offset 0x9ce7ec"
!TGPreProcessObject methodsFor: 'recovered'!
pmiBeginFunctionMarker
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('/*') , ('_ASCET_FUNCTION_BEGIN').
    recoveredValue1 := (recoveredValue0) , ('*/').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e2234; bytecode file offset 0x9dec60"
!TGPreProcessObject methodsFor: 'recovered'!
noErrorsAtAll
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) noCppErrors.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) noErrors.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017fa0c; bytecode file offset 0xa7c2c8"
!TGPreProcessObject methodsFor: 'recovered'!
resultCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := resultCode.
    recoveredValue1 := [
    resultCode := ''.
    ''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := resultCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ce7e8; bytecode file offset 0xacb0b4"
!TGPreProcessObject methodsFor: 'recovered'!
pmiMarkBeginFunction: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) pmiBeginFunctionMarker.
    (recoveredValue1) newlinePutAll: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) nextPutAll: ('/*').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) nextPutAll: ('*/').
    (recoveredValue0) newline.
    ^self
! !

"ASDBase.ic method 0x201ded54; bytecode file offset 0xadb620"
!TGPreProcessObject methodsFor: 'recovered'!
upToAllGetMethodNameOn: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) pmiBeginFunctionMarker.
    (recoveredValue1) skipToAll: (recoveredValue2).
    (recoveredValue0) skipToAll: ('/*').
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) upToAll: ('*/').
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) lineDelimiter.
    (recoveredValue5) skipToAll: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203ae088; bytecode file offset 0xcaa970"
!TGPreProcessObject methodsFor: 'recovered'!
escapePreprocessorCommands: recoveredArg1 on: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'Call_65318'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) adjustLineDelimiter.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextTextLine.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimSeparators.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := $#.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := '//'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

