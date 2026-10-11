"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"sci.ic method 0x20000734; bytecode file offset 0x137c0"
!SciSslError class methodsFor: 'recovered'!
startUp
    (self) sslMessageDictionary: (nil).
    ^self
! !

"sci.ic method 0x20000a94; bytecode file offset 0x13b20"
!SciSslError class methodsFor: 'recovered'!
sslMessageDictionary: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    SslMessageDictionary := recoveredValue1.
    ^recoveredValue0
! !

"sci.ic method 0x20001ac4; bytecode file offset 0x14b48"
!SciSslError class methodsFor: 'recovered'!
sslMessageDictionary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SslMessageDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) sslErrorMessages.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            SslMessageDictionary := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := SslMessageDictionary.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"sci.ic method 0x20005d94; bytecode file offset 0x18e3c"
!SciSslError class methodsFor: 'recovered'!
sslErrorMessages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SslTlsAlertCodes.
    recoveredValue3 := (recoveredValue2) keys.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Local2 recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13Stack4 recoveredBlock13Stack5 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := nil.
            recoveredBlock13PC := 21.
        ].
        recoveredBlock13Step = 21 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 22.
        ].
        recoveredBlock13Step = 22 ifTrue: [
            (recoveredBlock13Stack2 == nil) ifTrue: [recoveredBlock13PC := 82] ifFalse: [recoveredBlock13PC := 26].
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Arg1.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) asLowercase.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Local2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 31.
        ].
        recoveredBlock13Step = 31 ifTrue: [
            recoveredBlock13Stack1 := 0.
            recoveredBlock13PC := 33.
        ].
        recoveredBlock13Step = 33 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack1.
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Local2.
            recoveredBlock13PC := 35.
        ].
        recoveredBlock13Step = 35 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) size.
            recoveredBlock13PC := 37.
        ].
        recoveredBlock13Step = 37 ifTrue: [
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 40 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 41.
        ].
        recoveredBlock13Step = 41 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) at: (recoveredBlock13Stack3).
            recoveredBlock13PC := 44.
        ].
        recoveredBlock13Step = 44 ifTrue: [
            recoveredBlock13Stack3 := $_.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) = (recoveredBlock13Stack3).
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 52] ifFalse: [recoveredBlock13PC := 60].
        ].
        recoveredBlock13Step = 52 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Local2.
            recoveredBlock13PC := 53.
        ].
        recoveredBlock13Step = 53 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 54.
        ].
        recoveredBlock13Step = 54 ifTrue: [
            recoveredBlock13Stack4 := Character.
            recoveredBlock13PC := 56.
        ].
        recoveredBlock13Step = 56 ifTrue: [
            recoveredBlock13Stack4 := (recoveredBlock13Stack4) space.
            recoveredBlock13PC := 58.
        ].
        recoveredBlock13Step = 58 ifTrue: [
            (recoveredBlock13Stack2) at: (recoveredBlock13Stack3) put: (recoveredBlock13Stack4).
            recoveredBlock13PC := 60.
        ].
        recoveredBlock13Step = 60 ifTrue: [
            (recoveredBlock13Stack1 isInteger and: [recoveredBlock13Local1 isInteger]) ifTrue: [(recoveredBlock13Local1 + 1 <= recoveredBlock13Stack1) ifTrue: [recoveredBlock13Local1 := recoveredBlock13Local1 + 1. recoveredBlock13PC := 40] ifFalse: [recoveredBlock13Local1 := nil. recoveredBlock13PC := 74]] ifFalse: [recoveredBlock13PC := 64].
        ].
        recoveredBlock13Step = 64 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Stack1.
            recoveredBlock13PC := 65.
        ].
        recoveredBlock13Step = 65 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local1.
            recoveredBlock13PC := 66.
        ].
        recoveredBlock13Step = 66 ifTrue: [
            recoveredBlock13Stack3 := (recoveredBlock13Stack3) + (1).
            recoveredBlock13PC := 67.
        ].
        recoveredBlock13Step = 67 ifTrue: [
            recoveredBlock13Stack4 := recoveredBlock13Stack3.
            recoveredBlock13PC := 68.
        ].
        recoveredBlock13Step = 68 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack4.
            recoveredBlock13PC := 69.
        ].
        recoveredBlock13Step = 69 ifTrue: [
            recoveredBlock13Stack2 := (recoveredBlock13Stack2) < (recoveredBlock13Stack3).
            recoveredBlock13PC := 70.
        ].
        recoveredBlock13Step = 70 ifTrue: [
            (recoveredBlock13Stack2) ifTrue: [recoveredBlock13PC := 72] ifFalse: [recoveredBlock13PC := 40].
        ].
        recoveredBlock13Step = 72 ifTrue: [
            recoveredBlock13Stack2 := nil.
            recoveredBlock13PC := 73.
        ].
        recoveredBlock13Step = 73 ifTrue: [
            recoveredBlock13Local1 := recoveredBlock13Stack2.
            recoveredBlock13PC := 74.
        ].
        recoveredBlock13Step = 74 ifTrue: [
            recoveredBlock13PC := 75.
        ].
        recoveredBlock13Step = 75 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 78.
        ].
        recoveredBlock13Step = 78 ifTrue: [
            recoveredBlock13Stack2 := recoveredBlock13Arg1.
            recoveredBlock13PC := 79.
        ].
        recoveredBlock13Step = 79 ifTrue: [
            recoveredBlock13Stack3 := recoveredBlock13Local2.
            recoveredBlock13PC := 80.
        ].
        recoveredBlock13Step = 80 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) at: (recoveredBlock13Stack2) put: (recoveredBlock13Stack3).
            recoveredBlock13PC := 82.
        ].
        recoveredBlock13Step = 82 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack1.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

