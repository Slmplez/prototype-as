"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013de8; bytecode file offset 0x912098"
!DBLabelProxy class methodsFor: 'recovered'!
EmptyFunctionEntryTag
    | recoveredValue0 |
    recoveredValue0 := EmptyFunctionEntryTag.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014f88; bytecode file offset 0x912098"
!DBLabelProxy class methodsFor: 'recovered'!
tempClass
    | recoveredValue0 |
    recoveredValue0 := DBTempLabelProxy.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200742a4; bytecode file offset 0x970bc8"
!DBLabelProxy class methodsFor: 'recovered'!
proxyID
    ^7
! !

"ASDBase.ic method 0x200e075c; bytecode file offset 0x9dd01c"
!DBLabelProxy class methodsFor: 'recovered'!
initializeClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := String.
    recoveredValue1 := (Character value: 255).
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    EmptyFunctionEntryTag := recoveredValue2.
    ^self
! !

"ASDBase.ic method 0x2014bff4; bytecode file offset 0xa488e8"
!DBLabelProxy class methodsFor: 'recovered'!
indices
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := DBClassNameKey.
    recoveredValue2 := DBNameKey.
    recoveredValue3 := DBCompleteNameKey.
    recoveredValue4 := DBFunctionKey.
    recoveredValue5 := DBClassNameFunctionKey.
    recoveredValue6 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2015b630; bytecode file offset 0xa57ef4"
!DBLabelProxy class methodsFor: 'recovered'!
className: recoveredArg1 name: recoveredArg2 function: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) className: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) name: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    (recoveredValue1) function: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201ed998; bytecode file offset 0xaea26c"
!DBLabelProxy class methodsFor: 'recovered'!
createFromRecord: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super createFromRecord: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) className.
    (recoveredValue3) className: (recoveredValue5).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) name.
    (recoveredValue6) name: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (recoveredValue9) function.
    (recoveredValue2) function: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

"ASDBase.ic method 0x201eeef0; bytecode file offset 0xaeb7b8"
!DBLabelProxy class methodsFor: 'recovered'!
class: recoveredArg1 name: recoveredArg2 function: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) labelId.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) className: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) function: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20208054; bytecode file offset 0xb04928"
!DBLabelProxy class methodsFor: 'recovered'!
createFromRecordWithEmptFunctionTag: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super createFromRecord: (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) classNameAt: (recoveredValue6).
    (recoveredValue4) className: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue9) nameAt: (recoveredValue10).
    (recoveredValue8) name: (recoveredValue11).
    recoveredValue12 := EmptyFunctionEntryTag.
    (recoveredValue3) function: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20221bd8; bytecode file offset 0xb1e4ac"
!DBLabelProxy class methodsFor: 'recovered'!
createFromRecord: recoveredArg1 at: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := super createFromRecord: (recoveredValue0) at: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredArg2.
    recoveredValue7 := (recoveredValue5) classNameAt: (recoveredValue6).
    (recoveredValue4) className: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue9) nameAt: (recoveredValue10).
    (recoveredValue8) name: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (recoveredValue12) functionAt: (recoveredValue13).
    (recoveredValue3) function: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x2022dbf4; bytecode file offset 0xb2a4c4"
!DBLabelProxy class methodsFor: 'recovered'!
asLabelProxy: recoveredArg1 id: recoveredArg2 in: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := (self) new.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    (recoveredValue1) globalId: (nil).
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg3.
    (recoveredValue3) dbInterface: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) istate: (0).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) className: (recoveredValue7).
    recoveredValue8 := recoveredValue2.
    recoveredValue9 := name.
    (recoveredValue8) name: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    (recoveredValue2) function: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    ^recoveredValue11
! !

