"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003c650; bytecode file offset 0x938f08"
!RBErrorController methodsFor: 'recovered'!
getContext
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 |
    ^''
! !

"ASDBase.ic method 0x2004eaec; bytecode file offset 0x94d048"
!RBErrorController methodsFor: 'recovered'!
noDefault
    (self) clearDefault.
    ^self
! !

"ASDBase.ic method 0x200665f4; bytecode file offset 0x963428"
!RBErrorController methodsFor: 'recovered'!
controller
    | recoveredValue0 |
    recoveredValue0 := view.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069c60; bytecode file offset 0x966bdc"
!RBErrorController methodsFor: 'recovered'!
product
    | recoveredValue0 |
    recoveredValue0 := product.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072368; bytecode file offset 0x96ee04"
!RBErrorController methodsFor: 'recovered'!
bitDebug
    ^1
! !

"ASDBase.ic method 0x20072690; bytecode file offset 0x96f1c4"
!RBErrorController methodsFor: 'recovered'!
bitDisplay
    ^2
! !

"ASDBase.ic method 0x20072d38; bytecode file offset 0x96f6d4"
!RBErrorController methodsFor: 'recovered'!
bitTranscript
    ^4
! !

"ASDBase.ic method 0x200744bc; bytecode file offset 0x970de8"
!RBErrorController methodsFor: 'recovered'!
bitDefault
    ^8
! !

"ASDBase.ic method 0x200a8624; bytecode file offset 0x9a4f24"
!RBErrorController methodsFor: 'recovered'!
initializeFor: recoveredArg1
    | recoveredValue0 |
    (self) initialize.
    recoveredValue0 := recoveredArg1.
    product := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8c48; bytecode file offset 0x9c5684"
!RBErrorController methodsFor: 'recovered'!
message: recoveredArg1 advice: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getContext.
    recoveredValue3 := (self) message: (recoveredValue0) advice: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8c98; bytecode file offset 0x9c5684"
!RBErrorController methodsFor: 'recovered'!
warning: recoveredArg1 advice: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getContext.
    recoveredValue3 := (self) warning: (recoveredValue0) advice: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8d08; bytecode file offset 0x9c5684"
!RBErrorController methodsFor: 'recovered'!
confirm: recoveredArg1 advice: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getContext.
    recoveredValue3 := (self) confirm: (recoveredValue0) advice: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8d48; bytecode file offset 0x9c5684"
!RBErrorController methodsFor: 'recovered'!
error: recoveredArg1 advice: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getContext.
    recoveredValue3 := (self) error: (recoveredValue0) advice: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8d78; bytecode file offset 0x9c5684"
!RBErrorController methodsFor: 'recovered'!
confirmNoIsDefault: recoveredArg1 advice: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getContext.
    recoveredValue3 := (self) confirmNoIsDefault: (recoveredValue0) advice: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c8da8; bytecode file offset 0x9c5684"
!RBErrorController methodsFor: 'recovered'!
confirmCancel: recoveredArg1 advice: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getContext.
    recoveredValue3 := (self) confirmCancel: (recoveredValue0) advice: (recoveredValue1) context: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200ce08c; bytecode file offset 0x9ca950"
!RBErrorController methodsFor: 'recovered'!
setDebug
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (1).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce0b4; bytecode file offset 0x9ca978"
!RBErrorController methodsFor: 'recovered'!
isDebug
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (1).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce0f4; bytecode file offset 0x9ca9ac"
!RBErrorController methodsFor: 'recovered'!
setDisplay
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (2).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce11c; bytecode file offset 0x9ca9e0"
!RBErrorController methodsFor: 'recovered'!
isDisplay
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (2).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce160; bytecode file offset 0x9caa30"
!RBErrorController methodsFor: 'recovered'!
setTranscript
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (4).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce1ac; bytecode file offset 0x9caa64"
!RBErrorController methodsFor: 'recovered'!
isTranscript
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (4).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce1c8; bytecode file offset 0x9caa80"
!RBErrorController methodsFor: 'recovered'!
clearDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (7).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce1f0; bytecode file offset 0x9caaa8"
!RBErrorController methodsFor: 'recovered'!
setDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitOr: (8).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce218; bytecode file offset 0x9caad0"
!RBErrorController methodsFor: 'recovered'!
isDefault
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (8).
    recoveredValue2 := (recoveredValue1) ~= (0).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ce250; bytecode file offset 0x9cab08"
!RBErrorController methodsFor: 'recovered'!
clearTranscript
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (11).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce26c; bytecode file offset 0x9cab24"
!RBErrorController methodsFor: 'recovered'!
clearDisplay
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (13).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ce288; bytecode file offset 0x9cab40"
!RBErrorController methodsFor: 'recovered'!
clearDebug
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := state.
    recoveredValue1 := (recoveredValue0) bitAnd: (14).
    recoveredValue2 := recoveredValue1.
    state := recoveredValue2.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20131d4c; bytecode file offset 0xa2e6a8"
!RBErrorController methodsFor: 'recovered'!
debugging: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setDebug.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearDebug.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20131d6c; bytecode file offset 0xa2e6a8"
!RBErrorController methodsFor: 'recovered'!
displaying: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) setDisplay.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) clearDisplay.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201480d0; bytecode file offset 0xa449b4"
!RBErrorController methodsFor: 'recovered'!
warning: recoveredArg1 advice: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) warning: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) advice: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) context: (recoveredValue6).
    recoveredValue7 := (recoveredValue2) prompt.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201480ec; bytecode file offset 0xa449b4"
!RBErrorController methodsFor: 'recovered'!
message: recoveredArg1 advice: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) message: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) advice: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) context: (recoveredValue6).
    recoveredValue7 := (recoveredValue2) prompt.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201790f8; bytecode file offset 0xa75a04"
!RBErrorController methodsFor: 'recovered'!
confirmCancel: recoveredArg1 advice: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBUserQuestion.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) confirm: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) advice: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) context: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) yesNoCancel.
    recoveredValue8 := (recoveredValue2) prompt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20179118; bytecode file offset 0xa75a04"
!RBErrorController methodsFor: 'recovered'!
confirm: recoveredArg1 advice: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBUserQuestion.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) confirm: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) advice: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) context: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) yesNo.
    recoveredValue8 := (recoveredValue2) prompt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x20179138; bytecode file offset 0xa75a04"
!RBErrorController methodsFor: 'recovered'!
confirmNoIsDefault: recoveredArg1 advice: recoveredArg2 context: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := RBUserQuestion.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) confirm: (recoveredValue1).
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) advice: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg3.
    (recoveredValue5) context: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) noYes.
    recoveredValue8 := (recoveredValue2) prompt.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201b1a98; bytecode file offset 0xaae364"
!RBErrorController methodsFor: 'recovered'!
initialize
    super initialize.
    state := 0.
    (self) clearDebug.
    (self) setTranscript.
    (self) setDisplay.
    (self) clearDefault.
    ^self
! !

"ASDBase.ic method 0x201cbcdc; bytecode file offset 0xac859c"
!RBErrorController methodsFor: 'recovered'!
view: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            view := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := view.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := Transcript.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := view.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOpen.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := view.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) open.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e65c0; bytecode file offset 0xae2e8c"
!RBErrorController methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('RBErrorController').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := product.
    recoveredValue5 := ('on: ') , (recoveredValue4).
    (recoveredValue3) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    recoveredValue6 := recoveredArg1.
    (self) statePrintOn: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x202086e4; bytecode file offset 0xb04fb8"
!RBErrorController methodsFor: 'recovered'!
error: recoveredArg1 advice: recoveredArg2 context: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGMonitorStreamDummy.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
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
            recoveredStack2 := 'Experiment error in '.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := ': '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) addErrorText: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) addImportantInfoText: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030c4b8; bytecode file offset 0xc08e44"
!RBErrorController methodsFor: 'recovered'!
statePrintOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) isDebug.
    recoveredValue3 := (recoveredValue2) printString.
    recoveredValue4 := ('isDebug: ') , (recoveredValue3).
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) isDisplay.
    recoveredValue8 := (recoveredValue7) printString.
    recoveredValue9 := ('isDisplay: ') , (recoveredValue8).
    (recoveredValue6) nextPutAll: (recoveredValue9).
    (recoveredValue5) cr.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := recoveredValue10.
    recoveredValue12 := (self) isTranscript.
    recoveredValue13 := (recoveredValue12) printString.
    recoveredValue14 := ('isTranscript: ') , (recoveredValue13).
    (recoveredValue11) nextPutAll: (recoveredValue14).
    (recoveredValue10) cr.
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := recoveredValue15.
    recoveredValue17 := (self) isDefault.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := ('isDefault: ') , (recoveredValue18).
    (recoveredValue16) nextPutAll: (recoveredValue19).
    (recoveredValue15) cr.
    ^self
! !

"ASDBase.ic method 0x203eb204; bytecode file offset 0xce7afc"
!RBErrorController methodsFor: 'recovered'!
display: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDefault.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) default.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) display.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isTranscript.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := Transcript.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := view.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := view.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isManaged.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := view.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) show: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDebug.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := RBUserQuestion.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'want debugging'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049b648; bytecode file offset 0xd97fc4"
!RBErrorController methodsFor: 'recovered'!
stateTest
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: (' ').
    recoveredLocal1 := recoveredValue1.
    (self) setDebug.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('--------setDebug--------').
    (recoveredValue2) cr.
    recoveredValue4 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue4).
    (self) setDisplay.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) nextPutAll: ('--------setDisplay--------').
    (recoveredValue5) cr.
    recoveredValue7 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue7).
    (self) setTranscript.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) nextPutAll: ('--------setTranscript--------').
    (recoveredValue8) cr.
    recoveredValue10 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue10).
    (self) setDefault.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := recoveredValue11.
    (recoveredValue12) nextPutAll: ('--------setDefault--------').
    (recoveredValue11) cr.
    recoveredValue13 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue13).
    (self) clearDebug.
    recoveredValue14 := recoveredLocal1.
    recoveredValue15 := recoveredValue14.
    (recoveredValue15) nextPutAll: ('--------clearDebug--------').
    (recoveredValue14) cr.
    recoveredValue16 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue16).
    (self) clearDisplay.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := recoveredValue17.
    (recoveredValue18) nextPutAll: ('--------clearDisplay--------').
    (recoveredValue17) cr.
    recoveredValue19 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue19).
    (self) clearTranscript.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := recoveredValue20.
    (recoveredValue21) nextPutAll: ('--------clearTranscript--------').
    (recoveredValue20) cr.
    recoveredValue22 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue22).
    (self) clearDefault.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) nextPutAll: ('--------clearDefault--------').
    (recoveredValue23) cr.
    recoveredValue25 := recoveredLocal1.
    (self) statePrintOn: (recoveredValue25).
    recoveredValue26 := recoveredLocal1.
    recoveredValue27 := (recoveredValue26) contents.
    (recoveredValue27) edit.
    ^self
! !

