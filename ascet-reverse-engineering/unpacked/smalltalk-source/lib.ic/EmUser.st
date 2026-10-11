"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20000b38; bytecode file offset 0x3cba0"
!EmUser methodsFor: 'recovered'!
networkName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) record.
    recoveredValue1 := (recoveredValue0) networkName.
    ^recoveredValue1
! !

"lib.ic method 0x20000b48; bytecode file offset 0x3cba0"
!EmUser methodsFor: 'recovered'!
hash
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) uniqueName.
    recoveredValue1 := (recoveredValue0) hash.
    ^recoveredValue1
! !

"lib.ic method 0x200022e8; bytecode file offset 0x3e340"
!EmUser methodsFor: 'recovered'!
uniqueName
    | recoveredValue0 |
    recoveredValue0 := uniqueName.
    ^recoveredValue0
! !

"lib.ic method 0x20002344; bytecode file offset 0x3e394"
!EmUser methodsFor: 'recovered'!
fullName
    | recoveredValue0 |
    recoveredValue0 := fullName.
    ^recoveredValue0
! !

"lib.ic method 0x20003ac0; bytecode file offset 0x3fb80"
!EmUser methodsFor: 'recovered'!
inheritedUserFieldNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (recoveredValue2) userInheritedUserFieldNamesFor: (self).
    ^recoveredValue3
! !

"lib.ic method 0x200045bc; bytecode file offset 0x405e8"
!EmUser methodsFor: 'recovered'!
updateRecordWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EmUserRecord.
    recoveredValue1 := (self) uniqueName.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) for: (recoveredValue1) relocateUsing: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004770; bytecode file offset 0x407c0"
!EmUser methodsFor: 'recovered'!
primUniqueName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    uniqueName := recoveredValue0.
    ^self
! !

"lib.ic method 0x200047dc; bytecode file offset 0x407fc"
!EmUser methodsFor: 'recovered'!
primFullName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fullName := recoveredValue0.
    ^self
! !

"lib.ic method 0x20005054; bytecode file offset 0x41084"
!EmUser methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) userInheritedUserFieldAtFor: (self) atName: (recoveredValue3).
    ^recoveredValue4
! !

"lib.ic method 0x200050ac; bytecode file offset 0x4113c"
!EmUser methodsFor: 'recovered'!
deleteInheritedUserFieldAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) userDeleteInheritedUserFieldAtFor: (self) atName: (recoveredValue3).
    ^self
! !

"lib.ic method 0x20005250; bytecode file offset 0x41280"
!EmUser methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) fullName.
    recoveredValue2 := ('User(%1)') bindWith: (recoveredValue1).
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20006058; bytecode file offset 0x42100"
!EmUser methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 putRecord: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) userInheritedUserFieldAtPutRecordFor: (self) atName: (recoveredValue3) putRecord: (recoveredValue4).
    ^self
! !

"lib.ic method 0x200060b8; bytecode file offset 0x42100"
!EmUser methodsFor: 'recovered'!
inheritedUserFieldAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue2) userInheritedUserFieldAtPutFor: (self) atName: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20008ac8; bytecode file offset 0x44af4"
!EmUser methodsFor: 'recovered'!
= recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := EmUser.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) uniqueName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) uniqueName.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000a890; bytecode file offset 0x468d0"
!EmUser methodsFor: 'recovered'!
record
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := (self) uniqueName.
    recoveredValue4 := [
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := MxEMc84.
    recoveredBlock10Value1 := (self) uniqueName.
    recoveredBlock10Value2 := (recoveredBlock10Value0) bindWith: (recoveredBlock10Value1).
    recoveredBlock10Value3 := (self) error: (recoveredBlock10Value2).
    recoveredBlock10Value3
].
    recoveredValue5 := (recoveredValue2) userRecordFor: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"lib.ic method 0x2000b124; bytecode file offset 0x47158"
!EmUser methodsFor: 'recovered'!
fullName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EmLibrary.
    recoveredValue1 := (recoveredValue0) default.
    recoveredValue2 := (recoveredValue1) operationsInterface.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := [
    ^nil
].
    (recoveredValue2) userFullNameFor: (self) fullName: (recoveredValue3) ifNotAllowed: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (self) primFullName: (recoveredValue5).
    ^recoveredValue6
! !

"lib.ic method 0x2000bb94; bytecode file offset 0x47bc0"
!EmUser methodsFor: 'recovered'!
networkName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := recoveredArg1.
    recoveredBlock4Value2 := (recoveredBlock4Value1) asLowercase.
    recoveredBlock4Value3 := [
    ^nil
].
    recoveredBlock4Value4 := (recoveredBlock4Value0) networkName: (recoveredBlock4Value2) ifNotAllowed: (recoveredBlock4Value3).
    recoveredBlock4Value4
].
    (self) updateRecordWith: (recoveredValue0).
    ^self
! !

