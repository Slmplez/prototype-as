"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200050a0; bytecode file offset 0x90206c"
!SGSmNoOptStaticAction methodsFor: 'recovered'!
lastTransition: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005918; bytecode file offset 0x902744"
!SGSmNoOptStaticAction methodsFor: 'recovered'!
buildMdlBetweenIfStaticActions: recoveredArg1 staticsToDo: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20099810; bytecode file offset 0x9961d0"
!SGSmNoOptStaticAction methodsFor: 'recovered'!
buildMdlCaseStaticActions: recoveredArg1 staticsToDo: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) buildMdlStaticActions: (recoveredValue0) staticsToDo: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20210700; bytecode file offset 0xb0cfc0"
!SGSmNoOptStaticAction methodsFor: 'recovered'!
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
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 28].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 27.
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) staticAction: (recoveredBlock7Stack2).
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) reverseDo: (recoveredValue1).
    ^self
! !

