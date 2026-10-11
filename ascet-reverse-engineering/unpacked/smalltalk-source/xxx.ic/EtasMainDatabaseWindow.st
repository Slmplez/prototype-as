"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"xxx.ic method 0x20000168; bytecode file offset 0x14c3c"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
wsLabelString
    ^'WS'
! !

"xxx.ic method 0x20000274; bytecode file offset 0x14d48"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
wsStateRequest: recoveredArg1
    (self) wsStateBusy.
    ^self
! !

"xxx.ic method 0x20000280; bytecode file offset 0x14d48"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
wsStateResponse: recoveredArg1
    (self) wsStateInitial.
    ^self
! !

"xxx.ic method 0x20001320; bytecode file offset 0x15df8"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
wsStateInitial
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASDAAAOptions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionWebServiceActive.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) wsStateAvailable.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) wsStateNotAvailable.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"xxx.ic method 0x20001dd4; bytecode file offset 0x168e0"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
wsStateBusy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wsStatusLineWidget.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := (self) resourceManager.
    recoveredBlock5Value3 := (recoveredBlock5Value2) returnIconWithName: ('GeneralWebservicesBusy').
    (recoveredBlock5Value1) image: (recoveredBlock5Value3).
    recoveredBlock5Value4 := (self) wsLabelString.
    recoveredBlock5Value5 := (recoveredBlock5Value0) labelString: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"xxx.ic method 0x20001dfc; bytecode file offset 0x168e0"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
wsStateAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wsStatusLineWidget.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := (self) resourceManager.
    recoveredBlock5Value3 := (recoveredBlock5Value2) returnIconWithName: ('GeneralWebservices').
    (recoveredBlock5Value1) image: (recoveredBlock5Value3).
    recoveredBlock5Value4 := (self) wsLabelString.
    recoveredBlock5Value5 := (recoveredBlock5Value0) labelString: (recoveredBlock5Value4).
    recoveredBlock5Value5
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"xxx.ic method 0x20001f68; bytecode file offset 0x16a50"
!EtasMainDatabaseWindow methodsFor: 'recovered'!
wsStateNotAvailable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) wsStatusLineWidget.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 recoveredBlock5Value5 recoveredBlock5Value6 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredBlock5Value0.
    recoveredBlock5Value2 := (self) resourceManager.
    recoveredBlock5Value3 := (recoveredBlock5Value2) returnIconWithName: ('GeneralWebservices').
    recoveredBlock5Value4 := (recoveredBlock5Value3) getGrayedIcon.
    (recoveredBlock5Value1) image: (recoveredBlock5Value4).
    recoveredBlock5Value5 := (self) wsLabelString.
    recoveredBlock5Value6 := (recoveredBlock5Value0) labelString: (recoveredBlock5Value5).
    recoveredBlock5Value6
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

