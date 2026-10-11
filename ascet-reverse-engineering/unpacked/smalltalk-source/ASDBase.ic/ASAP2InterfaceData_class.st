"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200129e4; bytecode file offset 0x912098"
!ASAP2InterfaceData class methodsFor: 'recovered'!
IFDataClasses
    | recoveredValue0 |
    recoveredValue0 := IFDataClasses.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002120c; bytecode file offset 0x92209c"
!ASAP2InterfaceData class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'longName:' 'comments:')
! !

"ASDBase.ic method 0x20022be0; bytecode file offset 0x92209c"
!ASAP2InterfaceData class methodsFor: 'recovered'!
keyWord
    ^'IF_DATA'
! !

"ASDBase.ic method 0x20054128; bytecode file offset 0x951190"
!ASAP2InterfaceData class methodsFor: 'recovered'!
IFDataClasses: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    IFDataClasses := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20113f68; bytecode file offset 0xa1088c"
!ASAP2InterfaceData class methodsFor: 'recovered'!
create: recoveredArg1 contents: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) createDefault.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    (recoveredValue1) setContents: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2015b5b8; bytecode file offset 0xa57ef4"
!ASAP2InterfaceData class methodsFor: 'recovered'!
create: recoveredArg1 source: recoveredArg2 tpBlob: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) name: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    recoveredValue5 := recoveredArg2.
    (recoveredValue4) source: (recoveredValue5).
    recoveredValue6 := recoveredArg3.
    (recoveredValue1) tpBlob: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201f1518; bytecode file offset 0xaedde4"
!ASAP2InterfaceData class methodsFor: 'recovered'!
initializeClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := (self) asap2BytesClasses.
    recoveredBlock4Value1 := (self) IFDataClasses: (recoveredBlock4Value0).
    recoveredBlock4Value1
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := [:block280d7d54Arg1 | 
    | block280d7d54Value0 block280d7d54Value1 |
    block280d7d54Value0 := block280d7d54Arg1.
    block280d7d54Value1 := (block280d7d54Value0) exitWith: (nil).
    block280d7d54Value1
].
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

