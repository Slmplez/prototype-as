"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001d798; bytecode file offset 0x92209c"
!AMLCollection methodsFor: 'recovered'!
enumerationBaseName
    ^'AMLCol.'
! !

"ASDBase.ic method 0x200208e8; bytecode file offset 0x92209c"
!AMLCollection methodsFor: 'recovered'!
selectorPrefix
    ^'c'
! !

"ASDBase.ic method 0x200416e4; bytecode file offset 0x93e1a0"
!AMLCollection methodsFor: 'recovered'!
extraSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041bc4; bytecode file offset 0x93e560"
!AMLCollection methodsFor: 'recovered'!
generateClassName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) generateClassName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d958; bytecode file offset 0x95a210"
!AMLCollection methodsFor: 'recovered'!
maxPartSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := value.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (recoveredValue1) + (1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2009abb8; bytecode file offset 0x997488"
!AMLCollection methodsFor: 'recovered'!
generateClassAccessMethod: recoveredArg1 pathName: recoveredArg2 for: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) generateClassAccessMethodCollection: (recoveredValue1) pathName: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200d216c; bytecode file offset 0x9ceaf0"
!AMLCollection methodsFor: 'recovered'!
getCollectionAccessCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) getAccessCode.
    recoveredValue1 := (' ( ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' value defaultReturn: #() )').
    ^recoveredValue2
! !

"ASDBase.ic method 0x200ea2d0; bytecode file offset 0x9e6c94"
!AMLCollection methodsFor: 'recovered'!
collectNamedOrIndexInBase: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super collectNamedOrIndexInBase: (recoveredValue0).
    (self) etasDevHalt.
    ^self
! !

"ASDBase.ic method 0x2011fc3c; bytecode file offset 0xa1c524"
!AMLCollection methodsFor: 'recovered'!
putIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putKeyWordAndNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putPartsIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putEndIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2012b438; bytecode file offset 0xa27d1c"
!AMLCollection methodsFor: 'recovered'!
getAccessCode
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := parent.
    recoveredValue1 := (recoveredValue0) getAccessCode.
    recoveredValue2 := ('( ') , (recoveredValue1).
    recoveredValue3 := (self) localPartsAccessCode: (self).
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' ) ').
    ^recoveredValue5
! !

"ASDBase.ic method 0x201322e0; bytecode file offset 0xa2ebd4"
!AMLCollection methodsFor: 'recovered'!
putEndIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putLevelIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' ) *  ; ').
    recoveredValue2 := recoveredArg1.
    (self) putCommentIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20132310; bytecode file offset 0xa2ebd4"
!AMLCollection methodsFor: 'recovered'!
putBlockBeginIn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    (self) putLevelIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) nextPutAll: (' ( ').
    recoveredValue2 := recoveredArg1.
    (self) putCommentIn: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201424d4; bytecode file offset 0xa3ed98"
!AMLCollection methodsFor: 'recovered'!
generateClassName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) copyWithout: ($.).
    recoveredValue2 := (recoveredValue1) asCIdentifier.
    recoveredValue3 := (recoveredValue2) copyWithout: ($_).
    recoveredValue4 := ('AML') , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2015ca64; bytecode file offset 0xa59330"
!AMLCollection methodsFor: 'recovered'!
valueKeyWord
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) valueKeyWord.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201727c0; bytecode file offset 0xa6f088"
!AMLCollection methodsFor: 'recovered'!
collectNamedOrIndexLeafes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) parts.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectNamedOrIndexLeafes.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20178eb4; bytecode file offset 0xa75770"
!AMLCollection methodsFor: 'recovered'!
getMappingResultFor: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := value.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := recoveredBlock6Arg1.
    recoveredBlock6Value2 := recoveredArg2.
    recoveredBlock6Value3 := (recoveredBlock6Value0) getMappingResultFor: (recoveredBlock6Value1) with: (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := (recoveredValue0) collect: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201ce64c; bytecode file offset 0xacaf10"
!AMLCollection methodsFor: 'recovered'!
generateCode: recoveredArg1 pathName: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) generateCollectionCode: (recoveredStack2) pathName: (recoveredStack3) for: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201db050; bytecode file offset 0xad7924"
!AMLCollection methodsFor: 'recovered'!
putTaggedValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) hasAMLValue.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) putTaggedValueIn: (recoveredBlock6Stack2).
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201db064; bytecode file offset 0xad7924"
!AMLCollection methodsFor: 'recovered'!
putValueIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := value.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) hasAMLValue.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 18] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) putValueIn: (recoveredBlock6Stack2).
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20208118; bytecode file offset 0xb049fc"
!AMLCollection methodsFor: 'recovered'!
collectNamedOrIndexInForCol: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            super collectNamedOrIndexIn: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectNamedOrIndexInBaseCol: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20208134; bytecode file offset 0xb049fc"
!AMLCollection methodsFor: 'recovered'!
collectNamedOrIndexIn: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            super collectNamedOrIndexIn: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectNamedOrIndexInBase: (recoveredStack2) path: (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020f0b4; bytecode file offset 0xb0b970"
!AMLCollection methodsFor: 'recovered'!
getTaggedStructFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Local1 recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) getTaggedStructFor: (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Stack2.
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Local1 := recoveredBlock6Stack3.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            (recoveredBlock6Stack2 == nil) ifTrue: [recoveredBlock6PC := 27] ifFalse: [recoveredBlock6PC := 24].
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Local1.
            recoveredBlock6PC := 26.
        ].
        recoveredBlock6Step = 26 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 27 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20219c10; bytecode file offset 0xb164d8"
!AMLCollection methodsFor: 'recovered'!
restoreParents
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super restoreParents.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredBlock16Arg1.
    (recoveredBlock16Value0) parent: (self).
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) restoreParents.
    recoveredBlock16Value2
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20226030; bytecode file offset 0xb228ec"
!AMLCollection methodsFor: 'recovered'!
hasAMLValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack1 := nil.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            recoveredBlock14Stack2 := recoveredBlock14Arg1.
            recoveredBlock14PC := 22.
        ].
        recoveredBlock14Step = 22 ifTrue: [
            recoveredBlock14Stack2 := (recoveredBlock14Stack2) hasAMLValue.
            recoveredBlock14PC := 23.
        ].
        recoveredBlock14Step = 23 ifTrue: [
            (recoveredBlock14Stack2) ifTrue: [recoveredBlock14PC := 26] ifFalse: [recoveredBlock14PC := 29].
        ].
        recoveredBlock14Step = 26 ifTrue: [
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack1 := true.
            recoveredBlock14PC := 28.
        ].
        recoveredBlock14Step = 28 ifTrue: [
            ^recoveredBlock14Stack1
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack1.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20238124; bytecode file offset 0xb349ec"
!AMLCollection methodsFor: 'recovered'!
generateCode: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            (recoveredStack0) etasDevHalt.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := definition.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := definition.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) getDefinition: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) generateRootClass.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) generateStructClassFor: (recoveredStack1) root: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) collectNamedOrIndexLeafes.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024beb8; bytecode file offset 0xb4877c"
!AMLCollection methodsFor: 'recovered'!
printCOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := parts.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) id.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack3 := 0.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 33] ifFalse: [recoveredBlock6PC := 22].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := recoveredBlock6Arg1.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 27.
        ].
        recoveredBlock6Step = 27 ifTrue: [
            (recoveredBlock6Stack1) printCOn: (recoveredBlock6Stack2).
            recoveredBlock6PC := 29.
        ].
        recoveredBlock6Step = 29 ifTrue: [
            recoveredBlock6Stack1 := recoveredArg1.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) cr.
            recoveredBlock6PC := 33.
        ].
        recoveredBlock6Step = 33 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203344cc; bytecode file offset 0xc30d9c"
!AMLCollection methodsFor: 'recovered'!
putValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) putIdValue: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) putItem: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessors.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) putItem: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Value0 recoveredBlock43Value1 recoveredBlock43Value2 |
    recoveredBlock43Value0 := recoveredBlock43Arg1.
    recoveredBlock43Value1 := recoveredArg1.
    recoveredBlock43Value2 := (recoveredBlock43Value0) putValue: (recoveredBlock43Value1).
    recoveredBlock43Value2
].
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20347224; bytecode file offset 0xc43afc"
!AMLCollection methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) position.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := typeName.
    recoveredValue3 := [
    | recoveredBlock13Stack0 recoveredBlock13Stack1 recoveredBlock13Stack2 recoveredBlock13Stack3 recoveredBlock13PC recoveredBlock13Step recoveredBlock13Done recoveredBlock13Result |
    recoveredBlock13Stack0 := self.
    recoveredBlock13PC := 20.
    recoveredBlock13Done := false.
    [recoveredBlock13Done not] whileTrue: [
        recoveredBlock13Step := recoveredBlock13PC.
        recoveredBlock13Step = 20 ifTrue: [
            recoveredBlock13Stack1 := recoveredArg1.
            recoveredBlock13PC := 23.
        ].
        recoveredBlock13Step = 23 ifTrue: [
            recoveredBlock13Stack0 := (recoveredBlock13Stack0) getString: (recoveredBlock13Stack1).
            recoveredBlock13PC := 24.
        ].
        recoveredBlock13Step = 24 ifTrue: [
            typeName := recoveredBlock13Stack0.
            recoveredBlock13PC := 26.
        ].
        recoveredBlock13Step = 26 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 27.
        ].
        recoveredBlock13Step = 27 ifTrue: [
            recoveredBlock13Stack1 := self.
            recoveredBlock13PC := 28.
        ].
        recoveredBlock13Step = 28 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) class.
            recoveredBlock13PC := 29.
        ].
        recoveredBlock13Step = 29 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) keyWords.
            recoveredBlock13PC := 30.
        ].
        recoveredBlock13Step = 30 ifTrue: [
            recoveredBlock13Stack2 := typeName.
            recoveredBlock13PC := 32.
        ].
        recoveredBlock13Step = 32 ifTrue: [
            recoveredBlock13Stack1 := (recoveredBlock13Stack1) includesKey: (recoveredBlock13Stack2).
            recoveredBlock13PC := 34.
        ].
        recoveredBlock13Step = 34 ifTrue: [
            (recoveredBlock13Stack1) ifTrue: [recoveredBlock13PC := 38] ifFalse: [recoveredBlock13PC := 51].
        ].
        recoveredBlock13Step = 38 ifTrue: [
            recoveredBlock13PC := 39.
        ].
        recoveredBlock13Step = 39 ifTrue: [
            recoveredBlock13Stack0 := recoveredArg1.
            recoveredBlock13PC := 42.
        ].
        recoveredBlock13Step = 42 ifTrue: [
            recoveredBlock13Stack1 := recoveredLocal1.
            recoveredBlock13PC := 45.
        ].
        recoveredBlock13Step = 45 ifTrue: [
            (recoveredBlock13Stack0) position: (recoveredBlock13Stack1).
            recoveredBlock13PC := 47.
        ].
        recoveredBlock13Step = 47 ifTrue: [
            recoveredBlock13Stack0 := nil.
            recoveredBlock13PC := 48.
        ].
        recoveredBlock13Step = 48 ifTrue: [
            recoveredBlock13Stack1 := recoveredBlock13Stack0.
            recoveredBlock13PC := 49.
        ].
        recoveredBlock13Step = 49 ifTrue: [
            typeName := recoveredBlock13Stack1.
            recoveredBlock13PC := 51.
        ].
        recoveredBlock13Step = 51 ifTrue: [
            recoveredBlock13Result := recoveredBlock13Stack0.
            recoveredBlock13Done := true.
        ].
    ].
    recoveredBlock13Result
].
    (recoveredValue2) ifNil: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    super getFrom: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203508f8; bytecode file offset 0xc4d1d0"
!AMLCollection methodsFor: 'recovered'!
reduceToPartsWithValueAndCopyTree
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280eee9cArg1 | 
    | block280eee9cValue0 block280eee9cValue1 |
    block280eee9cValue0 := block280eee9cArg1.
    block280eee9cValue1 := (block280eee9cValue0) hasAMLValue.
    block280eee9cValue1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block280eeec0Arg1 | 
    | block280eeec0Value0 block280eeec0Value1 |
    block280eeec0Value0 := block280eeec0Arg1.
    block280eeec0Value1 := (block280eeec0Value0) reduceToPartsWithValueAndCopyTree.
    block280eeec0Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:block280eeee4Arg1 | 
    | block280eeee4Value0 block280eeee4Value1 |
    block280eeee4Value0 := block280eeee4Arg1.
    block280eeee4Value1 := (block280eeee4Value0) hasAMLValue.
    block280eeee4Value1
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := [:block280eef08Arg1 | 
    | block280eef08Value0 block280eef08Value1 |
    block280eef08Value0 := block280eef08Arg1.
    block280eef08Value1 := (block280eef08Value0) reduceToPartsWithValueAndCopyTree.
    block280eef08Value1
].
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyForReduceParts: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20361a6c; bytecode file offset 0xc5e340"
!AMLCollection methodsFor: 'recovered'!
reduceToPartsWithValue
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280f0810Arg1 | 
    | block280f0810Value0 block280f0810Value1 |
    block280f0810Value0 := block280f0810Arg1.
    block280f0810Value1 := (block280f0810Value0) hasAMLValue.
    block280f0810Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            parts := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := [:block280f0834Arg1 | 
    | block280f0834Value0 block280f0834Value1 |
    block280f0834Value0 := block280f0834Arg1.
    block280f0834Value1 := (block280f0834Value0) reduceToPartsWithValue.
    block280f0834Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := [:block280f0858Arg1 | 
    | block280f0858Value0 block280f0858Value1 |
    block280f0858Value0 := block280f0858Arg1.
    block280f0858Value1 := (block280f0858Value0) hasAMLValue.
    block280f0858Value1
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := [:block280f087cArg1 | 
    | block280f087cValue0 block280f087cValue1 |
    block280f087cValue0 := block280f087cArg1.
    block280f087cValue1 := (block280f087cValue0) reduceToPartsWithValue.
    block280f087cValue1
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2036ca10; bytecode file offset 0xc692cc"
!AMLCollection methodsFor: 'recovered'!
enumerateParts: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredLocal1.
    recoveredBlock12Value2 := recoveredArg2.
    recoveredBlock12Value3 := (recoveredBlock12Value0) enumerate: (recoveredBlock12Value1) in: (recoveredBlock12Value2).
    recoveredBlock12Value4 := recoveredBlock12Value3.
    recoveredLocal1 := recoveredBlock12Value4.
    recoveredBlock12Value3
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Value0 recoveredBlock42Value1 recoveredBlock42Value2 recoveredBlock42Value3 recoveredBlock42Value4 |
    recoveredBlock42Value0 := recoveredBlock42Arg1.
    recoveredBlock42Value1 := recoveredLocal1.
    recoveredBlock42Value2 := recoveredArg2.
    recoveredBlock42Value3 := (recoveredBlock42Value0) enumerate: (recoveredBlock42Value1) in: (recoveredBlock42Value2).
    recoveredBlock42Value4 := recoveredBlock42Value3.
    recoveredLocal1 := recoveredBlock42Value4.
    recoveredBlock42Value3
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2036e804; bytecode file offset 0xc6b0ec"
!AMLCollection methodsFor: 'recovered'!
getValueFrom: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := parts.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) firstOrNil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyTree.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := BlockDepth.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setStartingDepth: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) position.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := typeName.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) position: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) getValueFrom: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f0ef8; bytecode file offset 0xced7c8"
!AMLCollection methodsFor: 'recovered'!
findTreeWithValues
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) deepCopy.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            parent := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) parts: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := parent.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := parts.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) hasAMLValue.
            recoveredBlock32PC := 42.
        ].
        recoveredBlock32Step = 42 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 46] ifFalse: [recoveredBlock32PC := 59].
        ].
        recoveredBlock32Step = 46 ifTrue: [
            recoveredBlock32PC := 47.
        ].
        recoveredBlock32Step = 47 ifTrue: [
            recoveredBlock32Stack1 := recoveredLocal2.
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) + (1).
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredLocal2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 54.
        ].
        recoveredBlock32Step = 54 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 56.
        ].
        recoveredBlock32Step = 56 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 59.
        ].
        recoveredBlock32Step = 59 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) findTreeWithValues.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 90 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2049b16c; bytecode file offset 0xd97a50"
!AMLCollection methodsFor: 'recovered'!
printInPartsListOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (Character value: 9).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := typeName.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := ' ( '.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := ' ) * '.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (Character value: 9).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasAMLValue.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := recoveredArg1.
            recoveredBlock74PC := 83.
        ].
        recoveredBlock74Step = 83 ifTrue: [
            recoveredBlock74Stack2 := (Character value: 9).
            recoveredBlock74PC := 86.
        ].
        recoveredBlock74Step = 86 ifTrue: [
            (recoveredBlock74Stack1) nextPut: (recoveredBlock74Stack2).
            recoveredBlock74PC := 88.
        ].
        recoveredBlock74Step = 88 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 89.
        ].
        recoveredBlock74Step = 89 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) isInteger.
            recoveredBlock74PC := 91.
        ].
        recoveredBlock74Step = 91 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 94] ifFalse: [recoveredBlock74PC := 102].
        ].
        recoveredBlock74Step = 94 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 95.
        ].
        recoveredBlock74Step = 95 ifTrue: [
            recoveredBlock74Stack2 := recoveredArg1.
            recoveredBlock74PC := 98.
        ].
        recoveredBlock74Step = 98 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) printOn: (recoveredBlock74Stack2).
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            recoveredBlock74PC := 131.
        ].
        recoveredBlock74Step = 102 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 103.
        ].
        recoveredBlock74Step = 103 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) isAssociation.
            recoveredBlock74PC := 105.
        ].
        recoveredBlock74Step = 105 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 108] ifFalse: [recoveredBlock74PC := 116].
        ].
        recoveredBlock74Step = 108 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 109.
        ].
        recoveredBlock74Step = 109 ifTrue: [
            recoveredBlock74Stack2 := recoveredArg1.
            recoveredBlock74PC := 112.
        ].
        recoveredBlock74Step = 112 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) printOn: (recoveredBlock74Stack2).
            recoveredBlock74PC := 113.
        ].
        recoveredBlock74Step = 113 ifTrue: [
            recoveredBlock74PC := 131.
        ].
        recoveredBlock74Step = 116 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 117.
        ].
        recoveredBlock74Step = 117 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) class.
            recoveredBlock74PC := 118.
        ].
        recoveredBlock74Step = 118 ifTrue: [
            recoveredBlock74Stack2 := recoveredArg1.
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 121 ifTrue: [
            (recoveredBlock74Stack1) printOn: (recoveredBlock74Stack2).
            recoveredBlock74PC := 123.
        ].
        recoveredBlock74Step = 123 ifTrue: [
            recoveredBlock74Stack1 := recoveredArg1.
            recoveredBlock74PC := 126.
        ].
        recoveredBlock74Step = 126 ifTrue: [
            recoveredBlock74Stack2 := (Character value: 9).
            recoveredBlock74PC := 130.
        ].
        recoveredBlock74Step = 130 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) nextPut: (recoveredBlock74Stack2).
            recoveredBlock74PC := 131.
        ].
        recoveredBlock74Step = 131 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20525074; bytecode file offset 0xe2196c"
!AMLCollection methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            super printOn: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'BlockDepth: '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) BlockDepth.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'name: '.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'typeName: '.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := typeName.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := name.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := typeName.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := ' ( '.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) firstOrNil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) printOn: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := ' ) * '.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Stack0 recoveredBlock118Stack1 recoveredBlock118Stack2 recoveredBlock118Stack3 recoveredBlock118PC recoveredBlock118Step recoveredBlock118Done recoveredBlock118Result |
    recoveredBlock118Stack0 := self.
    recoveredBlock118PC := 124.
    recoveredBlock118Done := false.
    [recoveredBlock118Done not] whileTrue: [
        recoveredBlock118Step := recoveredBlock118PC.
        recoveredBlock118Step = 124 ifTrue: [
            recoveredBlock118Stack1 := recoveredArg1.
            recoveredBlock118PC := 127.
        ].
        recoveredBlock118Step = 127 ifTrue: [
            recoveredBlock118Stack2 := (Character value: 9).
            recoveredBlock118PC := 130.
        ].
        recoveredBlock118Step = 130 ifTrue: [
            (recoveredBlock118Stack1) nextPut: (recoveredBlock118Stack2).
            recoveredBlock118PC := 132.
        ].
        recoveredBlock118Step = 132 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 133.
        ].
        recoveredBlock118Step = 133 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) isInteger.
            recoveredBlock118PC := 135.
        ].
        recoveredBlock118Step = 135 ifTrue: [
            (recoveredBlock118Stack1) ifTrue: [recoveredBlock118PC := 138] ifFalse: [recoveredBlock118PC := 148].
        ].
        recoveredBlock118Step = 138 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 139.
        ].
        recoveredBlock118Step = 139 ifTrue: [
            recoveredBlock118Stack2 := recoveredArg1.
            recoveredBlock118PC := 142.
        ].
        recoveredBlock118Step = 142 ifTrue: [
            (recoveredBlock118Stack1) printOn: (recoveredBlock118Stack2).
            recoveredBlock118PC := 144.
        ].
        recoveredBlock118Step = 144 ifTrue: [
            recoveredBlock118PC := 188.
        ].
        recoveredBlock118Step = 148 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 149.
        ].
        recoveredBlock118Step = 149 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) isAssociation.
            recoveredBlock118PC := 151.
        ].
        recoveredBlock118Step = 151 ifTrue: [
            (recoveredBlock118Stack1) ifTrue: [recoveredBlock118PC := 154] ifFalse: [recoveredBlock118PC := 164].
        ].
        recoveredBlock118Step = 154 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 155.
        ].
        recoveredBlock118Step = 155 ifTrue: [
            recoveredBlock118Stack2 := recoveredArg1.
            recoveredBlock118PC := 158.
        ].
        recoveredBlock118Step = 158 ifTrue: [
            (recoveredBlock118Stack1) printOn: (recoveredBlock118Stack2).
            recoveredBlock118PC := 160.
        ].
        recoveredBlock118Step = 160 ifTrue: [
            recoveredBlock118PC := 188.
        ].
        recoveredBlock118Step = 164 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 165.
        ].
        recoveredBlock118Step = 165 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) class.
            recoveredBlock118PC := 167.
        ].
        recoveredBlock118Step = 167 ifTrue: [
            recoveredBlock118Stack2 := recoveredArg1.
            recoveredBlock118PC := 170.
        ].
        recoveredBlock118Step = 170 ifTrue: [
            (recoveredBlock118Stack1) printOn: (recoveredBlock118Stack2).
            recoveredBlock118PC := 172.
        ].
        recoveredBlock118Step = 172 ifTrue: [
            recoveredBlock118Stack1 := recoveredArg1.
            recoveredBlock118PC := 175.
        ].
        recoveredBlock118Step = 175 ifTrue: [
            recoveredBlock118Stack2 := (Character value: 9).
            recoveredBlock118PC := 178.
        ].
        recoveredBlock118Step = 178 ifTrue: [
            (recoveredBlock118Stack1) nextPut: (recoveredBlock118Stack2).
            recoveredBlock118PC := 180.
        ].
        recoveredBlock118Step = 180 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 181.
        ].
        recoveredBlock118Step = 181 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) name.
            recoveredBlock118PC := 183.
        ].
        recoveredBlock118Step = 183 ifTrue: [
            recoveredBlock118Stack2 := recoveredArg1.
            recoveredBlock118PC := 186.
        ].
        recoveredBlock118Step = 186 ifTrue: [
            (recoveredBlock118Stack1) printOn: (recoveredBlock118Stack2).
            recoveredBlock118PC := 188.
        ].
        recoveredBlock118Step = 188 ifTrue: [
            recoveredBlock118Stack1 := recoveredArg1.
            recoveredBlock118PC := 191.
        ].
        recoveredBlock118Step = 191 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) cr.
            recoveredBlock118PC := 192.
        ].
        recoveredBlock118Step = 192 ifTrue: [
            recoveredBlock118Result := recoveredBlock118Stack1.
            recoveredBlock118Done := true.
        ].
    ].
    recoveredBlock118Result
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20536834; bytecode file offset 0xe33120"
!AMLCollection methodsFor: 'recovered'!
createAccessor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) accessorClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) idAccessorClassByteSize.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) enumerationName.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := name.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            accessor := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := DBU32Item.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) idAccessorClassByteSize.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 'AMLCol.NoOfElements'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) create: (recoveredStack2) name: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) addMember: (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteSize.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 129] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := value.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := [:recoveredBlock74Arg1 | 
    | recoveredBlock74Stack0 recoveredBlock74Stack1 recoveredBlock74Stack2 recoveredBlock74Stack3 recoveredBlock74PC recoveredBlock74Step recoveredBlock74Done recoveredBlock74Result |
    recoveredBlock74Stack0 := self.
    recoveredBlock74PC := 80.
    recoveredBlock74Done := false.
    [recoveredBlock74Done not] whileTrue: [
        recoveredBlock74Step := recoveredBlock74PC.
        recoveredBlock74Step = 80 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal3.
            recoveredBlock74PC := 83.
        ].
        recoveredBlock74Step = 83 ifTrue: [
            recoveredBlock74Stack2 := self.
            recoveredBlock74PC := 84.
        ].
        recoveredBlock74Step = 84 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) idAccessorClassByteSize.
            recoveredBlock74PC := 85.
        ].
        recoveredBlock74Step = 85 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) + (recoveredBlock74Stack2).
            recoveredBlock74PC := 86.
        ].
        recoveredBlock74Step = 86 ifTrue: [
            recoveredLocal3 := recoveredBlock74Stack1.
            recoveredBlock74PC := 89.
        ].
        recoveredBlock74Step = 89 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 90.
        ].
        recoveredBlock74Step = 90 ifTrue: [
            recoveredBlock74Stack2 := recoveredLocal3.
            recoveredBlock74PC := 93.
        ].
        recoveredBlock74Step = 93 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) createAccessor: (recoveredBlock74Stack2).
            recoveredBlock74PC := 95.
        ].
        recoveredBlock74Step = 95 ifTrue: [
            recoveredLocal2 := recoveredBlock74Stack1.
            recoveredBlock74PC := 98.
        ].
        recoveredBlock74Step = 98 ifTrue: [
            recoveredBlock74Stack1 := recoveredBlock74Arg1.
            recoveredBlock74PC := 99.
        ].
        recoveredBlock74Step = 99 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) lastOffset.
            recoveredBlock74PC := 101.
        ].
        recoveredBlock74Step = 101 ifTrue: [
            recoveredLocal3 := recoveredBlock74Stack1.
            recoveredBlock74PC := 104.
        ].
        recoveredBlock74Step = 104 ifTrue: [
            recoveredBlock74Stack1 := recoveredLocal3.
            recoveredBlock74PC := 107.
        ].
        recoveredBlock74Step = 107 ifTrue: [
            recoveredBlock74Stack2 := recoveredLocal2.
            recoveredBlock74PC := 110.
        ].
        recoveredBlock74Step = 110 ifTrue: [
            recoveredBlock74Stack2 := (recoveredBlock74Stack2) lastOffset.
            recoveredBlock74PC := 112.
        ].
        recoveredBlock74Step = 112 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) = (recoveredBlock74Stack2).
            recoveredBlock74PC := 113.
        ].
        recoveredBlock74Step = 113 ifTrue: [
            (recoveredBlock74Stack1) ifTrue: [recoveredBlock74PC := 119] ifFalse: [recoveredBlock74PC := 116].
        ].
        recoveredBlock74Step = 116 ifTrue: [
            recoveredBlock74Stack1 := self.
            recoveredBlock74PC := 117.
        ].
        recoveredBlock74Step = 117 ifTrue: [
            (recoveredBlock74Stack1) etasDevHalt.
            recoveredBlock74PC := 119.
        ].
        recoveredBlock74Step = 119 ifTrue: [
            recoveredBlock74Stack1 := accessor.
            recoveredBlock74PC := 121.
        ].
        recoveredBlock74Step = 121 ifTrue: [
            recoveredBlock74Stack2 := recoveredLocal2.
            recoveredBlock74PC := 124.
        ].
        recoveredBlock74Step = 124 ifTrue: [
            recoveredBlock74Stack1 := (recoveredBlock74Stack1) addMember: (recoveredBlock74Stack2).
            recoveredBlock74PC := 126.
        ].
        recoveredBlock74Step = 126 ifTrue: [
            recoveredBlock74Result := recoveredBlock74Stack1.
            recoveredBlock74Done := true.
        ].
    ].
    recoveredBlock74Result
].
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 203] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := (recoveredStack1) idAccessorClassByteSize.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := parts.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := [:recoveredBlock151Arg1 | 
    | recoveredBlock151Stack0 recoveredBlock151Stack1 recoveredBlock151Stack2 recoveredBlock151Stack3 recoveredBlock151Stack4 recoveredBlock151PC recoveredBlock151Step recoveredBlock151Done recoveredBlock151Result |
    recoveredBlock151Stack0 := self.
    recoveredBlock151PC := 158.
    recoveredBlock151Done := false.
    [recoveredBlock151Done not] whileTrue: [
        recoveredBlock151Step := recoveredBlock151PC.
        recoveredBlock151Step = 158 ifTrue: [
            recoveredBlock151Stack1 := recoveredBlock151Arg1.
            recoveredBlock151PC := 159.
        ].
        recoveredBlock151Step = 159 ifTrue: [
            recoveredBlock151Stack2 := recoveredLocal3.
            recoveredBlock151PC := 162.
        ].
        recoveredBlock151Step = 162 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) createAccessor: (recoveredBlock151Stack2).
            recoveredBlock151PC := 164.
        ].
        recoveredBlock151Step = 164 ifTrue: [
            recoveredLocal2 := recoveredBlock151Stack1.
            recoveredBlock151PC := 167.
        ].
        recoveredBlock151Step = 167 ifTrue: [
            recoveredBlock151Stack1 := recoveredBlock151Arg1.
            recoveredBlock151PC := 168.
        ].
        recoveredBlock151Step = 168 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) lastOffset.
            recoveredBlock151PC := 170.
        ].
        recoveredBlock151Step = 170 ifTrue: [
            recoveredLocal3 := recoveredBlock151Stack1.
            recoveredBlock151PC := 173.
        ].
        recoveredBlock151Step = 173 ifTrue: [
            recoveredBlock151Stack1 := nil.
            recoveredBlock151PC := 174.
        ].
        recoveredBlock151Step = 174 ifTrue: [
            recoveredBlock151Stack2 := recoveredLocal3.
            recoveredBlock151PC := 177.
        ].
        recoveredBlock151Step = 177 ifTrue: [
            recoveredBlock151Stack3 := recoveredLocal2.
            recoveredBlock151PC := 180.
        ].
        recoveredBlock151Step = 180 ifTrue: [
            recoveredBlock151Stack3 := (recoveredBlock151Stack3) lastOffset.
            recoveredBlock151PC := 182.
        ].
        recoveredBlock151Step = 182 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) = (recoveredBlock151Stack3).
            recoveredBlock151PC := 183.
        ].
        recoveredBlock151Step = 183 ifTrue: [
            (recoveredBlock151Stack2) ifTrue: [recoveredBlock151PC := 200] ifFalse: [recoveredBlock151PC := 186].
        ].
        recoveredBlock151Step = 186 ifTrue: [
            recoveredBlock151PC := 187.
        ].
        recoveredBlock151Step = 187 ifTrue: [
            recoveredBlock151Stack1 := nil.
            recoveredBlock151PC := 188.
        ].
        recoveredBlock151Step = 188 ifTrue: [
            recoveredBlock151Stack2 := recoveredBlock151Arg1.
            recoveredBlock151PC := 189.
        ].
        recoveredBlock151Step = 189 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) class.
            recoveredBlock151PC := 190.
        ].
        recoveredBlock151Step = 190 ifTrue: [
            recoveredBlock151Stack3 := AMLEnumType.
            recoveredBlock151PC := 192.
        ].
        recoveredBlock151Step = 192 ifTrue: [
            recoveredBlock151Stack2 := (recoveredBlock151Stack2) = (recoveredBlock151Stack3).
            recoveredBlock151PC := 193.
        ].
        recoveredBlock151Step = 193 ifTrue: [
            (recoveredBlock151Stack2) ifTrue: [recoveredBlock151PC := 200] ifFalse: [recoveredBlock151PC := 196].
        ].
        recoveredBlock151Step = 196 ifTrue: [
            recoveredBlock151PC := 197.
        ].
        recoveredBlock151Step = 197 ifTrue: [
            recoveredBlock151Stack1 := self.
            recoveredBlock151PC := 198.
        ].
        recoveredBlock151Step = 198 ifTrue: [
            recoveredBlock151Stack1 := (recoveredBlock151Stack1) etasDevHalt.
            recoveredBlock151PC := 200.
        ].
        recoveredBlock151Step = 200 ifTrue: [
            recoveredBlock151Result := recoveredBlock151Stack1.
            recoveredBlock151Done := true.
        ].
    ].
    recoveredBlock151Result
].
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := accessor.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2055dc54; bytecode file offset 0xe5a550"
!AMLCollection methodsFor: 'recovered'!
readFromBytes: recoveredArg1 startingAt: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 23].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) etasDevHalt.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := accessor.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) accessors.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) firstOrNil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) offset: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) byteSize.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) getItemFrom: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            value := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) idAccessor.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) byteSize.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := (recoveredStack3) byteSize.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) parts.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := [:recoveredBlock122Arg1 | 
    | recoveredBlock122Stack0 recoveredBlock122Stack1 recoveredBlock122Stack2 recoveredBlock122Stack3 recoveredBlock122Stack4 recoveredBlock122Stack5 recoveredBlock122PC recoveredBlock122Step recoveredBlock122Done recoveredBlock122Result |
    recoveredBlock122Stack0 := self.
    recoveredBlock122PC := 128.
    recoveredBlock122Done := false.
    [recoveredBlock122Done not] whileTrue: [
        recoveredBlock122Step := recoveredBlock122PC.
        recoveredBlock122Step = 128 ifTrue: [
            recoveredBlock122Stack1 := recoveredBlock122Arg1.
            recoveredBlock122PC := 129.
        ].
        recoveredBlock122Step = 129 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) id.
            recoveredBlock122PC := 131.
        ].
        recoveredBlock122Step = 131 ifTrue: [
            recoveredBlock122Stack2 := 0.
            recoveredBlock122PC := 133.
        ].
        recoveredBlock122Step = 133 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) > (recoveredBlock122Stack2).
            recoveredBlock122PC := 134.
        ].
        recoveredBlock122Step = 134 ifTrue: [
            (recoveredBlock122Stack1) ifTrue: [recoveredBlock122PC := 138] ifFalse: [recoveredBlock122PC := 158].
        ].
        recoveredBlock122Step = 138 ifTrue: [
            recoveredBlock122Stack1 := self.
            recoveredBlock122PC := 139.
        ].
        recoveredBlock122Step = 139 ifTrue: [
            recoveredBlock122Stack2 := recoveredArg1.
            recoveredBlock122PC := 142.
        ].
        recoveredBlock122Step = 142 ifTrue: [
            recoveredBlock122Stack3 := recoveredLocal2.
            recoveredBlock122PC := 145.
        ].
        recoveredBlock122Step = 145 ifTrue: [
            recoveredBlock122Stack4 := recoveredLocal4.
            recoveredBlock122PC := 148.
        ].
        recoveredBlock122Step = 148 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) readNextPartsFromBytes: (recoveredBlock122Stack2) startingAt: (recoveredBlock122Stack3) idAccessor: (recoveredBlock122Stack4).
            recoveredBlock122PC := 151.
        ].
        recoveredBlock122Step = 151 ifTrue: [
            recoveredLocal2 := recoveredBlock122Stack1.
            recoveredBlock122PC := 154.
        ].
        recoveredBlock122Step = 154 ifTrue: [
            recoveredBlock122PC := 185.
        ].
        recoveredBlock122Step = 158 ifTrue: [
            recoveredBlock122Stack1 := self.
            recoveredBlock122PC := 159.
        ].
        recoveredBlock122Step = 159 ifTrue: [
            (recoveredBlock122Stack1) etasDevHalt.
            recoveredBlock122PC := 161.
        ].
        recoveredBlock122Step = 161 ifTrue: [
            recoveredBlock122Stack1 := recoveredLocal2.
            recoveredBlock122PC := 164.
        ].
        recoveredBlock122Step = 164 ifTrue: [
            recoveredBlock122Stack2 := recoveredLocal4.
            recoveredBlock122PC := 167.
        ].
        recoveredBlock122Step = 167 ifTrue: [
            recoveredBlock122Stack2 := (recoveredBlock122Stack2) byteSize.
            recoveredBlock122PC := 169.
        ].
        recoveredBlock122Step = 169 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) + (recoveredBlock122Stack2).
            recoveredBlock122PC := 170.
        ].
        recoveredBlock122Step = 170 ifTrue: [
            recoveredLocal2 := recoveredBlock122Stack1.
            recoveredBlock122PC := 173.
        ].
        recoveredBlock122Step = 173 ifTrue: [
            recoveredBlock122Stack1 := recoveredBlock122Arg1.
            recoveredBlock122PC := 174.
        ].
        recoveredBlock122Step = 174 ifTrue: [
            recoveredBlock122Stack2 := recoveredArg1.
            recoveredBlock122PC := 177.
        ].
        recoveredBlock122Step = 177 ifTrue: [
            recoveredBlock122Stack3 := recoveredLocal2.
            recoveredBlock122PC := 180.
        ].
        recoveredBlock122Step = 180 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) readFromBytes: (recoveredBlock122Stack2) startingAt: (recoveredBlock122Stack3).
            recoveredBlock122PC := 182.
        ].
        recoveredBlock122Step = 182 ifTrue: [
            recoveredLocal2 := recoveredBlock122Stack1.
            recoveredBlock122PC := 185.
        ].
        recoveredBlock122Step = 185 ifTrue: [
            recoveredBlock122Stack1 := value.
            recoveredBlock122PC := 187.
        ].
        recoveredBlock122Step = 187 ifTrue: [
            recoveredBlock122Stack2 := recoveredBlock122Arg1.
            recoveredBlock122PC := 188.
        ].
        recoveredBlock122Step = 188 ifTrue: [
            recoveredBlock122Stack2 := (recoveredBlock122Stack2) copyTree.
            recoveredBlock122PC := 190.
        ].
        recoveredBlock122Step = 190 ifTrue: [
            (recoveredBlock122Stack1) add: (recoveredBlock122Stack2).
            recoveredBlock122PC := 192.
        ].
        recoveredBlock122Step = 192 ifTrue: [
            recoveredBlock122Stack1 := recoveredBlock122Arg1.
            recoveredBlock122PC := 193.
        ].
        recoveredBlock122Step = 193 ifTrue: [
            recoveredBlock122Stack1 := (recoveredBlock122Stack1) clearValue.
            recoveredBlock122PC := 195.
        ].
        recoveredBlock122Step = 195 ifTrue: [
            recoveredBlock122Result := recoveredBlock122Stack1.
            recoveredBlock122Done := true.
        ].
    ].
    recoveredBlock122Result
].
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 104] ifFalse: [recoveredPC := 227]] ifFalse: [recoveredPC := 201].
        ].
        recoveredStep = 201 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 223] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c4cb8; bytecode file offset 0xec1620"
!AMLCollection methodsFor: 'recovered'!
collectNamedOrIndexInBase: recoveredArg1 path: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super collectNamedOrIndexInBase: (recoveredValue0) path: (recoveredValue1).
    recoveredValue2 := value.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) class.
    recoveredValue4 := (recoveredValue3) getDefinedApplication.
    recoveredValue5 := (recoveredValue4) becomeDefault.
    recoveredLocal3 := recoveredValue5.
    recoveredValue6 := Smalltalk.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) keyAtValue: (self).
    recoveredValue9 := (self) generateClassName: (recoveredValue8).
    recoveredValue10 := (recoveredValue9) asSymbol.
    recoveredValue11 := [
    | recoveredBlock40Value0 recoveredBlock40Value1 recoveredBlock40Value2 recoveredBlock40Value3 recoveredBlock40Value4 recoveredBlock40Value5 recoveredBlock40Value6 recoveredBlock40Value7 recoveredBlock40Value8 recoveredBlock40Value9 recoveredBlock40Value10 recoveredBlock40Value11 recoveredBlock40Value12 recoveredBlock40Value13 recoveredBlock40Value14 recoveredBlock40Value15 recoveredBlock40Value16 recoveredBlock40Value17 recoveredBlock40Value18 recoveredBlock40Value19 recoveredBlock40Value20 recoveredBlock40Value21 |
    recoveredBlock40Value0 := AMLIfData.
    recoveredBlock40Value1 := recoveredArg1.
    recoveredBlock40Value2 := (recoveredBlock40Value1) keyAtValue: (self).
    recoveredBlock40Value3 := (self) generateClassName: (recoveredBlock40Value2).
    recoveredBlock40Value4 := (recoveredBlock40Value3) asSymbol.
    recoveredBlock40Value5 := (recoveredBlock40Value0) subclass: (recoveredBlock40Value4) instanceVariableNames: ('') classVariableNames: ('') poolDictionaries: ('').
    recoveredLocal5 := recoveredBlock40Value5.
    recoveredBlock40Value6 := WriteStream.
    recoveredBlock40Value7 := (recoveredBlock40Value6) on: ('').
    recoveredLocal4 := recoveredBlock40Value7.
    recoveredBlock40Value8 := recoveredLocal4.
    recoveredBlock40Value9 := recoveredBlock40Value8.
    (recoveredBlock40Value9) nextPutAll: ('createFor: aml ').
    recoveredBlock40Value10 := recoveredBlock40Value8.
    (recoveredBlock40Value10) cr.
    recoveredBlock40Value11 := recoveredBlock40Value8.
    (recoveredBlock40Value11) nextPutAll: ('| new |').
    recoveredBlock40Value12 := recoveredBlock40Value8.
    (recoveredBlock40Value12) cr.
    recoveredBlock40Value13 := recoveredBlock40Value8.
    (recoveredBlock40Value13) nextPutAll: ('new := self new .').
    recoveredBlock40Value14 := recoveredBlock40Value8.
    (recoveredBlock40Value14) cr.
    recoveredBlock40Value15 := recoveredBlock40Value8.
    (recoveredBlock40Value15) nextPutAll: ('new aml: aml .').
    recoveredBlock40Value16 := recoveredBlock40Value8.
    (recoveredBlock40Value16) cr.
    (recoveredBlock40Value8) nextPutAll: ('^new').
    recoveredBlock40Value17 := recoveredLocal5.
    recoveredBlock40Value18 := recoveredLocal4.
    recoveredBlock40Value19 := (recoveredBlock40Value18) contents.
    recoveredBlock40Value20 := recoveredLocal3.
    recoveredBlock40Value21 := (recoveredBlock40Value17) generateClassMethod: (recoveredBlock40Value19) categorizeIn: ('Create') in: (recoveredBlock40Value20).
    recoveredBlock40Value21
].
    recoveredValue12 := [:recoveredBlock136Arg1 | 
    | recoveredBlock136Value0 recoveredBlock136Value1 |
    recoveredBlock136Value0 := recoveredBlock136Arg1.
    recoveredBlock136Value1 := recoveredBlock136Value0.
    recoveredLocal5 := recoveredBlock136Value1.
    recoveredBlock136Value0
].
    (recoveredValue6) at: (recoveredValue10) ifAbsent: (recoveredValue11) ifPresent: (recoveredValue12).
    recoveredValue13 := (self) collectNamedOrIndexLeafes.
    recoveredLocal2 := recoveredValue13.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := [:recoveredBlock160Arg1 :recoveredBlock160Arg2 | 
    | recoveredBlock160Local1 recoveredBlock160Stack0 recoveredBlock160Stack1 recoveredBlock160Stack2 recoveredBlock160Stack3 recoveredBlock160Stack4 recoveredBlock160Stack5 recoveredBlock160PC recoveredBlock160Step recoveredBlock160Done recoveredBlock160Result |
    recoveredBlock160Stack0 := self.
    recoveredBlock160PC := 166.
    recoveredBlock160Done := false.
    [recoveredBlock160Done not] whileTrue: [
        recoveredBlock160Step := recoveredBlock160PC.
        recoveredBlock160Step = 166 ifTrue: [
            recoveredBlock160Stack1 := recoveredBlock160Arg1.
            recoveredBlock160PC := 167.
        ].
        recoveredBlock160Step = 167 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) value.
            recoveredBlock160PC := 169.
        ].
        recoveredBlock160Step = 169 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) first.
            recoveredBlock160PC := 171.
        ].
        recoveredBlock160Step = 171 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) isLetter.
            recoveredBlock160PC := 173.
        ].
        recoveredBlock160Step = 173 ifTrue: [
            (recoveredBlock160Stack1) ifTrue: [recoveredBlock160PC := 176] ifFalse: [recoveredBlock160PC := 180].
        ].
        recoveredBlock160Step = 176 ifTrue: [
            recoveredBlock160Stack1 := recoveredBlock160Arg1.
            recoveredBlock160PC := 177.
        ].
        recoveredBlock160Step = 177 ifTrue: [
            recoveredBlock160PC := 185.
        ].
        recoveredBlock160Step = 180 ifTrue: [
            recoveredBlock160Stack1 := 'p'.
            recoveredBlock160PC := 182.
        ].
        recoveredBlock160Step = 182 ifTrue: [
            recoveredBlock160Stack2 := recoveredBlock160Arg1.
            recoveredBlock160PC := 183.
        ].
        recoveredBlock160Step = 183 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) , (recoveredBlock160Stack2).
            recoveredBlock160PC := 185.
        ].
        recoveredBlock160Step = 185 ifTrue: [
            recoveredBlock160Local1 := recoveredBlock160Stack1.
            recoveredBlock160PC := 186.
        ].
        recoveredBlock160Step = 186 ifTrue: [
            recoveredBlock160Stack1 := recoveredBlock160Local1.
            recoveredBlock160PC := 187.
        ].
        recoveredBlock160Step = 187 ifTrue: [
            recoveredBlock160Stack2 := 1.
            recoveredBlock160PC := 189.
        ].
        recoveredBlock160Step = 189 ifTrue: [
            recoveredBlock160Stack3 := recoveredBlock160Local1.
            recoveredBlock160PC := 190.
        ].
        recoveredBlock160Step = 190 ifTrue: [
            recoveredBlock160Stack4 := 1.
            recoveredBlock160PC := 192.
        ].
        recoveredBlock160Step = 192 ifTrue: [
            recoveredBlock160Stack3 := (recoveredBlock160Stack3) at: (recoveredBlock160Stack4).
            recoveredBlock160PC := 194.
        ].
        recoveredBlock160Step = 194 ifTrue: [
            recoveredBlock160Stack3 := (recoveredBlock160Stack3) asLowercase.
            recoveredBlock160PC := 196.
        ].
        recoveredBlock160Step = 196 ifTrue: [
            (recoveredBlock160Stack1) at: (recoveredBlock160Stack2) put: (recoveredBlock160Stack3).
            recoveredBlock160PC := 198.
        ].
        recoveredBlock160Step = 198 ifTrue: [
            recoveredBlock160Stack1 := recoveredBlock160Arg2.
            recoveredBlock160PC := 199.
        ].
        recoveredBlock160Step = 199 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) value.
            recoveredBlock160PC := 201.
        ].
        recoveredBlock160Step = 201 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) first.
            recoveredBlock160PC := 203.
        ].
        recoveredBlock160Step = 203 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) isLetter.
            recoveredBlock160PC := 205.
        ].
        recoveredBlock160Step = 205 ifTrue: [
            (recoveredBlock160Stack1) ifTrue: [recoveredBlock160PC := 218] ifFalse: [recoveredBlock160PC := 208].
        ].
        recoveredBlock160Step = 208 ifTrue: [
            recoveredBlock160Stack1 := recoveredBlock160Arg2.
            recoveredBlock160PC := 209.
        ].
        recoveredBlock160Step = 209 ifTrue: [
            recoveredBlock160Stack2 := 'p'.
            recoveredBlock160PC := 211.
        ].
        recoveredBlock160Step = 211 ifTrue: [
            recoveredBlock160Stack3 := recoveredBlock160Arg2.
            recoveredBlock160PC := 212.
        ].
        recoveredBlock160Step = 212 ifTrue: [
            recoveredBlock160Stack3 := (recoveredBlock160Stack3) value.
            recoveredBlock160PC := 214.
        ].
        recoveredBlock160Step = 214 ifTrue: [
            recoveredBlock160Stack2 := (recoveredBlock160Stack2) , (recoveredBlock160Stack3).
            recoveredBlock160PC := 216.
        ].
        recoveredBlock160Step = 216 ifTrue: [
            (recoveredBlock160Stack1) value: (recoveredBlock160Stack2).
            recoveredBlock160PC := 218.
        ].
        recoveredBlock160Step = 218 ifTrue: [
            recoveredBlock160Stack1 := recoveredBlock160Arg2.
            recoveredBlock160PC := 219.
        ].
        recoveredBlock160Step = 219 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) value.
            recoveredBlock160PC := 221.
        ].
        recoveredBlock160Step = 221 ifTrue: [
            recoveredBlock160Stack2 := 1.
            recoveredBlock160PC := 223.
        ].
        recoveredBlock160Step = 223 ifTrue: [
            recoveredBlock160Stack3 := recoveredBlock160Arg2.
            recoveredBlock160PC := 224.
        ].
        recoveredBlock160Step = 224 ifTrue: [
            recoveredBlock160Stack3 := (recoveredBlock160Stack3) value.
            recoveredBlock160PC := 226.
        ].
        recoveredBlock160Step = 226 ifTrue: [
            recoveredBlock160Stack4 := 1.
            recoveredBlock160PC := 228.
        ].
        recoveredBlock160Step = 228 ifTrue: [
            recoveredBlock160Stack3 := (recoveredBlock160Stack3) at: (recoveredBlock160Stack4).
            recoveredBlock160PC := 230.
        ].
        recoveredBlock160Step = 230 ifTrue: [
            recoveredBlock160Stack3 := (recoveredBlock160Stack3) asLowercase.
            recoveredBlock160PC := 232.
        ].
        recoveredBlock160Step = 232 ifTrue: [
            (recoveredBlock160Stack1) at: (recoveredBlock160Stack2) put: (recoveredBlock160Stack3).
            recoveredBlock160PC := 234.
        ].
        recoveredBlock160Step = 234 ifTrue: [
            recoveredBlock160Stack1 := recoveredLocal5.
            recoveredBlock160PC := 237.
        ].
        recoveredBlock160Step = 237 ifTrue: [
            recoveredBlock160Stack2 := recoveredLocal3.
            recoveredBlock160PC := 240.
        ].
        recoveredBlock160Step = 240 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) methodNamesIn: (recoveredBlock160Stack2).
            recoveredBlock160PC := 242.
        ].
        recoveredBlock160Step = 242 ifTrue: [
            recoveredBlock160Stack2 := recoveredBlock160Local1.
            recoveredBlock160PC := 243.
        ].
        recoveredBlock160Step = 243 ifTrue: [
            recoveredBlock160Stack2 := (recoveredBlock160Stack2) asSymbol.
            recoveredBlock160PC := 245.
        ].
        recoveredBlock160Step = 245 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) includes: (recoveredBlock160Stack2).
            recoveredBlock160PC := 247.
        ].
        recoveredBlock160Step = 247 ifTrue: [
            (recoveredBlock160Stack1) ifTrue: [recoveredBlock160PC := 250] ifFalse: [recoveredBlock160PC := 286].
        ].
        recoveredBlock160Step = 250 ifTrue: [
            recoveredBlock160Stack1 := nil.
            recoveredBlock160PC := 251.
        ].
        recoveredBlock160Step = 251 ifTrue: [
            recoveredBlock160Stack2 := recoveredLocal5.
            recoveredBlock160PC := 254.
        ].
        recoveredBlock160Step = 254 ifTrue: [
            recoveredBlock160Stack3 := recoveredBlock160Local1.
            recoveredBlock160PC := 255.
        ].
        recoveredBlock160Step = 255 ifTrue: [
            recoveredBlock160Stack3 := (recoveredBlock160Stack3) asSymbol.
            recoveredBlock160PC := 257.
        ].
        recoveredBlock160Step = 257 ifTrue: [
            recoveredBlock160Stack2 := (recoveredBlock160Stack2) compiledMethodAt: (recoveredBlock160Stack3).
            recoveredBlock160PC := 259.
        ].
        recoveredBlock160Step = 259 ifTrue: [
            recoveredBlock160Stack2 := (recoveredBlock160Stack2) sourceString.
            recoveredBlock160PC := 261.
        ].
        recoveredBlock160Step = 261 ifTrue: [
            recoveredBlock160Stack3 := recoveredBlock160Arg2.
            recoveredBlock160PC := 262.
        ].
        recoveredBlock160Step = 262 ifTrue: [
            recoveredBlock160Stack3 := (recoveredBlock160Stack3) value.
            recoveredBlock160PC := 264.
        ].
        recoveredBlock160Step = 264 ifTrue: [
            recoveredBlock160Stack2 := (recoveredBlock160Stack2) = (recoveredBlock160Stack3).
            recoveredBlock160PC := 265.
        ].
        recoveredBlock160Step = 265 ifTrue: [
            (recoveredBlock160Stack2) ifTrue: [recoveredBlock160PC := 283] ifFalse: [recoveredBlock160PC := 268].
        ].
        recoveredBlock160Step = 268 ifTrue: [
            recoveredBlock160PC := 269.
        ].
        recoveredBlock160Step = 269 ifTrue: [
            recoveredBlock160Stack1 := recoveredLocal5.
            recoveredBlock160PC := 272.
        ].
        recoveredBlock160Step = 272 ifTrue: [
            recoveredBlock160Stack2 := recoveredBlock160Arg2.
            recoveredBlock160PC := 273.
        ].
        recoveredBlock160Step = 273 ifTrue: [
            recoveredBlock160Stack2 := (recoveredBlock160Stack2) value.
            recoveredBlock160PC := 275.
        ].
        recoveredBlock160Step = 275 ifTrue: [
            recoveredBlock160Stack3 := 'internal'.
            recoveredBlock160PC := 277.
        ].
        recoveredBlock160Step = 277 ifTrue: [
            recoveredBlock160Stack4 := recoveredLocal3.
            recoveredBlock160PC := 280.
        ].
        recoveredBlock160Step = 280 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) generateMethod: (recoveredBlock160Stack2) categorizeIn: (recoveredBlock160Stack3) in: (recoveredBlock160Stack4).
            recoveredBlock160PC := 283.
        ].
        recoveredBlock160Step = 283 ifTrue: [
            recoveredBlock160PC := 300.
        ].
        recoveredBlock160Step = 286 ifTrue: [
            recoveredBlock160Stack1 := recoveredLocal5.
            recoveredBlock160PC := 289.
        ].
        recoveredBlock160Step = 289 ifTrue: [
            recoveredBlock160Stack2 := recoveredBlock160Arg2.
            recoveredBlock160PC := 290.
        ].
        recoveredBlock160Step = 290 ifTrue: [
            recoveredBlock160Stack2 := (recoveredBlock160Stack2) value.
            recoveredBlock160PC := 292.
        ].
        recoveredBlock160Step = 292 ifTrue: [
            recoveredBlock160Stack3 := 'internal'.
            recoveredBlock160PC := 294.
        ].
        recoveredBlock160Step = 294 ifTrue: [
            recoveredBlock160Stack4 := recoveredLocal3.
            recoveredBlock160PC := 297.
        ].
        recoveredBlock160Step = 297 ifTrue: [
            recoveredBlock160Stack1 := (recoveredBlock160Stack1) generateMethod: (recoveredBlock160Stack2) categorizeIn: (recoveredBlock160Stack3) in: (recoveredBlock160Stack4).
            recoveredBlock160PC := 300.
        ].
        recoveredBlock160Step = 300 ifTrue: [
            recoveredBlock160Result := recoveredBlock160Stack1.
            recoveredBlock160Done := true.
        ].
    ].
    recoveredBlock160Result
].
    (recoveredValue14) keysAndValuesDo: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    recoveredValue17 := ('| amlCol |
amlCol := ') , (recoveredValue16).
    recoveredValue18 := (recoveredValue17) , (' .
amlCol value isNil ifTrue: [ ^#() ] .
^amlCol value collect: [:a | ').
    recoveredValue19 := recoveredArg1.
    recoveredValue20 := (recoveredValue19) keyAtValue: (self).
    recoveredValue21 := (self) generateClassName: (recoveredValue20).
    recoveredValue22 := (recoveredValue18) , (recoveredValue21).
    recoveredValue23 := (recoveredValue22) , (' createFor: a ] ').
    value := recoveredValue23.
    ^self
! !

