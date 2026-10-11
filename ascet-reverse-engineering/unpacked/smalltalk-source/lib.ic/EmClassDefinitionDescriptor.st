"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x200006f0; bytecode file offset 0x3c804"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
reservedInstanceVariables
    ^#('self' 'super' 'true' 'false' 'nil')
! !

"lib.ic method 0x200008c8; bytecode file offset 0x3cba0"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
instSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allInstVarNames.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"lib.ic method 0x20001248; bytecode file offset 0x3d26c"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
classVarNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := classVars.
    recoveredValue1 := (recoveredValue0) asSet.
    ^recoveredValue1
! !

"lib.ic method 0x20001b20; bytecode file offset 0x3db74"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
createNewMeta
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) image.
    recoveredValue2 := (recoveredValue1) createNewMeta.
    ^recoveredValue2
! !

"lib.ic method 0x200025e0; bytecode file offset 0x3e600"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
classInstVarNames
    | recoveredValue0 |
    recoveredValue0 := classInstVars.
    ^recoveredValue0
! !

"lib.ic method 0x20002610; bytecode file offset 0x3e638"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
environment
    | recoveredValue0 |
    recoveredValue0 := environment.
    ^recoveredValue0
! !

"lib.ic method 0x20002644; bytecode file offset 0x3e664"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
application
    | recoveredValue0 |
    recoveredValue0 := application.
    ^recoveredValue0
! !

"lib.ic method 0x20002658; bytecode file offset 0x3e688"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
existingClass
    | recoveredValue0 |
    recoveredValue0 := existingClass.
    ^recoveredValue0
! !

"lib.ic method 0x2000267c; bytecode file offset 0x3e6a4"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
newClass
    | recoveredValue0 |
    recoveredValue0 := newClass.
    ^recoveredValue0
! !

"lib.ic method 0x20002698; bytecode file offset 0x3e6b8"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
requestedChange
    | recoveredValue0 |
    recoveredValue0 := requestedChange.
    ^recoveredValue0
! !

"lib.ic method 0x20002a84; bytecode file offset 0x3eaac"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
isInstalled
    ^false
! !

"lib.ic method 0x20002d58; bytecode file offset 0x3ed7c"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
setClassInstVarNames: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asArray.
    classInstVars := recoveredValue1.
    ^self
! !

"lib.ic method 0x200030e0; bytecode file offset 0x3f110"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
waitingForSuperclass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := status.
    recoveredValue1 := (recoveredValue0) == ('waitingForSuperclass').
    ^recoveredValue1
! !

"lib.ic method 0x200030ec; bytecode file offset 0x3f110"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
waitingToBeCreated
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := status.
    recoveredValue1 := (recoveredValue0) == ('canBeCreated').
    ^recoveredValue1
! !

"lib.ic method 0x20004174; bytecode file offset 0x401bc"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
report: recoveredArg1 andExit: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) creatorClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) report: (recoveredValue1) andExit: (recoveredValue2).
    ^self
! !

"lib.ic method 0x200049bc; bytecode file offset 0x409e4"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
setClassVarNames: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    classVars := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004a1c; bytecode file offset 0x40a44"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
newClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    newClass := recoveredValue0.
    ^self
! !

"lib.ic method 0x20004a4c; bytecode file offset 0x40a6c"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
requestedChange: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    requestedChange := recoveredValue0.
    ^self
! !

"lib.ic method 0x20005154; bytecode file offset 0x41184"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
becomeVariableIfUnable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) instanceShape.
    recoveredValue1 := (self) isVariableMask.
    recoveredValue2 := (recoveredValue0) bitOr: (recoveredValue1).
    (self) instanceShape: (recoveredValue2).
    ^self
! !

"lib.ic method 0x20006668; bytecode file offset 0x42698"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) environmentKey.
    recoveredValue2 := (recoveredValue1) , (':').
    recoveredValue3 := status.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    (recoveredValue0) nextPutAll: (recoveredValue4).
    ^self
! !

"lib.ic method 0x20008b24; bytecode file offset 0x44b58"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
existingClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'MxEMb28'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            existingClass := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20009848; bytecode file offset 0x45874"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
newSuperclass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInstalled.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) newClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000a39c; bytecode file offset 0x463c4"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
equals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == recoveredStack3) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) environmentKey.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) environmentKey.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2 ~~ recoveredStack3) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) environment.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"lib.ic method 0x2000b708; bytecode file offset 0x47734"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
hasInvalidCharacter: recoveredArg1
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
            recoveredBlock7Stack2 := InvalidCharacters.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack3 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includes: (recoveredBlock7Stack3).
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 25].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 24.
        ].
        recoveredBlock7Step = 24 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"lib.ic method 0x2000bb60; bytecode file offset 0x47b8c"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
classVariableAssociationFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVariableAssociationFor: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVariableAssociationFor: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000cc30; bytecode file offset 0x48c6c"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
newMetaSuperclass
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) classClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInstalled.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) newClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000ecf0; bytecode file offset 0x4ad30"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
allClassInstVarNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInstVarNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInstalled.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) allClassInstVarNames.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) classInstVarNames.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200104e8; bytecode file offset 0x4c528"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
checkSharedPoolNamesIfInvalid: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sharedPoolNames.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := (self) environment.
    recoveredBlock5Value1 := recoveredBlock5Arg1.
    recoveredBlock5Value2 := [
    | recoveredBlock5Block16Value0 recoveredBlock5Block16Value1 recoveredBlock5Block16Value2 recoveredBlock5Block16Value3 recoveredBlock5Block16Value4 recoveredBlock5Block16Value5 |
    recoveredBlock5Block16Value0 := MxEMbsES11.
    recoveredBlock5Block16Value1 := recoveredBlock5Arg1.
    recoveredBlock5Block16Value2 := (recoveredBlock5Block16Value1) storeString.
    recoveredBlock5Block16Value3 := (recoveredBlock5Block16Value0) bindWith: (recoveredBlock5Block16Value2).
    recoveredBlock5Block16Value4 := recoveredArg1.
    recoveredBlock5Block16Value5 := (self) report: (recoveredBlock5Block16Value3) andExit: (recoveredBlock5Block16Value4).
    recoveredBlock5Block16Value5
].
    recoveredBlock5Value3 := (recoveredBlock5Value0) poolDictionaryAt: (recoveredBlock5Value1) ifAbsent: (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"lib.ic method 0x20012b28; bytecode file offset 0x4eb74"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
createClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := status.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'canBeCreated'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := 'MxEMb27'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) createNewClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) majorChangesRequired.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) cloneExistingClass.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) changeExistingClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) newClass.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20014e6c; bytecode file offset 0x50eac"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
majorChangesRequired
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instanceShape.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCharactersFlag.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitInvert.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) bitAnd: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceShape.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) existingClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCharactersFlag.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitInvert.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) bitAnd: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstVarNames.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) allClassInstVarNames.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) allInstVarNames.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001764c; bytecode file offset 0x536b0"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
createNewClass
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := (self) createNewMeta.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) newMetaSuperclass.
    (recoveredValue2) superclass: (recoveredValue3).
    recoveredValue4 := recoveredValue1.
    (recoveredValue4) initializeMethodDictionary.
    recoveredValue5 := (self) newMetaSuperclass.
    recoveredValue6 := (recoveredValue5) instanceShape.
    recoveredValue7 := (self) classInstVarNames.
    (recoveredValue1) instanceShape: (recoveredValue6) instVarNames: (recoveredValue7).
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) newPrimaryInstance.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) newSuperclass.
    (recoveredValue10) superclass: (recoveredValue11).
    recoveredValue12 := recoveredValue9.
    (recoveredValue12) initializeMethodDictionary.
    recoveredValue13 := recoveredValue9.
    recoveredValue14 := (self) environmentKey.
    (recoveredValue13) setClassName: (recoveredValue14).
    recoveredValue15 := recoveredValue9.
    recoveredValue16 := (self) instanceShape.
    recoveredValue17 := (self) instVarNames.
    (recoveredValue15) instanceShape: (recoveredValue16) instVarNames: (recoveredValue17).
    recoveredValue18 := recoveredValue9.
    recoveredValue19 := (self) classPool.
    (recoveredValue18) setClassPool: (recoveredValue19).
    recoveredValue20 := recoveredValue9.
    recoveredValue21 := (self) sharedPoolNames.
    (recoveredValue20) setSharedPoolNames: (recoveredValue21).
    (self) newClass: (recoveredValue9).
    ^self
! !

"lib.ic method 0x2001c090; bytecode file offset 0x580f0"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
checkSuperclassIfInvalid: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) creatorClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) environment.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) superclass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclassFor: (recoveredStack2) in: (recoveredStack3) toMatch: (recoveredStack4) ifUndefined: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) superclass: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInstalled.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'canBeSubclassed'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) respondsTo: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) canBeSubclassed.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'MxEMb26'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001d66c; bytecode file offset 0x596bc"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
createMetaClone
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVariable.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicSize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicNew: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicNew.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) instSize.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) instVarAt: (recoveredStack4).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) instVarAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 40] ifFalse: [recoveredLocal1 := nil. recoveredPC := 62]] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) basicAt: (recoveredStack4).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) basicAt: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 72] ifFalse: [recoveredLocal1 := nil. recoveredPC := 94]] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) primaryInstance: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001e340; bytecode file offset 0x5a3a8"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
checkClassNameIfInvalid: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) environmentKey.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInvalidCharacter: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'MxEMb22'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) environmentKey.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := Symbol.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isKindOf: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) environmentKey.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) environmentKey.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := $A.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := $Z.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := 'MxEMb23'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) environmentKey.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) storeString.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 106] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001f690; bytecode file offset 0x5b710"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
cloneExistingClass
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) createMetaClone.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) newMetaSuperclass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) superclass: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) forgetSubclasses.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) newMetaSuperclass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceShape.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) classInstVarNames.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) instanceShape: (recoveredStack1) instVarNames: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) newPrimaryInstance.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) newSuperclass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) superclass: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := (recoveredStack3) instanceShape.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := (recoveredStack4) instVarNames.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack2) instanceShape: (recoveredStack3) instVarNames: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) classPool.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) setClassPool: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) sharedPoolNames.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) setSharedPoolNames: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) newClass: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 81].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) newClass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) enableApplicationProtocol.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) newClass.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) initializeInstVarsFrom: (recoveredStack1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) newClass.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) regenerateMethodsFrom: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) newClass.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) environment.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) regenerateMethodsFrom: (recoveredStack1) using: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200216d4; bytecode file offset 0x5d74c"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
changeExistingClass
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInstalled.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) newClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 65] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) disconnectFromSuper.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) environment.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) classClass.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 55.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) superclass: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) superclass: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) connectToSuper.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceShape.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) classInstVarNames.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) instanceShape: (recoveredStack1) instVarNames: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) instanceShape.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) instVarNames.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) instanceShape: (recoveredStack2) instVarNames: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := (recoveredStack2) classPool.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) setClassPool: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) sharedPoolNames.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) setSharedPoolNames: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) environment.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) rebindVariableReferencesUsing: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) environment.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) rebindVariableReferencesUsing: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) recomputeSpecialMethods.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) recomputeSpecialMethods.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) newClass: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20021d34; bytecode file offset 0x5dd9c"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
changeDuplicatedVariable: recoveredArg1 type: recoveredArg2 superclass: recoveredArg3 orAbort: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := requestedChange.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) environment.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'MxEMb13'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack5 := (recoveredStack5) storeString.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) confirm: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'MxEMb14'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack5 := (recoveredStack5) storeString.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack6 := recoveredArg3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack6 := (recoveredStack6) name.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) report: (recoveredStack2) andExit: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 137.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInstalled.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) requestedChange.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) environment.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) owningImage.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := 'MxEMb15'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack5 := (recoveredStack5) storeString.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack6 := (recoveredStack6) name.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := NlsCatEMb.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := 'MxEMb16'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := (recoveredStack2) residentMsg: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack5 := (recoveredStack5) storeString.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack6 := (recoveredStack6) name.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) bindWith: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5) with: (recoveredStack6).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredArg4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) report: (recoveredStack2) andExit: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x200246a4; bytecode file offset 0x60710"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
changeVariable: recoveredArg1 type: recoveredArg2 uppercase: recoveredArg3 orAbort: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasInvalidCharacter: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'MxEMb17'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) storeString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := $A.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := $Z.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) between: (recoveredStack1) and: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := NlsCatEMb.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := 'MxEMb18'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := NlsCatEMb.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 'MxEMb19'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) residentMsg: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := (recoveredStack3) storeString.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) bindWith: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) reservedInstanceVariables.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 130] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'MxEMb20'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := (recoveredStack4) storeString.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20027454; bytecode file offset 0x634d8"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
canBeCreated
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := status.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'initialized'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) waitingForSuperclass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) classAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) checkClassNameIfInvalid: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) environmentKey.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesKey: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := NlsCatEMb.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'MxEMb12'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) residentMsg: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) environmentKey.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) confirm: (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) environment.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) environmentKey.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) classAt: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) existingClass: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := 'waitingForSuperclass'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            status := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) checkSuperclassIfInvalid: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack0) checkClassInstVarsIfInvalid: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack0) checkInstVarsIfInvalid: (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := requestedChange.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack0) checkInstanceFormatIfInvalid: (recoveredStack1).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack0) checkInheritedChangesToInstanceFormatIfInvalid: (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) checkClassVarsIfInvalid: (recoveredStack1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := [
    ^false
].
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack0) checkSharedPoolNamesIfInvalid: (recoveredStack1).
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := 'canBeCreated'.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            status := recoveredStack0.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20028334; bytecode file offset 0x643a4"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
checkInheritedChangesToInstanceFormatIfInvalid: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPointers.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSuperclasses.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block2800544cArg1 | 
    | block2800544cValue0 block2800544cValue1 block2800544cValue2 |
    block2800544cValue0 := block2800544cArg1.
    block2800544cValue1 := (block2800544cValue0) instVarNames.
    block2800544cValue2 := (block2800544cValue1) notEmpty.
    block2800544cValue2
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock32Value0 |
    recoveredBlock32Value0 := (self) superclass.
    recoveredBlock32Value0
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := MxEMbsES2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVariable.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVariable.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) becomeVariableIfUnable: (recoveredStack1).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldType.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclass.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) fieldType.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 210] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPointers.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := MxEMbsES5.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := (recoveredStack2) superclass.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 210.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPointers.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 138] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVariable.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 189].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := [:recoveredBlock147Arg1 | 
    | recoveredBlock147Stack0 recoveredBlock147Stack1 recoveredBlock147Stack2 recoveredBlock147Stack3 recoveredBlock147PC recoveredBlock147Step recoveredBlock147Done recoveredBlock147Result |
    recoveredBlock147Stack0 := self.
    recoveredBlock147PC := 154.
    recoveredBlock147Done := false.
    [recoveredBlock147Done not] whileTrue: [
        recoveredBlock147Step := recoveredBlock147PC.
        recoveredBlock147Step = 154 ifTrue: [
            recoveredBlock147Stack1 := nil.
            recoveredBlock147PC := 155.
        ].
        recoveredBlock147Step = 155 ifTrue: [
            recoveredBlock147Stack2 := recoveredBlock147Arg1.
            recoveredBlock147PC := 156.
        ].
        recoveredBlock147Step = 156 ifTrue: [
            recoveredBlock147Stack2 := (recoveredBlock147Stack2) isVariable.
            recoveredBlock147PC := 158.
        ].
        recoveredBlock147Step = 158 ifTrue: [
            (recoveredBlock147Stack2) ifTrue: [recoveredBlock147PC := 162] ifFalse: [recoveredBlock147PC := 168].
        ].
        recoveredBlock147Step = 162 ifTrue: [
            recoveredBlock147PC := 163.
        ].
        recoveredBlock147Step = 163 ifTrue: [
            recoveredBlock147Stack1 := recoveredBlock147Arg1.
            recoveredBlock147PC := 164.
        ].
        recoveredBlock147Step = 164 ifTrue: [
            recoveredBlock147Stack2 := recoveredBlock147Stack1.
            recoveredBlock147PC := 165.
        ].
        recoveredBlock147Step = 165 ifTrue: [
            recoveredLocal1 := recoveredBlock147Stack2.
            recoveredBlock147PC := 168.
        ].
        recoveredBlock147Step = 168 ifTrue: [
            recoveredBlock147Result := recoveredBlock147Stack1.
            recoveredBlock147Done := true.
        ].
    ].
    recoveredBlock147Result
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) allSuperclassesDo: (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := MxEMbsES3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredPC := 210.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := MxEMbsES4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := (recoveredStack2) superclass.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20028e98; bytecode file offset 0x64f14"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
checkInstanceFormatIfInvalid: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBits.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isFixed.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) existingClass.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) instanceShape.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) instVarNames.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) instanceShape: (recoveredStack1) instVarNames: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBits.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldType.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) fieldType.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) allLiveInstances.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 69] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := MxEMbsES6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPointers.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := MxEMbsES7.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) superclass.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVariable.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 128] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVariable.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 128].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) becomeVariableIfUnable: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) fieldType.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) superclass.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := (recoveredStack1) fieldType.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 218] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPointers.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := MxEMbsES8.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := (recoveredStack3) superclass.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) isPointers.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 202].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) isVariable.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 198].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := MxEMbsES9.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := (recoveredStack3) superclass.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 218.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := MxEMbsES10.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := (recoveredStack3) superclass.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002a05c; bytecode file offset 0x660c8"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
checkInstVarsIfInvalid: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarNames.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarNames.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarNames.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Stack0 recoveredBlock79Stack1 recoveredBlock79Stack2 recoveredBlock79Stack3 recoveredBlock79Stack4 recoveredBlock79Stack5 recoveredBlock79Stack6 recoveredBlock79Stack7 recoveredBlock79PC recoveredBlock79Step recoveredBlock79Done recoveredBlock79Result |
    recoveredBlock79Stack0 := self.
    recoveredBlock79PC := 86.
    recoveredBlock79Done := false.
    [recoveredBlock79Done not] whileTrue: [
        recoveredBlock79Step := recoveredBlock79PC.
        recoveredBlock79Step = 86 ifTrue: [
            recoveredBlock79Stack1 := recoveredLocal4.
            recoveredBlock79PC := 89.
        ].
        recoveredBlock79Step = 89 ifTrue: [
            recoveredBlock79Stack2 := recoveredBlock79Arg1.
            recoveredBlock79PC := 90.
        ].
        recoveredBlock79Step = 90 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) includes: (recoveredBlock79Stack2).
            recoveredBlock79PC := 92.
        ].
        recoveredBlock79Step = 92 ifTrue: [
            (recoveredBlock79Stack1) ifTrue: [recoveredBlock79PC := 96] ifFalse: [recoveredBlock79PC := 100].
        ].
        recoveredBlock79Step = 96 ifTrue: [
            recoveredBlock79Stack1 := recoveredBlock79Arg1.
            recoveredBlock79PC := 97.
        ].
        recoveredBlock79Step = 97 ifTrue: [
            recoveredBlock79PC := 115.
        ].
        recoveredBlock79Step = 100 ifTrue: [
            recoveredBlock79Stack1 := self.
            recoveredBlock79PC := 101.
        ].
        recoveredBlock79Step = 101 ifTrue: [
            recoveredBlock79Stack2 := recoveredBlock79Arg1.
            recoveredBlock79PC := 102.
        ].
        recoveredBlock79Step = 102 ifTrue: [
            recoveredBlock79Stack3 := NlsCatEMb.
            recoveredBlock79PC := 104.
        ].
        recoveredBlock79Step = 104 ifTrue: [
            recoveredBlock79Stack4 := 'MxEMb25'.
            recoveredBlock79PC := 106.
        ].
        recoveredBlock79Step = 106 ifTrue: [
            recoveredBlock79Stack3 := (recoveredBlock79Stack3) residentMsg: (recoveredBlock79Stack4).
            recoveredBlock79PC := 108.
        ].
        recoveredBlock79Step = 108 ifTrue: [
            recoveredBlock79Stack4 := false.
            recoveredBlock79PC := 109.
        ].
        recoveredBlock79Step = 109 ifTrue: [
            recoveredBlock79Stack5 := recoveredArg1.
            recoveredBlock79PC := 112.
        ].
        recoveredBlock79Step = 112 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) changeVariable: (recoveredBlock79Stack2) type: (recoveredBlock79Stack3) uppercase: (recoveredBlock79Stack4) orAbort: (recoveredBlock79Stack5).
            recoveredBlock79PC := 115.
        ].
        recoveredBlock79Step = 115 ifTrue: [
            recoveredLocal1 := recoveredBlock79Stack1.
            recoveredBlock79PC := 118.
        ].
        recoveredBlock79Step = 118 ifTrue: [
            recoveredBlock79Stack1 := recoveredLocal2.
            recoveredBlock79PC := 121.
        ].
        recoveredBlock79Step = 121 ifTrue: [
            recoveredBlock79Stack2 := recoveredLocal1.
            recoveredBlock79PC := 124.
        ].
        recoveredBlock79Step = 124 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) includes: (recoveredBlock79Stack2).
            recoveredBlock79PC := 126.
        ].
        recoveredBlock79Step = 126 ifTrue: [
            (recoveredBlock79Stack1) ifTrue: [recoveredBlock79PC := 130] ifFalse: [recoveredBlock79PC := 150].
        ].
        recoveredBlock79Step = 130 ifTrue: [
            recoveredBlock79Stack1 := self.
            recoveredBlock79PC := 131.
        ].
        recoveredBlock79Step = 131 ifTrue: [
            recoveredBlock79Stack2 := recoveredLocal1.
            recoveredBlock79PC := 134.
        ].
        recoveredBlock79Step = 134 ifTrue: [
            recoveredBlock79Stack3 := NlsCatEMb.
            recoveredBlock79PC := 136.
        ].
        recoveredBlock79Step = 136 ifTrue: [
            recoveredBlock79Stack4 := 'MxEMb25'.
            recoveredBlock79PC := 138.
        ].
        recoveredBlock79Step = 138 ifTrue: [
            recoveredBlock79Stack3 := (recoveredBlock79Stack3) residentMsg: (recoveredBlock79Stack4).
            recoveredBlock79PC := 140.
        ].
        recoveredBlock79Step = 140 ifTrue: [
            recoveredBlock79Stack4 := self.
            recoveredBlock79PC := 141.
        ].
        recoveredBlock79Step = 141 ifTrue: [
            recoveredBlock79Stack5 := recoveredArg1.
            recoveredBlock79PC := 144.
        ].
        recoveredBlock79Step = 144 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) changeDuplicatedVariable: (recoveredBlock79Stack2) type: (recoveredBlock79Stack3) superclass: (recoveredBlock79Stack4) orAbort: (recoveredBlock79Stack5).
            recoveredBlock79PC := 147.
        ].
        recoveredBlock79Step = 147 ifTrue: [
            recoveredLocal1 := recoveredBlock79Stack1.
            recoveredBlock79PC := 150.
        ].
        recoveredBlock79Step = 150 ifTrue: [
            recoveredBlock79Stack1 := recoveredLocal3.
            recoveredBlock79PC := 153.
        ].
        recoveredBlock79Step = 153 ifTrue: [
            recoveredBlock79Stack2 := recoveredLocal1.
            recoveredBlock79PC := 156.
        ].
        recoveredBlock79Step = 156 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) includes: (recoveredBlock79Stack2).
            recoveredBlock79PC := 158.
        ].
        recoveredBlock79Step = 158 ifTrue: [
            (recoveredBlock79Stack1) ifTrue: [recoveredBlock79PC := 162] ifFalse: [recoveredBlock79PC := 210].
        ].
        recoveredBlock79Step = 162 ifTrue: [
            recoveredBlock79Stack1 := self.
            recoveredBlock79PC := 163.
        ].
        recoveredBlock79Step = 163 ifTrue: [
            recoveredBlock79Stack2 := recoveredLocal1.
            recoveredBlock79PC := 166.
        ].
        recoveredBlock79Step = 166 ifTrue: [
            recoveredBlock79Stack3 := NlsCatEMb.
            recoveredBlock79PC := 168.
        ].
        recoveredBlock79Step = 168 ifTrue: [
            recoveredBlock79Stack4 := 'MxEMb25'.
            recoveredBlock79PC := 170.
        ].
        recoveredBlock79Step = 170 ifTrue: [
            recoveredBlock79Stack3 := (recoveredBlock79Stack3) residentMsg: (recoveredBlock79Stack4).
            recoveredBlock79PC := 172.
        ].
        recoveredBlock79Step = 172 ifTrue: [
            recoveredBlock79Stack4 := self.
            recoveredBlock79PC := 173.
        ].
        recoveredBlock79Step = 173 ifTrue: [
            recoveredBlock79Stack4 := (recoveredBlock79Stack4) allSuperclasses.
            recoveredBlock79PC := 175.
        ].
        recoveredBlock79Step = 175 ifTrue: [
            recoveredBlock79Stack5 := [:recoveredBlock79Block175Arg1 | 
    | recoveredBlock79Block175Value0 recoveredBlock79Block175Value1 recoveredBlock79Block175Value2 recoveredBlock79Block175Value3 |
    recoveredBlock79Block175Value0 := recoveredBlock79Block175Arg1.
    recoveredBlock79Block175Value1 := (recoveredBlock79Block175Value0) instVarNames.
    recoveredBlock79Block175Value2 := recoveredLocal1.
    recoveredBlock79Block175Value3 := (recoveredBlock79Block175Value1) includes: (recoveredBlock79Block175Value2).
    recoveredBlock79Block175Value3
].
            recoveredBlock79PC := 190.
        ].
        recoveredBlock79Step = 190 ifTrue: [
            recoveredBlock79Stack6 := [
    | recoveredBlock79Block190Value0 |
    recoveredBlock79Block190Value0 := (self) superclass.
    recoveredBlock79Block190Value0
].
            recoveredBlock79PC := 199.
        ].
        recoveredBlock79Step = 199 ifTrue: [
            recoveredBlock79Stack4 := (recoveredBlock79Stack4) detect: (recoveredBlock79Stack5) ifNone: (recoveredBlock79Stack6).
            recoveredBlock79PC := 201.
        ].
        recoveredBlock79Step = 201 ifTrue: [
            recoveredBlock79Stack5 := recoveredArg1.
            recoveredBlock79PC := 204.
        ].
        recoveredBlock79Step = 204 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) changeDuplicatedVariable: (recoveredBlock79Stack2) type: (recoveredBlock79Stack3) superclass: (recoveredBlock79Stack4) orAbort: (recoveredBlock79Stack5).
            recoveredBlock79PC := 207.
        ].
        recoveredBlock79Step = 207 ifTrue: [
            recoveredLocal1 := recoveredBlock79Stack1.
            recoveredBlock79PC := 210.
        ].
        recoveredBlock79Step = 210 ifTrue: [
            recoveredBlock79Stack1 := nil.
            recoveredBlock79PC := 211.
        ].
        recoveredBlock79Step = 211 ifTrue: [
            recoveredBlock79Stack2 := recoveredLocal1.
            recoveredBlock79PC := 214.
        ].
        recoveredBlock79Step = 214 ifTrue: [
            (recoveredBlock79Stack2 == nil) ifTrue: [recoveredBlock79PC := 227] ifFalse: [recoveredBlock79PC := 218].
        ].
        recoveredBlock79Step = 218 ifTrue: [
            recoveredBlock79PC := 219.
        ].
        recoveredBlock79Step = 219 ifTrue: [
            recoveredBlock79Stack1 := recoveredLocal2.
            recoveredBlock79PC := 222.
        ].
        recoveredBlock79Step = 222 ifTrue: [
            recoveredBlock79Stack2 := recoveredLocal1.
            recoveredBlock79PC := 225.
        ].
        recoveredBlock79Step = 225 ifTrue: [
            recoveredBlock79Stack1 := (recoveredBlock79Stack1) add: (recoveredBlock79Stack2).
            recoveredBlock79PC := 227.
        ].
        recoveredBlock79Step = 227 ifTrue: [
            recoveredBlock79Result := recoveredBlock79Stack1.
            recoveredBlock79Done := true.
        ].
    ].
    recoveredBlock79Result
].
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack0) setInstVarNames: (recoveredStack1).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002b068; bytecode file offset 0x670f8"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
named: recoveredArg1 in: recoveredArg2 for: recoveredArg3 subclassOf: recoveredArg4 instanceShape: recoveredArg5 classInstanceVariables: recoveredArg6 instanceVariables: recoveredArg7 classVariables: recoveredArg8 sharedPoolNames: recoveredArg9
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) superclass: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) setClassName: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            environment := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            application := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) instanceShape: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg6.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := [:block280055d8Arg1 | 
    | block280055d8Value0 block280055d8Value1 |
    block280055d8Value0 := block280055d8Arg1.
    block280055d8Value1 := (block280055d8Value0) isSBString.
    block280055d8Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := MxEMbsES12.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg7.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := [:block280055fcArg1 | 
    | block280055fcValue0 block280055fcValue1 |
    block280055fcValue0 := block280055fcArg1.
    block280055fcValue1 := (block280055fcValue0) isSBString.
    block280055fcValue1
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := MxEMbsES13.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredArg8.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:block28005620Arg1 | 
    | block28005620Value0 block28005620Value1 |
    block28005620Value0 := block28005620Arg1.
    block28005620Value1 := (block28005620Value0) isSBString.
    block28005620Value1
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := MxEMbsES14.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg9.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := [:block28005644Arg1 | 
    | block28005644Value0 block28005644Value1 |
    block28005644Value0 := block28005644Arg1.
    block28005644Value1 := (block28005644Value0) isSBString.
    block28005644Value1
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 176] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := MxEMbsES15.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            (recoveredStack0) report: (recoveredStack1) andExit: (recoveredStack2).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := recoveredArg6.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := [:block28005668Arg1 | 
    | block28005668Value0 block28005668Value1 |
    block28005668Value0 := block28005668Arg1.
    block28005668Value1 := (block28005668Value0) asString.
    block28005668Value1
].
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) setClassInstVarNames: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredArg7.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := [:block2800568cArg1 | 
    | block2800568cValue0 block2800568cValue1 |
    block2800568cValue0 := block2800568cArg1.
    block2800568cValue1 := (block2800568cValue0) asString.
    block2800568cValue1
].
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) setInstVarNames: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredArg8.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := [:block280056b0Arg1 | 
    | block280056b0Value0 block280056b0Value1 |
    block280056b0Value0 := block280056b0Arg1.
    block280056b0Value1 := (block280056b0Value0) asString.
    block280056b0Value1
].
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            (recoveredStack0) setClassVarNames: (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := recoveredArg9.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := [:block280056d4Arg1 | 
    | block280056d4Value0 block280056d4Value1 |
    block280056d4Value0 := block280056d4Arg1.
    block280056d4Value1 := (block280056d4Value0) asSymbol.
    block280056d4Value1
].
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack0) setSharedPoolNames: (recoveredStack1).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack0 := 'initialized'.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            status := recoveredStack0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002cbd4; bytecode file offset 0x68c64"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
checkClassVarsIfInvalid: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) allClassVarNames.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) classPool.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) classVarNames.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51Stack5 recoveredBlock51Stack6 recoveredBlock51Stack7 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal5.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 62.
        ].
        recoveredBlock51Step = 62 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) includesKey: (recoveredBlock51Stack2).
            recoveredBlock51PC := 64.
        ].
        recoveredBlock51Step = 64 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 68] ifFalse: [recoveredBlock51PC := 72].
        ].
        recoveredBlock51Step = 68 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51PC := 87.
        ].
        recoveredBlock51Step = 72 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 74.
        ].
        recoveredBlock51Step = 74 ifTrue: [
            recoveredBlock51Stack3 := NlsCatEMb.
            recoveredBlock51PC := 76.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51Stack4 := 'MxEMb24'.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) residentMsg: (recoveredBlock51Stack4).
            recoveredBlock51PC := 80.
        ].
        recoveredBlock51Step = 80 ifTrue: [
            recoveredBlock51Stack4 := true.
            recoveredBlock51PC := 81.
        ].
        recoveredBlock51Step = 81 ifTrue: [
            recoveredBlock51Stack5 := recoveredArg1.
            recoveredBlock51PC := 84.
        ].
        recoveredBlock51Step = 84 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) changeVariable: (recoveredBlock51Stack2) type: (recoveredBlock51Stack3) uppercase: (recoveredBlock51Stack4) orAbort: (recoveredBlock51Stack5).
            recoveredBlock51PC := 87.
        ].
        recoveredBlock51Step = 87 ifTrue: [
            recoveredLocal3 := recoveredBlock51Stack1.
            recoveredBlock51PC := 90.
        ].
        recoveredBlock51Step = 90 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal6.
            recoveredBlock51PC := 93.
        ].
        recoveredBlock51Step = 93 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal3.
            recoveredBlock51PC := 96.
        ].
        recoveredBlock51Step = 96 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) includes: (recoveredBlock51Stack2).
            recoveredBlock51PC := 98.
        ].
        recoveredBlock51Step = 98 ifTrue: [
            (recoveredBlock51Stack1) ifTrue: [recoveredBlock51PC := 102] ifFalse: [recoveredBlock51PC := 151].
        ].
        recoveredBlock51Step = 102 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 103.
        ].
        recoveredBlock51Step = 103 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal3.
            recoveredBlock51PC := 106.
        ].
        recoveredBlock51Step = 106 ifTrue: [
            recoveredBlock51Stack3 := NlsCatEMb.
            recoveredBlock51PC := 108.
        ].
        recoveredBlock51Step = 108 ifTrue: [
            recoveredBlock51Stack4 := 'MxEMb24'.
            recoveredBlock51PC := 110.
        ].
        recoveredBlock51Step = 110 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) residentMsg: (recoveredBlock51Stack4).
            recoveredBlock51PC := 112.
        ].
        recoveredBlock51Step = 112 ifTrue: [
            recoveredBlock51Stack4 := self.
            recoveredBlock51PC := 113.
        ].
        recoveredBlock51Step = 113 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) allSuperclasses.
            recoveredBlock51PC := 115.
        ].
        recoveredBlock51Step = 115 ifTrue: [
            recoveredBlock51Stack5 := [:recoveredBlock51Block115Arg1 | 
    | recoveredBlock51Block115Value0 recoveredBlock51Block115Value1 recoveredBlock51Block115Value2 recoveredBlock51Block115Value3 |
    recoveredBlock51Block115Value0 := recoveredBlock51Block115Arg1.
    recoveredBlock51Block115Value1 := (recoveredBlock51Block115Value0) classPool.
    recoveredBlock51Block115Value2 := recoveredLocal3.
    recoveredBlock51Block115Value3 := (recoveredBlock51Block115Value1) includesKey: (recoveredBlock51Block115Value2).
    recoveredBlock51Block115Value3
].
            recoveredBlock51PC := 131.
        ].
        recoveredBlock51Step = 131 ifTrue: [
            recoveredBlock51Stack6 := [
    | recoveredBlock51Block131Value0 |
    recoveredBlock51Block131Value0 := (self) superclass.
    recoveredBlock51Block131Value0
].
            recoveredBlock51PC := 140.
        ].
        recoveredBlock51Step = 140 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) detect: (recoveredBlock51Stack5) ifNone: (recoveredBlock51Stack6).
            recoveredBlock51PC := 142.
        ].
        recoveredBlock51Step = 142 ifTrue: [
            recoveredBlock51Stack5 := recoveredArg1.
            recoveredBlock51PC := 145.
        ].
        recoveredBlock51Step = 145 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) changeDuplicatedVariable: (recoveredBlock51Stack2) type: (recoveredBlock51Stack3) superclass: (recoveredBlock51Stack4) orAbort: (recoveredBlock51Stack5).
            recoveredBlock51PC := 148.
        ].
        recoveredBlock51Step = 148 ifTrue: [
            recoveredLocal3 := recoveredBlock51Stack1.
            recoveredBlock51PC := 151.
        ].
        recoveredBlock51Step = 151 ifTrue: [
            recoveredBlock51Stack1 := nil.
            recoveredBlock51PC := 152.
        ].
        recoveredBlock51Step = 152 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal3.
            recoveredBlock51PC := 155.
        ].
        recoveredBlock51Step = 155 ifTrue: [
            (recoveredBlock51Stack2 == nil) ifTrue: [recoveredBlock51PC := 194] ifFalse: [recoveredBlock51PC := 158].
        ].
        recoveredBlock51Step = 158 ifTrue: [
            recoveredBlock51PC := 159.
        ].
        recoveredBlock51Step = 159 ifTrue: [
            recoveredBlock51Stack1 := self.
            recoveredBlock51PC := 160.
        ].
        recoveredBlock51Step = 160 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal3.
            recoveredBlock51PC := 163.
        ].
        recoveredBlock51Step = 163 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) classVariableAssociationFor: (recoveredBlock51Stack2).
            recoveredBlock51PC := 165.
        ].
        recoveredBlock51Step = 165 ifTrue: [
            recoveredLocal2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 168.
        ].
        recoveredBlock51Step = 168 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal2.
            recoveredBlock51PC := 171.
        ].
        recoveredBlock51Step = 171 ifTrue: [
            (recoveredBlock51Stack1 ~~ nil) ifTrue: [recoveredBlock51PC := 186] ifFalse: [recoveredBlock51PC := 174].
        ].
        recoveredBlock51Step = 174 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal4.
            recoveredBlock51PC := 177.
        ].
        recoveredBlock51Step = 177 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal3.
            recoveredBlock51PC := 180.
        ].
        recoveredBlock51Step = 180 ifTrue: [
            recoveredBlock51Stack3 := nil.
            recoveredBlock51PC := 181.
        ].
        recoveredBlock51Step = 181 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) at: (recoveredBlock51Stack2) put: (recoveredBlock51Stack3).
            recoveredBlock51PC := 183.
        ].
        recoveredBlock51Step = 183 ifTrue: [
            recoveredBlock51PC := 194.
        ].
        recoveredBlock51Step = 186 ifTrue: [
            recoveredBlock51Stack1 := recoveredLocal4.
            recoveredBlock51PC := 189.
        ].
        recoveredBlock51Step = 189 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal2.
            recoveredBlock51PC := 192.
        ].
        recoveredBlock51Step = 192 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) add: (recoveredBlock51Stack2).
            recoveredBlock51PC := 194.
        ].
        recoveredBlock51Step = 194 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Stack0 recoveredBlock200Stack1 recoveredBlock200Stack2 recoveredBlock200Stack3 recoveredBlock200Stack4 recoveredBlock200Stack5 recoveredBlock200PC recoveredBlock200Step recoveredBlock200Done recoveredBlock200Result |
    recoveredBlock200Stack0 := self.
    recoveredBlock200PC := 206.
    recoveredBlock200Done := false.
    [recoveredBlock200Done not] whileTrue: [
        recoveredBlock200Step := recoveredBlock200PC.
        recoveredBlock200Step = 206 ifTrue: [
            recoveredBlock200Stack1 := nil.
            recoveredBlock200PC := 207.
        ].
        recoveredBlock200Step = 207 ifTrue: [
            recoveredBlock200Stack2 := recoveredLocal4.
            recoveredBlock200PC := 210.
        ].
        recoveredBlock200Step = 210 ifTrue: [
            recoveredBlock200Stack3 := recoveredBlock200Arg1.
            recoveredBlock200PC := 211.
        ].
        recoveredBlock200Step = 211 ifTrue: [
            recoveredBlock200Stack3 := (recoveredBlock200Stack3) key.
            recoveredBlock200PC := 213.
        ].
        recoveredBlock200Step = 213 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) includesKey: (recoveredBlock200Stack3).
            recoveredBlock200PC := 215.
        ].
        recoveredBlock200Step = 215 ifTrue: [
            (recoveredBlock200Stack2) ifTrue: [recoveredBlock200PC := 282] ifFalse: [recoveredBlock200PC := 218].
        ].
        recoveredBlock200Step = 218 ifTrue: [
            recoveredBlock200PC := 219.
        ].
        recoveredBlock200Step = 219 ifTrue: [
            recoveredBlock200Stack1 := self.
            recoveredBlock200PC := 220.
        ].
        recoveredBlock200Step = 220 ifTrue: [
            recoveredLocal1 := recoveredBlock200Stack1.
            recoveredBlock200PC := 223.
        ].
        recoveredBlock200Step = 223 ifTrue: [
            recoveredBlock200PC := 262.
        ].
        recoveredBlock200Step = 226 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal1.
            recoveredBlock200PC := 229.
        ].
        recoveredBlock200Step = 229 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) classPool.
            recoveredBlock200PC := 231.
        ].
        recoveredBlock200Step = 231 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg1.
            recoveredBlock200PC := 232.
        ].
        recoveredBlock200Step = 232 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) key.
            recoveredBlock200PC := 234.
        ].
        recoveredBlock200Step = 234 ifTrue: [
            recoveredBlock200Stack3 := [
    self
].
            recoveredBlock200PC := 241.
        ].
        recoveredBlock200Step = 241 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) at: (recoveredBlock200Stack2) ifAbsent: (recoveredBlock200Stack3).
            recoveredBlock200PC := 243.
        ].
        recoveredBlock200Step = 243 ifTrue: [
            (recoveredBlock200Stack1 ~~ nil) ifTrue: [recoveredBlock200PC := 262] ifFalse: [recoveredBlock200PC := 246].
        ].
        recoveredBlock200Step = 246 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal1.
            recoveredBlock200PC := 249.
        ].
        recoveredBlock200Step = 249 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) classPool.
            recoveredBlock200PC := 251.
        ].
        recoveredBlock200Step = 251 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 252.
        ].
        recoveredBlock200Step = 252 ifTrue: [
            recoveredBlock200Stack3 := recoveredBlock200Arg1.
            recoveredBlock200PC := 253.
        ].
        recoveredBlock200Step = 253 ifTrue: [
            recoveredBlock200Stack3 := (recoveredBlock200Stack3) key.
            recoveredBlock200PC := 255.
        ].
        recoveredBlock200Step = 255 ifTrue: [
            recoveredBlock200Stack4 := [].
            recoveredBlock200PC := 257.
        ].
        recoveredBlock200Step = 257 ifTrue: [
            (recoveredBlock200Stack2) removeKey: (recoveredBlock200Stack3) ifAbsent: (recoveredBlock200Stack4).
            recoveredBlock200PC := 259.
        ].
        recoveredBlock200Step = 259 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg1.
            recoveredBlock200PC := 260.
        ].
        recoveredBlock200Step = 260 ifTrue: [
            (recoveredBlock200Stack1) add: (recoveredBlock200Stack2).
            recoveredBlock200PC := 262.
        ].
        recoveredBlock200Step = 262 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal1.
            recoveredBlock200PC := 265.
        ].
        recoveredBlock200Step = 265 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) superclass.
            recoveredBlock200PC := 266.
        ].
        recoveredBlock200Step = 266 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 267.
        ].
        recoveredBlock200Step = 267 ifTrue: [
            recoveredLocal1 := recoveredBlock200Stack2.
            recoveredBlock200PC := 270.
        ].
        recoveredBlock200Step = 270 ifTrue: [
            (recoveredBlock200Stack1 == nil) ifTrue: [recoveredBlock200PC := 281] ifFalse: [recoveredBlock200PC := 274].
        ].
        recoveredBlock200Step = 274 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal1.
            recoveredBlock200PC := 277.
        ].
        recoveredBlock200Step = 277 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) isInstalled.
            recoveredBlock200PC := 279.
        ].
        recoveredBlock200Step = 279 ifTrue: [
            (recoveredBlock200Stack1) ifTrue: [recoveredBlock200PC := 281] ifFalse: [recoveredBlock200PC := 226].
        ].
        recoveredBlock200Step = 281 ifTrue: [
            recoveredBlock200Stack1 := nil.
            recoveredBlock200PC := 282.
        ].
        recoveredBlock200Step = 282 ifTrue: [
            recoveredBlock200Result := recoveredBlock200Stack1.
            recoveredBlock200Done := true.
        ].
    ].
    recoveredBlock200Result
].
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack0) setClassPool: (recoveredStack1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2002de24; bytecode file offset 0x69eb0"
!EmClassDefinitionDescriptor methodsFor: 'recovered'!
checkClassInstVarsIfInvalid: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInstVarNames.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) existingClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) instVarNames.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) environment.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) owningImage.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) classClass.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInstalled.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) allInstVarNames.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) superclass.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) allClassInstVarNames.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInstVarNames.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) classInstVarNames.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Stack0 recoveredBlock107Stack1 recoveredBlock107Stack2 recoveredBlock107Stack3 recoveredBlock107Stack4 recoveredBlock107Stack5 recoveredBlock107Stack6 recoveredBlock107Stack7 recoveredBlock107PC recoveredBlock107Step recoveredBlock107Done recoveredBlock107Result |
    recoveredBlock107Stack0 := self.
    recoveredBlock107PC := 114.
    recoveredBlock107Done := false.
    [recoveredBlock107Done not] whileTrue: [
        recoveredBlock107Step := recoveredBlock107PC.
        recoveredBlock107Step = 114 ifTrue: [
            recoveredBlock107Stack1 := recoveredLocal4.
            recoveredBlock107PC := 117.
        ].
        recoveredBlock107Step = 117 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Arg1.
            recoveredBlock107PC := 118.
        ].
        recoveredBlock107Step = 118 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) includes: (recoveredBlock107Stack2).
            recoveredBlock107PC := 120.
        ].
        recoveredBlock107Step = 120 ifTrue: [
            (recoveredBlock107Stack1) ifTrue: [recoveredBlock107PC := 124] ifFalse: [recoveredBlock107PC := 128].
        ].
        recoveredBlock107Step = 124 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Arg1.
            recoveredBlock107PC := 125.
        ].
        recoveredBlock107Step = 125 ifTrue: [
            recoveredBlock107PC := 143.
        ].
        recoveredBlock107Step = 128 ifTrue: [
            recoveredBlock107Stack1 := self.
            recoveredBlock107PC := 129.
        ].
        recoveredBlock107Step = 129 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Arg1.
            recoveredBlock107PC := 130.
        ].
        recoveredBlock107Step = 130 ifTrue: [
            recoveredBlock107Stack3 := NlsCatEMb.
            recoveredBlock107PC := 132.
        ].
        recoveredBlock107Step = 132 ifTrue: [
            recoveredBlock107Stack4 := 'MxEMb21'.
            recoveredBlock107PC := 134.
        ].
        recoveredBlock107Step = 134 ifTrue: [
            recoveredBlock107Stack3 := (recoveredBlock107Stack3) residentMsg: (recoveredBlock107Stack4).
            recoveredBlock107PC := 136.
        ].
        recoveredBlock107Step = 136 ifTrue: [
            recoveredBlock107Stack4 := false.
            recoveredBlock107PC := 137.
        ].
        recoveredBlock107Step = 137 ifTrue: [
            recoveredBlock107Stack5 := recoveredArg1.
            recoveredBlock107PC := 140.
        ].
        recoveredBlock107Step = 140 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) changeVariable: (recoveredBlock107Stack2) type: (recoveredBlock107Stack3) uppercase: (recoveredBlock107Stack4) orAbort: (recoveredBlock107Stack5).
            recoveredBlock107PC := 143.
        ].
        recoveredBlock107Step = 143 ifTrue: [
            recoveredLocal1 := recoveredBlock107Stack1.
            recoveredBlock107PC := 146.
        ].
        recoveredBlock107Step = 146 ifTrue: [
            recoveredBlock107Stack1 := recoveredLocal2.
            recoveredBlock107PC := 149.
        ].
        recoveredBlock107Step = 149 ifTrue: [
            recoveredBlock107Stack2 := recoveredLocal1.
            recoveredBlock107PC := 152.
        ].
        recoveredBlock107Step = 152 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) includes: (recoveredBlock107Stack2).
            recoveredBlock107PC := 154.
        ].
        recoveredBlock107Step = 154 ifTrue: [
            (recoveredBlock107Stack1) ifTrue: [recoveredBlock107PC := 158] ifFalse: [recoveredBlock107PC := 178].
        ].
        recoveredBlock107Step = 158 ifTrue: [
            recoveredBlock107Stack1 := self.
            recoveredBlock107PC := 159.
        ].
        recoveredBlock107Step = 159 ifTrue: [
            recoveredBlock107Stack2 := recoveredLocal1.
            recoveredBlock107PC := 162.
        ].
        recoveredBlock107Step = 162 ifTrue: [
            recoveredBlock107Stack3 := NlsCatEMb.
            recoveredBlock107PC := 164.
        ].
        recoveredBlock107Step = 164 ifTrue: [
            recoveredBlock107Stack4 := 'MxEMb21'.
            recoveredBlock107PC := 166.
        ].
        recoveredBlock107Step = 166 ifTrue: [
            recoveredBlock107Stack3 := (recoveredBlock107Stack3) residentMsg: (recoveredBlock107Stack4).
            recoveredBlock107PC := 168.
        ].
        recoveredBlock107Step = 168 ifTrue: [
            recoveredBlock107Stack4 := self.
            recoveredBlock107PC := 169.
        ].
        recoveredBlock107Step = 169 ifTrue: [
            recoveredBlock107Stack5 := recoveredArg1.
            recoveredBlock107PC := 172.
        ].
        recoveredBlock107Step = 172 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) changeDuplicatedVariable: (recoveredBlock107Stack2) type: (recoveredBlock107Stack3) superclass: (recoveredBlock107Stack4) orAbort: (recoveredBlock107Stack5).
            recoveredBlock107PC := 175.
        ].
        recoveredBlock107Step = 175 ifTrue: [
            recoveredLocal1 := recoveredBlock107Stack1.
            recoveredBlock107PC := 178.
        ].
        recoveredBlock107Step = 178 ifTrue: [
            recoveredBlock107Stack1 := recoveredLocal3.
            recoveredBlock107PC := 181.
        ].
        recoveredBlock107Step = 181 ifTrue: [
            recoveredBlock107Stack2 := recoveredLocal1.
            recoveredBlock107PC := 184.
        ].
        recoveredBlock107Step = 184 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) includes: (recoveredBlock107Stack2).
            recoveredBlock107PC := 186.
        ].
        recoveredBlock107Step = 186 ifTrue: [
            (recoveredBlock107Stack1) ifTrue: [recoveredBlock107PC := 190] ifFalse: [recoveredBlock107PC := 289].
        ].
        recoveredBlock107Step = 190 ifTrue: [
            recoveredBlock107Stack1 := self.
            recoveredBlock107PC := 191.
        ].
        recoveredBlock107Step = 191 ifTrue: [
            recoveredBlock107Stack2 := recoveredLocal1.
            recoveredBlock107PC := 194.
        ].
        recoveredBlock107Step = 194 ifTrue: [
            recoveredBlock107Stack3 := NlsCatEMb.
            recoveredBlock107PC := 196.
        ].
        recoveredBlock107Step = 196 ifTrue: [
            recoveredBlock107Stack4 := 'MxEMb21'.
            recoveredBlock107PC := 198.
        ].
        recoveredBlock107Step = 198 ifTrue: [
            recoveredBlock107Stack3 := (recoveredBlock107Stack3) residentMsg: (recoveredBlock107Stack4).
            recoveredBlock107PC := 200.
        ].
        recoveredBlock107Step = 200 ifTrue: [
            recoveredBlock107Stack4 := self.
            recoveredBlock107PC := 201.
        ].
        recoveredBlock107Step = 201 ifTrue: [
            recoveredBlock107Stack4 := (recoveredBlock107Stack4) allSuperclasses.
            recoveredBlock107PC := 203.
        ].
        recoveredBlock107Step = 203 ifTrue: [
            recoveredBlock107Stack5 := [:recoveredBlock107Block203Arg1 | 
    | recoveredBlock107Block203Stack0 recoveredBlock107Block203Stack1 recoveredBlock107Block203Stack2 recoveredBlock107Block203PC recoveredBlock107Block203Step recoveredBlock107Block203Done recoveredBlock107Block203Result |
    recoveredBlock107Block203Stack0 := self.
    recoveredBlock107Block203PC := 210.
    recoveredBlock107Block203Done := false.
    [recoveredBlock107Block203Done not] whileTrue: [
        recoveredBlock107Block203Step := recoveredBlock107Block203PC.
        recoveredBlock107Block203Step = 210 ifTrue: [
            recoveredBlock107Block203Stack0 := (recoveredBlock107Block203Stack0) superclass.
            recoveredBlock107Block203PC := 212.
        ].
        recoveredBlock107Block203Step = 212 ifTrue: [
            recoveredBlock107Block203Stack0 := (recoveredBlock107Block203Stack0) isInstalled.
            recoveredBlock107Block203PC := 214.
        ].
        recoveredBlock107Block203Step = 214 ifTrue: [
            (recoveredBlock107Block203Stack0) ifTrue: [recoveredBlock107Block203PC := 218] ifFalse: [recoveredBlock107Block203PC := 228].
        ].
        recoveredBlock107Block203Step = 218 ifTrue: [
            recoveredBlock107Block203Stack0 := self.
            recoveredBlock107Block203PC := 219.
        ].
        recoveredBlock107Block203Step = 219 ifTrue: [
            recoveredBlock107Block203Stack0 := (recoveredBlock107Block203Stack0) superclass.
            recoveredBlock107Block203PC := 221.
        ].
        recoveredBlock107Block203Step = 221 ifTrue: [
            recoveredBlock107Block203Stack0 := (recoveredBlock107Block203Stack0) class.
            recoveredBlock107Block203PC := 223.
        ].
        recoveredBlock107Block203Step = 223 ifTrue: [
            recoveredBlock107Block203Stack0 := (recoveredBlock107Block203Stack0) instVarNames.
            recoveredBlock107Block203PC := 225.
        ].
        recoveredBlock107Block203Step = 225 ifTrue: [
            recoveredBlock107Block203PC := 232.
        ].
        recoveredBlock107Block203Step = 228 ifTrue: [
            recoveredBlock107Block203Stack0 := self.
            recoveredBlock107Block203PC := 229.
        ].
        recoveredBlock107Block203Step = 229 ifTrue: [
            recoveredBlock107Block203Stack0 := (recoveredBlock107Block203Stack0) superclass.
            recoveredBlock107Block203PC := 231.
        ].
        recoveredBlock107Block203Step = 231 ifTrue: [
            recoveredBlock107Block203Stack0 := (recoveredBlock107Block203Stack0) classInstVarNames.
            recoveredBlock107Block203PC := 232.
        ].
        recoveredBlock107Block203Step = 232 ifTrue: [
            recoveredBlock107Block203Stack1 := recoveredLocal1.
            recoveredBlock107Block203PC := 235.
        ].
        recoveredBlock107Block203Step = 235 ifTrue: [
            recoveredBlock107Block203Stack0 := (recoveredBlock107Block203Stack0) includes: (recoveredBlock107Block203Stack1).
            recoveredBlock107Block203PC := 237.
        ].
        recoveredBlock107Block203Step = 237 ifTrue: [
            recoveredBlock107Block203Result := recoveredBlock107Block203Stack0.
            recoveredBlock107Block203Done := true.
        ].
    ].
    recoveredBlock107Block203Result
].
            recoveredBlock107PC := 238.
        ].
        recoveredBlock107Step = 238 ifTrue: [
            recoveredBlock107Stack6 := [
    | recoveredBlock107Block238Value0 recoveredBlock107Block238Value1 recoveredBlock107Block238Value2 recoveredBlock107Block238Value3 recoveredBlock107Block238Value4 recoveredBlock107Block238Value5 |
    recoveredBlock107Block238Value0 := (self) owningImage.
    recoveredBlock107Block238Value1 := (recoveredBlock107Block238Value0) classClass.
    recoveredBlock107Block238Value2 := (recoveredBlock107Block238Value1) withAllSuperclasses.
    recoveredBlock107Block238Value3 := [:recoveredBlock107Block238Block250Arg1 | 
    | recoveredBlock107Block238Block250Value0 recoveredBlock107Block238Block250Value1 recoveredBlock107Block238Block250Value2 recoveredBlock107Block238Block250Value3 |
    recoveredBlock107Block238Block250Value0 := recoveredBlock107Block238Block250Arg1.
    recoveredBlock107Block238Block250Value1 := (recoveredBlock107Block238Block250Value0) instVarNames.
    recoveredBlock107Block238Block250Value2 := recoveredLocal1.
    recoveredBlock107Block238Block250Value3 := (recoveredBlock107Block238Block250Value1) includes: (recoveredBlock107Block238Block250Value2).
    recoveredBlock107Block238Block250Value3
].
    recoveredBlock107Block238Value4 := [
    | recoveredBlock107Block238Block265Value0 |
    recoveredBlock107Block238Block265Value0 := (self) superclass.
    recoveredBlock107Block238Block265Value0
].
    recoveredBlock107Block238Value5 := (recoveredBlock107Block238Value2) detect: (recoveredBlock107Block238Value3) ifNone: (recoveredBlock107Block238Value4).
    recoveredBlock107Block238Value5
].
            recoveredBlock107PC := 278.
        ].
        recoveredBlock107Step = 278 ifTrue: [
            recoveredBlock107Stack4 := (recoveredBlock107Stack4) detect: (recoveredBlock107Stack5) ifNone: (recoveredBlock107Stack6).
            recoveredBlock107PC := 280.
        ].
        recoveredBlock107Step = 280 ifTrue: [
            recoveredBlock107Stack5 := recoveredArg1.
            recoveredBlock107PC := 283.
        ].
        recoveredBlock107Step = 283 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) changeDuplicatedVariable: (recoveredBlock107Stack2) type: (recoveredBlock107Stack3) superclass: (recoveredBlock107Stack4) orAbort: (recoveredBlock107Stack5).
            recoveredBlock107PC := 286.
        ].
        recoveredBlock107Step = 286 ifTrue: [
            recoveredLocal1 := recoveredBlock107Stack1.
            recoveredBlock107PC := 289.
        ].
        recoveredBlock107Step = 289 ifTrue: [
            recoveredBlock107Stack1 := nil.
            recoveredBlock107PC := 290.
        ].
        recoveredBlock107Step = 290 ifTrue: [
            recoveredBlock107Stack2 := recoveredLocal1.
            recoveredBlock107PC := 293.
        ].
        recoveredBlock107Step = 293 ifTrue: [
            (recoveredBlock107Stack2 == nil) ifTrue: [recoveredBlock107PC := 305] ifFalse: [recoveredBlock107PC := 296].
        ].
        recoveredBlock107Step = 296 ifTrue: [
            recoveredBlock107PC := 297.
        ].
        recoveredBlock107Step = 297 ifTrue: [
            recoveredBlock107Stack1 := recoveredLocal2.
            recoveredBlock107PC := 300.
        ].
        recoveredBlock107Step = 300 ifTrue: [
            recoveredBlock107Stack2 := recoveredLocal1.
            recoveredBlock107PC := 303.
        ].
        recoveredBlock107Step = 303 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) add: (recoveredBlock107Stack2).
            recoveredBlock107PC := 305.
        ].
        recoveredBlock107Step = 305 ifTrue: [
            recoveredBlock107Result := recoveredBlock107Stack1.
            recoveredBlock107Done := true.
        ].
    ].
    recoveredBlock107Result
].
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack0) setClassInstVarNames: (recoveredStack1).
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

