"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200226c4; bytecode file offset 0x92209c"
!AROperationInvokedEvent methodsFor: 'recovered'!
iconName
    ^'GeneralEventOperationInvoke'
! !

"ASDBase.ic method 0x200666bc; bytecode file offset 0x963428"
!AROperationInvokedEvent methodsFor: 'recovered'!
portAliasName
    | recoveredValue0 |
    recoveredValue0 := portAliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066d24; bytecode file offset 0x9646f8"
!AROperationInvokedEvent methodsFor: 'recovered'!
operationAliasName
    | recoveredValue0 |
    recoveredValue0 := operationAliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075a54; bytecode file offset 0x9757c8"
!AROperationInvokedEvent methodsFor: 'recovered'!
isOperationInvoke
    ^true
! !

"ASDBase.ic method 0x200be564; bytecode file offset 0x9bb178"
!AROperationInvokedEvent methodsFor: 'recovered'!
portAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    portAliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf1f8; bytecode file offset 0x9bc0b4"
!AROperationInvokedEvent methodsFor: 'recovered'!
operationAliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    operationAliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x202558c0; bytecode file offset 0xb52188"
!AROperationInvokedEvent methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) portAliasName.
    recoveredValue2 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) portAliasName.
    recoveredBlock7Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    (self) portAliasName: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (self) operationAliasName.
    recoveredValue6 := [
    | recoveredBlock24Value0 |
    recoveredBlock24Value0 := (self) operationAliasName.
    recoveredBlock24Value0
].
    recoveredValue7 := (recoveredValue4) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    (self) operationAliasName: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20263c14; bytecode file offset 0xb60500"
!AROperationInvokedEvent methodsFor: 'recovered'!
createWidgetInForm: recoveredArg1 availableModeList: recoveredArg2 eventSpecHandler: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := recoveredBlock9Value0.
    (recoveredBlock9Value1) eventSpec: (self).
    recoveredBlock9Value2 := recoveredBlock9Value0.
    recoveredBlock9Value3 := recoveredArg2.
    (recoveredBlock9Value2) availableModeList: (recoveredBlock9Value3).
    recoveredBlock9Value4 := recoveredBlock9Value0.
    recoveredBlock9Value5 := recoveredArg3.
    (recoveredBlock9Value4) eventSpecificationHandler: (recoveredBlock9Value5).
    recoveredBlock9Value0
].
    recoveredValue2 := (recoveredValue0) createAROperationInvokedEventSpecificationWidget: ('widget') argBlock: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) manageChild.
    ^recoveredValue3
! !

"ASDBase.ic method 0x202aebe0; bytecode file offset 0xbab4bc"
!AROperationInvokedEvent methodsFor: 'recovered'!
initXML: recoveredArg1 env: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'portName'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'portName'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 'portOID'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElement: (recoveredStack2) nameAttr: (recoveredStack3) oidAttr: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlOID.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            portAliasName := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) refItem.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := 'operationName'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := 'operationOID'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) oidMethod: (recoveredStack2) in: (recoveredStack3) nameTag: (recoveredStack4) oidTag: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            operationAliasName := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2031070c; bytecode file offset 0xc0cfec"
!AROperationInvokedEvent methodsFor: 'recovered'!
writeXML: recoveredArg1 item: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'OperationInvokedEvent'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := portAliasName.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := portAliasName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := 'portName'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack5 := 'portOID'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementRef: (recoveredStack2) in: (recoveredStack3) nameTag: (recoveredStack4) oidTag: (recoveredStack5).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := operationAliasName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack3 ~~ nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClassIfUndefined: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := 'operationName'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := 'operationOID'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) methodRef: (recoveredStack2) in: (recoveredStack3) nameTag: (recoveredStack4) oidTag: (recoveredStack5).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

