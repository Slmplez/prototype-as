"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x200000ec; bytecode file offset 0x76d0"
!DbgBreakpointManager class methodsFor: 'recovered'!
breakpointManagers
    | recoveredValue0 |
    recoveredValue0 := BreakpointManagers.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000274; bytecode file offset 0x7864"
!DbgBreakpointManager class methodsFor: 'recovered'!
breakpointManagers: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    BreakpointManagers := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200013f4; bytecode file offset 0x89c4"
!DbgBreakpointManager class methodsFor: 'recovered'!
breakpointManagerFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) breakpointManagers.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := (self) new.
    recoveredBlock8Value1 := recoveredBlock8Value0.
    recoveredBlock8Value2 := recoveredArg1.
    (recoveredBlock8Value1) image: (recoveredBlock8Value2).
    recoveredBlock8Value3 := recoveredBlock8Value0.
    (recoveredBlock8Value3) initialize.
    recoveredBlock8Value0
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"dbgrun.ic method 0x20002228; bytecode file offset 0x9808"
!DbgBreakpointManager class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) breakpointManagers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) breakpointManagers: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := [
    | recoveredBlock14Local1 recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14Stack4 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := self.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) breakpointManagers.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) class.
            recoveredBlock14PC := 25.
        ].
        recoveredBlock14Step = 25 ifTrue: [
            recoveredBlock14Stack3 := Dictionary.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            (recoveredBlock14Stack2 ~~ recoveredBlock14Stack3) ifTrue: [recoveredBlock14PC := 56] ifFalse: [recoveredBlock14PC := 30].
        ].
        recoveredBlock14Step = 30 ifTrue: [
            recoveredBlock14PC := 31.
        ].
        recoveredBlock14Step = 31 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) breakpointManagers.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Local1 := recoveredBlock14Stack1.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack1 := self.
            recoveredBlock14PC := 35.
        ].
        recoveredBlock14Step = 35 ifTrue: [
            recoveredBlock14Stack2 := LookupTable.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) new.
            recoveredBlock14PC := 38.
        ].
        recoveredBlock14Step = 38 ifTrue: [
            (recoveredBlock14Stack1) breakpointManagers: (recoveredBlock14Stack2).
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Local1.
            recoveredBlock14PC := 41.
        ].
        recoveredBlock14Step = 41 ifTrue: [
            recoveredBlock14Stack2 := [:recoveredBlock14Block41Arg1 :recoveredBlock14Block41Arg2 | 
    | recoveredBlock14Block41Value0 recoveredBlock14Block41Value1 recoveredBlock14Block41Value2 recoveredBlock14Block41Value3 |
    recoveredBlock14Block41Value0 := (self) breakpointManagers.
    recoveredBlock14Block41Value1 := recoveredBlock14Block41Arg1.
    recoveredBlock14Block41Value2 := recoveredBlock14Block41Arg2.
    recoveredBlock14Block41Value3 := (recoveredBlock14Block41Value0) at: (recoveredBlock14Block41Value1) put: (recoveredBlock14Block41Value2).
    recoveredBlock14Block41Value3
].
            recoveredBlock14PC := 54.
        ].
        recoveredBlock14Step = 54 ifTrue: [
            recoveredBlock14Stack1 := (recoveredBlock14Stack1) keysAndValuesDo: (recoveredBlock14Stack2).
            recoveredBlock14PC := 56.
        ].
        recoveredBlock14Step = 56 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

