"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20028c14; bytecode file offset 0x934580"
!Fassade methodsFor: 'recovered'!
isCatchWalkback
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) isCatchWalkback.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002aa74; bytecode file offset 0x934580"
!Fassade methodsFor: 'recovered'!
switchCatchWalkbackOff
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) switchCatchWalkbackOff.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d034; bytecode file offset 0x934580"
!Fassade methodsFor: 'recovered'!
switchCatchWalkbackOn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) switchCatchWalkbackOn.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20056578; bytecode file offset 0x9531e4"
!Fassade methodsFor: 'recovered'!
className: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) asString.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006b930; bytecode file offset 0x96873c"
!Fassade methodsFor: 'recovered'!
order
    | recoveredValue0 |
    recoveredValue0 := order.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2008801c; bytecode file offset 0x984bc0"
!Fassade methodsFor: 'recovered'!
quit
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ControlSequence.
    recoveredValue1 := (recoveredValue0) create: ('Q').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b0448; bytecode file offset 0x9acd04"
!Fassade methodsFor: 'recovered'!
isAlive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ControlSequence.
    recoveredValue1 := (recoveredValue0) create: ($A).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c2ac8; bytecode file offset 0x9bf474"
!Fassade methodsFor: 'recovered'!
order: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    order := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dbd24; bytecode file offset 0x9d85f0"
!Fassade methodsFor: 'recovered'!
initWithOrder: recoveredArg1 socket: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    (self) socket: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) order: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201b24f8; bytecode file offset 0xaaedc4"
!Fassade methodsFor: 'recovered'!
destroyObjectForId: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGObjectHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) removeFromObjectTable: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNumber: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := CebraVoid.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20200b84; bytecode file offset 0xafd464"
!Fassade methodsFor: 'recovered'!
logResult: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasLoggerInfoObject.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) location: ('ToolAPI result').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) module: ('Fassade').
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) asString.
    (recoveredValue4) message: (recoveredValue6).
    recoveredValue7 := recoveredValue1.
    recoveredValue8 := CATEGORYTYPE_INFO.
    (recoveredValue7) category: (recoveredValue8).
    (recoveredValue1) writeToLogfile.
    ^self
! !

"ASDBase.ic method 0x20206d50; bytecode file offset 0xb03620"
!Fassade methodsFor: 'recovered'!
destroy: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGObjectHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) objectTableContains: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNumber: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := SGObjectHandle.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) removeFromObjectTable: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := CebraVoid.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2021709c; bytecode file offset 0xb1396c"
!Fassade methodsFor: 'recovered'!
doOutputSandwich: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) state.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) outputMediumUserWindow.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) state: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2031605c; bytecode file offset 0xc1294c"
!Fassade methodsFor: 'recovered'!
logMethod: recoveredArg1 forClass: recoveredArg2 withArguments: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasLoggerInfoObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := EtasToolAPI.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) isKindOf: (recoveredStack4).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack4 := '>>#'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) location: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := 'Fassade'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) module: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) message: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := CATEGORYTYPE_INFO.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) category: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) writeToLogfile.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203402cc; bytecode file offset 0xc3cbb0"
!Fassade methodsFor: 'recovered'!
evaluateMethodCall
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodName.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := ErrorHandle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := 101.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorNumber: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectArguments.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) protocolApiCall: (recoveredStack1) forClass: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034d87c; bytecode file offset 0xc4a14c"
!Fassade methodsFor: 'recovered'!
deserialize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isArray.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) size.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) copyFrom: (recoveredStack5) to: (recoveredStack6).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4) startingAt: (recoveredStack5).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2039d9ac; bytecode file offset 0xc9a278"
!Fassade methodsFor: 'recovered'!
serialize: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) answer.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKeyedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 :recoveredBlock31Arg2 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 |
    recoveredBlock31Value0 := recoveredLocal1.
    recoveredBlock31Value1 := recoveredBlock31Value0.
    recoveredBlock31Value2 := recoveredBlock31Arg1.
    (recoveredBlock31Value1) catItem: (recoveredBlock31Value2).
    recoveredBlock31Value3 := recoveredBlock31Arg2.
    recoveredBlock31Value4 := (recoveredBlock31Value0) catItem: (recoveredBlock31Value3).
    recoveredBlock31Value4
].
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 |
    recoveredBlock57Value0 := recoveredLocal1.
    recoveredBlock57Value1 := recoveredBlock57Arg1.
    recoveredBlock57Value2 := (recoveredBlock57Value0) catItem: (recoveredBlock57Value1).
    recoveredBlock57Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c48b8; bytecode file offset 0xcc11a4"
!Fassade methodsFor: 'recovered'!
evaluate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 998.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'Empty Message'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) fill: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodCall.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateMethodCall.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) isControlMessage.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateControlMessage.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClassMessage.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateClassMessage.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) isObjectMessage.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) evaluateInstanceMessage.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 909.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := 'Unknown command'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) fill: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203e3d40; bytecode file offset 0xce062c"
!Fassade methodsFor: 'recovered'!
evaluateClassMessage
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Smalltalk.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNumber: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNext.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 101.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNumber: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectArguments.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) protocolApiCall: (recoveredStack1) forClass: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 73] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20403a84; bytecode file offset 0xd00378"
!Fassade methodsFor: 'recovered'!
protocolApiCall: recoveredArg1 forClass: recoveredArg2 withArguments: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) onLocalizedString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := Date.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) dateAndTimeNow.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) printString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) isAPIClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := '>>#'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) MethodCalls.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) addLast: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) MethodCalls.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 40.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 93].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) MethodCalls.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) removeFirst.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20435208; bytecode file offset 0xd31b04"
!Fassade methodsFor: 'recovered'!
evaluateControlMessage
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) controlCharacter.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'BOSCH_CC'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNext.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:block280fdba0Arg1 | 
    | block280fdba0Value0 block280fdba0Value1 |
    block280fdba0Value0 := block280fdba0Arg1.
    block280fdba0Value1 := (block280fdba0Value0) asSymbol.
    block280fdba0Value1
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 120.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := 'Facade does not understand method.'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) fill: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectArguments.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) protocolApiCall: (recoveredStack1) forClass: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 77] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := $Z.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046149c; bytecode file offset 0xd5ddb0"
!Fassade methodsFor: 'recovered'!
evaluateInstanceMessage
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGObjectHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := order.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) readNext.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) objectHandle.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFromObjectTable: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorNumber: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNext.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) respondsTo: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ErrorHandle.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 102.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 'Object does not understand method.'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) fill: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectArguments.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := ASDGeneralOptions.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionLogApiMethods.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := 'MultiInstance'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMultiInstanceMode.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) logMethod: (recoveredStack1) forClass: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) protocolApiCall: (recoveredStack1) forClass: (recoveredStack2) withArguments: (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCollection.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1) withArguments: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204dfb48; bytecode file offset 0xddc44c"
!Fassade methodsFor: 'recovered'!
collectArguments
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := order.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) readNext.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := order.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) readNext.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 57] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := ErrorHandle.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := 516.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := 'Missing argument'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) fill: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) isSGLocalHandle.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) objectHandle.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := SGObjectHandle.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) objectHandle.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) getFromObjectTable: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := ErrorHandle.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := 515.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := SGPerformerClassName.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := Smalltalk.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSymbol.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := [].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 137] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := ErrorHandle.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := (recoveredStack2) errorNumber: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            ^recoveredStack2
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 36] ifFalse: [recoveredLocal2 := nil. recoveredPC := 158]] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204fd3f0; bytecode file offset 0xdf9d20"
!Fassade methodsFor: 'recovered'!
start
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    | recoveredBlock4Local1 recoveredBlock4Local2 recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := [
    | recoveredBlock4Block10Stack0 recoveredBlock4Block10Stack1 recoveredBlock4Block10Stack2 recoveredBlock4Block10Stack3 recoveredBlock4Block10PC recoveredBlock4Block10Step recoveredBlock4Block10Done recoveredBlock4Block10Result |
    recoveredBlock4Block10Stack0 := self.
    recoveredBlock4Block10PC := 16.
    recoveredBlock4Block10Done := false.
    [recoveredBlock4Block10Done not] whileTrue: [
        recoveredBlock4Block10Step := recoveredBlock4Block10PC.
        recoveredBlock4Block10Step = 16 ifTrue: [
            recoveredBlock4Block10Stack1 := EtasCebraToolServer.
            recoveredBlock4Block10PC := 18.
        ].
        recoveredBlock4Block10Step = 18 ifTrue: [
            recoveredBlock4Block10Stack2 := 'apiClientCommandReceived'.
            recoveredBlock4Block10PC := 20.
        ].
        recoveredBlock4Block10Step = 20 ifTrue: [
            (recoveredBlock4Block10Stack1) broadcast: (recoveredBlock4Block10Stack2).
            recoveredBlock4Block10PC := 22.
        ].
        recoveredBlock4Block10Step = 22 ifTrue: [
            recoveredBlock4Block10Stack0 := (recoveredBlock4Block10Stack0) evaluateSafe.
            recoveredBlock4Block10PC := 23.
        ].
        recoveredBlock4Block10Step = 23 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Block10Stack0.
            recoveredBlock4Block10PC := 26.
        ].
        recoveredBlock4Block10Step = 26 ifTrue: [
            recoveredBlock4Block10Stack0 := EtasCebraToolServer.
            recoveredBlock4Block10PC := 28.
        ].
        recoveredBlock4Block10Step = 28 ifTrue: [
            recoveredBlock4Block10Stack1 := recoveredBlock4Local2.
            recoveredBlock4Block10PC := 31.
        ].
        recoveredBlock4Block10Step = 31 ifTrue: [
            recoveredBlock4Block10Stack1 := (recoveredBlock4Block10Stack1) isError.
            recoveredBlock4Block10PC := 33.
        ].
        recoveredBlock4Block10Step = 33 ifTrue: [
            (recoveredBlock4Block10Stack1) ifTrue: [recoveredBlock4Block10PC := 36] ifFalse: [recoveredBlock4Block10PC := 42].
        ].
        recoveredBlock4Block10Step = 36 ifTrue: [
            recoveredBlock4Block10Stack1 := 'apiClientWalkbackOccured'.
            recoveredBlock4Block10PC := 38.
        ].
        recoveredBlock4Block10Step = 38 ifTrue: [
            recoveredBlock4Block10PC := 44.
        ].
        recoveredBlock4Block10Step = 42 ifTrue: [
            recoveredBlock4Block10Stack1 := 'apiClientCommandAnswered'.
            recoveredBlock4Block10PC := 44.
        ].
        recoveredBlock4Block10Step = 44 ifTrue: [
            recoveredBlock4Block10Stack0 := (recoveredBlock4Block10Stack0) broadcast: (recoveredBlock4Block10Stack1).
            recoveredBlock4Block10PC := 45.
        ].
        recoveredBlock4Block10Step = 45 ifTrue: [
            recoveredBlock4Block10Result := recoveredBlock4Block10Stack0.
            recoveredBlock4Block10Done := true.
        ].
    ].
    recoveredBlock4Block10Result
].
            recoveredBlock4PC := 46.
        ].
        recoveredBlock4Step = 46 ifTrue: [
            (recoveredBlock4Stack0) doOutputSandwich: (recoveredBlock4Stack1).
            recoveredBlock4PC := 48.
        ].
        recoveredBlock4Step = 48 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := order.
            recoveredBlock4PC := 51.
        ].
        recoveredBlock4Step = 51 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isHandshakeMessage.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 56] ifFalse: [recoveredBlock4PC := 162].
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4PC := 57.
        ].
        recoveredBlock4Step = 57 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 60.
        ].
        recoveredBlock4Step = 60 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isCebraMessage.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 66] ifFalse: [recoveredBlock4PC := 78].
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 67.
        ].
        recoveredBlock4Step = 67 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 70.
        ].
        recoveredBlock4Step = 70 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asByteArray.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) send: (recoveredBlock4Stack1).
            recoveredBlock4PC := 74.
        ].
        recoveredBlock4Step = 74 ifTrue: [
            recoveredBlock4PC := 162.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack0 := order.
            recoveredBlock4PC := 80.
        ].
        recoveredBlock4Step = 80 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) answer.
            recoveredBlock4PC := 82.
        ].
        recoveredBlock4Step = 82 ifTrue: [
            recoveredBlock4Local1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 85.
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Stack0 := Locale.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) current.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isDBLocale.
            recoveredBlock4PC := 91.
        ].
        recoveredBlock4Step = 91 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 94] ifFalse: [recoveredBlock4PC := 114].
        ].
        recoveredBlock4Step = 94 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local2.
            recoveredBlock4PC := 97.
        ].
        recoveredBlock4Step = 97 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isString.
            recoveredBlock4PC := 99.
        ].
        recoveredBlock4Step = 99 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 102] ifFalse: [recoveredBlock4PC := 114].
        ].
        recoveredBlock4Step = 102 ifTrue: [
            recoveredBlock4Stack0 := EsLeadEncodedBytes.
            recoveredBlock4PC := 104.
        ].
        recoveredBlock4Step = 104 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 107.
        ].
        recoveredBlock4Step = 107 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) fromString: (recoveredBlock4Stack1).
            recoveredBlock4PC := 109.
        ].
        recoveredBlock4Step = 109 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) asString.
            recoveredBlock4PC := 111.
        ].
        recoveredBlock4Step = 111 ifTrue: [
            recoveredBlock4Local2 := recoveredBlock4Stack0.
            recoveredBlock4PC := 114.
        ].
        recoveredBlock4Step = 114 ifTrue: [
            recoveredBlock4Stack0 := recoveredBlock4Local1.
            recoveredBlock4PC := 117.
        ].
        recoveredBlock4Step = 117 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 120.
        ].
        recoveredBlock4Step = 120 ifTrue: [
            (recoveredBlock4Stack0) catItem: (recoveredBlock4Stack1).
            recoveredBlock4PC := 122.
        ].
        recoveredBlock4Step = 122 ifTrue: [
            recoveredBlock4Stack0 := ASDGeneralOptions.
            recoveredBlock4PC := 124.
        ].
        recoveredBlock4Step = 124 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) instance.
            recoveredBlock4PC := 126.
        ].
        recoveredBlock4Step = 126 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) optionLogApiMethods.
            recoveredBlock4PC := 128.
        ].
        recoveredBlock4Step = 128 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 132] ifFalse: [recoveredBlock4PC := 154].
        ].
        recoveredBlock4Step = 132 ifTrue: [
            recoveredBlock4Stack0 := 'MultiInstance'.
            recoveredBlock4PC := 134.
        ].
        recoveredBlock4Step = 134 ifTrue: [
            recoveredBlock4Stack1 := 'Kk'.
            recoveredBlock4PC := 136.
        ].
        recoveredBlock4Step = 136 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) == (recoveredBlock4Stack1).
            recoveredBlock4PC := 137.
        ].
        recoveredBlock4Step = 137 ifTrue: [
            recoveredBlock4PC := 138.
        ].
        recoveredBlock4Step = 138 ifTrue: [
            recoveredBlock4Stack0 := ASDAscetController.
            recoveredBlock4PC := 140.
        ].
        recoveredBlock4Step = 140 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) instance.
            recoveredBlock4PC := 142.
        ].
        recoveredBlock4Step = 142 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) isMultiInstanceMode.
            recoveredBlock4PC := 144.
        ].
        recoveredBlock4Step = 144 ifTrue: [
            (recoveredBlock4Stack0) ifTrue: [recoveredBlock4PC := 154] ifFalse: [recoveredBlock4PC := 148].
        ].
        recoveredBlock4Step = 148 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 149.
        ].
        recoveredBlock4Step = 149 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local2.
            recoveredBlock4PC := 152.
        ].
        recoveredBlock4Step = 152 ifTrue: [
            (recoveredBlock4Stack0) logResult: (recoveredBlock4Stack1).
            recoveredBlock4PC := 154.
        ].
        recoveredBlock4Step = 154 ifTrue: [
            recoveredBlock4Stack0 := self.
            recoveredBlock4PC := 155.
        ].
        recoveredBlock4Step = 155 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Local1.
            recoveredBlock4PC := 158.
        ].
        recoveredBlock4Step = 158 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asByteArray.
            recoveredBlock4PC := 160.
        ].
        recoveredBlock4Step = 160 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) send: (recoveredBlock4Stack1).
            recoveredBlock4PC := 162.
        ].
        recoveredBlock4Step = 162 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredValue1 := (recoveredValue0) value.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ('Kk') == ('Call_67274').
    ^self
! !

"ASDBase.ic method 0x20522f48; bytecode file offset 0xe1f888"
!Fassade methodsFor: 'recovered'!
evaluateSafe
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block2810c5c4Arg1 | 
    | block2810c5c4Local1 block2810c5c4Local2 block2810c5c4Local3 block2810c5c4Stack0 block2810c5c4Stack1 block2810c5c4Stack2 block2810c5c4Stack3 block2810c5c4Stack4 block2810c5c4Stack5 block2810c5c4Stack6 block2810c5c4PC block2810c5c4Step block2810c5c4Done block2810c5c4Result |
    block2810c5c4Stack0 := self.
    block2810c5c4PC := 4.
    block2810c5c4Done := false.
    [block2810c5c4Done not] whileTrue: [
        block2810c5c4Step := block2810c5c4PC.
        block2810c5c4Step = 4 ifTrue: [
            block2810c5c4Stack1 := System.
            block2810c5c4PC := 6.
        ].
        block2810c5c4Step = 6 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) isRuntime.
            block2810c5c4PC := 7.
        ].
        block2810c5c4Step = 7 ifTrue: [
            (block2810c5c4Stack1) ifTrue: [block2810c5c4PC := 28] ifFalse: [block2810c5c4PC := 10].
        ].
        block2810c5c4Step = 10 ifTrue: [
            block2810c5c4Stack1 := Smalltalk.
            block2810c5c4PC := 12.
        ].
        block2810c5c4Step = 12 ifTrue: [
            block2810c5c4Stack2 := 'GlobalSUnitModeKey'.
            block2810c5c4PC := 14.
        ].
        block2810c5c4Step = 14 ifTrue: [
            block2810c5c4Stack3 := [
    false
].
            block2810c5c4PC := 16.
        ].
        block2810c5c4Step = 16 ifTrue: [
            block2810c5c4PC := 22.
        ].
        block2810c5c4Step = 22 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) at: (block2810c5c4Stack2) ifAbsent: (block2810c5c4Stack3).
            block2810c5c4PC := 24.
        ].
        block2810c5c4Step = 24 ifTrue: [
            (block2810c5c4Stack1) ifTrue: [block2810c5c4PC := 28] ifFalse: [block2810c5c4PC := 104].
        ].
        block2810c5c4Step = 28 ifTrue: [
            block2810c5c4Stack1 := block2810c5c4Arg1.
            block2810c5c4PC := 29.
        ].
        block2810c5c4Step = 29 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) arguments.
            block2810c5c4PC := 31.
        ].
        block2810c5c4Step = 31 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) notEmpty.
            block2810c5c4PC := 33.
        ].
        block2810c5c4Step = 33 ifTrue: [
            (block2810c5c4Stack1) ifTrue: [block2810c5c4PC := 36] ifFalse: [block2810c5c4PC := 50].
        ].
        block2810c5c4Step = 36 ifTrue: [
            block2810c5c4Stack1 := block2810c5c4Arg1.
            block2810c5c4PC := 37.
        ].
        block2810c5c4Step = 37 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) argument.
            block2810c5c4PC := 39.
        ].
        block2810c5c4Step = 39 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) isString.
            block2810c5c4PC := 41.
        ].
        block2810c5c4Step = 41 ifTrue: [
            (block2810c5c4Stack1) ifTrue: [block2810c5c4PC := 44] ifFalse: [block2810c5c4PC := 50].
        ].
        block2810c5c4Step = 44 ifTrue: [
            block2810c5c4Stack1 := block2810c5c4Arg1.
            block2810c5c4PC := 45.
        ].
        block2810c5c4Step = 45 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) argument.
            block2810c5c4PC := 47.
        ].
        block2810c5c4Step = 47 ifTrue: [
            block2810c5c4PC := 53.
        ].
        block2810c5c4Step = 50 ifTrue: [
            block2810c5c4Stack1 := block2810c5c4Arg1.
            block2810c5c4PC := 51.
        ].
        block2810c5c4Step = 51 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) description.
            block2810c5c4PC := 53.
        ].
        block2810c5c4Step = 53 ifTrue: [
            block2810c5c4Local3 := block2810c5c4Stack1.
            block2810c5c4PC := 54.
        ].
        block2810c5c4Step = 54 ifTrue: [
            block2810c5c4Stack1 := Processor.
            block2810c5c4PC := 56.
        ].
        block2810c5c4Step = 56 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) activeProcess.
            block2810c5c4PC := 58.
        ].
        block2810c5c4Step = 58 ifTrue: [
            block2810c5c4Local1 := block2810c5c4Stack1.
            block2810c5c4PC := 59.
        ].
        block2810c5c4Step = 59 ifTrue: [
            block2810c5c4Stack1 := System.
            block2810c5c4PC := 61.
        ].
        block2810c5c4Step = 61 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) startUpClass.
            block2810c5c4PC := 63.
        ].
        block2810c5c4Step = 63 ifTrue: [
            block2810c5c4Stack2 := block2810c5c4Local1.
            block2810c5c4PC := 64.
        ].
        block2810c5c4Step = 64 ifTrue: [
            block2810c5c4Stack3 := block2810c5c4Local3.
            block2810c5c4PC := 65.
        ].
        block2810c5c4Step = 65 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) walkbackFileNameForProcess: (block2810c5c4Stack2) signalDescription: (block2810c5c4Stack3).
            block2810c5c4PC := 67.
        ].
        block2810c5c4Step = 67 ifTrue: [
            block2810c5c4Local2 := block2810c5c4Stack1.
            block2810c5c4PC := 68.
        ].
        block2810c5c4Step = 68 ifTrue: [
            block2810c5c4Stack1 := System.
            block2810c5c4PC := 70.
        ].
        block2810c5c4Step = 70 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) startUpClass.
            block2810c5c4PC := 72.
        ].
        block2810c5c4Step = 72 ifTrue: [
            block2810c5c4Stack2 := block2810c5c4Local3.
            block2810c5c4PC := 73.
        ].
        block2810c5c4Step = 73 ifTrue: [
            block2810c5c4Stack3 := block2810c5c4Local1.
            block2810c5c4PC := 74.
        ].
        block2810c5c4Step = 74 ifTrue: [
            block2810c5c4Stack4 := block2810c5c4Local2.
            block2810c5c4PC := 75.
        ].
        block2810c5c4Step = 75 ifTrue: [
            (block2810c5c4Stack1) outputWalkbackIntoSeperateFile: (block2810c5c4Stack2) process: (block2810c5c4Stack3) uniqueFileName: (block2810c5c4Stack4).
            block2810c5c4PC := 78.
        ].
        block2810c5c4Step = 78 ifTrue: [
            block2810c5c4Stack1 := block2810c5c4Arg1.
            block2810c5c4PC := 79.
        ].
        block2810c5c4Step = 79 ifTrue: [
            block2810c5c4Stack2 := ErrorHandle.
            block2810c5c4PC := 81.
        ].
        block2810c5c4Step = 81 ifTrue: [
            block2810c5c4Stack2 := (block2810c5c4Stack2) new.
            block2810c5c4PC := 83.
        ].
        block2810c5c4Step = 83 ifTrue: [
            block2810c5c4Stack3 := 999.
            block2810c5c4PC := 86.
        ].
        block2810c5c4Step = 86 ifTrue: [
            block2810c5c4Stack4 := 'Walkback occurred in Tool API (%1)'.
            block2810c5c4PC := 88.
        ].
        block2810c5c4Step = 88 ifTrue: [
            block2810c5c4Stack5 := block2810c5c4Local2.
            block2810c5c4PC := 89.
        ].
        block2810c5c4Step = 89 ifTrue: [
            block2810c5c4Stack4 := (block2810c5c4Stack4) bindWith: (block2810c5c4Stack5).
            block2810c5c4PC := 91.
        ].
        block2810c5c4Step = 91 ifTrue: [
            block2810c5c4Stack2 := (block2810c5c4Stack2) fill: (block2810c5c4Stack3) with: (block2810c5c4Stack4).
            block2810c5c4PC := 93.
        ].
        block2810c5c4Step = 93 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) exitWith: (block2810c5c4Stack2).
            block2810c5c4PC := 95.
        ].
        block2810c5c4Step = 95 ifTrue: [
            block2810c5c4Stack2 := nil.
            block2810c5c4PC := 96.
        ].
        block2810c5c4Step = 96 ifTrue: [
            block2810c5c4Stack3 := block2810c5c4Stack2.
            block2810c5c4PC := 97.
        ].
        block2810c5c4Step = 97 ifTrue: [
            block2810c5c4Local3 := block2810c5c4Stack3.
            block2810c5c4PC := 98.
        ].
        block2810c5c4Step = 98 ifTrue: [
            block2810c5c4Stack3 := block2810c5c4Stack2.
            block2810c5c4PC := 99.
        ].
        block2810c5c4Step = 99 ifTrue: [
            block2810c5c4Local2 := block2810c5c4Stack3.
            block2810c5c4PC := 100.
        ].
        block2810c5c4Step = 100 ifTrue: [
            block2810c5c4Local1 := block2810c5c4Stack2.
            block2810c5c4PC := 101.
        ].
        block2810c5c4Step = 101 ifTrue: [
            block2810c5c4PC := 107.
        ].
        block2810c5c4Step = 104 ifTrue: [
            block2810c5c4Stack1 := block2810c5c4Arg1.
            block2810c5c4PC := 105.
        ].
        block2810c5c4Step = 105 ifTrue: [
            block2810c5c4Stack1 := (block2810c5c4Stack1) signal.
            block2810c5c4PC := 107.
        ].
        block2810c5c4Step = 107 ifTrue: [
            block2810c5c4Result := block2810c5c4Stack1.
            block2810c5c4Done := true.
        ].
    ].
    block2810c5c4Result
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCatchWalkback.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := (recoveredStack0) evaluate.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock126Value0 |
    recoveredBlock126Value0 := (self) evaluate.
    recoveredBlock126Value0
].
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := ExCPMStackOverflow.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := ExError.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack5 := ExHalt.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack6 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Stack0 recoveredBlock147Stack1 recoveredBlock147Stack2 recoveredBlock147Stack3 recoveredBlock147PC recoveredBlock147Step recoveredBlock147Done recoveredBlock147Result |
    recoveredBlock147Stack0 := self.
    recoveredBlock147PC := 154.
    recoveredBlock147Done := false.
    [recoveredBlock147Done not] whileTrue: [
        recoveredBlock147Step := recoveredBlock147PC.
        recoveredBlock147Step = 154 ifTrue: [
            recoveredBlock147Stack1 := recoveredBlock147Arg1.
            recoveredBlock147PC := 155.
        ].
        recoveredBlock147Step = 155 ifTrue: [
            recoveredBlock147Stack1 := (recoveredBlock147Stack1) arguments.
            recoveredBlock147PC := 157.
        ].
        recoveredBlock147Step = 157 ifTrue: [
            recoveredBlock147Stack1 := (recoveredBlock147Stack1) notEmpty.
            recoveredBlock147PC := 159.
        ].
        recoveredBlock147Step = 159 ifTrue: [
            (recoveredBlock147Stack1) ifTrue: [recoveredBlock147PC := 162] ifFalse: [recoveredBlock147PC := 180].
        ].
        recoveredBlock147Step = 162 ifTrue: [
            recoveredBlock147Stack1 := 'Breakpoint*'.
            recoveredBlock147PC := 164.
        ].
        recoveredBlock147Step = 164 ifTrue: [
            recoveredBlock147Stack2 := recoveredBlock147Arg1.
            recoveredBlock147PC := 165.
        ].
        recoveredBlock147Step = 165 ifTrue: [
            recoveredBlock147Stack2 := (recoveredBlock147Stack2) arguments.
            recoveredBlock147PC := 167.
        ].
        recoveredBlock147Step = 167 ifTrue: [
            recoveredBlock147Stack2 := (recoveredBlock147Stack2) first.
            recoveredBlock147PC := 169.
        ].
        recoveredBlock147Step = 169 ifTrue: [
            recoveredBlock147Stack1 := (recoveredBlock147Stack1) match: (recoveredBlock147Stack2).
            recoveredBlock147PC := 171.
        ].
        recoveredBlock147Step = 171 ifTrue: [
            (recoveredBlock147Stack1) ifTrue: [recoveredBlock147PC := 174] ifFalse: [recoveredBlock147PC := 180].
        ].
        recoveredBlock147Step = 174 ifTrue: [
            recoveredBlock147Stack1 := recoveredBlock147Arg1.
            recoveredBlock147PC := 175.
        ].
        recoveredBlock147Step = 175 ifTrue: [
            recoveredBlock147Stack1 := (recoveredBlock147Stack1) signal.
            recoveredBlock147PC := 177.
        ].
        recoveredBlock147Step = 177 ifTrue: [
            recoveredBlock147PC := 186.
        ].
        recoveredBlock147Step = 180 ifTrue: [
            recoveredBlock147Stack1 := recoveredLocal1.
            recoveredBlock147PC := 183.
        ].
        recoveredBlock147Step = 183 ifTrue: [
            recoveredBlock147Stack2 := recoveredBlock147Arg1.
            recoveredBlock147PC := 184.
        ].
        recoveredBlock147Step = 184 ifTrue: [
            recoveredBlock147Stack1 := (recoveredBlock147Stack1) value: (recoveredBlock147Stack2).
            recoveredBlock147PC := 186.
        ].
        recoveredBlock147Step = 186 ifTrue: [
            recoveredBlock147Result := recoveredBlock147Stack1.
            recoveredBlock147Done := true.
        ].
    ].
    recoveredBlock147Result
].
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack7 := ExUserBreak.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) when: (recoveredStack1) do: (recoveredStack2) when: (recoveredStack3) do: (recoveredStack4) when: (recoveredStack5) do: (recoveredStack6) when: (recoveredStack7) do: (recoveredStack8).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

