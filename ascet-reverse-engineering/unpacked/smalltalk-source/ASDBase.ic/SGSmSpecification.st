"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015228; bytecode file offset 0x912098"
!SGSmSpecification methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIStateMachineDiagram.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001694c; bytecode file offset 0x92209c"
!SGSmSpecification methodsFor: 'recovered'!
sourceType
    ^'StateMachine'
! !

"ASDBase.ic method 0x20017534; bytecode file offset 0x92209c"
!SGSmSpecification methodsFor: 'recovered'!
xmlSpecificationTypeString
    ^'StateMachineSpecification'
! !

"ASDBase.ic method 0x2001f4c0; bytecode file offset 0x92209c"
!SGSmSpecification methodsFor: 'recovered'!
dbXmlType
    ^'stateMachine'
! !

"ASDBase.ic method 0x2002ab34; bytecode file offset 0x934580"
!SGSmSpecification methodsFor: 'recovered'!
smVarVolatile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) smVariable.
    recoveredValue1 := (recoveredValue0) isVolatile.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c3c4; bytecode file offset 0x934580"
!SGSmSpecification methodsFor: 'recovered'!
smVariable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) smVariable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002d9f4; bytecode file offset 0x934580"
!SGSmSpecification methodsFor: 'recovered'!
numberOfStates
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stateDictionary.
    recoveredValue1 := (recoveredValue0) size.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003828c; bytecode file offset 0x934b68"
!SGSmSpecification methodsFor: 'recovered'!
xmlGetType: recoveredArg1
    ^'StateMachine'
! !

"ASDBase.ic method 0x2003e7e8; bytecode file offset 0x93bf94"
!SGSmSpecification methodsFor: 'recovered'!
xmlMakeInitialLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGTopHierarchyState.
    recoveredValue1 := (recoveredValue0) create.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ed74; bytecode file offset 0x95b628"
!SGSmSpecification methodsFor: 'recovered'!
removeSmVariable
    smVariable := nil.
    ^nil
! !

"ASDBase.ic method 0x2006eb18; bytecode file offset 0x96b41c"
!SGSmSpecification methodsFor: 'recovered'!
smVariableBasic
    | recoveredValue0 |
    recoveredValue0 := smVariable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074b04; bytecode file offset 0x9757c8"
!SGSmSpecification methodsFor: 'recovered'!
isSmSpecification
    ^true
! !

"ASDBase.ic method 0x200842ac; bytecode file offset 0x981ca4"
!SGSmSpecification methodsFor: 'recovered'!
xmlSmVarVolatile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) smVarVolatile: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2009c854; bytecode file offset 0x999628"
!SGSmSpecification methodsFor: 'recovered'!
initLogicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGTopHierarchyState.
    recoveredValue1 := (recoveredValue0) create.
    (self) logicModel: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c4400; bytecode file offset 0x9c11bc"
!SGSmSpecification methodsFor: 'recovered'!
stateDictionary: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    stateDictionary := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8230; bytecode file offset 0x9d4b04"
!SGSmSpecification methodsFor: 'recovered'!
recreateLogicModelFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) updateStateDictionary.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := super recreateLogicModelFor: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200db960; bytecode file offset 0x9d8220"
!SGSmSpecification methodsFor: 'recovered'!
initDefaultMethod: recoveredArg1 methodClass: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    super initDefaultMethod: ('trigger') methodClass: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200e9eec; bytecode file offset 0x9e67b0"
!SGSmSpecification methodsFor: 'recovered'!
detectStartStateBlockForHierarchy: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contents.
    (recoveredValue1) updateDynamicChildrenInfoForStates.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) blockChildren.
    recoveredValue4 := (self) detectStartStateInStateColl: (recoveredValue3) checkDynParent: (true).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200fe840; bytecode file offset 0x9fb100"
!SGSmSpecification methodsFor: 'recovered'!
postLoad: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super postLoad: (recoveredValue0).
    (self) stateDictionary: (nil).
    ^self
! !

"ASDBase.ic method 0x20107994; bytecode file offset 0xa04248"
!SGSmSpecification methodsFor: 'recovered'!
wasVolatile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := smVarVolatile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := smVarVolatile.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20113590; bytecode file offset 0xa0ff2c"
!SGSmSpecification methodsFor: 'recovered'!
connectionDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceOrNil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectionDo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20113610; bytecode file offset 0xa0ff2c"
!SGSmSpecification methodsFor: 'recovered'!
blockDo: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceOrNil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) blockDo: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011ca20; bytecode file offset 0xa192e8"
!SGSmSpecification methodsFor: 'recovered'!
xmlLoaded
    | recoveredValue0 |
    super xmlLoaded.
    (self) updateStateDictionary.
    recoveredValue0 := (self) smVariable.
    (recoveredValue0) updateSmVariableStatesFromSpecification.
    ^self
! !

"ASDBase.ic method 0x20124e30; bytecode file offset 0xa216f0"
!SGSmSpecification methodsFor: 'recovered'!
getStatesInEnumOrder
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceInternalOrNil.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) collectStatesInEnumOrder: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201423c0; bytecode file offset 0xa3ec8c"
!SGSmSpecification methodsFor: 'recovered'!
additionalSpecClasses: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ('Kli') == ('Call_74953').
    recoveredValue1 := Array.
    recoveredValue2 := SGBdSpecification.
    recoveredValue3 := SGASDLSpecification.
    recoveredValue4 := (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2016f9a8; bytecode file offset 0xa6c264"
!SGSmSpecification methodsFor: 'recovered'!
stateDictionary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := stateDictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := stateDictionary.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) updateStateDictionary.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := stateDictionary.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017a770; bytecode file offset 0xa77034"
!SGSmSpecification methodsFor: 'recovered'!
convertToASDV50
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_65035'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) ownerSGClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) recreateLogicModelFor: (recoveredStack1).
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

"ASDBase.ic method 0x20194ff4; bytecode file offset 0xa918c0"
!SGSmSpecification methodsFor: 'recovered'!
convertToASDV61OwnerClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super convertToASDV61OwnerClass: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceOrNil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280d1d90Arg1 | 
    | block280d1d90Value0 block280d1d90Value1 |
    block280d1d90Value0 := block280d1d90Arg1.
    block280d1d90Value1 := (block280d1d90Value0) convertToASDV61.
    block280d1d90Value1
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c45c; bytecode file offset 0xb68d30"
!SGSmSpecification methodsFor: 'recovered'!
smVarVolatile: recoveredArg1
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
            recoveredStack2 := (recoveredStack2) smVarVolatile.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) smVariable.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) setVolatile.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) clearNonVolatile.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) smVariable.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack2) setNonVolatile.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) clearVolatile.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) modified.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) smVarVolatile.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20302ab0; bytecode file offset 0xbff388"
!SGSmSpecification methodsFor: 'recovered'!
saveGraphics: recoveredArg1 pageFormat: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_94812'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) specSourceOrNil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) store: (recoveredStack1) pageFormat: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 'Call_323861'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) updateStateDictionary.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Call_93569'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) topLogicBlock.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) reinitialize.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) updateStateDictionary.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203bd0dc; bytecode file offset 0xcb99c8"
!SGSmSpecification methodsFor: 'recovered'!
updateStateDictionary
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getStatesInEnumOrder.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:block280f6498Arg1 | 
    | block280f6498Value0 block280f6498Value1 block280f6498Value2 |
    block280f6498Value0 := block280f6498Arg1.
    block280f6498Value1 := (block280f6498Value0) stateInfo.
    block280f6498Value2 := (block280f6498Value1) at: (1).
    block280f6498Value2
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) stateDictionary: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'Call_94812'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 |
    recoveredBlock41Value0 := recoveredBlock41Arg1.
    recoveredBlock41Value1 := (recoveredBlock41Value0) getSmVariableCreate: (false).
    recoveredBlock41Value2 := [:recoveredBlock41Block54Arg1 | 
    | recoveredBlock41Block54Value0 recoveredBlock41Block54Value1 recoveredBlock41Block54Value2 recoveredBlock41Block54Value3 recoveredBlock41Block54Value4 recoveredBlock41Block54Value5 |
    recoveredBlock41Block54Value0 := recoveredBlock41Block54Arg1.
    recoveredBlock41Block54Value1 := (recoveredBlock41Block54Value0) sgClass.
    recoveredBlock41Block54Value2 := recoveredBlock41Arg1.
    recoveredBlock41Block54Value3 := recoveredLocal1.
    recoveredBlock41Block54Value4 := (recoveredBlock41Block54Value2) getStateValuesFromStateDictionary: (recoveredBlock41Block54Value3).
    recoveredBlock41Block54Value5 := (recoveredBlock41Block54Value1) values: (recoveredBlock41Block54Value4).
    recoveredBlock41Block54Value5
].
    recoveredBlock41Value3 := (recoveredBlock41Value1) ifNotNil: (recoveredBlock41Value2).
    recoveredBlock41Value3
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204348b4; bytecode file offset 0xd311b0"
!SGSmSpecification methodsFor: 'recovered'!
createStateFormula: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) stateDictionary.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Stack0 recoveredBlock20Stack1 recoveredBlock20Stack2 recoveredBlock20Stack3 recoveredBlock20Stack4 recoveredBlock20Stack5 recoveredBlock20PC recoveredBlock20Step recoveredBlock20Done recoveredBlock20Result |
    recoveredBlock20Stack0 := self.
    recoveredBlock20PC := 26.
    recoveredBlock20Done := false.
    [recoveredBlock20Done not] whileTrue: [
        recoveredBlock20Step := recoveredBlock20PC.
        recoveredBlock20Step = 26 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal1.
            recoveredBlock20PC := 29.
        ].
        recoveredBlock20Step = 29 ifTrue: [
            recoveredBlock20Stack2 := recoveredBlock20Arg1.
            recoveredBlock20PC := 30.
        ].
        recoveredBlock20Step = 30 ifTrue: [
            (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 32.
        ].
        recoveredBlock20Step = 32 ifTrue: [
            recoveredBlock20Stack1 := recoveredLocal2.
            recoveredBlock20PC := 35.
        ].
        recoveredBlock20Step = 35 ifTrue: [
            recoveredBlock20Stack2 := self.
            recoveredBlock20PC := 36.
        ].
        recoveredBlock20Step = 36 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) stateDictionary.
            recoveredBlock20PC := 37.
        ].
        recoveredBlock20Step = 37 ifTrue: [
            recoveredBlock20Stack3 := recoveredBlock20Arg1.
            recoveredBlock20PC := 38.
        ].
        recoveredBlock20Step = 38 ifTrue: [
            recoveredBlock20Stack4 := [
    | block280fda70Value0 block280fda70Value1 |
    block280fda70Value0 := SGReservedNames.
    block280fda70Value1 := (block280fda70Value0) undefName.
    block280fda70Value1
].
            recoveredBlock20PC := 40.
        ].
        recoveredBlock20Step = 40 ifTrue: [
            recoveredBlock20PC := 49.
        ].
        recoveredBlock20Step = 49 ifTrue: [
            recoveredBlock20Stack2 := (recoveredBlock20Stack2) at: (recoveredBlock20Stack3) ifAbsent: (recoveredBlock20Stack4).
            recoveredBlock20PC := 51.
        ].
        recoveredBlock20Step = 51 ifTrue: [
            recoveredBlock20Stack1 := (recoveredBlock20Stack1) add: (recoveredBlock20Stack2).
            recoveredBlock20PC := 53.
        ].
        recoveredBlock20Step = 53 ifTrue: [
            recoveredBlock20Result := recoveredBlock20Stack1.
            recoveredBlock20Done := true.
        ].
    ].
    recoveredBlock20Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := RBFormulaId.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := RBFormulaString.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) setPhysTab: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) setHexTab: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204d4c94; bytecode file offset 0xdd15c8"
!SGSmSpecification methodsFor: 'recovered'!
detectStartStateInStateColl: recoveredArg1 checkDynParent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block2810762cArg1 | 
    | block2810762cStack0 block2810762cStack1 block2810762cStack2 block2810762cStack3 block2810762cPC block2810762cStep block2810762cDone block2810762cResult |
    block2810762cStack0 := self.
    block2810762cPC := 4.
    block2810762cDone := false.
    [block2810762cDone not] whileTrue: [
        block2810762cStep := block2810762cPC.
        block2810762cStep = 4 ifTrue: [
            block2810762cStack1 := nil.
            block2810762cPC := 5.
        ].
        block2810762cStep = 5 ifTrue: [
            block2810762cStack2 := block2810762cArg1.
            block2810762cPC := 6.
        ].
        block2810762cStep = 6 ifTrue: [
            block2810762cStack2 := (block2810762cStack2) basicGraphObject.
            block2810762cPC := 7.
        ].
        block2810762cStep = 7 ifTrue: [
            block2810762cStack2 := (block2810762cStack2) isSGHierarchyGO.
            block2810762cPC := 8.
        ].
        block2810762cStep = 8 ifTrue: [
            (block2810762cStack2) ifTrue: [block2810762cPC := 12] ifFalse: [block2810762cPC := 17].
        ].
        block2810762cStep = 12 ifTrue: [
            block2810762cPC := 13.
        ].
        block2810762cStep = 13 ifTrue: [
            block2810762cStack1 := block2810762cArg1.
            block2810762cPC := 14.
        ].
        block2810762cStep = 14 ifTrue: [
            block2810762cStack1 := (block2810762cStack1) contents.
            block2810762cPC := 15.
        ].
        block2810762cStep = 15 ifTrue: [
            block2810762cStack1 := (block2810762cStack1) updateDynamicChildrenInfoForStates.
            block2810762cPC := 17.
        ].
        block2810762cStep = 17 ifTrue: [
            block2810762cResult := block2810762cStack1.
            block2810762cDone := true.
        ].
    ].
    block2810762cResult
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [:recoveredBlock31Arg1 | 
    | recoveredBlock31Local1 recoveredBlock31Stack0 recoveredBlock31Stack1 recoveredBlock31Stack2 recoveredBlock31Stack3 recoveredBlock31PC recoveredBlock31Step recoveredBlock31Done recoveredBlock31Result |
    recoveredBlock31Stack0 := self.
    recoveredBlock31PC := 38.
    recoveredBlock31Done := false.
    [recoveredBlock31Done not] whileTrue: [
        recoveredBlock31Step := recoveredBlock31PC.
        recoveredBlock31Step = 38 ifTrue: [
            recoveredBlock31Stack1 := [
    | recoveredBlock31Block38Stack0 recoveredBlock31Block38Stack1 recoveredBlock31Block38Stack2 recoveredBlock31Block38Stack3 recoveredBlock31Block38PC recoveredBlock31Block38Step recoveredBlock31Block38Done recoveredBlock31Block38Result |
    recoveredBlock31Block38Stack0 := nil.
    recoveredBlock31Block38PC := 44.
    recoveredBlock31Block38Done := false.
    [recoveredBlock31Block38Done not] whileTrue: [
        recoveredBlock31Block38Step := recoveredBlock31Block38PC.
        recoveredBlock31Block38Step = 44 ifTrue: [
            recoveredBlock31Block38Stack1 := false.
            recoveredBlock31Block38PC := 45.
        ].
        recoveredBlock31Block38Step = 45 ifTrue: [
            recoveredBlock31Block38Stack2 := recoveredBlock31Arg1.
            recoveredBlock31Block38PC := 48.
        ].
        recoveredBlock31Block38Step = 48 ifTrue: [
            recoveredBlock31Block38Stack2 := (recoveredBlock31Block38Stack2) basicGraphObject.
            recoveredBlock31Block38PC := 49.
        ].
        recoveredBlock31Block38Step = 49 ifTrue: [
            recoveredBlock31Block38Stack2 := (recoveredBlock31Block38Stack2) isStateBlock.
            recoveredBlock31Block38PC := 51.
        ].
        recoveredBlock31Block38Step = 51 ifTrue: [
            (recoveredBlock31Block38Stack2) ifTrue: [recoveredBlock31Block38PC := 54] ifFalse: [recoveredBlock31Block38PC := 61].
        ].
        recoveredBlock31Block38Step = 54 ifTrue: [
            recoveredBlock31Block38PC := 55.
        ].
        recoveredBlock31Block38Step = 55 ifTrue: [
            recoveredBlock31Block38Stack1 := recoveredBlock31Arg1.
            recoveredBlock31Block38PC := 58.
        ].
        recoveredBlock31Block38Step = 58 ifTrue: [
            recoveredBlock31Block38Stack1 := (recoveredBlock31Block38Stack1) basicGraphObject.
            recoveredBlock31Block38PC := 59.
        ].
        recoveredBlock31Block38Step = 59 ifTrue: [
            recoveredBlock31Block38Stack1 := (recoveredBlock31Block38Stack1) isStartState.
            recoveredBlock31Block38PC := 61.
        ].
        recoveredBlock31Block38Step = 61 ifTrue: [
            recoveredBlock31Block38Result := recoveredBlock31Block38Stack1.
            recoveredBlock31Block38Done := true.
        ].
    ].
    recoveredBlock31Block38Result
].
            recoveredBlock31PC := 62.
        ].
        recoveredBlock31Step = 62 ifTrue: [
            recoveredBlock31Local1 := recoveredBlock31Stack1.
            recoveredBlock31PC := 65.
        ].
        recoveredBlock31Step = 65 ifTrue: [
            recoveredBlock31Stack1 := recoveredArg2.
            recoveredBlock31PC := 68.
        ].
        recoveredBlock31Step = 68 ifTrue: [
            (recoveredBlock31Stack1) ifTrue: [recoveredBlock31PC := 72] ifFalse: [recoveredBlock31PC := 94].
        ].
        recoveredBlock31Step = 72 ifTrue: [
            recoveredBlock31Stack1 := false.
            recoveredBlock31PC := 73.
        ].
        recoveredBlock31Step = 73 ifTrue: [
            recoveredBlock31Stack2 := recoveredBlock31Local1.
            recoveredBlock31PC := 76.
        ].
        recoveredBlock31Step = 76 ifTrue: [
            recoveredBlock31Stack2 := (recoveredBlock31Stack2) value.
            recoveredBlock31PC := 78.
        ].
        recoveredBlock31Step = 78 ifTrue: [
            (recoveredBlock31Stack2) ifTrue: [recoveredBlock31PC := 82] ifFalse: [recoveredBlock31PC := 90].
        ].
        recoveredBlock31Step = 82 ifTrue: [
            recoveredBlock31PC := 83.
        ].
        recoveredBlock31Step = 83 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Arg1.
            recoveredBlock31PC := 86.
        ].
        recoveredBlock31Step = 86 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) basicGraphObject.
            recoveredBlock31PC := 87.
        ].
        recoveredBlock31Step = 87 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) dynamicParent.
            recoveredBlock31PC := 89.
        ].
        recoveredBlock31Step = 89 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) isNil.
            recoveredBlock31PC := 90.
        ].
        recoveredBlock31Step = 90 ifTrue: [
            recoveredBlock31PC := 99.
        ].
        recoveredBlock31Step = 94 ifTrue: [
            recoveredBlock31Stack1 := recoveredBlock31Local1.
            recoveredBlock31PC := 97.
        ].
        recoveredBlock31Step = 97 ifTrue: [
            recoveredBlock31Stack1 := (recoveredBlock31Stack1) value.
            recoveredBlock31PC := 99.
        ].
        recoveredBlock31Step = 99 ifTrue: [
            recoveredBlock31Result := recoveredBlock31Stack1.
            recoveredBlock31Done := true.
        ].
    ].
    recoveredBlock31Result
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) isSGHierarchyGO.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) detectStartStateBlockForHierarchy: (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := (recoveredStack1) basicGraphObject.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) dynamicChildren.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) detectStartStateInStateColl: (recoveredStack2) checkDynParent: (recoveredStack3).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20557e0c; bytecode file offset 0xe54710"
!SGSmSpecification methodsFor: 'recovered'!
collectStatemachineBlocksForHierarchy: recoveredArg1 blocks: recoveredArg2 hierarchyBlocks: recoveredArg3 otherBlocks: recoveredArg4
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) blocks.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := [:block2810fedcArg1 | 
    | block2810fedcValue0 block2810fedcValue1 |
    block2810fedcValue0 := block2810fedcArg1.
    block2810fedcValue1 := (block2810fedcValue0) isHierarchyDB.
    block2810fedcValue1
].
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg2.
    recoveredBlock18Value2 := recoveredArg3.
    recoveredBlock18Value3 := recoveredArg4.
    recoveredBlock18Value4 := (self) collectStatemachineBlocksForHierarchy: (recoveredBlock18Value0) blocks: (recoveredBlock18Value1) hierarchyBlocks: (recoveredBlock18Value2) otherBlocks: (recoveredBlock18Value3).
    recoveredBlock18Value4
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := 'Call_55177'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'Call_55390'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) blocks.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := [:block2810ff00Arg1 | 
    | block2810ff00Stack0 block2810ff00Stack1 block2810ff00Stack2 block2810ff00Stack3 block2810ff00PC block2810ff00Step block2810ff00Done block2810ff00Result |
    block2810ff00Stack0 := self.
    block2810ff00PC := 4.
    block2810ff00Done := false.
    [block2810ff00Done not] whileTrue: [
        block2810ff00Step := block2810ff00PC.
        block2810ff00Step = 4 ifTrue: [
            block2810ff00Stack1 := true.
            block2810ff00PC := 5.
        ].
        block2810ff00Step = 5 ifTrue: [
            block2810ff00Stack2 := block2810ff00Arg1.
            block2810ff00PC := 6.
        ].
        block2810ff00Step = 6 ifTrue: [
            block2810ff00Stack2 := (block2810ff00Stack2) isStateBlockDB.
            block2810ff00PC := 8.
        ].
        block2810ff00Step = 8 ifTrue: [
            (block2810ff00Stack2) ifTrue: [block2810ff00PC := 15] ifFalse: [block2810ff00PC := 12].
        ].
        block2810ff00Step = 12 ifTrue: [
            block2810ff00PC := 13.
        ].
        block2810ff00Step = 13 ifTrue: [
            block2810ff00Stack1 := block2810ff00Arg1.
            block2810ff00PC := 14.
        ].
        block2810ff00Step = 14 ifTrue: [
            block2810ff00Stack1 := (block2810ff00Stack1) isHierarchyDB.
            block2810ff00PC := 15.
        ].
        block2810ff00Step = 15 ifTrue: [
            block2810ff00Result := block2810ff00Stack1.
            block2810ff00Done := true.
        ].
    ].
    block2810ff00Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := [:recoveredBlock95Arg1 | 
    | recoveredBlock95Value0 recoveredBlock95Value1 recoveredBlock95Value2 |
    recoveredBlock95Value0 := recoveredLocal3.
    recoveredBlock95Value1 := recoveredBlock95Arg1.
    recoveredBlock95Value2 := (recoveredBlock95Value0) add: (recoveredBlock95Value1).
    recoveredBlock95Value2
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := [:recoveredBlock116Arg1 | 
    | recoveredBlock116Stack0 recoveredBlock116Stack1 recoveredBlock116Stack2 recoveredBlock116Stack3 recoveredBlock116PC recoveredBlock116Step recoveredBlock116Done recoveredBlock116Result |
    recoveredBlock116Stack0 := self.
    recoveredBlock116PC := 122.
    recoveredBlock116Done := false.
    [recoveredBlock116Done not] whileTrue: [
        recoveredBlock116Step := recoveredBlock116PC.
        recoveredBlock116Step = 122 ifTrue: [
            recoveredBlock116Stack1 := 'Kk'.
            recoveredBlock116PC := 124.
        ].
        recoveredBlock116Step = 124 ifTrue: [
            recoveredBlock116Stack2 := 'Call_55177'.
            recoveredBlock116PC := 126.
        ].
        recoveredBlock116Step = 126 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) == (recoveredBlock116Stack2).
            recoveredBlock116PC := 127.
        ].
        recoveredBlock116Step = 127 ifTrue: [
            recoveredBlock116PC := 128.
        ].
        recoveredBlock116Step = 128 ifTrue: [
            recoveredBlock116Stack1 := 'Kk'.
            recoveredBlock116PC := 130.
        ].
        recoveredBlock116Step = 130 ifTrue: [
            recoveredBlock116Stack2 := 'Call_55390'.
            recoveredBlock116PC := 132.
        ].
        recoveredBlock116Step = 132 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) == (recoveredBlock116Stack2).
            recoveredBlock116PC := 133.
        ].
        recoveredBlock116Step = 133 ifTrue: [
            recoveredBlock116PC := 134.
        ].
        recoveredBlock116Step = 134 ifTrue: [
            recoveredBlock116Stack1 := recoveredBlock116Arg1.
            recoveredBlock116PC := 137.
        ].
        recoveredBlock116Step = 137 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) isHierarchyDB.
            recoveredBlock116PC := 138.
        ].
        recoveredBlock116Step = 138 ifTrue: [
            (recoveredBlock116Stack1) ifTrue: [recoveredBlock116PC := 168] ifFalse: [recoveredBlock116PC := 142].
        ].
        recoveredBlock116Step = 142 ifTrue: [
            recoveredBlock116Stack1 := recoveredLocal3.
            recoveredBlock116PC := 145.
        ].
        recoveredBlock116Step = 145 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Arg1.
            recoveredBlock116PC := 148.
        ].
        recoveredBlock116Step = 148 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) copyWithout: (recoveredBlock116Stack2).
            recoveredBlock116PC := 150.
        ].
        recoveredBlock116Step = 150 ifTrue: [
            recoveredBlock116Stack2 := [:recoveredBlock116Block150Arg1 | 
    | recoveredBlock116Block150Value0 recoveredBlock116Block150Value1 recoveredBlock116Block150Value2 |
    recoveredBlock116Block150Value0 := recoveredBlock116Arg1.
    recoveredBlock116Block150Value1 := recoveredBlock116Block150Arg1.
    recoveredBlock116Block150Value2 := (recoveredBlock116Block150Value0) containsState: (recoveredBlock116Block150Value1).
    recoveredBlock116Block150Value2
].
            recoveredBlock116PC := 163.
        ].
        recoveredBlock116Step = 163 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) anySatisfy: (recoveredBlock116Stack2).
            recoveredBlock116PC := 165.
        ].
        recoveredBlock116Step = 165 ifTrue: [
            (recoveredBlock116Stack1) ifTrue: [recoveredBlock116PC := 168] ifFalse: [recoveredBlock116PC := 202].
        ].
        recoveredBlock116Step = 168 ifTrue: [
            recoveredBlock116Stack1 := recoveredBlock116Arg1.
            recoveredBlock116PC := 171.
        ].
        recoveredBlock116Step = 171 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) isHierarchyDB.
            recoveredBlock116PC := 172.
        ].
        recoveredBlock116Step = 172 ifTrue: [
            (recoveredBlock116Stack1) ifTrue: [recoveredBlock116PC := 176] ifFalse: [recoveredBlock116PC := 190].
        ].
        recoveredBlock116Step = 176 ifTrue: [
            recoveredBlock116Stack1 := recoveredArg3.
            recoveredBlock116PC := 179.
        ].
        recoveredBlock116Step = 179 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Arg1.
            recoveredBlock116PC := 182.
        ].
        recoveredBlock116Step = 182 ifTrue: [
            recoveredBlock116Stack2 := (recoveredBlock116Stack2) graphicBlock.
            recoveredBlock116PC := 184.
        ].
        recoveredBlock116Step = 184 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) add: (recoveredBlock116Stack2).
            recoveredBlock116PC := 186.
        ].
        recoveredBlock116Step = 186 ifTrue: [
            recoveredBlock116PC := 198.
        ].
        recoveredBlock116Step = 190 ifTrue: [
            recoveredBlock116Stack1 := recoveredArg3.
            recoveredBlock116PC := 193.
        ].
        recoveredBlock116Step = 193 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Arg1.
            recoveredBlock116PC := 196.
        ].
        recoveredBlock116Step = 196 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) add: (recoveredBlock116Stack2).
            recoveredBlock116PC := 198.
        ].
        recoveredBlock116Step = 198 ifTrue: [
            recoveredBlock116PC := 210.
        ].
        recoveredBlock116Step = 202 ifTrue: [
            recoveredBlock116Stack1 := recoveredArg2.
            recoveredBlock116PC := 205.
        ].
        recoveredBlock116Step = 205 ifTrue: [
            recoveredBlock116Stack2 := recoveredBlock116Arg1.
            recoveredBlock116PC := 208.
        ].
        recoveredBlock116Step = 208 ifTrue: [
            recoveredBlock116Stack1 := (recoveredBlock116Stack1) add: (recoveredBlock116Stack2).
            recoveredBlock116PC := 210.
        ].
        recoveredBlock116Step = 210 ifTrue: [
            recoveredBlock116Result := recoveredBlock116Stack1.
            recoveredBlock116Done := true.
        ].
    ].
    recoveredBlock116Result
].
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredArg4.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            (recoveredStack2) addAll: (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            (recoveredStack1) addAll: (recoveredStack2).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2059d844; bytecode file offset 0xe9a160"
!SGSmSpecification methodsFor: 'recovered'!
collectStatesInEnumOrder: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
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
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := [:block28115318Arg1 :block28115318Arg2 | 
    | block28115318Local1 block28115318Local2 block28115318Stack0 block28115318Stack1 block28115318Stack2 block28115318Stack3 block28115318Stack4 block28115318PC block28115318Step block28115318Done block28115318Result |
    block28115318Stack0 := self.
    block28115318PC := 4.
    block28115318Done := false.
    [block28115318Done not] whileTrue: [
        block28115318Step := block28115318PC.
        block28115318Step = 4 ifTrue: [
            block28115318Stack1 := block28115318Arg1.
            block28115318PC := 5.
        ].
        block28115318Step = 5 ifTrue: [
            block28115318Stack1 := (block28115318Stack1) stateInfo.
            block28115318PC := 6.
        ].
        block28115318Step = 6 ifTrue: [
            block28115318Stack2 := 1.
            block28115318PC := 8.
        ].
        block28115318Step = 8 ifTrue: [
            block28115318Stack1 := (block28115318Stack1) at: (block28115318Stack2).
            block28115318PC := 10.
        ].
        block28115318Step = 10 ifTrue: [
            block28115318Stack2 := block28115318Stack1.
            block28115318PC := 11.
        ].
        block28115318Step = 11 ifTrue: [
            block28115318Local2 := block28115318Stack2.
            block28115318PC := 12.
        ].
        block28115318Step = 12 ifTrue: [
            block28115318Stack2 := block28115318Arg2.
            block28115318PC := 13.
        ].
        block28115318Step = 13 ifTrue: [
            block28115318Stack2 := (block28115318Stack2) stateInfo.
            block28115318PC := 14.
        ].
        block28115318Step = 14 ifTrue: [
            block28115318Stack3 := 1.
            block28115318PC := 16.
        ].
        block28115318Step = 16 ifTrue: [
            block28115318Stack2 := (block28115318Stack2) at: (block28115318Stack3).
            block28115318PC := 18.
        ].
        block28115318Step = 18 ifTrue: [
            block28115318Stack3 := block28115318Stack2.
            block28115318PC := 19.
        ].
        block28115318Step = 19 ifTrue: [
            block28115318Local1 := block28115318Stack3.
            block28115318PC := 20.
        ].
        block28115318Step = 20 ifTrue: [
            block28115318Stack1 := (block28115318Stack1) equals: (block28115318Stack2).
            block28115318PC := 22.
        ].
        block28115318Step = 22 ifTrue: [
            (block28115318Stack1) ifTrue: [block28115318PC := 26] ifFalse: [block28115318PC := 36].
        ].
        block28115318Step = 26 ifTrue: [
            block28115318Stack1 := block28115318Arg1.
            block28115318PC := 27.
        ].
        block28115318Step = 27 ifTrue: [
            block28115318Stack1 := (block28115318Stack1) position.
            block28115318PC := 29.
        ].
        block28115318Step = 29 ifTrue: [
            block28115318Stack2 := block28115318Arg2.
            block28115318PC := 30.
        ].
        block28115318Step = 30 ifTrue: [
            block28115318Stack2 := (block28115318Stack2) position.
            block28115318PC := 32.
        ].
        block28115318Step = 32 ifTrue: [
            block28115318Stack1 := (block28115318Stack1) < (block28115318Stack2).
            block28115318PC := 33.
        ].
        block28115318Step = 33 ifTrue: [
            block28115318PC := 39.
        ].
        block28115318Step = 36 ifTrue: [
            block28115318Stack1 := block28115318Local2.
            block28115318PC := 37.
        ].
        block28115318Step = 37 ifTrue: [
            block28115318Stack2 := block28115318Local1.
            block28115318PC := 38.
        ].
        block28115318Step = 38 ifTrue: [
            block28115318Stack1 := (block28115318Stack1) <= (block28115318Stack2).
            block28115318PC := 39.
        ].
        block28115318Step = 39 ifTrue: [
            block28115318Result := block28115318Stack1.
            block28115318Done := true.
        ].
    ].
    block28115318Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) collectStatemachineBlocksForHierarchy: (recoveredStack1) blocks: (recoveredStack2) hierarchyBlocks: (recoveredStack3) otherBlocks: (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := [:recoveredBlock110Arg1 :recoveredBlock110Arg2 | 
    | recoveredBlock110Value0 recoveredBlock110Value1 recoveredBlock110Value2 recoveredBlock110Value3 |
    recoveredBlock110Value0 := recoveredLocal3.
    recoveredBlock110Value1 := recoveredBlock110Arg1.
    recoveredBlock110Value2 := recoveredBlock110Arg2.
    recoveredBlock110Value3 := (recoveredBlock110Value0) value: (recoveredBlock110Value1) value: (recoveredBlock110Value2).
    recoveredBlock110Value3
].
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := recoveredLocal7.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadSourceForSpec: (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := [:recoveredBlock178Arg1 | 
    | recoveredBlock178Stack0 recoveredBlock178Stack1 recoveredBlock178Stack2 recoveredBlock178Stack3 recoveredBlock178PC recoveredBlock178Step recoveredBlock178Done recoveredBlock178Result |
    recoveredBlock178Stack0 := self.
    recoveredBlock178PC := 184.
    recoveredBlock178Done := false.
    [recoveredBlock178Done not] whileTrue: [
        recoveredBlock178Step := recoveredBlock178PC.
        recoveredBlock178Step = 184 ifTrue: [
            recoveredBlock178Stack1 := recoveredBlock178Arg1.
            recoveredBlock178PC := 185.
        ].
        recoveredBlock178Step = 185 ifTrue: [
            recoveredBlock178Stack0 := (recoveredBlock178Stack0) detectStartStateBlockForHierarchy: (recoveredBlock178Stack1).
            recoveredBlock178PC := 187.
        ].
        recoveredBlock178Step = 187 ifTrue: [
            recoveredLocal1 := recoveredBlock178Stack0.
            recoveredBlock178PC := 190.
        ].
        recoveredBlock178Step = 190 ifTrue: [
            recoveredBlock178Stack0 := nil.
            recoveredBlock178PC := 191.
        ].
        recoveredBlock178Step = 191 ifTrue: [
            recoveredBlock178Stack1 := recoveredLocal1.
            recoveredBlock178PC := 194.
        ].
        recoveredBlock178Step = 194 ifTrue: [
            (recoveredBlock178Stack1 == nil) ifTrue: [recoveredBlock178PC := 261] ifFalse: [recoveredBlock178PC := 198].
        ].
        recoveredBlock178Step = 198 ifTrue: [
            recoveredBlock178PC := 199.
        ].
        recoveredBlock178Step = 199 ifTrue: [
            recoveredBlock178Stack0 := recoveredLocal8.
            recoveredBlock178PC := 202.
        ].
        recoveredBlock178Step = 202 ifTrue: [
            recoveredBlock178Stack1 := [:recoveredBlock178Block202Arg1 | 
    | recoveredBlock178Block202Value0 recoveredBlock178Block202Value1 recoveredBlock178Block202Value2 recoveredBlock178Block202Value3 recoveredBlock178Block202Value4 |
    recoveredBlock178Block202Value0 := recoveredBlock178Block202Arg1.
    recoveredBlock178Block202Value1 := (recoveredBlock178Block202Value0) iD.
    recoveredBlock178Block202Value2 := recoveredLocal1.
    recoveredBlock178Block202Value3 := (recoveredBlock178Block202Value2) identifier.
    recoveredBlock178Block202Value4 := (recoveredBlock178Block202Value1) = (recoveredBlock178Block202Value3).
    recoveredBlock178Block202Value4
].
            recoveredBlock178PC := 218.
        ].
        recoveredBlock178Step = 218 ifTrue: [
            recoveredBlock178Stack2 := [].
            recoveredBlock178PC := 220.
        ].
        recoveredBlock178Step = 220 ifTrue: [
            recoveredBlock178Stack0 := (recoveredBlock178Stack0) detect: (recoveredBlock178Stack1) ifNone: (recoveredBlock178Stack2).
            recoveredBlock178PC := 222.
        ].
        recoveredBlock178Step = 222 ifTrue: [
            recoveredLocal4 := recoveredBlock178Stack0.
            recoveredBlock178PC := 225.
        ].
        recoveredBlock178Step = 225 ifTrue: [
            recoveredBlock178Stack0 := nil.
            recoveredBlock178PC := 226.
        ].
        recoveredBlock178Step = 226 ifTrue: [
            recoveredBlock178Stack1 := recoveredLocal4.
            recoveredBlock178PC := 229.
        ].
        recoveredBlock178Step = 229 ifTrue: [
            (recoveredBlock178Stack1 == nil) ifTrue: [recoveredBlock178PC := 261] ifFalse: [recoveredBlock178PC := 232].
        ].
        recoveredBlock178Step = 232 ifTrue: [
            recoveredBlock178PC := 233.
        ].
        recoveredBlock178Step = 233 ifTrue: [
            recoveredBlock178Stack0 := recoveredLocal5.
            recoveredBlock178PC := 236.
        ].
        recoveredBlock178Step = 236 ifTrue: [
            recoveredBlock178Stack1 := recoveredLocal4.
            recoveredBlock178PC := 239.
        ].
        recoveredBlock178Step = 239 ifTrue: [
            recoveredBlock178Stack2 := [
    | recoveredBlock178Block239Value0 |
    recoveredBlock178Block239Value0 := (self) error: ('detected block is missing').
    recoveredBlock178Block239Value0
].
            recoveredBlock178PC := 251.
        ].
        recoveredBlock178Step = 251 ifTrue: [
            (recoveredBlock178Stack0) remove: (recoveredBlock178Stack1) ifAbsent: (recoveredBlock178Stack2).
            recoveredBlock178PC := 253.
        ].
        recoveredBlock178Step = 253 ifTrue: [
            recoveredBlock178Stack0 := recoveredLocal5.
            recoveredBlock178PC := 256.
        ].
        recoveredBlock178Step = 256 ifTrue: [
            recoveredBlock178Stack1 := recoveredLocal4.
            recoveredBlock178PC := 259.
        ].
        recoveredBlock178Step = 259 ifTrue: [
            recoveredBlock178Stack0 := (recoveredBlock178Stack0) addFirst: (recoveredBlock178Stack1).
            recoveredBlock178PC := 261.
        ].
        recoveredBlock178Step = 261 ifTrue: [
            recoveredBlock178Result := recoveredBlock178Stack0.
            recoveredBlock178Done := true.
        ].
    ].
    recoveredBlock178Result
].
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := [:recoveredBlock267Arg1 | 
    | recoveredBlock267Local1 recoveredBlock267Value0 recoveredBlock267Value1 recoveredBlock267Value2 recoveredBlock267Value3 |
    recoveredBlock267Value0 := recoveredBlock267Arg1.
    recoveredBlock267Local1 := recoveredBlock267Value0.
    recoveredBlock267Value1 := recoveredLocal2.
    recoveredBlock267Value2 := recoveredBlock267Arg1.
    recoveredBlock267Value3 := (recoveredBlock267Value1) add: (recoveredBlock267Value2).
    recoveredBlock267Value3
].
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

