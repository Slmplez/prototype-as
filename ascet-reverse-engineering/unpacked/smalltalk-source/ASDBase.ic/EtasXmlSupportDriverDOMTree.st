"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20067a84; bytecode file offset 0x9646f8"
!EtasXmlSupportDriverDOMTree methodsFor: 'recovered'!
getResult
    | recoveredValue0 |
    recoveredValue0 := root.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008948c; bytecode file offset 0x985ef8"
!EtasXmlSupportDriverDOMTree methodsFor: 'recovered'!
init
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := AbtStack.
    recoveredValue1 := (recoveredValue0) new.
    stack := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200a2e34; bytecode file offset 0x99f700"
!EtasXmlSupportDriverDOMTree methodsFor: 'recovered'!
addSubElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := stack.
    recoveredValue1 := (recoveredValue0) peek.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addSubElement: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200a2e44; bytecode file offset 0x99f700"
!EtasXmlSupportDriverDOMTree methodsFor: 'recovered'!
pcData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := stack.
    recoveredValue1 := (recoveredValue0) peek.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) addSubElement: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2017bde0; bytecode file offset 0xa786b0"
!EtasXmlSupportDriverDOMTree methodsFor: 'recovered'!
addSubElementFromString: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXmlSupportDoc.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) initFromString: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := stack.
    recoveredValue5 := (recoveredValue4) peek.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) getRoot.
    (recoveredValue5) addSubElement: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    (recoveredValue8) dispose.
    ^self
! !

"ASDBase.ic method 0x201ec8ac; bytecode file offset 0xae9170"
!EtasXmlSupportDriverDOMTree methodsFor: 'recovered'!
closeComplex
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := stack.
    recoveredValue1 := (recoveredValue0) pop.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := stack.
    recoveredValue3 := (recoveredValue2) peek.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredLocal1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) addSubElement: (recoveredBlock13Value1).
    recoveredBlock13Value2
].
    (recoveredValue3) ifNotNil: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2021ac68; bytecode file offset 0xb17538"
!EtasXmlSupportDriverDOMTree methodsFor: 'recovered'!
openComplex: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stack.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := EtasXmlSupportDOMElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) push: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := stack.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) stack.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := stack.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            root := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022d754; bytecode file offset 0xb2a028"
!EtasXmlSupportDriverDOMTree methodsFor: 'recovered'!
attr: recoveredArg1 value: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := EsAtom.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := stack.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) peek.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := EtasXmlSupportDOMAttr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) initOn: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) addAttribute: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

