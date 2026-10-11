"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a310; bytecode file offset 0x908be4"
!AbtMRI class methodsFor: 'recovered'!
empty
    | recoveredValue0 |
    recoveredValue0 := (self) new.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200143a0; bytecode file offset 0x912098"
!AbtMRI class methodsFor: 'recovered'!
messageHelpBlockSelector
    | recoveredValue0 |
    recoveredValue0 := MessageHelpBlockSelector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014934; bytecode file offset 0x912098"
!AbtMRI class methodsFor: 'recovered'!
displayStringSelector
    | recoveredValue0 |
    recoveredValue0 := DisplayStringSelector.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200184d0; bytecode file offset 0x92209c"
!AbtMRI class methodsFor: 'recovered'!
defaultMessageHelpBlockSelector
    ^'nonUiMessageHelpBlock:'
! !

"ASDBase.ic method 0x2001e7d0; bytecode file offset 0x92209c"
!AbtMRI class methodsFor: 'recovered'!
supportedTypeCharacters
    ^'iweq'
! !

"ASDBase.ic method 0x20023cf0; bytecode file offset 0x92209c"
!AbtMRI class methodsFor: 'recovered'!
defaultDisplayStringSelector
    ^'nonUiDisplaySimpleString:buttonType:'
! !

"ASDBase.ic method 0x2005414c; bytecode file offset 0x951190"
!AbtMRI class methodsFor: 'recovered'!
displayStringSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    DisplayStringSelector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200548b4; bytecode file offset 0x951190"
!AbtMRI class methodsFor: 'recovered'!
messageHelpBlockSelector: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MessageHelpBlockSelector := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20080960; bytecode file offset 0x97d214"
!AbtMRI class methodsFor: 'recovered'!
defaultTypeCharacter
    ^$i
! !

"ASDBase.ic method 0x2008d154; bytecode file offset 0x989db0"
!AbtMRI class methodsFor: 'recovered'!
restoreDefaultMessageHelpBlockSelector
    | recoveredValue0 |
    recoveredValue0 := (self) defaultMessageHelpBlockSelector.
    (self) messageHelpBlockSelector: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2008d484; bytecode file offset 0x989db0"
!AbtMRI class methodsFor: 'recovered'!
restoreDefaultDisplayStringSelector
    | recoveredValue0 |
    recoveredValue0 := (self) defaultDisplayStringSelector.
    (self) displayStringSelector: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20091164; bytecode file offset 0x98de70"
!AbtMRI class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super new.
    recoveredValue1 := (recoveredValue0) initialize.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200a07f0; bytecode file offset 0x99d3ac"
!AbtMRI class methodsFor: 'recovered'!
initializeClassData
    (self) restoreDefaultDisplayStringSelector.
    (self) restoreDefaultMessageHelpBlockSelector.
    ^self
! !

"ASDBase.ic method 0x200acf10; bytecode file offset 0x9a97dc"
!AbtMRI class methodsFor: 'recovered'!
string: recoveredArg1 withAnnotation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) , (': ').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2016133c; bytecode file offset 0xa5dc00"
!AbtMRI class methodsFor: 'recovered'!
initializeClassDataIfEmpty
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultDisplayStringSelector.
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
            (recoveredStack0) restoreDefaultDisplayStringSelector.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultMessageHelpBlockSelector.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) restoreDefaultMessageHelpBlockSelector.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20179d98; bytecode file offset 0xa7667c"
!AbtMRI class methodsFor: 'recovered'!
group: recoveredArg1 id: recoveredArg2 type: recoveredArg3 string: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) group: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) id: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) type: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg4.
    (recoveredValue7) string: (recoveredValue8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20293b08; bytecode file offset 0xb903d8"
!AbtMRI class methodsFor: 'recovered'!
missingId: recoveredArg1 withinGroup: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriID.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriID.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '[%1.%2 ]  %2 is not a valid message number within %1.'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriID.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := $e.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) replace: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) group: (recoveredStack1) id: (recoveredStack2) type: (recoveredStack3) string: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20293b58; bytecode file offset 0xb90428"
!AbtMRI class methodsFor: 'recovered'!
missingGroup: recoveredArg1 id: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriGroup.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriGroup.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '[%1.%2 ]  %1 is not a registered message group.'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriGroup.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := $e.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) replace: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) group: (recoveredStack1) id: (recoveredStack2) type: (recoveredStack3) string: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a6400; bytecode file offset 0xba2cd0"
!AbtMRI class methodsFor: 'recovered'!
ioError: recoveredArg1 group: recoveredArg2 id: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriIOError.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriIOError.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := '[%1.%2 ]  An error occurred while reading the message file. %3'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := AbtNlsMissingMriIOError.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := $e.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack5 := Array.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack6 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack7 := recoveredArg3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack8 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack5 := (recoveredStack5) with: (recoveredStack6) with: (recoveredStack7) with: (recoveredStack8).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) replace: (recoveredStack5).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) group: (recoveredStack1) id: (recoveredStack2) type: (recoveredStack3) string: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

