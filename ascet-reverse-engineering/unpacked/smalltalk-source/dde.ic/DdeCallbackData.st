"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dde.ic method 0x200000fc; bytecode file offset 0x63cc"
!DdeCallbackData methodsFor: 'recovered'!
item
    | recoveredValue0 |
    recoveredValue0 := item.
    ^recoveredValue0
! !

"dde.ic method 0x20000130; bytecode file offset 0x6408"
!DdeCallbackData methodsFor: 'recovered'!
format
    | recoveredValue0 |
    recoveredValue0 := format.
    ^recoveredValue0
! !

"dde.ic method 0x20000164; bytecode file offset 0x642c"
!DdeCallbackData methodsFor: 'recovered'!
data
    | recoveredValue0 |
    recoveredValue0 := data.
    ^recoveredValue0
! !

"dde.ic method 0x20000180; bytecode file offset 0x6450"
!DdeCallbackData methodsFor: 'recovered'!
application
    | recoveredValue0 |
    recoveredValue0 := application.
    ^recoveredValue0
! !

"dde.ic method 0x200001b4; bytecode file offset 0x6474"
!DdeCallbackData methodsFor: 'recovered'!
execute
    | recoveredValue0 |
    recoveredValue0 := execute.
    ^recoveredValue0
! !

"dde.ic method 0x200001d0; bytecode file offset 0x6490"
!DdeCallbackData methodsFor: 'recovered'!
topic
    | recoveredValue0 |
    recoveredValue0 := topic.
    ^recoveredValue0
! !

"dde.ic method 0x200001f4; bytecode file offset 0x64b4"
!DdeCallbackData methodsFor: 'recovered'!
reason
    | recoveredValue0 |
    recoveredValue0 := reason.
    ^recoveredValue0
! !

"dde.ic method 0x20000208; bytecode file offset 0x64d0"
!DdeCallbackData methodsFor: 'recovered'!
returnValue
    | recoveredValue0 |
    recoveredValue0 := returnValue.
    ^recoveredValue0
! !

"dde.ic method 0x200002a4; bytecode file offset 0x6564"
!DdeCallbackData methodsFor: 'recovered'!
returnValue: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    returnValue := recoveredValue1.
    ^recoveredValue0
! !

"dde.ic method 0x2000053c; bytecode file offset 0x67fc"
!DdeCallbackData methodsFor: 'recovered'!
item: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    item := recoveredValue0.
    ^self
! !

"dde.ic method 0x20000568; bytecode file offset 0x6830"
!DdeCallbackData methodsFor: 'recovered'!
format: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    format := recoveredValue0.
    ^self
! !

"dde.ic method 0x200005a8; bytecode file offset 0x6868"
!DdeCallbackData methodsFor: 'recovered'!
application: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    application := recoveredValue0.
    ^self
! !

"dde.ic method 0x200005cc; bytecode file offset 0x6894"
!DdeCallbackData methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    execute := recoveredValue0.
    ^self
! !

"dde.ic method 0x200005f0; bytecode file offset 0x68b0"
!DdeCallbackData methodsFor: 'recovered'!
topic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    topic := recoveredValue0.
    ^self
! !

"dde.ic method 0x2000060c; bytecode file offset 0x68cc"
!DdeCallbackData methodsFor: 'recovered'!
reason: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    reason := recoveredValue0.
    ^self
! !

"dde.ic method 0x200007ac; bytecode file offset 0x6a78"
!DdeCallbackData methodsFor: 'recovered'!
data: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := DdeClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) format.
    recoveredValue3 := (recoveredValue0) checkData: (recoveredValue1) format: (recoveredValue2).
    data := recoveredValue3.
    ^self
! !

"dde.ic method 0x200022c4; bytecode file offset 0x85b8"
!DdeCallbackData methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := '('.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := '    '.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := ' -> '.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) instVarAt: (recoveredStack5).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 30] ifFalse: [recoveredLocal1 := nil. recoveredPC := 66]] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := ')'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

