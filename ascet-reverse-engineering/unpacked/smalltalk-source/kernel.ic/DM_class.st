"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x20000084; bytecode file offset 0x4b1b0"
!DM class methodsFor: 'recovered'!
_PRAGMA_ScaledDecimalConstants
    ^self
! !

"kernel.ic method 0x20005ee4; bytecode file offset 0x50e10"
!DM class methodsFor: 'recovered'!
unbindSharedLibrary
    | recoveredValue0 |
    recoveredValue0 := PlatformLibrary.
    (recoveredValue0) removeMappingForLogicalName: ('esdecdll').
    ^self
! !

"kernel.ic method 0x2000abc0; bytecode file offset 0x55ae4"
!DM class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ScaledDecimalConstants.
    recoveredValue1 := ('0.5') asScaledDecimal.
    (recoveredValue0) at: ('PdOneHalf') put: (recoveredValue1).
    (self) bindSharedLibrary.
    ^self
! !

"kernel.ic method 0x20020ea4; bytecode file offset 0x6bdf0"
!DM class methodsFor: 'recovered'!
bindSharedLibrary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) osType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'MVS'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'EsDEC'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := System.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) vmVersionId.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := PlatformLibrary.
    recoveredBlock25Value1 := recoveredLocal1.
    recoveredBlock25Value2 := (recoveredBlock25Value0) logicalName: (recoveredBlock25Value1).
    recoveredBlock25Value3 := (recoveredBlock25Value2) getAddress: ('VMprScaledDecimalPlus').
    recoveredBlock25Value4 := (recoveredBlock25Value3) notNil.
    recoveredBlock25Value4
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := [:block280092a8Arg1 | 
    | block280092a8Value0 block280092a8Value1 |
    block280092a8Value0 := block280092a8Arg1.
    block280092a8Value1 := (block280092a8Value0) exitWith: (false).
    block280092a8Value1
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := PlatformLibrary.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'esdecdll'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) mapLogicalName: (recoveredStack2) toPhysicalName: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

