"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027594; bytecode file offset 0x924260"
!SGEsdlRootNode methodsFor: 'recovered'!
hasError
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sourceErrorString.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ae4c; bytecode file offset 0x967a18"
!SGEsdlRootNode methodsFor: 'recovered'!
sourceErrorString
    | recoveredValue0 |
    recoveredValue0 := sourceErrorString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c1be4; bytecode file offset 0x9beac8"
!SGEsdlRootNode methodsFor: 'recovered'!
sourceErrorString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceErrorString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201a374c; bytecode file offset 0xaa0008"
!SGEsdlRootNode methodsFor: 'recovered'!
errorPosition
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := nil.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) errorPositionPoint.
            recoveredBlock4PC := 13.
        ].
        recoveredBlock4Step = 13 ifTrue: [
            (recoveredBlock4Stack2 == nil) ifTrue: [recoveredBlock4PC := 20] ifFalse: [recoveredBlock4PC := 16].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4PC := 17.
        ].
        recoveredBlock4Step = 17 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) errorPositionPoint.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            ^recoveredBlock4Stack1
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (self) allNodesDo: (recoveredValue0).
    ^self
! !

