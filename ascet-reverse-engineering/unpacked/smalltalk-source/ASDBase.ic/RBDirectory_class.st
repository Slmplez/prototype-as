"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200dd04c; bytecode file offset 0x9d9928"
!RBDirectory class methodsFor: 'recovered'!
createPath: recoveredArg1 parentDirectory: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) new.
    recoveredValue1 := (recoveredValue0) initialize.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) path: (recoveredValue3).
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue1) parentDirectory: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2018c81c; bytecode file offset 0xa890e4"
!RBDirectory class methodsFor: 'recovered'!
createWithSubDirectories: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal3 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) createPath: (recoveredValue2) parentDirectory: (nil).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredLocal3.
    recoveredValue5 := recoveredLocal2.
    (recoveredValue4) add: (recoveredValue5).
    recoveredValue6 := recoveredLocal2.
    recoveredValue7 := recoveredLocal3.
    (recoveredValue6) subDirectoriesAddRecursiveTo: (recoveredValue7).
    recoveredValue8 := recoveredLocal3.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203ed64c; bytecode file offset 0xce9f28"
!RBDirectory class methodsFor: 'recovered'!
createRecursive: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) allSubStrings: ($\).
    recoveredLocal3 := recoveredValue1.
    recoveredLocal2 := ''.
    recoveredValue2 := recoveredLocal3.
    recoveredValue3 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := nil.
            recoveredBlock22PC := 29.
        ].
        recoveredBlock22Step = 29 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 30.
        ].
        recoveredBlock22Step = 30 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) isEmpty.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 83] ifFalse: [recoveredBlock22PC := 34].
        ].
        recoveredBlock22Step = 34 ifTrue: [
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) isEmpty.
            recoveredBlock22PC := 39.
        ].
        recoveredBlock22Step = 39 ifTrue: [
            (recoveredBlock22Stack1) ifTrue: [recoveredBlock22PC := 42] ifFalse: [recoveredBlock22PC := 50].
        ].
        recoveredBlock22Step = 42 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Arg1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 46.
        ].
        recoveredBlock22Step = 46 ifTrue: [
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack1 := recoveredLocal2.
            recoveredBlock22PC := 53.
        ].
        recoveredBlock22Step = 53 ifTrue: [
            recoveredBlock22Stack2 := '\'.
            recoveredBlock22PC := 55.
        ].
        recoveredBlock22Step = 55 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) , (recoveredBlock22Stack2).
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Arg1.
            recoveredBlock22PC := 58.
        ].
        recoveredBlock22Step = 58 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) , (recoveredBlock22Stack2).
            recoveredBlock22PC := 60.
        ].
        recoveredBlock22Step = 60 ifTrue: [
            recoveredLocal2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Stack1 := self.
            recoveredBlock22PC := 64.
        ].
        recoveredBlock22Step = 64 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) new.
            recoveredBlock22PC := 66.
        ].
        recoveredBlock22Step = 66 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) initialize.
            recoveredBlock22PC := 68.
        ].
        recoveredBlock22Step = 68 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 69.
        ].
        recoveredBlock22Step = 69 ifTrue: [
            recoveredBlock22Stack3 := recoveredLocal2.
            recoveredBlock22PC := 72.
        ].
        recoveredBlock22Step = 72 ifTrue: [
            (recoveredBlock22Stack2) path: (recoveredBlock22Stack3).
            recoveredBlock22PC := 74.
        ].
        recoveredBlock22Step = 74 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) parentDirectory: (recoveredBlock22Stack2).
            recoveredBlock22PC := 79.
        ].
        recoveredBlock22Step = 79 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredLocal1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 83.
        ].
        recoveredBlock22Step = 83 ifTrue: [
            recoveredBlock22Result := recoveredBlock22Stack1.
            recoveredBlock22Done := true.
        ].
    ].
    recoveredBlock22Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

