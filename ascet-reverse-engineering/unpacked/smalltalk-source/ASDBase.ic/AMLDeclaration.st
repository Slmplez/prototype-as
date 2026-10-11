"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001ebf0; bytecode file offset 0x92209c"
!AMLDeclaration methodsFor: 'recovered'!
enumerationBaseName
    ^'AMLDeclaration'
! !

"ASDBase.ic method 0x20040eb8; bytecode file offset 0x93d83c"
!AMLDeclaration methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20053b44; bytecode file offset 0x9505d0"
!AMLDeclaration methodsFor: 'recovered'!
restoreInstVars: recoveredArg1
    (self) restoreParents.
    ^self
! !

"ASDBase.ic method 0x200619d8; bytecode file offset 0x95e838"
!AMLDeclaration methodsFor: 'recovered'!
generateRootClassName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generateRootClassNamePrefix.
    recoveredValue1 := (recoveredValue0) , ('Structs').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006df30; bytecode file offset 0x96a9dc"
!AMLDeclaration methodsFor: 'recovered'!
path
    | recoveredValue0 |
    recoveredValue0 := path.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e58c; bytecode file offset 0x96af48"
!AMLDeclaration methodsFor: 'recovered'!
errors
    | recoveredValue0 |
    recoveredValue0 := errors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084b7c; bytecode file offset 0x981ca4"
!AMLDeclaration methodsFor: 'recovered'!
putKeyWordAndNameIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putLevelIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200c4520; bytecode file offset 0x9c11bc"
!AMLDeclaration methodsFor: 'recovered'!
path: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    path := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x201208d0; bytecode file offset 0xa1d194"
!AMLDeclaration methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super getFrom: (recoveredValue0).
    (self) collectKeyWords.
    (self) checkParent.
    ^self
! !

"ASDBase.ic method 0x2012128c; bytecode file offset 0xa1db50"
!AMLDeclaration methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    (recoveredValue0) BlockDepth: (0).
    recoveredValue1 := recoveredArg1.
    super putIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2013a9c8; bytecode file offset 0xa37280"
!AMLDeclaration methodsFor: 'recovered'!
localName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) enumerationBaseName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20151be0; bytecode file offset 0xa4e4a8"
!AMLDeclaration methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    errors := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    definitions := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x2016b96c; bytecode file offset 0xa68248"
!AMLDeclaration methodsFor: 'recovered'!
copyForReduceParts
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super copyForReduceParts.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := path.
    (recoveredValue2) path: (recoveredValue3).
    recoveredValue4 := errors.
    (recoveredValue1) errors: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2016b984; bytecode file offset 0xa68248"
!AMLDeclaration methodsFor: 'recovered'!
copyTree
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super copyTree.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := path.
    (recoveredValue2) path: (recoveredValue3).
    recoveredValue4 := errors.
    (recoveredValue1) errors: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x2017c8b0; bytecode file offset 0xa79174"
!AMLDeclaration methodsFor: 'recovered'!
copyForReduceParts: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super copyForReduceParts: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := path.
    (recoveredValue3) path: (recoveredValue4).
    recoveredValue5 := errors.
    (recoveredValue2) errors: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2020ef5c; bytecode file offset 0xb0b82c"
!AMLDeclaration methodsFor: 'recovered'!
addError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) ErrorLog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) ErrorLog.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 'AmlError'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) printString.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) log: (recoveredStack1) name: (recoveredStack2) error: (recoveredStack3) message: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := errors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026bebc; bytecode file offset 0xb68780"
!AMLDeclaration methodsFor: 'recovered'!
getDefinition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := definitions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    (self) etasDevHalt.
    nil
].
    recoveredValue3 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Stack0 recoveredBlock18Stack1 recoveredBlock18Stack2 recoveredBlock18Stack3 recoveredBlock18PC recoveredBlock18Step recoveredBlock18Done recoveredBlock18Result |
    recoveredBlock18Stack0 := self.
    recoveredBlock18PC := 24.
    recoveredBlock18Done := false.
    [recoveredBlock18Done not] whileTrue: [
        recoveredBlock18Step := recoveredBlock18PC.
        recoveredBlock18Step = 24 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 25.
        ].
        recoveredBlock18Step = 25 ifTrue: [
            recoveredBlock18Stack1 := (recoveredBlock18Stack1) parent.
            recoveredBlock18PC := 26.
        ].
        recoveredBlock18Step = 26 ifTrue: [
            (recoveredBlock18Stack1 ~~ nil) ifTrue: [recoveredBlock18PC := 34] ifFalse: [recoveredBlock18PC := 30].
        ].
        recoveredBlock18Step = 30 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 31.
        ].
        recoveredBlock18Step = 31 ifTrue: [
            recoveredBlock18Stack2 := self.
            recoveredBlock18PC := 32.
        ].
        recoveredBlock18Step = 32 ifTrue: [
            (recoveredBlock18Stack1) parent: (recoveredBlock18Stack2).
            recoveredBlock18PC := 34.
        ].
        recoveredBlock18Step = 34 ifTrue: [
            recoveredBlock18Stack1 := recoveredBlock18Arg1.
            recoveredBlock18PC := 35.
        ].
        recoveredBlock18Step = 35 ifTrue: [
            recoveredBlock18Result := recoveredBlock18Stack1.
            recoveredBlock18Done := true.
        ].
    ].
    recoveredBlock18Result
].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2) ifPresent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202a587c; bytecode file offset 0xba214c"
!AMLDeclaration methodsFor: 'recovered'!
getName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) position.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    super getName: (recoveredValue2).
    recoveredValue3 := (self) keyWords.
    recoveredValue4 := name.
    recoveredValue5 := [:recoveredBlock22Arg1 | 
    | recoveredBlock22Value0 recoveredBlock22Value1 recoveredBlock22Value2 |
    name := 'undefined'.
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := recoveredLocal1.
    recoveredBlock22Value2 := (recoveredBlock22Value0) position: (recoveredBlock22Value1).
    recoveredBlock22Value2
].
    (recoveredValue3) at: (recoveredValue4) ifPresent: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2031d0c8; bytecode file offset 0xc19990"
!AMLDeclaration methodsFor: 'recovered'!
addDefinition: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := definitions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) typeName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) name.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) typeName: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock35Value0 |
    recoveredBlock35Value0 := recoveredArg1.
    recoveredBlock35Value0
].
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 |
    recoveredBlock46Value0 := (self) etasDevHalt.
    recoveredBlock46Value0
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsentPut: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036c210; bytecode file offset 0xc68ae0"
!AMLDeclaration methodsFor: 'recovered'!
getTaggedStructFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) name.
    recoveredBlock6Value2 := recoveredArg1.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := [].
    recoveredValue3 := (recoveredValue0) detect: (recoveredValue1) ifNone: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := [
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 |
    recoveredBlock27Value0 := parts.
    recoveredBlock27Value1 := [:recoveredBlock27Block36Arg1 | 
    | recoveredBlock27Block36Value0 recoveredBlock27Block36Value1 recoveredBlock27Block36Value2 recoveredBlock27Block36Value3 recoveredBlock27Block36Value4 |
    recoveredBlock27Block36Value0 := recoveredBlock27Block36Arg1.
    recoveredBlock27Block36Value1 := recoveredArg1.
    recoveredBlock27Block36Value2 := (recoveredBlock27Block36Value0) getTaggedStructFor: (recoveredBlock27Block36Value1).
    recoveredBlock27Block36Value3 := [:recoveredBlock27Block36Block47Arg1 | 
    | recoveredBlock27Block36Block47Value0 |
    recoveredBlock27Block36Block47Value0 := recoveredBlock27Block36Block47Arg1.
    ^recoveredBlock27Block36Block47Value0
].
    recoveredBlock27Block36Value4 := (recoveredBlock27Block36Value2) ifNotNil: (recoveredBlock27Block36Value3).
    recoveredBlock27Block36Value4
].
    recoveredBlock27Value2 := (recoveredBlock27Value0) do: (recoveredBlock27Value1).
    recoveredBlock27Value2
].
    (recoveredValue3) ifNil: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x20405f88; bytecode file offset 0xd02880"
!AMLDeclaration methodsFor: 'recovered'!
generateRootClassNamePrefix
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280fa620Arg1 | 
    | block280fa620Value0 block280fa620Value1 block280fa620Value2 |
    block280fa620Value0 := block280fa620Arg1.
    block280fa620Value1 := (block280fa620Value0) name.
    block280fa620Value2 := (block280fa620Value1) = ('IF_DATA').
    block280fa620Value2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock18Value0 |
    recoveredBlock18Value0 := (self) etasDevHalt.
    recoveredBlock18Value0
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) definition.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) definition.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) isClass.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) or: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) parts.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) definition.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) asLowercase.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstAsUppercase.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := $_.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyWithout: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := 'AML'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x204e9574; bytecode file offset 0xde5e90"
!AMLDeclaration methodsFor: 'recovered'!
generateRootClass
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) generateRootClassName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'RT'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredLocal4.
    recoveredBlock24Value1 := ('Create ') , (recoveredBlock24Value0).
    recoveredBlock24Value2 := (recoveredBlock24Value1) , (' first ').
    recoveredBlock24Value3 := (self) error: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := Smalltalk.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSymbol.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock54Value0 recoveredBlock54Value1 recoveredBlock54Value2 recoveredBlock54Value3 recoveredBlock54Value4 |
    recoveredBlock54Value0 := AMLStructs.
    recoveredBlock54Value1 := recoveredLocal1.
    recoveredBlock54Value2 := (recoveredBlock54Value1) asSymbol.
    recoveredBlock54Value3 := (recoveredBlock54Value0) subclass: (recoveredBlock54Value2) instanceVariableNames: ('') classVariableNames: ('') poolDictionaries: ('').
    recoveredLocal3 := recoveredBlock54Value3.
    recoveredBlock54Value4 := recoveredLocal3.
    recoveredBlock54Value4
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := [:block28109054Arg1 | 
    | block28109054Value0 |
    block28109054Value0 := block28109054Arg1.
    block28109054Value0
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := WriteStream.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'createFor: aml '.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := '| new |'.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 'new := self new .'.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := 'new aml: aml .'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := '^new'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := 'createFor:'.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack0) generateClassMethod: (recoveredStack1) source: (recoveredStack2) for: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20569328; bytecode file offset 0xe65c64"
!AMLDeclaration methodsFor: 'recovered'!
collectNamedOrIndexLeafes
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) clearValue.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := 'aml '.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            value := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) parts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:block28111514Arg1 | 
    | block28111514Value0 block28111514Value1 block28111514Value2 |
    block28111514Value0 := block28111514Arg1.
    block28111514Value1 := (block28111514Value0) name.
    block28111514Value2 := (block28111514Value1) = ('IF_DATA').
    block28111514Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectNamedOrIndex.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := [:block28111538Arg1 | 
    | block28111538Stack0 block28111538Stack1 block28111538Stack2 block28111538PC block28111538Step block28111538Done block28111538Result |
    block28111538Stack0 := self.
    block28111538PC := 4.
    block28111538Done := false.
    [block28111538Done not] whileTrue: [
        block28111538Step := block28111538PC.
        block28111538Step = 4 ifTrue: [
            block28111538Stack1 := block28111538Arg1.
            block28111538PC := 5.
        ].
        block28111538Step = 5 ifTrue: [
            block28111538Stack1 := (block28111538Stack1) isCollection.
            block28111538PC := 7.
        ].
        block28111538Step = 7 ifTrue: [
            (block28111538Stack1) ifTrue: [block28111538PC := 10] ifFalse: [block28111538PC := 14].
        ].
        block28111538Step = 10 ifTrue: [
            block28111538Stack1 := false.
            block28111538PC := 11.
        ].
        block28111538Step = 11 ifTrue: [
            block28111538PC := 18.
        ].
        block28111538Step = 14 ifTrue: [
            block28111538Stack1 := block28111538Arg1.
            block28111538PC := 15.
        ].
        block28111538Step = 15 ifTrue: [
            block28111538Stack1 := (block28111538Stack1) hasParts.
            block28111538PC := 17.
        ].
        block28111538Step = 17 ifTrue: [
            block28111538Stack1 := (block28111538Stack1) not.
            block28111538PC := 18.
        ].
        block28111538Step = 18 ifTrue: [
            block28111538Result := block28111538Stack1.
            block28111538Done := true.
        ].
    ].
    block28111538Result
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := [:block2811155cArg1 | 
    | block2811155cValue0 block2811155cValue1 |
    block2811155cValue0 := block2811155cArg1.
    block2811155cValue1 := (block2811155cValue0) subStrings: ($.).
    block2811155cValue1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) reduceNames: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := LookupTable.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := [:recoveredBlock105Arg1 :recoveredBlock105Arg2 | 
    | recoveredBlock105Local1 recoveredBlock105Local2 recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 recoveredBlock105Value4 recoveredBlock105Value5 recoveredBlock105Value6 recoveredBlock105Value7 recoveredBlock105Value8 recoveredBlock105Value9 recoveredBlock105Value10 recoveredBlock105Value11 recoveredBlock105Value12 recoveredBlock105Value13 |
    recoveredBlock105Local2 := ''.
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := recoveredBlock105Arg1.
    recoveredBlock105Value2 := (recoveredBlock105Value1) size.
    recoveredBlock105Value3 := (recoveredBlock105Value0) copyFrom: (2) to: (recoveredBlock105Value2).
    recoveredBlock105Value4 := [:recoveredBlock105Block129Arg1 | 
    | recoveredBlock105Block129Value0 recoveredBlock105Block129Value1 recoveredBlock105Block129Value2 recoveredBlock105Block129Value3 recoveredBlock105Block129Value4 |
    recoveredBlock105Block129Value0 := recoveredBlock105Local2.
    recoveredBlock105Block129Value1 := (recoveredBlock105Block129Value0) , ('.').
    recoveredBlock105Block129Value2 := recoveredBlock105Block129Arg1.
    recoveredBlock105Block129Value3 := (recoveredBlock105Block129Value1) , (recoveredBlock105Block129Value2).
    recoveredBlock105Block129Value4 := recoveredBlock105Block129Value3.
    recoveredBlock105Local2 := recoveredBlock105Block129Value4.
    recoveredBlock105Block129Value3
].
    (recoveredBlock105Value3) do: (recoveredBlock105Value4).
    recoveredBlock105Local1 := ''.
    recoveredBlock105Value5 := recoveredLocal1.
    recoveredBlock105Value6 := recoveredBlock105Arg2.
    recoveredBlock105Value7 := (recoveredBlock105Value5) at: (recoveredBlock105Value6).
    recoveredBlock105Value8 := [:recoveredBlock105Block166Arg1 | 
    | recoveredBlock105Block166Value0 recoveredBlock105Block166Value1 recoveredBlock105Block166Value2 recoveredBlock105Block166Value3 recoveredBlock105Block166Value4 |
    recoveredBlock105Block166Value0 := recoveredBlock105Local1.
    recoveredBlock105Block166Value1 := recoveredBlock105Block166Arg1.
    recoveredBlock105Block166Value2 := (recoveredBlock105Block166Value1) firstAsUppercase.
    recoveredBlock105Block166Value3 := (recoveredBlock105Block166Value0) , (recoveredBlock105Block166Value2).
    recoveredBlock105Block166Value4 := recoveredBlock105Block166Value3.
    recoveredBlock105Local1 := recoveredBlock105Block166Value4.
    recoveredBlock105Block166Value3
].
    (recoveredBlock105Value7) do: (recoveredBlock105Value8).
    recoveredBlock105Value9 := recoveredLocal3.
    recoveredBlock105Value10 := recoveredBlock105Local2.
    recoveredBlock105Value11 := [
    | recoveredBlock105Block193Value0 |
    recoveredBlock105Block193Value0 := (self) etasDevHalt.
    recoveredBlock105Block193Value0
].
    recoveredBlock105Value12 := [:recoveredBlock105Block203Arg1 | 
    | recoveredBlock105Block203Value0 recoveredBlock105Block203Value1 recoveredBlock105Block203Value2 recoveredBlock105Block203Value3 recoveredBlock105Block203Value4 recoveredBlock105Block203Value5 recoveredBlock105Block203Value6 recoveredBlock105Block203Value7 recoveredBlock105Block203Value8 |
    recoveredBlock105Block203Value0 := recoveredLocal4.
    recoveredBlock105Block203Value1 := recoveredBlock105Local1.
    recoveredBlock105Block203Value2 := recoveredBlock105Block203Arg1.
    (recoveredBlock105Block203Value0) at: (recoveredBlock105Block203Value1) put: (recoveredBlock105Block203Value2).
    recoveredBlock105Block203Value3 := recoveredBlock105Block203Arg1.
    recoveredBlock105Block203Value4 := recoveredBlock105Local1.
    recoveredBlock105Block203Value5 := recoveredBlock105Block203Arg1.
    recoveredBlock105Block203Value6 := (recoveredBlock105Block203Value5) value.
    recoveredBlock105Block203Value7 := (recoveredBlock105Block203Value4) , (recoveredBlock105Block203Value6).
    recoveredBlock105Block203Value8 := (recoveredBlock105Block203Value3) value: (recoveredBlock105Block203Value7).
    recoveredBlock105Block203Value8
].
    recoveredBlock105Value13 := (recoveredBlock105Value9) at: (recoveredBlock105Value10) ifAbsent: (recoveredBlock105Value11) ifPresent: (recoveredBlock105Value12).
    recoveredBlock105Value13
].
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

