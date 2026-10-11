"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000628; bytecode file offset 0x7c7f8"
!CwWidget class methodsFor: 'recovered'!
createWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x20000634; bytecode file offset 0x7c7f8"
!CwWidget class methodsFor: 'recovered'!
createManagedWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"winsys.ic method 0x20000aac; bytecode file offset 0x7cc7c"
!CwWidget class methodsFor: 'recovered'!
strictClipping
    | recoveredValue0 |
    recoveredValue0 := StrictClipping.
    ^recoveredValue0
! !

"winsys.ic method 0x20001e24; bytecode file offset 0x7e054"
!CwWidget class methodsFor: 'recovered'!
strictClipping: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    StrictClipping := recoveredValue0.
    ^self
! !

"winsys.ic method 0x20005678; bytecode file offset 0x81844"
!CwWidget class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"winsys.ic method 0x20009d74; bytecode file offset 0x85f38"
!CwWidget class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := StrictClipping.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            StrictClipping := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x20016db4; bytecode file offset 0x92f98"
!CwWidget class methodsFor: 'recovered'!
defaultResourceSnapshotInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := CwResourceSnapshot.
    recoveredValue4 := (recoveredValue3) getSelector: ('width') setSelector: ('width:').
    (recoveredValue2) add: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    recoveredValue6 := CwResourceSnapshot.
    recoveredValue7 := (recoveredValue6) getSelector: ('height') setSelector: ('height:').
    (recoveredValue5) add: (recoveredValue7).
    ^recoveredValue1
! !

