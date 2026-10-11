"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x20000040; bytecode file offset 0x7600"
!DbgBreakpointedMethod methodsFor: 'recovered'!
emDecodableMethod
    | recoveredValue0 |
    recoveredValue0 := (self) originalMethod.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000334; bytecode file offset 0x78f8"
!DbgBreakpointedMethod methodsFor: 'recovered'!
originalMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) + (-1).
    recoveredValue2 := (self) at: (recoveredValue1).
    ^recoveredValue2
! !

"dbgrun.ic method 0x20000350; bytecode file offset 0x7914"
!DbgBreakpointedMethod methodsFor: 'recovered'!
breakpointInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) + (-2).
    recoveredValue2 := (self) at: (recoveredValue1).
    ^recoveredValue2
! !

"dbgrun.ic method 0x200005a4; bytecode file offset 0x7b78"
!DbgBreakpointedMethod methodsFor: 'recovered'!
isBreakpointedMethod
    ^true
! !

"dbgrun.ic method 0x20000724; bytecode file offset 0x7cf0"
!DbgBreakpointedMethod methodsFor: 'recovered'!
breakpoints
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) breakpointManager.
    recoveredValue3 := (recoveredValue2) breakpointsFor: (self).
    ^recoveredValue3
! !

"dbgrun.ic method 0x200007fc; bytecode file offset 0x7dc8"
!DbgBreakpointedMethod methodsFor: 'recovered'!
reinstallOriginalMethod
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) methodClass.
    recoveredValue1 := (recoveredValue0) methodDictionary.
    recoveredValue2 := (self) originalMethod.
    (recoveredValue1) add: (recoveredValue2).
    ^self
! !

"dbgrun.ic method 0x20000854; bytecode file offset 0x7e18"
!DbgBreakpointedMethod methodsFor: 'recovered'!
originalMethod: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) + (-1).
    recoveredValue2 := recoveredArg1.
    (self) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"dbgrun.ic method 0x20000870; bytecode file offset 0x7e34"
!DbgBreakpointedMethod methodsFor: 'recovered'!
breakpointInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) size.
    recoveredValue1 := (recoveredValue0) + (-2).
    recoveredValue2 := recoveredArg1.
    (self) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"dbgrun.ic method 0x200014ac; bytecode file offset 0x8a7c"
!DbgBreakpointedMethod methodsFor: 'recovered'!
filePointer: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalMethod.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'filePointer'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super filePointer: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) originalMethod.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) filePointer.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) filePointer: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

