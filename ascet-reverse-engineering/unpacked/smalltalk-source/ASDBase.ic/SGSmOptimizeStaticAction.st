"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066d84; bytecode file offset 0x9646f8"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
staticsInsideIf
    | recoveredValue0 |
    recoveredValue0 := staticsInsideIf.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068c44; bytecode file offset 0x965b90"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
lastTransition
    | recoveredValue0 |
    recoveredValue0 := lastTransition.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200997a4; bytecode file offset 0x9961d0"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
buildMdlBetweenIfStaticActions: recoveredArg1 staticsToDo: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) buildMdlCaseStaticActions: (recoveredValue0) staticsToDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200beb68; bytecode file offset 0x9bc0b4"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
staticsInsideIf: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    staticsInsideIf := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf9ec; bytecode file offset 0x9bd228"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
lastTransition: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastTransition := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2010bc80; bytecode file offset 0xa085f0"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    (self) staticsInsideIf: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2018a2a0; bytecode file offset 0xa86b70"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
create
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := super create.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (self) staticsInsideIf.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue1) staticsInsideIf: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) lastTransition.
    (recoveredValue4) lastTransition: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20285de0; bytecode file offset 0xb826ac"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
buildMdlStaticActions: recoveredArg1 staticsToDo: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includes: (recoveredBlock7Stack3).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 38].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) staticPort.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) isUndef.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 38] ifFalse: [recoveredBlock7PC := 32].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) staticsInsideIf.
            recoveredBlock7PC := 35.
        ].
        recoveredBlock7Step = 35 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) add: (recoveredBlock7Stack2).
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2030d938; bytecode file offset 0xc0a20c"
!SGSmOptimizeStaticAction methodsFor: 'recovered'!
buildMdlCaseStaticActions: recoveredArg1 staticsToDo: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includes: (recoveredBlock7Stack3).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 52].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) staticsInsideIf.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) includes: (recoveredBlock7Stack2).
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 32] ifFalse: [recoveredBlock7PC := 42].
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) lastTransition.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack2 := 72.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) errLabel.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            (recoveredBlock7Stack1) smSyntaxErrNo: (recoveredBlock7Stack2) with: (recoveredBlock7Stack3).
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            (recoveredBlock7Stack1) staticAction: (recoveredBlock7Stack2).
            recoveredBlock7PC := 46.
        ].
        recoveredBlock7Step = 46 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) remove: (recoveredBlock7Stack2).
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

