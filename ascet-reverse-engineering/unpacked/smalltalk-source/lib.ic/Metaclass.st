"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200019b4; bytecode file offset 0x3da5c"
!Metaclass methodsFor: 'recovered'!
addClassVarName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) addClassVarName: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x200019c4; bytecode file offset 0x3da5c"
!Metaclass methodsFor: 'recovered'!
mustCompileMethodFirst: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) mustCompileMethodFirst: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20001a34; bytecode file offset 0x3da5c"
!Metaclass methodsFor: 'recovered'!
canMethodBeLinked: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) canMethodBeLinked: (recoveredValue1).
    ^recoveredValue2
! !

"lib.ic method 0x20004184; bytecode file offset 0x401bc"
!Metaclass methodsFor: 'recovered'!
currentUserCanModifyIn: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) currentUserCanModifyIn: (recoveredValue1) ifUnable: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20004194; bytecode file offset 0x401bc"
!Metaclass methodsFor: 'recovered'!
modifyIn: recoveredArg1 ifUnable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) modifyIn: (recoveredValue1) ifUnable: (recoveredValue2).
    ^self
! !

"lib.ic method 0x200066bc; bytecode file offset 0x426f4"
!Metaclass methodsFor: 'recovered'!
addInstVarName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (self) instVarNames.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asString.
    (recoveredValue3) add: (recoveredValue5).
    recoveredValue6 := (recoveredValue0) classInstanceVariables: (recoveredValue2).
    ^recoveredValue6
! !

"lib.ic method 0x2000728c; bytecode file offset 0x432c8"
!Metaclass methodsFor: 'recovered'!
removeInstVarName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) primaryInstance.
    recoveredValue1 := (self) instVarNames.
    recoveredValue2 := (recoveredValue1) asOrderedCollection.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := [].
    (recoveredValue3) remove: (recoveredValue5) ifAbsent: (recoveredValue6).
    recoveredValue7 := (recoveredValue0) classInstanceVariables: (recoveredValue2).
    ^recoveredValue7
! !

"lib.ic method 0x20007814; bytecode file offset 0x43844"
!Metaclass methodsFor: 'recovered'!
instanceVariableNames: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) instanceVariableString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryInstance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) subStrings.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInstanceVariables: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20007bf4; bytecode file offset 0x43c20"
!Metaclass methodsFor: 'recovered'!
residentClass
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryInstance.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

