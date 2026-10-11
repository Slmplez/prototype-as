"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000018; bytecode file offset 0x7c350"
!CwExtendedWidget methodsFor: 'recovered'!
initializeResources
    ^self
! !

"winsys.ic method 0x20000028; bytecode file offset 0x7c350"
!CwExtendedWidget methodsFor: 'recovered'!
initializeAfterCreate
    ^self
! !

"winsys.ic method 0x20000058; bytecode file offset 0x7c350"
!CwExtendedWidget methodsFor: 'recovered'!
initialize
    ^self
! !

"winsys.ic method 0x200000e0; bytecode file offset 0x7c350"
!CwExtendedWidget methodsFor: 'recovered'!
createWidgetSystem
    ^self
! !

"winsys.ic method 0x20000610; bytecode file offset 0x7c7f8"
!CwExtendedWidget methodsFor: 'recovered'!
createPrimaryWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x20000f64; bytecode file offset 0x7d33c"
!CwExtendedWidget methodsFor: 'recovered'!
setInputFocus
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) setInputFocus.
    ^recoveredValue1
! !

"winsys.ic method 0x20000fb4; bytecode file offset 0x7d33c"
!CwExtendedWidget methodsFor: 'recovered'!
preferredExtent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) preferredExtent.
    ^recoveredValue1
! !

"winsys.ic method 0x20001064; bytecode file offset 0x7d33c"
!CwExtendedWidget methodsFor: 'recovered'!
backgroundColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) backgroundColor.
    ^recoveredValue1
! !

"winsys.ic method 0x20001094; bytecode file offset 0x7d33c"
!CwExtendedWidget methodsFor: 'recovered'!
traversalOn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) traversalOn.
    ^recoveredValue1
! !

"winsys.ic method 0x200010c4; bytecode file offset 0x7d33c"
!CwExtendedWidget methodsFor: 'recovered'!
sensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) sensitive.
    ^recoveredValue1
! !

"winsys.ic method 0x20001134; bytecode file offset 0x7d33c"
!CwExtendedWidget methodsFor: 'recovered'!
foregroundColor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := (recoveredValue0) foregroundColor.
    ^recoveredValue1
! !

"winsys.ic method 0x200027d4; bytecode file offset 0x7ea1c"
!CwExtendedWidget methodsFor: 'recovered'!
addTabGroup
    | recoveredValue0 |
    recoveredValue0 := (self) primaryWidget.
    (recoveredValue0) addTabGroup.
    ^self
! !

"winsys.ic method 0x20002844; bytecode file offset 0x7ea1c"
!CwExtendedWidget methodsFor: 'recovered'!
removeTabGroup
    | recoveredValue0 |
    recoveredValue0 := (self) primaryWidget.
    (recoveredValue0) removeTabGroup.
    ^self
! !

"winsys.ic method 0x20002c20; bytecode file offset 0x7efc0"
!CwExtendedWidget methodsFor: 'recovered'!
primaryWidget
    | recoveredValue0 |
    recoveredValue0 := ewPrimaryWidget.
    ^recoveredValue0
! !

"winsys.ic method 0x20002e88; bytecode file offset 0x7f220"
!CwExtendedWidget methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := ewName.
    ^recoveredValue0
! !

"winsys.ic method 0x200030a0; bytecode file offset 0x7f418"
!CwExtendedWidget methodsFor: 'recovered'!
isCreated
    | recoveredValue0 |
    recoveredValue0 := ewIsCreated.
    ^recoveredValue0
! !

"winsys.ic method 0x20003340; bytecode file offset 0x7f5b8"
!CwExtendedWidget methodsFor: 'recovered'!
parent
    | recoveredValue0 |
    recoveredValue0 := ewParent.
    ^recoveredValue0
! !

"winsys.ic method 0x20004788; bytecode file offset 0x80960"
!CwExtendedWidget methodsFor: 'recovered'!
primaryWidgetCreateArgBlock
    ^nil
! !

"winsys.ic method 0x200058e0; bytecode file offset 0x81db8"
!CwExtendedWidget methodsFor: 'recovered'!
helpCallback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) helpCallback: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20005990; bytecode file offset 0x81db8"
!CwExtendedWidget methodsFor: 'recovered'!
foregroundColor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) foregroundColor: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x200059b0; bytecode file offset 0x81db8"
!CwExtendedWidget methodsFor: 'recovered'!
setSensitive: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setSensitive: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20005ae0; bytecode file offset 0x81db8"
!CwExtendedWidget methodsFor: 'recovered'!
sensitive: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) sensitive: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20005bc0; bytecode file offset 0x81db8"
!CwExtendedWidget methodsFor: 'recovered'!
traversalOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) traversalOn: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x20005be0; bytecode file offset 0x81db8"
!CwExtendedWidget methodsFor: 'recovered'!
backgroundColor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) backgroundColor: (recoveredValue1).
    ^self
! !

"winsys.ic method 0x200073dc; bytecode file offset 0x836b4"
!CwExtendedWidget methodsFor: 'recovered'!
primaryWidget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewPrimaryWidget := recoveredValue0.
    ^self
! !

"winsys.ic method 0x200076ec; bytecode file offset 0x838d4"
!CwExtendedWidget methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewName := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000784c; bytecode file offset 0x83a6c"
!CwExtendedWidget methodsFor: 'recovered'!
isCreated: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewIsCreated := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20007988; bytecode file offset 0x83bb0"
!CwExtendedWidget methodsFor: 'recovered'!
parent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ewParent := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000a97c; bytecode file offset 0x86b64"
!CwExtendedWidget methodsFor: 'recovered'!
addEventHandler: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) addEventHandler: (recoveredValue1) receiver: (recoveredValue2) selector: (recoveredValue3) clientData: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x2000a99c; bytecode file offset 0x86b64"
!CwExtendedWidget methodsFor: 'recovered'!
removeEventHandler: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) removeEventHandler: (recoveredValue1) receiver: (recoveredValue2) selector: (recoveredValue3) clientData: (recoveredValue4).
    ^self
! !

"winsys.ic method 0x2000b74c; bytecode file offset 0x87914"
!CwExtendedWidget methodsFor: 'recovered'!
isMapped
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMapped.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000c9bc; bytecode file offset 0x88b88"
!CwExtendedWidget methodsFor: 'recovered'!
extCallbackListFor: recoveredArg1 ifNone: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2000ee08; bytecode file offset 0x8afd4"
!CwExtendedWidget methodsFor: 'recovered'!
setValuesBlock: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryWidget.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredArg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) value: (self).
    recoveredBlock5Value1
].
    recoveredValue2 := (recoveredValue0) setValuesBlock: (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x2001db98; bytecode file offset 0x99d78"
!CwExtendedWidget methodsFor: 'recovered'!
initialize: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    (self) name: (recoveredValue0).
    (self) isCreated: (false).
    recoveredValue1 := recoveredArg2.
    (self) parent: (recoveredValue1).
    (self) initializeResources.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) primaryWidgetCreateArgBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := recoveredLocal1.
    (self) createPrimaryWidget: (recoveredValue4) parent: (recoveredValue5) argBlock: (recoveredValue6).
    (self) createWidgetSystem.
    (self) isCreated: (true).
    (self) initializeAfterCreate.
    ^self
! !

"winsys.ic method 0x2001e06c; bytecode file offset 0x9a240"
!CwExtendedWidget methodsFor: 'recovered'!
removeAllCallbacks: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := (self) primaryWidget.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := (recoveredBlock7Value0) removeAllCallbacks: (recoveredBlock7Value1).
    ^recoveredBlock7Value2
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) extCallbackListFor: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) removeLast.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001ed28; bytecode file offset 0x9aefc"
!CwExtendedWidget methodsFor: 'recovered'!
callCallbacks: recoveredArg1 callData: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 |
    recoveredBlock7Value0 := (self) primaryWidget.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := recoveredArg2.
    recoveredBlock7Value3 := (recoveredBlock7Value0) callCallbacks: (recoveredBlock7Value1) callData: (recoveredBlock7Value2).
    ^recoveredBlock7Value3
].
    recoveredValue2 := (self) extCallbackListFor: (recoveredValue0) ifNone: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock26Arg1 | 
    | recoveredBlock26Value0 recoveredBlock26Value1 recoveredBlock26Value2 |
    recoveredBlock26Value0 := recoveredBlock26Arg1.
    recoveredBlock26Value1 := recoveredArg2.
    recoveredBlock26Value2 := (recoveredBlock26Value0) callWith: (self) callData: (recoveredBlock26Value1).
    recoveredBlock26Value2
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"winsys.ic method 0x2001ef3c; bytecode file offset 0x9b108"
!CwExtendedWidget methodsFor: 'recovered'!
primaryWidgetCreateArgBlock: recoveredArg1
    | recoveredLocal1 recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            (recoveredBlock4Stack0) primaryWidget: (recoveredBlock4Stack1).
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 16.
        ].
        recoveredBlock4Step = 16 ifTrue: [
            (recoveredBlock4Stack0 == nil) ifTrue: [recoveredBlock4PC := 26] ifFalse: [recoveredBlock4PC := 20].
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack0 := recoveredArg1.
            recoveredBlock4PC := 23.
        ].
        recoveredBlock4Step = 23 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 24.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 26.
        ].
        recoveredBlock4Step = 26 ifTrue: [
            recoveredBlock4Stack0 := nil.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) primaryWidgetCreateArgBlock.
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Stack1.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack2.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            (recoveredBlock4Stack1 == nil) ifTrue: [recoveredBlock4PC := 42] ifFalse: [recoveredBlock4PC := 36].
        ].
        recoveredBlock4Step = 36 ifTrue: [
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 41.
        ].
        recoveredBlock4Step = 41 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) value: (recoveredBlock4Stack1).
            recoveredBlock4PC := 42.
        ].
        recoveredBlock4Step = 42 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    ^recoveredValue0
! !

"winsys.ic method 0x20021dd8; bytecode file offset 0x9dfb0"
!CwExtendedWidget methodsFor: 'recovered'!
addCallback: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 |
    recoveredBlock7Value0 := (self) primaryWidget.
    recoveredBlock7Value1 := recoveredArg1.
    recoveredBlock7Value2 := recoveredArg2.
    recoveredBlock7Value3 := recoveredArg3.
    recoveredBlock7Value4 := recoveredArg4.
    recoveredBlock7Value5 := (recoveredBlock7Value0) addCallback: (recoveredBlock7Value1) receiver: (recoveredBlock7Value2) selector: (recoveredBlock7Value3) clientData: (recoveredBlock7Value4).
    ^recoveredBlock7Value5
].
    recoveredValue2 := (self) extCallbackListFor: (recoveredValue0) ifNone: (recoveredValue1).
    recoveredValue3 := CwCallbackRec.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    recoveredValue6 := recoveredArg4.
    recoveredValue7 := (recoveredValue3) receiver: (recoveredValue4) selector: (recoveredValue5) clientData: (recoveredValue6).
    (recoveredValue2) add: (recoveredValue7).
    ^self
! !

"winsys.ic method 0x20024350; bytecode file offset 0xa052c"
!CwExtendedWidget methodsFor: 'recovered'!
removeCallback: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CwCallbackRec.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 recoveredBlock24Value4 recoveredBlock24Value5 |
    recoveredBlock24Value0 := (self) primaryWidget.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := recoveredArg2.
    recoveredBlock24Value3 := recoveredArg3.
    recoveredBlock24Value4 := recoveredArg4.
    recoveredBlock24Value5 := (recoveredBlock24Value0) removeCallback: (recoveredBlock24Value1) receiver: (recoveredBlock24Value2) selector: (recoveredBlock24Value3) clientData: (recoveredBlock24Value4).
    ^recoveredBlock24Value5
].
    recoveredValue7 := (self) extCallbackListFor: (recoveredValue5) ifNone: (recoveredValue6).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := [].
    (recoveredValue7) remove: (recoveredValue8) ifAbsent: (recoveredValue9).
    ^self
! !

