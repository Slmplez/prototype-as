"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001bae8; bytecode file offset 0x92209c"
!DBEnumItem methodsFor: 'recovered'!
dbFormatString
    ^'enum'
! !

"ASDBase.ic method 0x2005d840; bytecode file offset 0x95a15c"
!DBEnumItem methodsFor: 'recovered'!
byteSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := accessors.
    recoveredValue1 := (recoveredValue0) firstOrNil.
    recoveredValue2 := (recoveredValue1) byteSize.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2007711c; bytecode file offset 0x9757c8"
!DBEnumItem methodsFor: 'recovered'!
isStructured
    ^true
! !

"ASDBase.ic method 0x200b0970; bytecode file offset 0x9ad22c"
!DBEnumItem methodsFor: 'recovered'!
lastOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := offset.
    recoveredValue1 := accessors.
    recoveredValue2 := (recoveredValue1) firstOrNil.
    recoveredValue3 := (recoveredValue2) byteSize.
    recoveredValue4 := (recoveredValue0) + (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d77bc; bytecode file offset 0x9d4078"
!DBEnumItem methodsFor: 'recovered'!
getItemFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := accessors.
    recoveredValue1 := (recoveredValue0) firstOrNil.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := offset.
    recoveredValue4 := (recoveredValue1) getItemFrom: (recoveredValue2) offset: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201bf6a8; bytecode file offset 0xabbf6c"
!DBEnumItem methodsFor: 'recovered'!
putItem: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := accessors.
    recoveredValue1 := (recoveredValue0) firstOrNil.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue1) offset.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := offset.
    (recoveredValue4) offset: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredArg2.
    (recoveredValue6) putItem: (recoveredValue7) in: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredLocal2.
    (recoveredValue9) offset: (recoveredValue10).
    ^self
! !

"ASDBase.ic method 0x20383aa0; bytecode file offset 0xc80378"
!DBEnumItem methodsFor: 'recovered'!
printCOn: recoveredArg1 level: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) putLevel: (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbFormatString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := ' { '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := accessors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := accessors.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 recoveredBlock32Value3 recoveredBlock32Value4 |
    recoveredBlock32Value0 := recoveredBlock32Arg1.
    recoveredBlock32Value1 := recoveredArg1.
    recoveredBlock32Value2 := recoveredArg2.
    recoveredBlock32Value3 := (recoveredBlock32Value2) + (1).
    recoveredBlock32Value4 := (recoveredBlock32Value0) printCEnumOn: (recoveredBlock32Value1) level: (recoveredBlock32Value3).
    recoveredBlock32Value4
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := ' } '.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := $;.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

