"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x201d4ef8; bytecode file offset 0xad17c8"
!OSLargeInteger class methodsFor: 'recovered'!
queryPerformanceTime
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := OSLargeInteger.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredLocal3.
    (recoveredValue2) queryPerformanceCounter.
    recoveredValue3 := recoveredLocal3.
    recoveredValue4 := (recoveredValue3) asInteger.
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := recoveredLocal3.
    (recoveredValue5) queryPerformanceFrequency.
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := (recoveredValue6) asInteger.
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue8) / (recoveredValue9).
    recoveredValue11 := (recoveredValue10) asFloat.
    ^recoveredValue11
! !

"ASDBase.ic method 0x2047a844; bytecode file offset 0xd77114"
!OSLargeInteger class methodsFor: 'recovered'!
queryPerformanceIndex
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := [
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := 0.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            recoveredLocal8 := recoveredBlock4Stack1.
            recoveredBlock4PC := 15.
        ].
        recoveredBlock4Step = 15 ifTrue: [
            recoveredBlock4Stack1 := 100.
            recoveredBlock4PC := 18.
        ].
        recoveredBlock4Step = 18 ifTrue: [
            recoveredLocal1 := recoveredBlock4Stack1.
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) new.
            recoveredBlock4PC := 22.
        ].
        recoveredBlock4Step = 22 ifTrue: [
            recoveredLocal3 := recoveredBlock4Stack0.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal3.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            (recoveredBlock4Stack0) queryPerformanceCounter.
            recoveredBlock4PC := 30.
        ].
        recoveredBlock4Step = 30 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal3.
            recoveredBlock4PC := 33.
        ].
        recoveredBlock4Step = 33 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) asInteger.
            recoveredBlock4PC := 34.
        ].
        recoveredBlock4Step = 34 ifTrue: [
            recoveredLocal7 := recoveredBlock4Stack0.
            recoveredBlock4PC := 37.
        ].
        recoveredBlock4Step = 37 ifTrue: [
            recoveredBlock4Stack0 := recoveredLocal1.
            recoveredBlock4PC := 40.
        ].
        recoveredBlock4Step = 40 ifTrue: [
            recoveredBlock4PC := 82.
        ].
        recoveredBlock4Step = 44 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 47.
        ].
        recoveredBlock4Step = 47 ifTrue: [
            (recoveredBlock4Stack1) queryPerformanceCounter.
            recoveredBlock4PC := 49.
        ].
        recoveredBlock4Step = 49 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal3.
            recoveredBlock4PC := 52.
        ].
        recoveredBlock4Step = 52 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) asInteger.
            recoveredBlock4PC := 53.
        ].
        recoveredBlock4Step = 53 ifTrue: [
            recoveredLocal6 := recoveredBlock4Stack1.
            recoveredBlock4PC := 56.
        ].
        recoveredBlock4Step = 56 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal6.
            recoveredBlock4PC := 59.
        ].
        recoveredBlock4Step = 59 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal7.
            recoveredBlock4PC := 62.
        ].
        recoveredBlock4Step = 62 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) - (recoveredBlock4Stack2).
            recoveredBlock4PC := 63.
        ].
        recoveredBlock4Step = 63 ifTrue: [
            recoveredLocal5 := recoveredBlock4Stack1.
            recoveredBlock4PC := 66.
        ].
        recoveredBlock4Step = 66 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal6.
            recoveredBlock4PC := 69.
        ].
        recoveredBlock4Step = 69 ifTrue: [
            recoveredLocal7 := recoveredBlock4Stack1.
            recoveredBlock4PC := 72.
        ].
        recoveredBlock4Step = 72 ifTrue: [
            recoveredBlock4Stack1 := recoveredLocal8.
            recoveredBlock4PC := 75.
        ].
        recoveredBlock4Step = 75 ifTrue: [
            recoveredBlock4Stack2 := recoveredLocal5.
            recoveredBlock4PC := 78.
        ].
        recoveredBlock4Step = 78 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) + (recoveredBlock4Stack2).
            recoveredBlock4PC := 79.
        ].
        recoveredBlock4Step = 79 ifTrue: [
            recoveredLocal8 := recoveredBlock4Stack1.
            recoveredBlock4PC := 82.
        ].
        recoveredBlock4Step = 82 ifTrue: [
            (recoveredBlock4Stack0 isInteger) ifTrue: [(recoveredBlock4Stack0 > 0) ifTrue: [recoveredBlock4Stack0 := recoveredBlock4Stack0 - 1. recoveredBlock4PC := 44] ifFalse: [recoveredBlock4PC := 92]] ifFalse: [recoveredBlock4PC := 85].
        ].
        recoveredBlock4Step = 85 ifTrue: [
            recoveredBlock4Stack0 := (recoveredBlock4Stack0) + (-1).
            recoveredBlock4PC := 86.
        ].
        recoveredBlock4Step = 86 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Stack0.
            recoveredBlock4PC := 87.
        ].
        recoveredBlock4Step = 87 ifTrue: [
            recoveredBlock4Stack2 := 0.
            recoveredBlock4PC := 89.
        ].
        recoveredBlock4Step = 89 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) >= (recoveredBlock4Stack2).
            recoveredBlock4PC := 90.
        ].
        recoveredBlock4Step = 90 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 44] ifFalse: [recoveredBlock4PC := 92].
        ].
        recoveredBlock4Step = 92 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack0.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    (recoveredValue0) critical.
    recoveredValue1 := recoveredLocal3.
    (recoveredValue1) queryPerformanceFrequency.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal8.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue4) / (recoveredValue5).
    recoveredValue7 := recoveredLocal2.
    recoveredValue8 := (recoveredValue6) / (recoveredValue7).
    recoveredValue9 := (#[40 160 137 176 225 233 133 63]) / (recoveredValue8).
    ^recoveredValue9
! !

