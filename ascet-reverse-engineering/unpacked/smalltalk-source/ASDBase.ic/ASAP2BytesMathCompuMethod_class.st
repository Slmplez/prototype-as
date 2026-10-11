"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001bf14; bytecode file offset 0x92209c"
!ASAP2BytesMathCompuMethod class methodsFor: 'recovered'!
setMembers
    ^#('name:' 'bytes:' 'comments:' 'unit:' 'format:' 'coeffs:' 'compuTabRef:' 'formula:')
! !

"ASDBase.ic method 0x20073120; bytecode file offset 0x970b34"
!ASAP2BytesMathCompuMethod class methodsFor: 'recovered'!
asap2BehaviorId
    ^nil
! !

"ASDBase.ic method 0x20091020; bytecode file offset 0x98d9dc"
!ASAP2BytesMathCompuMethod class methodsFor: 'recovered'!
fixedSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := super fixedSize.
    recoveredValue1 := (recoveredValue0) + (1).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016ed20; bytecode file offset 0xa6b5f0"
!ASAP2BytesMathCompuMethod class methodsFor: 'recovered'!
conversionTypes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ASAP2BytesMathCompuMethod.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280ce964Arg1 | 
    | block280ce964Value0 block280ce964Value1 |
    block280ce964Value0 := block280ce964Arg1.
    block280ce964Value1 := (block280ce964Value0) type.
    block280ce964Value1
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

