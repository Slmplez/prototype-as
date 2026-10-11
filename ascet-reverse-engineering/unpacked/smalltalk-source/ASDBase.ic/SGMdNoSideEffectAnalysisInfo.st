"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002cc8; bytecode file offset 0x8ffcfc"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
asConditionalInfo
    ^self
! !

"ASDBase.ic method 0x20003508; bytecode file offset 0x90206c"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
updateMethodDecls: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003d38; bytecode file offset 0x90206c"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
inlinePrivateAdditionalMethods: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004a68; bytecode file offset 0x90206c"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
memorySegmentedDeclsDo: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005b80; bytecode file offset 0x902744"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
resolvedAccess: recoveredArg1 arguments: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005d48; bytecode file offset 0x902744"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseReadMatches: recoveredArg1 source: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000f3dc; bytecode file offset 0x90bd10"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
isResolvedInfo: recoveredArg1 inMethod: recoveredArg2
    ^true
! !

"ASDBase.ic method 0x2001be90; bytecode file offset 0x92209c"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
values
    ^#()
! !

"ASDBase.ic method 0x20034d34; bytecode file offset 0x934580"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20059a10; bytecode file offset 0x9562ec"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
analyseSideEffects: recoveredArg1 arguments: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdSideEffectAnalysisInfo.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20074af4; bytecode file offset 0x9757c8"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
isMdlNoSideEffectAnalysisInfo
    ^true
! !

"ASDBase.ic method 0x20076b0c; bytecode file offset 0x9757c8"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
isEmpty
    ^true
! !

"ASDBase.ic method 0x20094aa4; bytecode file offset 0x9913f0"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) nextPutAll: ('No side effect').
    ^self
! !

"ASDBase.ic method 0x20095d8c; bytecode file offset 0x992644"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
= recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue1) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20270ea0; bytecode file offset 0xb6d768"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
<= recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAllFieldsAccess.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectIndexAccess.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlNoSideEffectAnalysisInfo.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202adb9c; bytecode file offset 0xbaa464"
!SGMdNoSideEffectAnalysisInfo methodsFor: 'recovered'!
< recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlSideEffectVarAccess.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAccess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectRecordAllFieldsAccess.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlSideEffectIndexAccess.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlNoSideEffectAnalysisInfo.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

