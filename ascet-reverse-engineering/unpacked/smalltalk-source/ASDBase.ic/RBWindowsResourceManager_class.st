"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015d64; bytecode file offset 0x92209c"
!RBWindowsResourceManager class methodsFor: 'recovered'!
defaultIconName
    ^'GeneralAscetDefault16'
! !

"ASDBase.ic method 0x20018188; bytecode file offset 0x92209c"
!RBWindowsResourceManager class methodsFor: 'recovered'!
sizes
    ^#(16 32 24)
! !

"ASDBase.ic method 0x2003d7d8; bytecode file offset 0x93bf94"
!RBWindowsResourceManager class methodsFor: 'recovered'!
current
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := (recoveredValue0) resourceManager.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062f3c; bytecode file offset 0x95f8b0"
!RBWindowsResourceManager class methodsFor: 'recovered'!
defaultIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) current.
    recoveredValue1 := (self) defaultIconName.
    recoveredValue2 := (recoveredValue0) returnIconWithName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20078f90; bytecode file offset 0x97594c"
!RBWindowsResourceManager class methodsFor: 'recovered'!
defaultSize
    ^16
! !

"ASDBase.ic method 0x2009b3b8; bytecode file offset 0x997c74"
!RBWindowsResourceManager class methodsFor: 'recovered'!
createOnETASResources
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) createWithDLLName: ('ascetres.dll').
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200aac2c; bytecode file offset 0x9a753c"
!RBWindowsResourceManager class methodsFor: 'recovered'!
createWithDLLName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) addDLLWithName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20119e84; bytecode file offset 0xa16880"
!RBWindowsResourceManager class methodsFor: 'recovered'!
resetResources
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstances.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c83b8Arg1 | 
    | block280c83b8Value0 block280c83b8Value1 |
    block280c83b8Value0 := block280c83b8Arg1.
    block280c83b8Value1 := (block280c83b8Value0) resetResources.
    block280c83b8Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203643b0; bytecode file offset 0xc60c98"
!RBWindowsResourceManager class methodsFor: 'recovered'!
IsAppThemed
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IsAppThemed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := PlatformFunction.
    recoveredBlock10Value1 := (recoveredBlock10Value0) callingConvention: ('C') function: ('IsAppThemed') library: ('UxTheme') parameterTypes: (#()) returnType: ('bool').
    recoveredLocal1 := recoveredBlock10Value1.
    recoveredBlock10Value2 := recoveredLocal1.
    recoveredBlock10Value3 := (recoveredBlock10Value2) call.
    recoveredBlock10Value4 := recoveredBlock10Value3.
    IsAppThemed := recoveredBlock10Value4.
    recoveredBlock10Value3
].
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := ExError.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := [:block280f0b4cArg1 | 
    | block280f0b4cValue0 block280f0b4cValue1 |
    IsAppThemed := false.
    block280f0b4cValue0 := block280f0b4cArg1.
    block280f0b4cValue1 := (block280f0b4cValue0) exitWith: (nil).
    block280f0b4cValue1
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := IsAppThemed.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

