"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20012ae0; bytecode file offset 0x912098"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
formulaType
    | recoveredValue0 |
    recoveredValue0 := SCFormulaTypeLabelRatFunc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014c34; bytecode file offset 0x912098"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
formulaTypeLabel
    | recoveredValue0 |
    recoveredValue0 := SCFormulaTypeLabelRatFunc.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001886c; bytecode file offset 0x92209c"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
typeDescription
    ^'rational conversion with 6 parameters'
! !

"ASDBase.ic method 0x2001ad8c; bytecode file offset 0x92209c"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
type
    ^'Six Point Formula'
! !

"ASDBase.ic method 0x2001d330; bytecode file offset 0x92209c"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'bytes:' 'comments:' 'unit:' 'format:' 'coeffs:' 'compuTabRef:' 'formula:')
! !

"ASDBase.ic method 0x20080b74; bytecode file offset 0x97d428"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
asap2BehaviorId
    ^213
! !

"ASDBase.ic method 0x20090e90; bytecode file offset 0x98d9dc"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016ecfc; bytecode file offset 0xa6b5f0"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
conversionTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BytesRatFuncCompuMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280ce940Arg1 | 
    | block280ce940Value0 block280ce940Value1 |
    block280ce940Value0 := block280ce940Arg1.
    block280ce940Value1 := (block280ce940Value0) type.
    block280ce940Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSet.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201cca70; bytecode file offset 0xac933c"
!ASAP2BytesRatFuncCompuMethod class methodsFor: 'recovered'!
subType: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isIdentity.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ASAP2BytesIdentityCompuMethod.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isLinear.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ASAP2BytesLinearCompuMethod.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := super subType: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

