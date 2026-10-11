"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20026698; bytecode file offset 0x923928"
!ASAP2TPBlob methodsFor: 'recovered'!
getIFDataSetMethod
    ^'tpBlob:'
! !

"ASDBase.ic method 0x200978b4; bytecode file offset 0x995850"
!ASAP2TPBlob methodsFor: 'recovered'!
addDefinedPage: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) definedPages.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aa0cc; bytecode file offset 0x9a69f0"
!ASAP2TPBlob methodsFor: 'recovered'!
getIntegerList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyWords.
    recoveredValue3 := (self) getIntegerList: (recoveredValue0) upToOneOff: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201262fc; bytecode file offset 0xa22bf0"
!ASAP2TPBlob methodsFor: 'recovered'!
getDefinedPages: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2DefinedPage.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addDefinedPage: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201b6a84; bytecode file offset 0xab33d0"
!ASAP2TPBlob methodsFor: 'recovered'!
putIn: recoveredArg1 definedPages: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) definedPages.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) definedPages.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredArg1.
    recoveredBlock10Value2 := (recoveredBlock10Value0) putIn: (recoveredBlock10Value1).
    recoveredBlock10Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

