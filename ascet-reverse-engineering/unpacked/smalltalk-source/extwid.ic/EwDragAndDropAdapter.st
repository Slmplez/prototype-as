"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"extwid.ic method 0x20000420; bytecode file offset 0x5132c"
!EwDragAndDropAdapter methodsFor: 'recovered'!
isArmed
    | recoveredValue0 |
    recoveredValue0 := (self) isRegistered.
    ^recoveredValue0
! !

"extwid.ic method 0x20001678; bytecode file offset 0x526c8"
!EwDragAndDropAdapter methodsFor: 'recovered'!
arm
    (self) configure.
    ^self
! !

"extwid.ic method 0x200017ec; bytecode file offset 0x526c8"
!EwDragAndDropAdapter methodsFor: 'recovered'!
release
    (self) disarm.
    ^self
! !

"extwid.ic method 0x20001858; bytecode file offset 0x526c8"
!EwDragAndDropAdapter methodsFor: 'recovered'!
disarm
    (self) deconfigure.
    ^self
! !

"extwid.ic method 0x20001cec; bytecode file offset 0x52b08"
!EwDragAndDropAdapter methodsFor: 'recovered'!
destroy: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    (self) deregister.
    ^self
! !

"extwid.ic method 0x2000277c; bytecode file offset 0x53678"
!EwDragAndDropAdapter methodsFor: 'recovered'!
widget
    | recoveredValue0 |
    recoveredValue0 := widget.
    ^recoveredValue0
! !

"extwid.ic method 0x20005834; bytecode file offset 0x56604"
!EwDragAndDropAdapter methodsFor: 'recovered'!
drawDuringDrag: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EwDragAndDropManager.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) drawDuringDrag: (recoveredValue2).
    ^self
! !

"extwid.ic method 0x20005908; bytecode file offset 0x566dc"
!EwDragAndDropAdapter methodsFor: 'recovered'!
widget: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    widget := recoveredValue0.
    (self) configure.
    ^self
! !

"extwid.ic method 0x200062f0; bytecode file offset 0x5710c"
!EwDragAndDropAdapter methodsFor: 'recovered'!
dragCancelCallback: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dragCancelCallback := recoveredValue0.
    ^self
! !

"extwid.ic method 0x2000bb94; bytecode file offset 0x5c988"
!EwDragAndDropAdapter methodsFor: 'recovered'!
configure
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := XmNdestroyCallback.
    (recoveredValue0) addCallback: (recoveredValue1) receiver: (self) selector: ('destroy:clientData:callData:') clientData: (nil).
    (self) register.
    ^self
! !

"extwid.ic method 0x2000bbb0; bytecode file offset 0x5c988"
!EwDragAndDropAdapter methodsFor: 'recovered'!
deconfigure
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widget.
    recoveredValue1 := XmNdestroyCallback.
    (recoveredValue0) removeCallback: (recoveredValue1) receiver: (self) selector: ('destroy:clientData:callData:') clientData: (nil).
    (self) deregister.
    ^self
! !

"extwid.ic method 0x2000c8a4; bytecode file offset 0x5d69c"
!EwDragAndDropAdapter methodsFor: 'recovered'!
removeAllCallbacks: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) perform: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) removeLast.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"extwid.ic method 0x2000c974; bytecode file offset 0x5d740"
!EwDragAndDropAdapter methodsFor: 'recovered'!
dragCancelCallback
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dragCancelCallback.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            dragCancelCallback := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := dragCancelCallback.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"extwid.ic method 0x2000e380; bytecode file offset 0x5f16c"
!EwDragAndDropAdapter methodsFor: 'recovered'!
addCallback: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := CwCallbackRec.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) perform: (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) add: (recoveredValue7).
    ^self
! !

"extwid.ic method 0x2000fc4c; bytecode file offset 0x60a78"
!EwDragAndDropAdapter methodsFor: 'recovered'!
removeCallback: recoveredArg1 receiver: recoveredArg2 selector: recoveredArg3 clientData: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := CwCallbackRec.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (recoveredValue0) receiver: (recoveredValue1) selector: (recoveredValue2) clientData: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) perform: (recoveredValue5).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := [].
    (recoveredValue6) remove: (recoveredValue7) ifAbsent: (recoveredValue8).
    ^self
! !

"extwid.ic method 0x200385c8; bytecode file offset 0x893b8"
!EwDragAndDropAdapter methodsFor: 'recovered'!
callCallbackList: recoveredArg1 callData: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock28Local1 recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28Stack4 recoveredBlock28Stack5 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal4.
            recoveredBlock28PC := 37.
        ].
        recoveredBlock28Step = 37 ifTrue: [
            recoveredBlock28Stack2 := 1.
            recoveredBlock28PC := 39.
        ].
        recoveredBlock28Step = 39 ifTrue: [
            (recoveredBlock28Stack1 ~~ recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 56] ifFalse: [recoveredBlock28PC := 42].
        ].
        recoveredBlock28Step = 42 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 45.
        ].
        recoveredBlock28Step = 45 ifTrue: [
            recoveredBlock28Stack2 := 1.
            recoveredBlock28PC := 47.
        ].
        recoveredBlock28Step = 47 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2).
            recoveredBlock28PC := 48.
        ].
        recoveredBlock28Step = 48 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 49.
        ].
        recoveredBlock28Step = 49 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg2.
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            (recoveredBlock28Stack1) callWith: (recoveredBlock28Stack2) callData: (recoveredBlock28Stack3).
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 55.
        ].
        recoveredBlock28Step = 55 ifTrue: [
            ^recoveredBlock28Stack1
        ].
        recoveredBlock28Step = 56 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal4.
            recoveredBlock28PC := 59.
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack2 := 2.
            recoveredBlock28PC := 61.
        ].
        recoveredBlock28Step = 61 ifTrue: [
            (recoveredBlock28Stack1 ~~ recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 102] ifFalse: [recoveredBlock28PC := 64].
        ].
        recoveredBlock28Step = 64 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 67.
        ].
        recoveredBlock28Step = 67 ifTrue: [
            recoveredBlock28Stack2 := 1.
            recoveredBlock28PC := 69.
        ].
        recoveredBlock28Step = 69 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2).
            recoveredBlock28PC := 70.
        ].
        recoveredBlock28Step = 70 ifTrue: [
            recoveredLocal3 := recoveredBlock28Stack1.
            recoveredBlock28PC := 73.
        ].
        recoveredBlock28Step = 73 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 76.
        ].
        recoveredBlock28Step = 76 ifTrue: [
            recoveredBlock28Stack2 := 2.
            recoveredBlock28PC := 78.
        ].
        recoveredBlock28Step = 78 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2).
            recoveredBlock28PC := 79.
        ].
        recoveredBlock28Step = 79 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 82.
        ].
        recoveredBlock28Step = 82 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal3.
            recoveredBlock28PC := 85.
        ].
        recoveredBlock28Step = 85 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 86.
        ].
        recoveredBlock28Step = 86 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg2.
            recoveredBlock28PC := 89.
        ].
        recoveredBlock28Step = 89 ifTrue: [
            (recoveredBlock28Stack1) callWith: (recoveredBlock28Stack2) callData: (recoveredBlock28Stack3).
            recoveredBlock28PC := 91.
        ].
        recoveredBlock28Step = 91 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 94.
        ].
        recoveredBlock28Step = 94 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 95.
        ].
        recoveredBlock28Step = 95 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg2.
            recoveredBlock28PC := 98.
        ].
        recoveredBlock28Step = 98 ifTrue: [
            (recoveredBlock28Stack1) callWith: (recoveredBlock28Stack2) callData: (recoveredBlock28Stack3).
            recoveredBlock28PC := 100.
        ].
        recoveredBlock28Step = 100 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 101.
        ].
        recoveredBlock28Step = 101 ifTrue: [
            ^recoveredBlock28Stack1
        ].
        recoveredBlock28Step = 102 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal4.
            recoveredBlock28PC := 105.
        ].
        recoveredBlock28Step = 105 ifTrue: [
            recoveredBlock28Stack2 := 3.
            recoveredBlock28PC := 107.
        ].
        recoveredBlock28Step = 107 ifTrue: [
            (recoveredBlock28Stack1 ~~ recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 166] ifFalse: [recoveredBlock28PC := 110].
        ].
        recoveredBlock28Step = 110 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 113.
        ].
        recoveredBlock28Step = 113 ifTrue: [
            recoveredBlock28Stack2 := 1.
            recoveredBlock28PC := 115.
        ].
        recoveredBlock28Step = 115 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2).
            recoveredBlock28PC := 116.
        ].
        recoveredBlock28Step = 116 ifTrue: [
            recoveredLocal3 := recoveredBlock28Stack1.
            recoveredBlock28PC := 119.
        ].
        recoveredBlock28Step = 119 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 122.
        ].
        recoveredBlock28Step = 122 ifTrue: [
            recoveredBlock28Stack2 := 2.
            recoveredBlock28PC := 124.
        ].
        recoveredBlock28Step = 124 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2).
            recoveredBlock28PC := 125.
        ].
        recoveredBlock28Step = 125 ifTrue: [
            recoveredLocal2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 128.
        ].
        recoveredBlock28Step = 128 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 131.
        ].
        recoveredBlock28Step = 131 ifTrue: [
            recoveredBlock28Stack2 := 3.
            recoveredBlock28PC := 133.
        ].
        recoveredBlock28Step = 133 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) at: (recoveredBlock28Stack2).
            recoveredBlock28PC := 134.
        ].
        recoveredBlock28Step = 134 ifTrue: [
            recoveredLocal1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 137.
        ].
        recoveredBlock28Step = 137 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal3.
            recoveredBlock28PC := 140.
        ].
        recoveredBlock28Step = 140 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 141.
        ].
        recoveredBlock28Step = 141 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg2.
            recoveredBlock28PC := 144.
        ].
        recoveredBlock28Step = 144 ifTrue: [
            (recoveredBlock28Stack1) callWith: (recoveredBlock28Stack2) callData: (recoveredBlock28Stack3).
            recoveredBlock28PC := 146.
        ].
        recoveredBlock28Step = 146 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal2.
            recoveredBlock28PC := 149.
        ].
        recoveredBlock28Step = 149 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 150.
        ].
        recoveredBlock28Step = 150 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg2.
            recoveredBlock28PC := 153.
        ].
        recoveredBlock28Step = 153 ifTrue: [
            (recoveredBlock28Stack1) callWith: (recoveredBlock28Stack2) callData: (recoveredBlock28Stack3).
            recoveredBlock28PC := 155.
        ].
        recoveredBlock28Step = 155 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal1.
            recoveredBlock28PC := 158.
        ].
        recoveredBlock28Step = 158 ifTrue: [
            recoveredBlock28Stack2 := self.
            recoveredBlock28PC := 159.
        ].
        recoveredBlock28Step = 159 ifTrue: [
            recoveredBlock28Stack3 := recoveredArg2.
            recoveredBlock28PC := 162.
        ].
        recoveredBlock28Step = 162 ifTrue: [
            (recoveredBlock28Stack1) callWith: (recoveredBlock28Stack2) callData: (recoveredBlock28Stack3).
            recoveredBlock28PC := 164.
        ].
        recoveredBlock28Step = 164 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 165.
        ].
        recoveredBlock28Step = 165 ifTrue: [
            ^recoveredBlock28Stack1
        ].
        recoveredBlock28Step = 166 ifTrue: [
            recoveredBlock28Stack1 := recoveredArg1.
            recoveredBlock28PC := 169.
        ].
        recoveredBlock28Step = 169 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) copy.
            recoveredBlock28PC := 170.
        ].
        recoveredBlock28Step = 170 ifTrue: [
            recoveredLocal5 := recoveredBlock28Stack1.
            recoveredBlock28PC := 173.
        ].
        recoveredBlock28Step = 173 ifTrue: [
            recoveredBlock28Stack1 := 0.
            recoveredBlock28PC := 175.
        ].
        recoveredBlock28Step = 175 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack1.
            recoveredBlock28PC := 176.
        ].
        recoveredBlock28Step = 176 ifTrue: [
            recoveredBlock28Stack1 := recoveredLocal4.
            recoveredBlock28PC := 179.
        ].
        recoveredBlock28Step = 179 ifTrue: [
            recoveredBlock28PC := 193.
        ].
        recoveredBlock28Step = 182 ifTrue: [
            recoveredBlock28Stack2 := recoveredLocal5.
            recoveredBlock28PC := 185.
        ].
        recoveredBlock28Step = 185 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Local1.
            recoveredBlock28PC := 186.
        ].
        recoveredBlock28Step = 186 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) at: (recoveredBlock28Stack3).
            recoveredBlock28PC := 187.
        ].
        recoveredBlock28Step = 187 ifTrue: [
            recoveredBlock28Stack3 := self.
            recoveredBlock28PC := 188.
        ].
        recoveredBlock28Step = 188 ifTrue: [
            recoveredBlock28Stack4 := recoveredArg2.
            recoveredBlock28PC := 191.
        ].
        recoveredBlock28Step = 191 ifTrue: [
            (recoveredBlock28Stack2) callWith: (recoveredBlock28Stack3) callData: (recoveredBlock28Stack4).
            recoveredBlock28PC := 193.
        ].
        recoveredBlock28Step = 193 ifTrue: [
            (recoveredBlock28Stack1 isInteger and: [recoveredBlock28Local1 isInteger]) ifTrue: [(recoveredBlock28Local1 + 1 <= recoveredBlock28Stack1) ifTrue: [recoveredBlock28Local1 := recoveredBlock28Local1 + 1. recoveredBlock28PC := 182] ifFalse: [recoveredBlock28Local1 := nil. recoveredBlock28PC := 207]] ifFalse: [recoveredBlock28PC := 197].
        ].
        recoveredBlock28Step = 197 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Stack1.
            recoveredBlock28PC := 198.
        ].
        recoveredBlock28Step = 198 ifTrue: [
            recoveredBlock28Stack3 := recoveredBlock28Local1.
            recoveredBlock28PC := 199.
        ].
        recoveredBlock28Step = 199 ifTrue: [
            recoveredBlock28Stack3 := (recoveredBlock28Stack3) + (1).
            recoveredBlock28PC := 200.
        ].
        recoveredBlock28Step = 200 ifTrue: [
            recoveredBlock28Stack4 := recoveredBlock28Stack3.
            recoveredBlock28PC := 201.
        ].
        recoveredBlock28Step = 201 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack4.
            recoveredBlock28PC := 202.
        ].
        recoveredBlock28Step = 202 ifTrue: [
            recoveredBlock28Stack2 := (recoveredBlock28Stack2) < (recoveredBlock28Stack3).
            recoveredBlock28PC := 203.
        ].
        recoveredBlock28Step = 203 ifTrue: [
            (recoveredBlock28Stack2) ifTrue: [recoveredBlock28PC := 205] ifFalse: [recoveredBlock28PC := 182].
        ].
        recoveredBlock28Step = 205 ifTrue: [
            recoveredBlock28Stack2 := nil.
            recoveredBlock28PC := 206.
        ].
        recoveredBlock28Step = 206 ifTrue: [
            recoveredBlock28Local1 := recoveredBlock28Stack2.
            recoveredBlock28PC := 207.
        ].
        recoveredBlock28Step = 207 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := ExAll.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack3 := [:block28005f58Arg1 | 
    | block28005f58Value0 block28005f58Value1 block28005f58Value2 block28005f58Value3 |
    block28005f58Value0 := EwDragAndDropManager.
    block28005f58Value1 := (block28005f58Value0) default.
    (block28005f58Value1) isInProgress: (false).
    block28005f58Value2 := block28005f58Arg1.
    block28005f58Value3 := (block28005f58Value2) signal.
    block28005f58Value3
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

