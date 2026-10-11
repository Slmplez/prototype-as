"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200143ac; bytecode file offset 0x912098"
!Fassade class methodsFor: 'recovered'!
catchWalkback
    | recoveredValue0 |
    recoveredValue0 := catchWalkback.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027138; bytecode file offset 0x923a44"
!Fassade class methodsFor: 'recovered'!
switchCatchWalkbackOff
    | recoveredValue0 |
    recoveredValue0 := (self) catchWalkback: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20027338; bytecode file offset 0x923d40"
!Fassade class methodsFor: 'recovered'!
switchCatchWalkbackOn
    | recoveredValue0 |
    recoveredValue0 := (self) catchWalkback: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082e08; bytecode file offset 0x97f714"
!Fassade class methodsFor: 'recovered'!
MethodCalls: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    MethodCalls := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20082e20; bytecode file offset 0x97f714"
!Fassade class methodsFor: 'recovered'!
catchWalkback: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    catchWalkback := recoveredValue1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b064c; bytecode file offset 0x9acf28"
!Fassade class methodsFor: 'recovered'!
registerOnErrorManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) startUpClass.
    recoveredValue2 := Fassade.
    (recoveredValue1) addDependent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b0664; bytecode file offset 0x9acf28"
!Fassade class methodsFor: 'recovered'!
unregisterOnErrorManager
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) startUpClass.
    recoveredValue2 := Fassade.
    (recoveredValue1) removeDependent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e5760; bytecode file offset 0x9e207c"
!Fassade class methodsFor: 'recovered'!
isCatchWalkback
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) catchWalkback.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) switchCatchWalkbackOff.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) catchWalkback.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013a118; bytecode file offset 0xa369dc"
!Fassade class methodsFor: 'recovered'!
MethodCalls
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := MethodCalls.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
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
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) MethodCalls: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := MethodCalls.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202d0a08; bytecode file offset 0xbcd2d8"
!Fassade class methodsFor: 'recovered'!
outputWalkbackToStream: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) MethodCalls.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'last known api actions:'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) MethodCalls.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Value0 recoveredBlock28Value1 recoveredBlock28Value2 recoveredBlock28Value3 recoveredBlock28Value4 |
    recoveredBlock28Value0 := recoveredArg1.
    recoveredBlock28Value1 := recoveredBlock28Value0.
    recoveredBlock28Value2 := recoveredBlock28Arg1.
    recoveredBlock28Value3 := (recoveredBlock28Value2) asString.
    (recoveredBlock28Value1) nextPutAll: (recoveredBlock28Value3).
    recoveredBlock28Value4 := (recoveredBlock28Value0) cr.
    recoveredBlock28Value4
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) reverseDo: (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

