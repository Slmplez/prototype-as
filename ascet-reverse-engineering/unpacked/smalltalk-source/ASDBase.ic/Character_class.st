"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200133c8; bytecode file offset 0x912098"
!Character class methodsFor: 'recovered'!
wbTab
    | recoveredValue0 |
    recoveredValue0 := Tab.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014cc4; bytecode file offset 0x912098"
!Character class methodsFor: 'recovered'!
untitledConverterClass
    | recoveredValue0 |
    recoveredValue0 := AbtCharacterConverter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20072e98; bytecode file offset 0x96f7ac"
!Character class methodsFor: 'recovered'!
emBehaviorId
    ^5
! !

"ASDBase.ic method 0x200730e0; bytecode file offset 0x970b34"
!Character class methodsFor: 'recovered'!
recursiveDeferredUpdateOperationClass
    ^nil
! !

"ASDBase.ic method 0x20075a9c; bytecode file offset 0x9757c8"
!Character class methodsFor: 'recovered'!
abtCanBeCharacter
    ^true
! !

"ASDBase.ic method 0x20077c94; bytecode file offset 0x9757c8"
!Character class methodsFor: 'recovered'!
abrInstancesAreImmutable
    ^true
! !

"ASDBase.ic method 0x2015a494; bytecode file offset 0xa56d54"
!Character class methodsFor: 'recovered'!
abtXmlFromString: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) abrAsString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20180614; bytecode file offset 0xa7cee0"
!Character class methodsFor: 'recovered'!
initializeLowerCase
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '0123456789abcdefghijklmnopqrstuvwxyz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280d0098Arg1 :block280d0098Arg2 | 
    | block280d0098Value0 block280d0098Value1 block280d0098Value2 block280d0098Value3 block280d0098Value4 |
    block280d0098Value0 := DigitValues.
    block280d0098Value1 := block280d0098Arg1.
    block280d0098Value2 := (block280d0098Value1) value.
    block280d0098Value3 := block280d0098Arg2.
    block280d0098Value4 := (block280d0098Value0) at: (block280d0098Value2) put: (block280d0098Value3).
    block280d0098Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

