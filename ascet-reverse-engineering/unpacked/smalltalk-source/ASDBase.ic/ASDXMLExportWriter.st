"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20148c3c; bytecode file offset 0xa45500"
!ASDXMLExportWriter methodsFor: 'recovered'!
initOn: recoveredArg1 filename: recoveredArg2 schema: recoveredArg3 sign: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    super initOn: (recoveredValue0) filename: (recoveredValue1) schema: (recoveredValue2) sign: (recoveredValue3).
    recoveredValue4 := Set.
    recoveredValue5 := (recoveredValue4) new.
    filenames := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x2019803c; bytecode file offset 0xa94908"
!ASDXMLExportWriter methodsFor: 'recovered'!
complex: recoveredArg1 timestamp: recoveredArg2 key: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) openComplex: (recoveredValue0).
    recoveredValue1 := recoveredArg3.
    (self) attr: ('timeStampKey') nmToken: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    (self) attr: ('timeStampValue') dateTime: (recoveredValue2).
    (self) closeComplex.
    ^self
! !

"ASDBase.ic method 0x202b5670; bytecode file offset 0xbb1f58"
!ASDXMLExportWriter methodsFor: 'recovered'!
complex: recoveredArg1 timestamp: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 'timeStampKey'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := 'applicationTimeStamp'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nmToken: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'timeStampValue'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationTimeStamp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) dateTime: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) applicationTimeStampNanoSeconds.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'timeStampCounter'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) applicationTimeStampNanoSeconds.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) nnInt: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20327aac; bytecode file offset 0xc2437c"
!ASDXMLExportWriter methodsFor: 'recovered'!
uniqueLocalName: recoveredArg1 ext: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := Util.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := filenames.
    recoveredBlock9Value1 := recoveredBlock9Arg1.
    recoveredBlock9Value2 := (recoveredBlock9Value1) , ('.').
    recoveredBlock9Value3 := recoveredArg2.
    recoveredBlock9Value4 := (recoveredBlock9Value2) , (recoveredBlock9Value3).
    recoveredBlock9Value5 := (recoveredBlock9Value0) includes: (recoveredBlock9Value4).
    recoveredBlock9Value5
].
    recoveredValue3 := (recoveredValue0) makeUnique: (recoveredValue1) in: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('.').
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := filenames.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := path.
    recoveredValue10 := (recoveredValue9) fileNameOnly.
    recoveredValue11 := (recoveredValue10) , ('.').
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue11) , (recoveredValue12).
    ^recoveredValue13
! !

