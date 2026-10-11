"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20066edc; bytecode file offset 0x9646f8"
!SGIlTempVarInitVisitedState methodsFor: 'recovered'!
visitedTempVars
    | recoveredValue0 |
    recoveredValue0 := visitedTempVars.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200beb30; bytecode file offset 0x9bc0b4"
!SGIlTempVarInitVisitedState methodsFor: 'recovered'!
visitedTempVars: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    visitedTempVars := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f9a70; bytecode file offset 0x9f6364"
!SGIlTempVarInitVisitedState methodsFor: 'recovered'!
copy
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super copy.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) visitedTempVars.
    recoveredValue3 := (recoveredValue2) copy.
    (recoveredValue1) visitedTempVars: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200f9e0c; bytecode file offset 0x9f6778"
!SGIlTempVarInitVisitedState methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := Set.
    recoveredValue1 := (recoveredValue0) new.
    visitedTempVars := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20120a98; bytecode file offset 0xa1d35c"
!SGIlTempVarInitVisitedState methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super mergeUnion: (recoveredValue0).
    recoveredValue1 := (self) visitedTempVars.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) visitedTempVars.
    (recoveredValue1) addAll: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2016698c; bytecode file offset 0xa63254"
!SGIlTempVarInitVisitedState methodsFor: 'recovered'!
mergeIntersect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super mergeIntersect: (recoveredValue0).
    recoveredValue1 := (self) visitedTempVars.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) visitedTempVars.
    recoveredValue4 := (self) mergeProbablyIdenticalSet: (recoveredValue1) with: (recoveredValue3).
    (self) visitedTempVars: (recoveredValue4).
    ^self
! !

