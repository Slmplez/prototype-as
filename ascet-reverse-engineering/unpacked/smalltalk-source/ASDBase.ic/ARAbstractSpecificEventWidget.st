"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006144; bytecode file offset 0x902de8"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
activationLosingFocusCallback: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    ^self
! !

"ASDBase.ic method 0x2004f128; bytecode file offset 0x94d048"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
initializeCallbacks
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006db90; bytecode file offset 0x96a9dc"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
availableModeList
    | recoveredValue0 |
    recoveredValue0 := availableModeList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e324; bytecode file offset 0x96af48"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
eventSpec
    | recoveredValue0 |
    recoveredValue0 := eventSpec.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e740; bytecode file offset 0x96b41c"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
eventSpecificationHandler
    | recoveredValue0 |
    recoveredValue0 := eventSpecificationHandler.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200998f4; bytecode file offset 0x9961d0"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
hookInterfaceCallbacksFor: recoveredArg1 clientData: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) addEventEditedCallback: (recoveredValue0) clientData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a2708; bytecode file offset 0x99f064"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
callEventEditedCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := XmNeventEditedCallback.
    recoveredValue1 := recoveredArg1.
    (self) callCallbacks: (recoveredValue0) callData: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c4830; bytecode file offset 0x9c11bc"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
availableModeList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    availableModeList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4ab4; bytecode file offset 0x9c16b0"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
eventSpec: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventSpec := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5030; bytecode file offset 0x9c1afc"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
eventSpecificationHandler: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventSpecificationHandler := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5288; bytecode file offset 0x9c1f64"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
eventEditedCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmNeventEditedCallback := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fff34; bytecode file offset 0x9fc844"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
addEventEditedCallback: recoveredArg1 clientData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := XmNeventEditedCallback.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) addCallback: (recoveredValue0) receiver: (recoveredValue1) selector: ('eventEdited:clientData:callData:') clientData: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010bf8c; bytecode file offset 0xa08928"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
initializeAfterCreate
    super initializeAfterCreate.
    (self) updateFonts.
    (self) initializeCallbacks.
    ^self
! !

"ASDBase.ic method 0x2015d8e8; bytecode file offset 0xa5a1bc"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
eventEditedCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := xmNeventEditedCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) new: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) eventEditedCallback: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := xmNeventEditedCallback.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2045cce8; bytecode file offset 0xd5966c"
!ARAbstractSpecificEventWidget methodsFor: 'recovered'!
createSecondLabelBeside: recoveredArg1 form: recoveredArg2 widgetDictionary: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := 'Seconds'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := [:block28100420Arg1 | 
    | block28100420Value0 block28100420Value1 block28100420Value2 block28100420Value3 |
    block28100420Value0 := block28100420Arg1.
    block28100420Value1 := block28100420Value0.
    block28100420Value2 := XmALIGNMENTBEGINNING.
    (block28100420Value1) alignment: (block28100420Value2).
    block28100420Value3 := (block28100420Value0) labelString: ('[s]').
    block28100420Value3
].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := '#'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 'Seconds'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSymbol.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 recoveredBlock61Value4 recoveredBlock61Value5 recoveredBlock61Value6 recoveredBlock61Value7 recoveredBlock61Value8 recoveredBlock61Value9 recoveredBlock61Value10 recoveredBlock61Value11 recoveredBlock61Value12 recoveredBlock61Value13 recoveredBlock61Value14 |
    recoveredBlock61Value0 := recoveredBlock61Arg1.
    recoveredBlock61Value1 := recoveredBlock61Value0.
    recoveredBlock61Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock61Value1) topAttachment: (recoveredBlock61Value2).
    recoveredBlock61Value3 := recoveredBlock61Value0.
    recoveredBlock61Value4 := recoveredArg1.
    (recoveredBlock61Value3) topWidget: (recoveredBlock61Value4).
    recoveredBlock61Value5 := recoveredBlock61Value0.
    recoveredBlock61Value6 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock61Value5) bottomAttachment: (recoveredBlock61Value6).
    recoveredBlock61Value7 := recoveredBlock61Value0.
    recoveredBlock61Value8 := recoveredArg1.
    (recoveredBlock61Value7) bottomWidget: (recoveredBlock61Value8).
    recoveredBlock61Value9 := recoveredBlock61Value0.
    recoveredBlock61Value10 := XmATTACHFORM.
    (recoveredBlock61Value9) rightAttachment: (recoveredBlock61Value10).
    recoveredBlock61Value11 := recoveredBlock61Value0.
    (recoveredBlock61Value11) rightOffset: (2).
    recoveredBlock61Value12 := recoveredBlock61Value0.
    recoveredBlock61Value13 := XmATTACHOPPOSITEFORM.
    (recoveredBlock61Value12) leftAttachment: (recoveredBlock61Value13).
    recoveredBlock61Value14 := (recoveredBlock61Value0) leftOffset: (-25).
    recoveredBlock61Value14
].
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

