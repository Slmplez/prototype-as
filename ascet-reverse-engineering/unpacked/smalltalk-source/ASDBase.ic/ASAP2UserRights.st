"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2004b160; bytecode file offset 0x947a60"
!ASAP2UserRights methodsFor: 'recovered'!
userLevelId
    | recoveredValue0 |
    recoveredValue0 := (self) at: (1).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b390; bytecode file offset 0x947d20"
!ASAP2UserRights methodsFor: 'recovered'!
refGroup
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b50c; bytecode file offset 0x947ec0"
!ASAP2UserRights methodsFor: 'recovered'!
readOnly
    | recoveredValue0 |
    recoveredValue0 := (self) at: (3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084600; bytecode file offset 0x981ca4"
!ASAP2UserRights methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putUserLevelIdIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200979a4; bytecode file offset 0x995850"
!ASAP2UserRights methodsFor: 'recovered'!
addRefGroup: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) refGroup.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009fcac; bytecode file offset 0x99c9e0"
!ASAP2UserRights methodsFor: 'recovered'!
minimizeCollections
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) refGroup.
    recoveredValue1 := (recoveredValue0) asArray.
    (self) refGroup: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5098; bytecode file offset 0x9a1ad4"
!ASAP2UserRights methodsFor: 'recovered'!
getUserLevelId: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getIdent: (recoveredValue0).
    (self) userLevelId: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a5ddc; bytecode file offset 0x9a27f0"
!ASAP2UserRights methodsFor: 'recovered'!
userLevelId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a605c; bytecode file offset 0x9a2a28"
!ASAP2UserRights methodsFor: 'recovered'!
refGroup: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (2) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a61ac; bytecode file offset 0x9a2b84"
!ASAP2UserRights methodsFor: 'recovered'!
readOnly: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (3) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a9c24; bytecode file offset 0x9a6780"
!ASAP2UserRights methodsFor: 'recovered'!
putUserLevelIdIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) userLevelId.
    (self) putIn: (recoveredValue0) ident: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200d9250; bytecode file offset 0x9d5b4c"
!ASAP2UserRights methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) getUserLevelId: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) parse: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200f03b8; bytecode file offset 0x9ecc7c"
!ASAP2UserRights methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    (self) refGroup: (recoveredValue1).
    (self) readOnly: (false).
    ^self
! !

"ASDBase.ic method 0x20245bb8; bytecode file offset 0xb42494"
!ASAP2UserRights methodsFor: 'recovered'!
getRefGroup: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) keyWords.
    recoveredValue3 := (recoveredValue2) keyAtValue: ('getRefGroup:').
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) keyWords.
    recoveredValue6 := (self) upToEnd: (recoveredValue0) of: (recoveredValue3) keyWords: (recoveredValue5).
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := ReadStream.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue7) on: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := recoveredLocal1.
    (recoveredValue10) reset.
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) getStringList: (recoveredValue11).
    (self) refGroup: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x202856d4; bytecode file offset 0xb81fa0"
!ASAP2UserRights methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) refGroup.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 20].
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
            recoveredStack1 := (recoveredStack1) refGroup.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [:recoveredBlock23Arg1 | 
    | recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 |
    recoveredBlock23Value0 := recoveredArg1.
    recoveredBlock23Value1 := recoveredBlock23Arg1.
    recoveredBlock23Value2 := (recoveredBlock23Value0) at: (recoveredBlock23Value1).
    recoveredBlock23Value2
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) refGroup: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203a9bb8; bytecode file offset 0xca648c"
!ASAP2UserRights methodsFor: 'recovered'!
putIn: recoveredArg1 refGroup: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) refGroup.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) putBeginIn: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) refGroup.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Value0 recoveredBlock31Value1 recoveredBlock31Value2 recoveredBlock31Value3 recoveredBlock31Value4 |
    recoveredBlock31Value0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredBlock31Value0).
    recoveredBlock31Value1 := recoveredArg1.
    recoveredBlock31Value2 := recoveredBlock31Arg1.
    recoveredBlock31Value3 := (recoveredBlock31Value2) name.
    recoveredBlock31Value4 := (self) putIn: (recoveredBlock31Value1) string: (recoveredBlock31Value3).
    recoveredBlock31Value4
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1) putEndIn: (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) string: (recoveredStack2).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203c8688; bytecode file offset 0xcc4f64"
!ASAP2UserRights methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectObjectsFlat: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 34] ifFalse: [recoveredLocal1 := nil. recoveredPC := 57]] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) refGroup.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 81] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) refGroup.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := [:block280f6e94Arg1 | 
    | block280f6e94Value0 block280f6e94Value1 |
    block280f6e94Value0 := block280f6e94Arg1.
    block280f6e94Value1 := (block280f6e94Value0) comments.
    block280f6e94Value1
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) refGroup: (recoveredStack1).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203e2df4; bytecode file offset 0xcdf6cc"
!ASAP2UserRights methodsFor: 'recovered'!
createASAP2ObjectReferences: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectReferences: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 30] ifFalse: [recoveredLocal1 := nil. recoveredPC := 52]] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) refGroup.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) refGroup.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) refGroup: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 86.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := (recoveredStack2) refGroup.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectGReferencesIn: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) refGroup: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

