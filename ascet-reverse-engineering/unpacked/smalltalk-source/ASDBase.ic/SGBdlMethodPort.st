"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007cd0; bytecode file offset 0x908be4"
!SGBdlMethodPort methodsFor: 'recovered'!
elementName
    | recoveredValue0 |
    recoveredValue0 := (self) methodName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200325a4; bytecode file offset 0x934580"
!SGBdlMethodPort methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) block.
    recoveredValue1 := (recoveredValue0) source.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005230c; bytecode file offset 0x94f0e0"
!SGBdlMethodPort methodsFor: 'recovered'!
changedSequences
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) block.
    recoveredValue1 := (recoveredValue0) currentMethod.
    recoveredValue2 := (recoveredValue1) changedSequences.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200575d8; bytecode file offset 0x956284"
!SGBdlMethodPort methodsFor: 'recovered'!
checkValidity: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) block.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) checkValidity: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20064f34; bytecode file offset 0x961970"
!SGBdlMethodPort methodsFor: 'recovered'!
syntacticAnalysis
    | recoveredValue0 |
    recoveredValue0 := (self) block.
    (recoveredValue0) syntacticAnalysis.
    ^self
! !

"ASDBase.ic method 0x2006924c; bytecode file offset 0x965b90"
!SGBdlMethodPort methodsFor: 'recovered'!
aliasName
    | recoveredValue0 |
    recoveredValue0 := aliasName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006af9c; bytecode file offset 0x967a18"
!SGBdlMethodPort methodsFor: 'recovered'!
rteAccess
    | recoveredValue0 |
    recoveredValue0 := rteAccess.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200780f4; bytecode file offset 0x9757c8"
!SGBdlMethodPort methodsFor: 'recovered'!
isDirectInput
    ^true
! !

"ASDBase.ic method 0x200b2888; bytecode file offset 0x9af164"
!SGBdlMethodPort methodsFor: 'recovered'!
methodName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) aliasName.
    recoveredValue1 := (self) block.
    recoveredValue2 := (recoveredValue1) dataModelRef.
    recoveredValue3 := (self) methodName: (recoveredValue0) dataModelRef: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200b42dc; bytecode file offset 0x9b0bd0"
!SGBdlMethodPort methodsFor: 'recovered'!
mdlName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (self) aliasName.
    recoveredValue2 := (self) methodName.
    recoveredValue3 := (recoveredValue0) createMdlNameKey: (recoveredValue1) label: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bfc6c; bytecode file offset 0x9bd228"
!SGBdlMethodPort methodsFor: 'recovered'!
aliasName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    aliasName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0e58; bytecode file offset 0x9bdf14"
!SGBdlMethodPort methodsFor: 'recovered'!
path: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    path := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1aec; bytecode file offset 0x9beac8"
!SGBdlMethodPort methodsFor: 'recovered'!
rteAccess: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    rteAccess := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ec460; bytecode file offset 0x9e8d20"
!SGBdlMethodPort methodsFor: 'recovered'!
mdlName: recoveredArg1 dataModelRef: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) class.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) methodName: (recoveredValue2) dataModelRef: (recoveredValue3).
    recoveredValue5 := (recoveredValue0) createMdlNameKey: (recoveredValue1) label: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20100244; bytecode file offset 0x9fcb04"
!SGBdlMethodPort methodsFor: 'recovered'!
addRteAccess: recoveredArg1 source: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := rteAccess.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    (recoveredValue0) add: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2013ae14; bytecode file offset 0xa376d4"
!SGBdlMethodPort methodsFor: 'recovered'!
path
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := path.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := path.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201570a8; bytecode file offset 0xa53968"
!SGBdlMethodPort methodsFor: 'recovered'!
methodName: recoveredArg1 dataModelRef: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) sgClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodNameForAlias: (recoveredStack2) inClass: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2018ba00; bytecode file offset 0xa882c8"
!SGBdlMethodPort methodsFor: 'recovered'!
mdlElementName: recoveredArg1 dataModelRef: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) elementAliasName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) fatalExpectAliasName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMdlNameForVar: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ac7ac; bytecode file offset 0xaa9080"
!SGBdlMethodPort methodsFor: 'recovered'!
dataModelRef: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodAliasName: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) fatalExpectAliasName: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1dfc; bytecode file offset 0xaae6d8"
!SGBdlMethodPort methodsFor: 'recovered'!
isAllArgumentsConnected
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceArguments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d4094Arg1 | 
    | block280d4094Value0 block280d4094Value1 |
    block280d4094Value0 := block280d4094Arg1.
    block280d4094Value1 := (block280d4094Value0) notConnected.
    block280d4094Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d13b4; bytecode file offset 0xacdc80"
!SGBdlMethodPort methodsFor: 'recovered'!
isProvidePort
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSenderReceiverInterface.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) sgClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNVDataInterface.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProvidePort.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201ec7e4; bytecode file offset 0xae90b8"
!SGBdlMethodPort methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    super initialize.
    recoveredValue0 := SGInterfaceElement.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue2) port: (self).
    recoveredValue3 := interfaceElements.
    recoveredValue4 := Array.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (recoveredValue3) , (recoveredValue6).
    interfaceElements := recoveredValue7.
    ^self
! !

"ASDBase.ic method 0x201f2510; bytecode file offset 0xaeede0"
!SGBdlMethodPort methodsFor: 'recovered'!
errLabel
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := '::'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := aliasName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20207078; bytecode file offset 0xb03930"
!SGBdlMethodPort methodsFor: 'recovered'!
addArgumentsNo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) addArgument.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 29]] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20287af4; bytecode file offset 0xb843bc"
!SGBdlMethodPort methodsFor: 'recovered'!
configureArgumentsOfMethod: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) arguments.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := interfaceElements.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) arguments.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) dataModelAliasName: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 14] ifFalse: [recoveredLocal1 := nil. recoveredPC := 40]] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203824b0; bytecode file offset 0xc7ed90"
!SGBdlMethodPort methodsFor: 'recovered'!
bdlPrereqArguments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceArguments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280f2ca0Arg1 | 
    | block280f2ca0Stack0 block280f2ca0Stack1 block280f2ca0Stack2 block280f2ca0Stack3 block280f2ca0Stack4 block280f2ca0PC block280f2ca0Step block280f2ca0Done block280f2ca0Result |
    block280f2ca0Stack0 := self.
    block280f2ca0PC := 4.
    block280f2ca0Done := false.
    [block280f2ca0Done not] whileTrue: [
        block280f2ca0Step := block280f2ca0PC.
        block280f2ca0Step = 4 ifTrue: [
            block280f2ca0Stack1 := block280f2ca0Arg1.
            block280f2ca0PC := 5.
        ].
        block280f2ca0Step = 5 ifTrue: [
            block280f2ca0Stack2 := OrderedCollection.
            block280f2ca0PC := 7.
        ].
        block280f2ca0Step = 7 ifTrue: [
            block280f2ca0Stack2 := (block280f2ca0Stack2) new.
            block280f2ca0PC := 8.
        ].
        block280f2ca0Step = 8 ifTrue: [
            block280f2ca0Stack3 := [:block280f2cc4Arg1 :block280f2cc4Arg2 :block280f2cc4Arg3 :block280f2cc4Arg4 | 
    | block280f2cc4Stack0 block280f2cc4Stack1 block280f2cc4Stack2 block280f2cc4Stack3 block280f2cc4Stack4 block280f2cc4Stack5 block280f2cc4PC block280f2cc4Step block280f2cc4Done block280f2cc4Result |
    block280f2cc4Stack0 := self.
    block280f2cc4PC := 4.
    block280f2cc4Done := false.
    [block280f2cc4Done not] whileTrue: [
        block280f2cc4Step := block280f2cc4PC.
        block280f2cc4Step = 4 ifTrue: [
            block280f2cc4Stack1 := block280f2cc4Arg1.
            block280f2cc4PC := 5.
        ].
        block280f2cc4Step = 5 ifTrue: [
            (block280f2cc4Stack1) ifTrue: [block280f2cc4PC := 8] ifFalse: [block280f2cc4PC := 48].
        ].
        block280f2cc4Step = 8 ifTrue: [
            block280f2cc4Stack1 := block280f2cc4Arg2.
            block280f2cc4PC := 9.
        ].
        block280f2cc4Step = 9 ifTrue: [
            block280f2cc4Stack1 := (block280f2cc4Stack1) isBdlControlBlock.
            block280f2cc4PC := 11.
        ].
        block280f2cc4Step = 11 ifTrue: [
            (block280f2cc4Stack1) ifTrue: [block280f2cc4PC := 14] ifFalse: [block280f2cc4PC := 24].
        ].
        block280f2cc4Step = 14 ifTrue: [
            block280f2cc4Stack1 := block280f2cc4Arg2.
            block280f2cc4PC := 15.
        ].
        block280f2cc4Step = 15 ifTrue: [
            block280f2cc4Stack2 := 5.
            block280f2cc4PC := 17.
        ].
        block280f2cc4Step = 17 ifTrue: [
            block280f2cc4Stack3 := block280f2cc4Arg4.
            block280f2cc4PC := 18.
        ].
        block280f2cc4Step = 18 ifTrue: [
            (block280f2cc4Stack1) bdlSyntaxErrNo: (block280f2cc4Stack2) with: (block280f2cc4Stack3).
            block280f2cc4PC := 20.
        ].
        block280f2cc4Step = 20 ifTrue: [
            block280f2cc4PC := 48.
        ].
        block280f2cc4Step = 24 ifTrue: [
            block280f2cc4Stack1 := block280f2cc4Arg2.
            block280f2cc4PC := 25.
        ].
        block280f2cc4Step = 25 ifTrue: [
            block280f2cc4Stack1 := (block280f2cc4Stack1) isBdlHierarchyBlock.
            block280f2cc4PC := 27.
        ].
        block280f2cc4Step = 27 ifTrue: [
            (block280f2cc4Stack1) ifTrue: [block280f2cc4PC := 30] ifFalse: [block280f2cc4PC := 40].
        ].
        block280f2cc4Step = 30 ifTrue: [
            block280f2cc4Stack1 := block280f2cc4Arg2.
            block280f2cc4PC := 31.
        ].
        block280f2cc4Step = 31 ifTrue: [
            block280f2cc4Stack2 := 52.
            block280f2cc4PC := 33.
        ].
        block280f2cc4Step = 33 ifTrue: [
            block280f2cc4Stack3 := block280f2cc4Arg3.
            block280f2cc4PC := 34.
        ].
        block280f2cc4Step = 34 ifTrue: [
            (block280f2cc4Stack1) bdlSyntaxErrNo: (block280f2cc4Stack2) with: (block280f2cc4Stack3).
            block280f2cc4PC := 36.
        ].
        block280f2cc4Step = 36 ifTrue: [
            block280f2cc4PC := 48.
        ].
        block280f2cc4Step = 40 ifTrue: [
            block280f2cc4Stack1 := block280f2cc4Arg2.
            block280f2cc4PC := 41.
        ].
        block280f2cc4Step = 41 ifTrue: [
            block280f2cc4Stack2 := 51.
            block280f2cc4PC := 43.
        ].
        block280f2cc4Step = 43 ifTrue: [
            block280f2cc4Stack3 := block280f2cc4Arg3.
            block280f2cc4PC := 44.
        ].
        block280f2cc4Step = 44 ifTrue: [
            block280f2cc4Stack4 := block280f2cc4Arg4.
            block280f2cc4PC := 45.
        ].
        block280f2cc4Step = 45 ifTrue: [
            (block280f2cc4Stack1) bdlSyntaxErrNo: (block280f2cc4Stack2) with: (block280f2cc4Stack3) with: (block280f2cc4Stack4).
            block280f2cc4PC := 48.
        ].
        block280f2cc4Step = 48 ifTrue: [
            block280f2cc4Stack1 := nil.
            block280f2cc4PC := 49.
        ].
        block280f2cc4Step = 49 ifTrue: [
            block280f2cc4Result := block280f2cc4Stack1.
            block280f2cc4Done := true.
        ].
    ].
    block280f2cc4Result
].
            block280f2ca0PC := 10.
        ].
        block280f2ca0Step = 10 ifTrue: [
            block280f2ca0PC := 60.
        ].
        block280f2ca0Step = 60 ifTrue: [
            block280f2ca0Stack1 := (block280f2ca0Stack1) bdlPrereqArgument: (block280f2ca0Stack2) ifFail: (block280f2ca0Stack3).
            block280f2ca0PC := 62.
        ].
        block280f2ca0Step = 62 ifTrue: [
            block280f2ca0Result := block280f2ca0Stack1.
            block280f2ca0Done := true.
        ].
    ].
    block280f2ca0Result
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039a484; bytecode file offset 0xc96d6c"
!SGBdlMethodPort methodsFor: 'recovered'!
buildMdlArguments
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) rteAccess: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProvidePort.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 |
    recoveredBlock15Value0 := (self) interfaceArguments.
    recoveredBlock15Value1 := (recoveredBlock15Value0) size.
    recoveredBlock15Value2 := (recoveredBlock15Value1) = (1).
    recoveredBlock15Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [
    'More than one argument on a provide port'
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceArguments.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) buildMdlAccessOp: (self).
    recoveredBlock44Value1
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) interfaceArguments.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:block280f3fc0Arg1 | 
    | block280f3fc0Value0 block280f3fc0Value1 |
    block280f3fc0Value0 := block280f3fc0Arg1.
    block280f3fc0Value1 := (block280f3fc0Value0) buildMdl.
    block280f3fc0Value1
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204ec1a8; bytecode file offset 0xde8aac"
!SGBdlMethodPort methodsFor: 'recovered'!
buildMdlFieldAccess
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) aliasName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 20.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) / (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) / (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 20.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) aliasName.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := 19.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack4 := (recoveredStack4) - (recoveredStack5).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) copyFrom: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 40] ifFalse: [recoveredPC := 103]] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) aliasName.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack3 := (recoveredStack3) elementName.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMdlNameKey: (recoveredStack2) label: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) id: (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := [:recoveredBlock134Arg1 | 
    | recoveredBlock134Value0 recoveredBlock134Value1 recoveredBlock134Value2 recoveredBlock134Value3 recoveredBlock134Value4 recoveredBlock134Value5 recoveredBlock134Value6 recoveredBlock134Value7 |
    recoveredBlock134Value0 := (self) mdlBuilder.
    recoveredBlock134Value1 := recoveredBlock134Arg1.
    recoveredBlock134Value2 := recoveredLocal3.
    recoveredBlock134Value3 := (self) mdlName: (recoveredBlock134Value1) dataModelRef: (recoveredBlock134Value2).
    (recoveredBlock134Value0) fieldAccess: (recoveredBlock134Value3).
    recoveredBlock134Value4 := recoveredBlock134Arg1.
    recoveredBlock134Value5 := recoveredLocal3.
    recoveredBlock134Value6 := (self) dataModelRef: (recoveredBlock134Value4) in: (recoveredBlock134Value5).
    recoveredBlock134Value7 := recoveredBlock134Value6.
    recoveredLocal3 := recoveredBlock134Value7.
    recoveredBlock134Value6
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20543aec; bytecode file offset 0xe40400"
!SGBdlMethodPort methodsFor: 'recovered'!
buildRteAccess
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isProvidePort.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := (self) rteAccess.
    recoveredBlock9Value1 := (recoveredBlock9Value0) size.
    recoveredBlock9Value2 := (recoveredBlock9Value1) <= (1).
    recoveredBlock9Value2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := [
    'more than one rteAccesses on provide port'
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) rteAccess.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Local1 recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := 1.
            recoveredBlock35PC := 45.
        ].
        recoveredBlock35Step = 45 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) at: (recoveredBlock35Stack2).
            recoveredBlock35PC := 47.
        ].
        recoveredBlock35Step = 47 ifTrue: [
            recoveredBlock35Local1 := recoveredBlock35Stack1.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) mdlBuilder.
            recoveredBlock35PC := 50.
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack2 := 2.
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) at: (recoveredBlock35Stack2).
            recoveredBlock35PC := 55.
        ].
        recoveredBlock35Step = 55 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) source.
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            (recoveredBlock35Stack0) source: (recoveredBlock35Stack1).
            recoveredBlock35PC := 59.
        ].
        recoveredBlock35Step = 59 ifTrue: [
            recoveredBlock35Stack0 := recoveredBlock35Local1.
            recoveredBlock35PC := 60.
        ].
        recoveredBlock35Step = 60 ifTrue: [
            recoveredBlock35Stack1 := 'implicit'.
            recoveredBlock35PC := 62.
        ].
        recoveredBlock35Step = 62 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) = (recoveredBlock35Stack1).
            recoveredBlock35PC := 63.
        ].
        recoveredBlock35Step = 63 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 66] ifFalse: [recoveredBlock35PC := 74].
        ].
        recoveredBlock35Step = 66 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 67.
        ].
        recoveredBlock35Step = 67 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) mdlBuilder.
            recoveredBlock35PC := 69.
        ].
        recoveredBlock35Step = 69 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) rteImplicit.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            recoveredBlock35PC := 109.
        ].
        recoveredBlock35Step = 74 ifTrue: [
            recoveredBlock35Stack0 := recoveredBlock35Local1.
            recoveredBlock35PC := 75.
        ].
        recoveredBlock35Step = 75 ifTrue: [
            recoveredBlock35Stack1 := 'explicit'.
            recoveredBlock35PC := 77.
        ].
        recoveredBlock35Step = 77 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) = (recoveredBlock35Stack1).
            recoveredBlock35PC := 78.
        ].
        recoveredBlock35Step = 78 ifTrue: [
            (recoveredBlock35Stack0) ifTrue: [recoveredBlock35PC := 82] ifFalse: [recoveredBlock35PC := 90].
        ].
        recoveredBlock35Step = 82 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 83.
        ].
        recoveredBlock35Step = 83 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) mdlBuilder.
            recoveredBlock35PC := 85.
        ].
        recoveredBlock35Step = 85 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) rteExplicitWrite.
            recoveredBlock35PC := 87.
        ].
        recoveredBlock35Step = 87 ifTrue: [
            recoveredBlock35PC := 109.
        ].
        recoveredBlock35Step = 90 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 91.
        ].
        recoveredBlock35Step = 91 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) mdlBuilder.
            recoveredBlock35PC := 93.
        ].
        recoveredBlock35Step = 93 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Stack0.
            recoveredBlock35PC := 94.
        ].
        recoveredBlock35Step = 94 ifTrue: [
            (recoveredBlock35Stack1) rteExplicitWrite.
            recoveredBlock35PC := 96.
        ].
        recoveredBlock35Step = 96 ifTrue: [
            (recoveredBlock35Stack0) block.
            recoveredBlock35PC := 98.
        ].
        recoveredBlock35Step = 98 ifTrue: [
            recoveredBlock35Stack0 := recoveredBlock35Local1.
            recoveredBlock35PC := 99.
        ].
        recoveredBlock35Step = 99 ifTrue: [
            (recoveredBlock35Stack0) buildMdl.
            recoveredBlock35PC := 101.
        ].
        recoveredBlock35Step = 101 ifTrue: [
            recoveredBlock35Stack0 := self.
            recoveredBlock35PC := 102.
        ].
        recoveredBlock35Step = 102 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) mdlBuilder.
            recoveredBlock35PC := 104.
        ].
        recoveredBlock35Step = 104 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Stack0.
            recoveredBlock35PC := 105.
        ].
        recoveredBlock35Step = 105 ifTrue: [
            (recoveredBlock35Stack1) endBlock.
            recoveredBlock35PC := 107.
        ].
        recoveredBlock35Step = 107 ifTrue: [
            recoveredBlock35Stack0 := (recoveredBlock35Stack0) rteCheckStatus.
            recoveredBlock35PC := 109.
        ].
        recoveredBlock35Step = 109 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack0.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 213.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock117Value0 recoveredBlock117Value1 |
    recoveredBlock117Value0 := (self) rteAccess.
    recoveredBlock117Value1 := (recoveredBlock117Value0) isEmpty.
    recoveredBlock117Value1
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := [
    'rteAccesses on non-provide port'
].
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ileAssert: (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) rteAccess.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := [:recoveredBlock141Arg1 | 
    | recoveredBlock141Local1 recoveredBlock141Stack0 recoveredBlock141Stack1 recoveredBlock141Stack2 recoveredBlock141Stack3 recoveredBlock141PC recoveredBlock141Step recoveredBlock141Done recoveredBlock141Result |
    recoveredBlock141Stack0 := self.
    recoveredBlock141PC := 148.
    recoveredBlock141Done := false.
    [recoveredBlock141Done not] whileTrue: [
        recoveredBlock141Step := recoveredBlock141PC.
        recoveredBlock141Step = 148 ifTrue: [
            recoveredBlock141Stack1 := recoveredBlock141Arg1.
            recoveredBlock141PC := 149.
        ].
        recoveredBlock141Step = 149 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) first.
            recoveredBlock141PC := 151.
        ].
        recoveredBlock141Step = 151 ifTrue: [
            recoveredBlock141Local1 := recoveredBlock141Stack1.
            recoveredBlock141PC := 152.
        ].
        recoveredBlock141Step = 152 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) mdlBuilder.
            recoveredBlock141PC := 154.
        ].
        recoveredBlock141Step = 154 ifTrue: [
            recoveredBlock141Stack1 := recoveredBlock141Arg1.
            recoveredBlock141PC := 155.
        ].
        recoveredBlock141Step = 155 ifTrue: [
            recoveredBlock141Stack2 := 2.
            recoveredBlock141PC := 157.
        ].
        recoveredBlock141Step = 157 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) at: (recoveredBlock141Stack2).
            recoveredBlock141PC := 159.
        ].
        recoveredBlock141Step = 159 ifTrue: [
            recoveredBlock141Stack1 := (recoveredBlock141Stack1) source.
            recoveredBlock141PC := 161.
        ].
        recoveredBlock141Step = 161 ifTrue: [
            (recoveredBlock141Stack0) source: (recoveredBlock141Stack1).
            recoveredBlock141PC := 163.
        ].
        recoveredBlock141Step = 163 ifTrue: [
            recoveredBlock141Stack0 := recoveredBlock141Local1.
            recoveredBlock141PC := 164.
        ].
        recoveredBlock141Step = 164 ifTrue: [
            recoveredBlock141Stack1 := 'implicit'.
            recoveredBlock141PC := 166.
        ].
        recoveredBlock141Step = 166 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) = (recoveredBlock141Stack1).
            recoveredBlock141PC := 167.
        ].
        recoveredBlock141Step = 167 ifTrue: [
            (recoveredBlock141Stack0) ifTrue: [recoveredBlock141PC := 170] ifFalse: [recoveredBlock141PC := 178].
        ].
        recoveredBlock141Step = 170 ifTrue: [
            recoveredBlock141Stack0 := self.
            recoveredBlock141PC := 171.
        ].
        recoveredBlock141Step = 171 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) mdlBuilder.
            recoveredBlock141PC := 173.
        ].
        recoveredBlock141Step = 173 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) rteImplicit.
            recoveredBlock141PC := 175.
        ].
        recoveredBlock141Step = 175 ifTrue: [
            recoveredBlock141PC := 210.
        ].
        recoveredBlock141Step = 178 ifTrue: [
            recoveredBlock141Stack0 := recoveredBlock141Local1.
            recoveredBlock141PC := 179.
        ].
        recoveredBlock141Step = 179 ifTrue: [
            recoveredBlock141Stack1 := 'explicit'.
            recoveredBlock141PC := 181.
        ].
        recoveredBlock141Step = 181 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) = (recoveredBlock141Stack1).
            recoveredBlock141PC := 182.
        ].
        recoveredBlock141Step = 182 ifTrue: [
            (recoveredBlock141Stack0) ifTrue: [recoveredBlock141PC := 186] ifFalse: [recoveredBlock141PC := 194].
        ].
        recoveredBlock141Step = 186 ifTrue: [
            recoveredBlock141Stack0 := self.
            recoveredBlock141PC := 187.
        ].
        recoveredBlock141Step = 187 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) mdlBuilder.
            recoveredBlock141PC := 189.
        ].
        recoveredBlock141Step = 189 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) rteExplicit.
            recoveredBlock141PC := 191.
        ].
        recoveredBlock141Step = 191 ifTrue: [
            recoveredBlock141PC := 210.
        ].
        recoveredBlock141Step = 194 ifTrue: [
            recoveredBlock141Stack0 := self.
            recoveredBlock141PC := 195.
        ].
        recoveredBlock141Step = 195 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) mdlBuilder.
            recoveredBlock141PC := 197.
        ].
        recoveredBlock141Step = 197 ifTrue: [
            (recoveredBlock141Stack0) block.
            recoveredBlock141PC := 199.
        ].
        recoveredBlock141Step = 199 ifTrue: [
            recoveredBlock141Stack0 := recoveredBlock141Local1.
            recoveredBlock141PC := 200.
        ].
        recoveredBlock141Step = 200 ifTrue: [
            (recoveredBlock141Stack0) buildMdl.
            recoveredBlock141PC := 202.
        ].
        recoveredBlock141Step = 202 ifTrue: [
            recoveredBlock141Stack0 := self.
            recoveredBlock141PC := 203.
        ].
        recoveredBlock141Step = 203 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) mdlBuilder.
            recoveredBlock141PC := 205.
        ].
        recoveredBlock141Step = 205 ifTrue: [
            recoveredBlock141Stack1 := recoveredBlock141Stack0.
            recoveredBlock141PC := 206.
        ].
        recoveredBlock141Step = 206 ifTrue: [
            (recoveredBlock141Stack1) endBlock.
            recoveredBlock141PC := 208.
        ].
        recoveredBlock141Step = 208 ifTrue: [
            recoveredBlock141Stack0 := (recoveredBlock141Stack0) rteCheckStatus.
            recoveredBlock141PC := 210.
        ].
        recoveredBlock141Step = 210 ifTrue: [
            recoveredBlock141Result := recoveredBlock141Stack0.
            recoveredBlock141Done := true.
        ].
    ].
    recoveredBlock141Result
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20588e14; bytecode file offset 0xe8573c"
!SGBdlMethodPort methodsFor: 'recovered'!
buildMdlMethodCall
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMethodName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) setMethodName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 45].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) buildMdlArguments.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) assign.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) buildRteAccess.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) aliasName.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) buildMdlArguments.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceArguments.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) methodCall: (recoveredStack1) numOfArgs: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) buildRteAccess.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) source.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) path.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) removeLast.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) block.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataModelRef.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Local1 recoveredBlock114Local2 recoveredBlock114Stack0 recoveredBlock114Stack1 recoveredBlock114Stack2 recoveredBlock114Stack3 recoveredBlock114Stack4 recoveredBlock114PC recoveredBlock114Step recoveredBlock114Done recoveredBlock114Result |
    recoveredBlock114Stack0 := self.
    recoveredBlock114PC := 120.
    recoveredBlock114Done := false.
    [recoveredBlock114Done not] whileTrue: [
        recoveredBlock114Step := recoveredBlock114PC.
        recoveredBlock114Step = 120 ifTrue: [
            recoveredBlock114Stack1 := recoveredLocal2.
            recoveredBlock114PC := 123.
        ].
        recoveredBlock114Step = 123 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) sgClassKey.
            recoveredBlock114PC := 125.
        ].
        recoveredBlock114Step = 125 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) isRecord.
            recoveredBlock114PC := 127.
        ].
        recoveredBlock114Step = 127 ifTrue: [
            recoveredBlock114Local2 := recoveredBlock114Stack1.
            recoveredBlock114PC := 128.
        ].
        recoveredBlock114Step = 128 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Arg1.
            recoveredBlock114PC := 129.
        ].
        recoveredBlock114Step = 129 ifTrue: [
            recoveredBlock114Stack2 := recoveredLocal2.
            recoveredBlock114PC := 132.
        ].
        recoveredBlock114Step = 132 ifTrue: [
            recoveredBlock114Stack0 := (recoveredBlock114Stack0) dataModelRef: (recoveredBlock114Stack1) in: (recoveredBlock114Stack2).
            recoveredBlock114PC := 134.
        ].
        recoveredBlock114Step = 134 ifTrue: [
            recoveredBlock114Local1 := recoveredBlock114Stack0.
            recoveredBlock114PC := 135.
        ].
        recoveredBlock114Step = 135 ifTrue: [
            recoveredBlock114Stack0 := recoveredBlock114Local2.
            recoveredBlock114PC := 136.
        ].
        recoveredBlock114Step = 136 ifTrue: [
            (recoveredBlock114Stack0) ifTrue: [recoveredBlock114PC := 140] ifFalse: [recoveredBlock114PC := 156].
        ].
        recoveredBlock114Step = 140 ifTrue: [
            recoveredBlock114Stack0 := self.
            recoveredBlock114PC := 141.
        ].
        recoveredBlock114Step = 141 ifTrue: [
            recoveredBlock114Stack0 := (recoveredBlock114Stack0) mdlBuilder.
            recoveredBlock114PC := 143.
        ].
        recoveredBlock114Step = 143 ifTrue: [
            recoveredBlock114Stack1 := self.
            recoveredBlock114PC := 144.
        ].
        recoveredBlock114Step = 144 ifTrue: [
            recoveredBlock114Stack2 := recoveredBlock114Arg1.
            recoveredBlock114PC := 145.
        ].
        recoveredBlock114Step = 145 ifTrue: [
            recoveredBlock114Stack3 := recoveredLocal2.
            recoveredBlock114PC := 148.
        ].
        recoveredBlock114Step = 148 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) mdlElementName: (recoveredBlock114Stack2) dataModelRef: (recoveredBlock114Stack3).
            recoveredBlock114PC := 150.
        ].
        recoveredBlock114Step = 150 ifTrue: [
            (recoveredBlock114Stack0) fieldAccess: (recoveredBlock114Stack1).
            recoveredBlock114PC := 152.
        ].
        recoveredBlock114Step = 152 ifTrue: [
            recoveredBlock114PC := 176.
        ].
        recoveredBlock114Step = 156 ifTrue: [
            recoveredBlock114Stack0 := self.
            recoveredBlock114PC := 157.
        ].
        recoveredBlock114Step = 157 ifTrue: [
            recoveredBlock114Stack0 := (recoveredBlock114Stack0) mdlBuilder.
            recoveredBlock114PC := 159.
        ].
        recoveredBlock114Step = 159 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Stack0.
            recoveredBlock114PC := 160.
        ].
        recoveredBlock114Step = 160 ifTrue: [
            recoveredBlock114Stack2 := self.
            recoveredBlock114PC := 161.
        ].
        recoveredBlock114Step = 161 ifTrue: [
            recoveredBlock114Stack2 := (recoveredBlock114Stack2) source.
            recoveredBlock114PC := 163.
        ].
        recoveredBlock114Step = 163 ifTrue: [
            (recoveredBlock114Stack1) source: (recoveredBlock114Stack2).
            recoveredBlock114PC := 165.
        ].
        recoveredBlock114Step = 165 ifTrue: [
            recoveredBlock114Stack1 := self.
            recoveredBlock114PC := 166.
        ].
        recoveredBlock114Step = 166 ifTrue: [
            recoveredBlock114Stack2 := recoveredBlock114Arg1.
            recoveredBlock114PC := 167.
        ].
        recoveredBlock114Step = 167 ifTrue: [
            recoveredBlock114Stack3 := recoveredLocal2.
            recoveredBlock114PC := 170.
        ].
        recoveredBlock114Step = 170 ifTrue: [
            recoveredBlock114Stack1 := (recoveredBlock114Stack1) mdlElementName: (recoveredBlock114Stack2) dataModelRef: (recoveredBlock114Stack3).
            recoveredBlock114PC := 172.
        ].
        recoveredBlock114Step = 172 ifTrue: [
            recoveredBlock114Stack2 := 0.
            recoveredBlock114PC := 174.
        ].
        recoveredBlock114Step = 174 ifTrue: [
            (recoveredBlock114Stack0) methodCall: (recoveredBlock114Stack1) numOfArgs: (recoveredBlock114Stack2).
            recoveredBlock114PC := 176.
        ].
        recoveredBlock114Step = 176 ifTrue: [
            recoveredBlock114Stack0 := recoveredBlock114Local1.
            recoveredBlock114PC := 177.
        ].
        recoveredBlock114Step = 177 ifTrue: [
            recoveredBlock114Stack1 := recoveredBlock114Stack0.
            recoveredBlock114PC := 178.
        ].
        recoveredBlock114Step = 178 ifTrue: [
            recoveredLocal2 := recoveredBlock114Stack1.
            recoveredBlock114PC := 181.
        ].
        recoveredBlock114Step = 181 ifTrue: [
            recoveredBlock114Result := recoveredBlock114Stack0.
            recoveredBlock114Done := true.
        ].
    ].
    recoveredBlock114Result
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClassKey.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRecord.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 236].
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName: (recoveredStack2) dataModelRef: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack0) fieldAccess: (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack0) buildMdlArguments.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSelectorPort.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack0) assign.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) buildRteAccess.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredPC := 267.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack0) buildMdlArguments.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlBuilder.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack1) source: (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlName: (recoveredStack2) dataModelRef: (recoveredStack3).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := (recoveredStack2) interfaceArguments.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) methodCall: (recoveredStack1) numOfArgs: (recoveredStack2).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack0) buildRteAccess.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

