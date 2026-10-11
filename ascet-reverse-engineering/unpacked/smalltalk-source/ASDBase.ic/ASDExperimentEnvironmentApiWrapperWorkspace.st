"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200b22b4; bytecode file offset 0x9aeb70"
!ASDExperimentEnvironmentApiWrapperWorkspace methodsFor: 'recovered'!
close
    | recoveredValue0 |
    recoveredValue0 := (self) invoke: ('Close') withArguments: (nil) returnType: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20449898; bytecode file offset 0xd461a8"
!ASDExperimentEnvironmentApiWrapperWorkspace methodsFor: 'recovered'!
recentExperiments
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) propertyAt: ('RecentExperiments').
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Local1 recoveredBlock7Local2 recoveredBlock7Local3 recoveredBlock7Local4 recoveredBlock7Local5 recoveredBlock7Local6 recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := OrderedCollection.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) new.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Local4 := recoveredBlock7Stack1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) parray.
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Local6 := recoveredBlock7Stack1.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) parray.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) rgsabound.
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Local5 := recoveredBlock7Stack1.
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            recoveredBlock7Stack1 := OSUInt32.
            recoveredBlock7PC := 34.
        ].
        recoveredBlock7Step = 34 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local6.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) safeArrayGetDim.
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) new: (recoveredBlock7Stack2).
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Local3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := OSPtr.
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) new.
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredBlock7Local2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 45.
        ].
        recoveredBlock7Step = 45 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local5.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) lLbound.
            recoveredBlock7PC := 49.
        ].
        recoveredBlock7Step = 49 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) + (-1).
            recoveredBlock7PC := 50.
        ].
        recoveredBlock7Step = 50 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local5.
            recoveredBlock7PC := 53.
        ].
        recoveredBlock7Step = 53 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) cElements.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) + (-1).
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7Stack2 := self.
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            (recoveredBlock7Stack2) etasDevHalt.
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local3.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack3 := 0.
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Local1.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            (recoveredBlock7Stack2) at: (recoveredBlock7Stack3) put: (recoveredBlock7Stack4).
            recoveredBlock7PC := 69.
        ].
        recoveredBlock7Step = 69 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local6.
            recoveredBlock7PC := 71.
        ].
        recoveredBlock7Step = 71 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local3.
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Local2.
            recoveredBlock7PC := 73.
        ].
        recoveredBlock7Step = 73 ifTrue: [
            (recoveredBlock7Stack2) safeArrayGetElement: (recoveredBlock7Stack3) pv: (recoveredBlock7Stack4).
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Local4.
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack3 := OSStringZ.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Local2.
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) reference.
            recoveredBlock7PC := 81.
        ].
        recoveredBlock7Step = 81 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) address: (recoveredBlock7Stack4).
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            (recoveredBlock7Stack2) add: (recoveredBlock7Stack3).
            recoveredBlock7PC := 85.
        ].
        recoveredBlock7Step = 85 ifTrue: [
            (recoveredBlock7Stack1 isInteger and: [recoveredBlock7Local1 isInteger]) ifTrue: [(recoveredBlock7Local1 + 1 <= recoveredBlock7Stack1) ifTrue: [recoveredBlock7Local1 := recoveredBlock7Local1 + 1. recoveredBlock7PC := 60] ifFalse: [recoveredBlock7Local1 := nil. recoveredBlock7PC := 99]] ifFalse: [recoveredBlock7PC := 89].
        ].
        recoveredBlock7Step = 89 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Local1.
            recoveredBlock7PC := 91.
        ].
        recoveredBlock7Step = 91 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) + (1).
            recoveredBlock7PC := 92.
        ].
        recoveredBlock7Step = 92 ifTrue: [
            recoveredBlock7Stack4 := recoveredBlock7Stack3.
            recoveredBlock7PC := 93.
        ].
        recoveredBlock7Step = 93 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack4.
            recoveredBlock7PC := 94.
        ].
        recoveredBlock7Step = 94 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) < (recoveredBlock7Stack3).
            recoveredBlock7PC := 95.
        ].
        recoveredBlock7Step = 95 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 97] ifFalse: [recoveredBlock7PC := 60].
        ].
        recoveredBlock7Step = 97 ifTrue: [
            recoveredBlock7Stack2 := nil.
            recoveredBlock7PC := 98.
        ].
        recoveredBlock7Step = 98 ifTrue: [
            recoveredBlock7Local1 := recoveredBlock7Stack2.
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            recoveredBlock7PC := 100.
        ].
        recoveredBlock7Step = 100 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Local4.
            recoveredBlock7PC := 101.
        ].
        recoveredBlock7Step = 101 ifTrue: [
            ^recoveredBlock7Stack1
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := ExASDExperimentEnvironmentError.
    (recoveredValue2) signalWith: ('Error getting recent experiments object').
    ^nil
! !

