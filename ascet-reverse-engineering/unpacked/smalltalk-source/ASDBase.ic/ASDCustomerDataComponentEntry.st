"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006c20; bytecode file offset 0x908be4"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getDataInformationForConfiguration
    | recoveredValue0 |
    recoveredValue0 := (self) configuration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200098cc; bytecode file offset 0x908be4"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getDataInformationForComponent
    | recoveredValue0 |
    recoveredValue0 := (self) component.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000e268; bytecode file offset 0x90ab8c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getDataInformationForConfiguration: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := (self) getDataInformationForConfiguration.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001dd08; bytecode file offset 0x92209c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
accessKeyForMethodElements
    ^'methodElements'
! !

"ASDBase.ic method 0x2001f478; bytecode file offset 0x92209c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
accessKeyForMethods
    ^'methods'
! !

"ASDBase.ic method 0x2001f520; bytecode file offset 0x92209c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
accessKeyForConfiguration
    ^'configuration'
! !

"ASDBase.ic method 0x2002204c; bytecode file offset 0x92209c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
accessKeyForElements
    ^'elements'
! !

"ASDBase.ic method 0x20023b94; bytecode file offset 0x92209c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
accessKeyForComponent
    ^'component'
! !

"ASDBase.ic method 0x200245fc; bytecode file offset 0x92209c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
accessKeyForMethodDeclaration
    ^'methodDeclaration'
! !

"ASDBase.ic method 0x200386dc; bytecode file offset 0x935c54"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getOrCreateDataInformationForConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getOrCreateDataInformationForConfiguration.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005cf98; bytecode file offset 0x9599ac"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
initMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) methods: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005d060; bytecode file offset 0x9599ac"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
initElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (self) elements: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093810; bytecode file offset 0x9904ac"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
configuration: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) accessKeyForConfiguration.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200938c0; bytecode file offset 0x9904ac"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
elements: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) accessKeyForElements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093ab0; bytecode file offset 0x9904ac"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
component: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) accessKeyForComponent.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20093b40; bytecode file offset 0x9904ac"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
methods: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) accessKeyForMethods.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) at: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e324; bytecode file offset 0x99ad10"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
component
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) accessKeyForComponent.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009e360; bytecode file offset 0x99ad10"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
configuration
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) accessKeyForConfiguration.
    recoveredValue1 := [].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ae1c8; bytecode file offset 0x9aaa88"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
setDataInformation: recoveredArg1 forElement: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) aliasName.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) put: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bd3ec; bytecode file offset 0x9b9d70"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getDataInformationForMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) methods.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) aliasName.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bd494; bytecode file offset 0x9b9d70"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getDataInformationForElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) elements.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) aliasName.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20114404; bytecode file offset 0xa10cc4"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
xmlSetData: recoveredArg1 forMethod: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (self) getOrCreateDataInformationForMethod: (recoveredValue0).
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := (self) accessKeyForMethodDeclaration.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) put: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x20118704; bytecode file offset 0xa1503c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
methods
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) accessKeyForMethods.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initMethods.
    recoveredBlock6Value0
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20118740; bytecode file offset 0xa1503c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
elements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) accessKeyForElements.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initElements.
    recoveredBlock6Value0
].
    recoveredValue2 := (self) at: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20155ee0; bytecode file offset 0xa5280c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getOrCreateDataInformationForMethod: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) methods.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd95cValue0 block280cd95cValue1 |
    block280cd95cValue0 := LookupTable.
    block280cd95cValue1 := (block280cd95cValue0) new.
    block280cd95cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20155f00; bytecode file offset 0xa5280c"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getOrCreateDataInformationForElement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) elements.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd980Value0 block280cd980Value1 |
    block280cd980Value0 := ASDCustomerDataInformation.
    block280cd980Value1 := (block280cd980Value0) new.
    block280cd980Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201592dc; bytecode file offset 0xa55bb8"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getOrCreateDataInformationForComponent
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) component.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDCustomerDataInformation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) component: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201592f4; bytecode file offset 0xa55bb8"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getOrCreateDataInformationForConfiguration
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) configuration.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := ASDCustomerDataInformation.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) configuration: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2017c78c; bytecode file offset 0xa79050"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getDataInformationForMethodDeclaration: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataInformationForMethod: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessKeyForMethodDeclaration.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fa454; bytecode file offset 0xaf6d20"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getOrCreateDataInformationForMethodDeclaration: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateDataInformationForMethod: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessKeyForMethodDeclaration.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    | block280d85c4Value0 block280d85c4Value1 |
    block280d85c4Value0 := ASDCustomerDataInformation.
    block280d85c4Value1 := (block280d85c4Value0) new.
    block280d85c4Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022ed20; bytecode file offset 0xb2b5f4"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
xmlSetData: recoveredArg1 forVariable: recoveredArg2 inMethod: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateDataInformationForMethod: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessKeyForMethodElements.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := [
    | block280dcd58Value0 block280dcd58Value1 |
    block280dcd58Value0 := LookupTable.
    block280dcd58Value1 := (block280dcd58Value0) new.
    block280dcd58Value1
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20251864; bytecode file offset 0xb4e130"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getDataInformationForMethodParameter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDataInformationForMethod: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessKeyForMethodElements.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202cc284; bytecode file offset 0xbc8b60"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
getOrCreateDataInformationForMethodParameter: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOrCreateDataInformationForMethod: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessKeyForMethodElements.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [
    | block280e5b18Value0 block280e5b18Value1 |
    block280e5b18Value0 := LookupTable.
    block280e5b18Value1 := (block280e5b18Value0) new.
    block280e5b18Value1
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [
    | block280e5b3cValue0 block280e5b3cValue1 |
    block280e5b3cValue0 := ASDCustomerDataInformation.
    block280e5b3cValue1 := (block280e5b3cValue0) new.
    block280e5b3cValue1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20400dfc; bytecode file offset 0xcfd6e0"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
deepCopy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := (self) species.
    recoveredValue1 := (recoveredValue0) basicNew.
    recoveredValue2 := recoveredValue1.
    recoveredLocal4 := recoveredValue2.
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := keys.
    recoveredValue5 := (recoveredValue4) size.
    recoveredValue6 := recoveredValue5.
    recoveredLocal3 := recoveredValue6.
    (recoveredValue3) initialize: (recoveredValue5).
    recoveredValue7 := elementCount.
    (recoveredValue1) elementCount: (recoveredValue7).
    recoveredValue8 := recoveredLocal4.
    recoveredValue9 := (recoveredValue8) keyArray.
    recoveredLocal2 := recoveredValue9.
    recoveredValue10 := recoveredLocal4.
    recoveredValue11 := (recoveredValue10) valueArray.
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := [:recoveredBlock40Arg1 :recoveredBlock40Arg2 | 
    | recoveredBlock40Stack0 recoveredBlock40Stack1 recoveredBlock40Stack2 recoveredBlock40Stack3 recoveredBlock40Stack4 recoveredBlock40Stack5 recoveredBlock40PC recoveredBlock40Step recoveredBlock40Done recoveredBlock40Result |
    recoveredBlock40Stack0 := self.
    recoveredBlock40PC := 46.
    recoveredBlock40Done := false.
    [recoveredBlock40Done not] whileTrue: [
        recoveredBlock40Step := recoveredBlock40PC.
        recoveredBlock40Step = 46 ifTrue: [
            recoveredBlock40Stack1 := nil.
            recoveredBlock40PC := 47.
        ].
        recoveredBlock40Step = 47 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg1.
            recoveredBlock40PC := 48.
        ].
        recoveredBlock40Step = 48 ifTrue: [
            (recoveredBlock40Stack2 == nil) ifTrue: [recoveredBlock40PC := 79] ifFalse: [recoveredBlock40PC := 52].
        ].
        recoveredBlock40Step = 52 ifTrue: [
            recoveredBlock40PC := 53.
        ].
        recoveredBlock40Step = 53 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal2.
            recoveredBlock40PC := 56.
        ].
        recoveredBlock40Step = 56 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg2.
            recoveredBlock40PC := 57.
        ].
        recoveredBlock40Step = 57 ifTrue: [
            recoveredBlock40Stack3 := keys.
            recoveredBlock40PC := 59.
        ].
        recoveredBlock40Step = 59 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Arg2.
            recoveredBlock40PC := 60.
        ].
        recoveredBlock40Step = 60 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) at: (recoveredBlock40Stack4).
            recoveredBlock40PC := 62.
        ].
        recoveredBlock40Step = 62 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) copy.
            recoveredBlock40PC := 64.
        ].
        recoveredBlock40Step = 64 ifTrue: [
            (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 66.
        ].
        recoveredBlock40Step = 66 ifTrue: [
            recoveredBlock40Stack1 := recoveredLocal1.
            recoveredBlock40PC := 69.
        ].
        recoveredBlock40Step = 69 ifTrue: [
            recoveredBlock40Stack2 := recoveredBlock40Arg2.
            recoveredBlock40PC := 70.
        ].
        recoveredBlock40Step = 70 ifTrue: [
            recoveredBlock40Stack3 := values.
            recoveredBlock40PC := 72.
        ].
        recoveredBlock40Step = 72 ifTrue: [
            recoveredBlock40Stack4 := recoveredBlock40Arg2.
            recoveredBlock40PC := 73.
        ].
        recoveredBlock40Step = 73 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) at: (recoveredBlock40Stack4).
            recoveredBlock40PC := 75.
        ].
        recoveredBlock40Step = 75 ifTrue: [
            recoveredBlock40Stack3 := (recoveredBlock40Stack3) deepCopy.
            recoveredBlock40PC := 77.
        ].
        recoveredBlock40Step = 77 ifTrue: [
            recoveredBlock40Stack1 := (recoveredBlock40Stack1) at: (recoveredBlock40Stack2) put: (recoveredBlock40Stack3).
            recoveredBlock40PC := 79.
        ].
        recoveredBlock40Step = 79 ifTrue: [
            recoveredBlock40Result := recoveredBlock40Stack1.
            recoveredBlock40Done := true.
        ].
    ].
    recoveredBlock40Result
].
    recoveredValue13 := keys.
    recoveredValue14 := recoveredLocal3.
    (recoveredValue12) applyWithIndex: (recoveredValue13) from: (1) to: (recoveredValue14).
    recoveredValue15 := recoveredLocal4.
    ^recoveredValue15
! !

"ASDBase.ic method 0x204f0814; bytecode file offset 0xded0e8"
!ASDCustomerDataComponentEntry methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) accessKeyForElements.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) keys.
    recoveredBlock6Value2 := [:recoveredBlock6Block16Arg1 | 
    | recoveredBlock6Block16Value0 recoveredBlock6Block16Value1 recoveredBlock6Block16Value2 recoveredBlock6Block16Value3 |
    recoveredBlock6Block16Value0 := recoveredArg1.
    recoveredBlock6Block16Value1 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Value2 := [:recoveredBlock6Block16Block28Arg1 | 
    | recoveredBlock6Block16Block28Value0 recoveredBlock6Block16Block28Value1 recoveredBlock6Block16Block28Value2 recoveredBlock6Block16Block28Value3 recoveredBlock6Block16Block28Value4 recoveredBlock6Block16Block28Value5 |
    recoveredBlock6Block16Block28Value0 := recoveredBlock6Arg1.
    recoveredBlock6Block16Block28Value1 := recoveredBlock6Block16Block28Arg1.
    recoveredBlock6Block16Block28Value2 := recoveredBlock6Arg1.
    recoveredBlock6Block16Block28Value3 := recoveredBlock6Block16Arg1.
    recoveredBlock6Block16Block28Value4 := (recoveredBlock6Block16Block28Value2) removeKey: (recoveredBlock6Block16Block28Value3).
    recoveredBlock6Block16Block28Value5 := (recoveredBlock6Block16Block28Value0) at: (recoveredBlock6Block16Block28Value1) put: (recoveredBlock6Block16Block28Value4).
    recoveredBlock6Block16Block28Value5
].
    recoveredBlock6Block16Value3 := (recoveredBlock6Block16Value0) at: (recoveredBlock6Block16Value1) ifPresent: (recoveredBlock6Block16Value2).
    recoveredBlock6Block16Value3
].
    recoveredBlock6Value3 := (recoveredBlock6Value1) do: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    (self) at: (recoveredValue0) ifPresent: (recoveredValue1).
    recoveredValue2 := (self) accessKeyForMethods.
    recoveredValue3 := [:recoveredBlock60Arg1 | 
    | recoveredBlock60Value0 recoveredBlock60Value1 recoveredBlock60Value2 recoveredBlock60Value3 |
    recoveredBlock60Value0 := recoveredBlock60Arg1.
    recoveredBlock60Value1 := (recoveredBlock60Value0) keys.
    recoveredBlock60Value2 := [:recoveredBlock60Block70Arg1 | 
    | recoveredBlock60Block70Value0 recoveredBlock60Block70Value1 recoveredBlock60Block70Value2 recoveredBlock60Block70Value3 |
    recoveredBlock60Block70Value0 := recoveredArg1.
    recoveredBlock60Block70Value1 := recoveredBlock60Block70Arg1.
    recoveredBlock60Block70Value2 := [:recoveredBlock60Block70Block82Arg1 | 
    | recoveredBlock60Block70Block82Local1 recoveredBlock60Block70Block82Value0 recoveredBlock60Block70Block82Value1 recoveredBlock60Block70Block82Value2 recoveredBlock60Block70Block82Value3 recoveredBlock60Block70Block82Value4 recoveredBlock60Block70Block82Value5 recoveredBlock60Block70Block82Value6 recoveredBlock60Block70Block82Value7 recoveredBlock60Block70Block82Value8 recoveredBlock60Block70Block82Value9 |
    recoveredBlock60Block70Block82Value0 := recoveredBlock60Arg1.
    recoveredBlock60Block70Block82Value1 := recoveredBlock60Block70Arg1.
    recoveredBlock60Block70Block82Value2 := (recoveredBlock60Block70Block82Value0) removeKey: (recoveredBlock60Block70Block82Value1).
    recoveredBlock60Block70Block82Local1 := recoveredBlock60Block70Block82Value2.
    recoveredBlock60Block70Block82Value3 := recoveredBlock60Arg1.
    recoveredBlock60Block70Block82Value4 := recoveredBlock60Block70Block82Arg1.
    recoveredBlock60Block70Block82Value5 := recoveredBlock60Block70Block82Local1.
    (recoveredBlock60Block70Block82Value3) at: (recoveredBlock60Block70Block82Value4) put: (recoveredBlock60Block70Block82Value5).
    recoveredBlock60Block70Block82Value6 := recoveredBlock60Block70Block82Local1.
    recoveredBlock60Block70Block82Value7 := (self) accessKeyForMethodElements.
    recoveredBlock60Block70Block82Value8 := [:recoveredBlock60Block70Block82Block107Arg1 | 
    | recoveredBlock60Block70Block82Block107Value0 recoveredBlock60Block70Block82Block107Value1 recoveredBlock60Block70Block82Block107Value2 recoveredBlock60Block70Block82Block107Value3 |
    recoveredBlock60Block70Block82Block107Value0 := recoveredBlock60Block70Block82Block107Arg1.
    recoveredBlock60Block70Block82Block107Value1 := (recoveredBlock60Block70Block82Block107Value0) keys.
    recoveredBlock60Block70Block82Block107Value2 := [:recoveredBlock60Block70Block82Block107Block118Arg1 | 
    | recoveredBlock60Block70Block82Block107Block118Value0 recoveredBlock60Block70Block82Block107Block118Value1 recoveredBlock60Block70Block82Block107Block118Value2 recoveredBlock60Block70Block82Block107Block118Value3 |
    recoveredBlock60Block70Block82Block107Block118Value0 := recoveredArg1.
    recoveredBlock60Block70Block82Block107Block118Value1 := recoveredBlock60Block70Block82Block107Block118Arg1.
    recoveredBlock60Block70Block82Block107Block118Value2 := [:recoveredBlock60Block70Block82Block107Block118Block130Arg1 | 
    | recoveredBlock60Block70Block82Block107Block118Block130Value0 recoveredBlock60Block70Block82Block107Block118Block130Value1 recoveredBlock60Block70Block82Block107Block118Block130Value2 recoveredBlock60Block70Block82Block107Block118Block130Value3 recoveredBlock60Block70Block82Block107Block118Block130Value4 recoveredBlock60Block70Block82Block107Block118Block130Value5 |
    recoveredBlock60Block70Block82Block107Block118Block130Value0 := recoveredBlock60Block70Block82Block107Arg1.
    recoveredBlock60Block70Block82Block107Block118Block130Value1 := recoveredBlock60Block70Block82Block107Block118Block130Arg1.
    recoveredBlock60Block70Block82Block107Block118Block130Value2 := recoveredBlock60Block70Block82Block107Arg1.
    recoveredBlock60Block70Block82Block107Block118Block130Value3 := recoveredBlock60Block70Block82Block107Block118Arg1.
    recoveredBlock60Block70Block82Block107Block118Block130Value4 := (recoveredBlock60Block70Block82Block107Block118Block130Value2) removeKey: (recoveredBlock60Block70Block82Block107Block118Block130Value3).
    recoveredBlock60Block70Block82Block107Block118Block130Value5 := (recoveredBlock60Block70Block82Block107Block118Block130Value0) at: (recoveredBlock60Block70Block82Block107Block118Block130Value1) put: (recoveredBlock60Block70Block82Block107Block118Block130Value4).
    recoveredBlock60Block70Block82Block107Block118Block130Value5
].
    recoveredBlock60Block70Block82Block107Block118Value3 := (recoveredBlock60Block70Block82Block107Block118Value0) at: (recoveredBlock60Block70Block82Block107Block118Value1) ifPresent: (recoveredBlock60Block70Block82Block107Block118Value2).
    recoveredBlock60Block70Block82Block107Block118Value3
].
    recoveredBlock60Block70Block82Block107Value3 := (recoveredBlock60Block70Block82Block107Value1) do: (recoveredBlock60Block70Block82Block107Value2).
    recoveredBlock60Block70Block82Block107Value3
].
    recoveredBlock60Block70Block82Value9 := (recoveredBlock60Block70Block82Value6) at: (recoveredBlock60Block70Block82Value7) ifPresent: (recoveredBlock60Block70Block82Value8).
    recoveredBlock60Block70Block82Value9
].
    recoveredBlock60Block70Value3 := (recoveredBlock60Block70Value0) at: (recoveredBlock60Block70Value1) ifPresent: (recoveredBlock60Block70Value2).
    recoveredBlock60Block70Value3
].
    recoveredBlock60Value3 := (recoveredBlock60Value1) do: (recoveredBlock60Value2).
    recoveredBlock60Value3
].
    (self) at: (recoveredValue2) ifPresent: (recoveredValue3).
    ^self
! !

