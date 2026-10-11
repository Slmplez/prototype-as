"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200011d8; bytecode file offset 0x8ffcfc"
!SGBdlMetaJunction methodsFor: 'recovered'!
connectedEndState
    ^self
! !

"ASDBase.ic method 0x20001768; bytecode file offset 0x8ffcfc"
!SGBdlMetaJunction methodsFor: 'recovered'!
analyzeOverlappingStates
    ^self
! !

"ASDBase.ic method 0x20001cb8; bytecode file offset 0x8ffcfc"
!SGBdlMetaJunction methodsFor: 'recovered'!
getEndState
    ^self
! !

"ASDBase.ic method 0x20002c30; bytecode file offset 0x8ffcfc"
!SGBdlMetaJunction methodsFor: 'recovered'!
connectedStartState
    ^self
! !

"ASDBase.ic method 0x20004220; bytecode file offset 0x90206c"
!SGBdlMetaJunction methodsFor: 'recovered'!
allTransitions: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004a00; bytecode file offset 0x90206c"
!SGBdlMetaJunction methodsFor: 'recovered'!
connection: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20007460; bytecode file offset 0x908be4"
!SGBdlMetaJunction methodsFor: 'recovered'!
outTransitions
    | recoveredValue0 |
    recoveredValue0 := (self) transitions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000935c; bytecode file offset 0x908be4"
!SGBdlMetaJunction methodsFor: 'recovered'!
getTransitions
    | recoveredValue0 |
    recoveredValue0 := (self) transitions.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003cfa8; bytecode file offset 0x93bf94"
!SGBdlMetaJunction methodsFor: 'recovered'!
children
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050244; bytecode file offset 0x94d048"
!SGBdlMetaJunction methodsFor: 'recovered'!
triggerLabel
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2006c34c; bytecode file offset 0x9692b0"
!SGBdlMetaJunction methodsFor: 'recovered'!
origin
    | recoveredValue0 |
    recoveredValue0 := origin.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ccd8; bytecode file offset 0x969c04"
!SGBdlMetaJunction methodsFor: 'recovered'!
corner
    | recoveredValue0 |
    recoveredValue0 := corner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076124; bytecode file offset 0x9757c8"
!SGBdlMetaJunction methodsFor: 'recovered'!
isBdlMetaJunction
    ^true
! !

"ASDBase.ic method 0x2007c0b4; bytecode file offset 0x97c330"
!SGBdlMetaJunction methodsFor: 'recovered'!
isStartState
    ^false
! !

"ASDBase.ic method 0x20087ff4; bytecode file offset 0x984bc0"
!SGBdlMetaJunction methodsFor: 'recovered'!
nilVariables
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) with: ('transitions').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20089848; bytecode file offset 0x986134"
!SGBdlMetaJunction methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    transitions := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20095538; bytecode file offset 0x991fb4"
!SGBdlMetaJunction methodsFor: 'recovered'!
collectOutTransitions: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) outTransitions.
    (recoveredValue0) addAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097b94; bytecode file offset 0x995850"
!SGBdlMetaJunction methodsFor: 'recovered'!
addOutTrans: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) outTransitions.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c2a10; bytecode file offset 0x9bf474"
!SGBdlMetaJunction methodsFor: 'recovered'!
transitions: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    transitions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c31ec; bytecode file offset 0x9bfde0"
!SGBdlMetaJunction methodsFor: 'recovered'!
origin: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    origin := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3a80; bytecode file offset 0x9c058c"
!SGBdlMetaJunction methodsFor: 'recovered'!
corner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    corner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d67c0; bytecode file offset 0x9d3134"
!SGBdlMetaJunction methodsFor: 'recovered'!
initialize
    super initialize.
    (self) reset.
    ^self
! !

"ASDBase.ic method 0x200d843c; bytecode file offset 0x9d4d24"
!SGBdlMetaJunction methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) errLabel.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20105f14; bytecode file offset 0xa027d8"
!SGBdlMetaJunction methodsFor: 'recovered'!
transitions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := transitions.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) reset.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := transitions.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2032f01c; bytecode file offset 0xc2b8fc"
!SGBdlMetaJunction methodsFor: 'recovered'!
transitionsForTrigger: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SortedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280ecb50Arg1 :block280ecb50Arg2 | 
    | block280ecb50Value0 block280ecb50Value1 block280ecb50Value2 block280ecb50Value3 block280ecb50Value4 |
    block280ecb50Value0 := block280ecb50Arg1.
    block280ecb50Value1 := (block280ecb50Value0) priority.
    block280ecb50Value2 := block280ecb50Arg2.
    block280ecb50Value3 := (block280ecb50Value2) priority.
    block280ecb50Value4 := (block280ecb50Value1) > (block280ecb50Value3).
    block280ecb50Value4
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) transitions.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Stack0 recoveredBlock24Stack1 recoveredBlock24Stack2 recoveredBlock24Stack3 recoveredBlock24Stack4 recoveredBlock24Stack5 recoveredBlock24PC recoveredBlock24Step recoveredBlock24Done recoveredBlock24Result |
    recoveredBlock24Stack0 := self.
    recoveredBlock24PC := 30.
    recoveredBlock24Done := false.
    [recoveredBlock24Done not] whileTrue: [
        recoveredBlock24Step := recoveredBlock24PC.
        recoveredBlock24Step = 30 ifTrue: [
            recoveredBlock24Stack1 := nil.
            recoveredBlock24PC := 31.
        ].
        recoveredBlock24Step = 31 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 32.
        ].
        recoveredBlock24Step = 32 ifTrue: [
            recoveredBlock24Stack3 := recoveredArg1.
            recoveredBlock24PC := 35.
        ].
        recoveredBlock24Step = 35 ifTrue: [
            recoveredBlock24Stack3 := (recoveredBlock24Stack3) aliasName.
            recoveredBlock24PC := 37.
        ].
        recoveredBlock24Step = 37 ifTrue: [
            recoveredBlock24Stack4 := Set.
            recoveredBlock24PC := 39.
        ].
        recoveredBlock24Step = 39 ifTrue: [
            recoveredBlock24Stack4 := (recoveredBlock24Stack4) new.
            recoveredBlock24PC := 41.
        ].
        recoveredBlock24Step = 41 ifTrue: [
            recoveredBlock24Stack2 := (recoveredBlock24Stack2) hasTransitionsForTrigger: (recoveredBlock24Stack3) visited: (recoveredBlock24Stack4).
            recoveredBlock24PC := 43.
        ].
        recoveredBlock24Step = 43 ifTrue: [
            (recoveredBlock24Stack2) ifTrue: [recoveredBlock24PC := 46] ifFalse: [recoveredBlock24PC := 53].
        ].
        recoveredBlock24Step = 46 ifTrue: [
            recoveredBlock24PC := 47.
        ].
        recoveredBlock24Step = 47 ifTrue: [
            recoveredBlock24Stack1 := recoveredLocal1.
            recoveredBlock24PC := 50.
        ].
        recoveredBlock24Step = 50 ifTrue: [
            recoveredBlock24Stack2 := recoveredBlock24Arg1.
            recoveredBlock24PC := 51.
        ].
        recoveredBlock24Step = 51 ifTrue: [
            recoveredBlock24Stack1 := (recoveredBlock24Stack1) add: (recoveredBlock24Stack2).
            recoveredBlock24PC := 53.
        ].
        recoveredBlock24Step = 53 ifTrue: [
            recoveredBlock24Result := recoveredBlock24Stack1.
            recoveredBlock24Done := true.
        ].
    ].
    recoveredBlock24Result
].
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20421f94; bytecode file offset 0xd1e858"
!SGBdlMetaJunction methodsFor: 'recovered'!
isOverlappingWith: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) corner.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) origin.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) origin.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) corner.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) corner.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205d68d0; bytecode file offset 0xed31e8"
!SGBdlMetaJunction methodsFor: 'recovered'!
analyzeTransitions
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) transitions.
    recoveredValue1 := (recoveredValue0) copy.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 recoveredBlock10Value4 |
    recoveredBlock10Value0 := recoveredLocal1.
    recoveredBlock10Value1 := recoveredBlock10Arg1.
    (recoveredBlock10Value0) remove: (recoveredBlock10Value1).
    recoveredBlock10Value2 := recoveredLocal1.
    recoveredBlock10Value3 := [:recoveredBlock10Block27Arg1 | 
    | recoveredBlock10Block27Local1 recoveredBlock10Block27Local2 recoveredBlock10Block27Local3 recoveredBlock10Block27Local4 recoveredBlock10Block27Local5 recoveredBlock10Block27Stack0 recoveredBlock10Block27Stack1 recoveredBlock10Block27Stack2 recoveredBlock10Block27Stack3 recoveredBlock10Block27Stack4 recoveredBlock10Block27Stack5 recoveredBlock10Block27Stack6 recoveredBlock10Block27PC recoveredBlock10Block27Step recoveredBlock10Block27Done recoveredBlock10Block27Result |
    recoveredBlock10Block27Stack0 := self.
    recoveredBlock10Block27PC := 34.
    recoveredBlock10Block27Done := false.
    [recoveredBlock10Block27Done not] whileTrue: [
        recoveredBlock10Block27Step := recoveredBlock10Block27PC.
        recoveredBlock10Block27Step = 34 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Arg1.
            recoveredBlock10Block27PC := 37.
        ].
        recoveredBlock10Block27Step = 37 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) triggerAlias.
            recoveredBlock10Block27PC := 38.
        ].
        recoveredBlock10Block27Step = 38 ifTrue: [
            recoveredBlock10Block27Stack2 := SGReservedNames.
            recoveredBlock10Block27PC := 40.
        ].
        recoveredBlock10Block27Step = 40 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) undefName.
            recoveredBlock10Block27PC := 42.
        ].
        recoveredBlock10Block27Step = 42 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) = (recoveredBlock10Block27Stack2).
            recoveredBlock10Block27PC := 43.
        ].
        recoveredBlock10Block27Step = 43 ifTrue: [
            (recoveredBlock10Block27Stack1) ifTrue: [recoveredBlock10Block27PC := 46] ifFalse: [recoveredBlock10Block27PC := 230].
        ].
        recoveredBlock10Block27Step = 46 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Block27Arg1.
            recoveredBlock10Block27PC := 49.
        ].
        recoveredBlock10Block27Step = 49 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) triggerAlias.
            recoveredBlock10Block27PC := 50.
        ].
        recoveredBlock10Block27Step = 50 ifTrue: [
            recoveredBlock10Block27Stack2 := SGReservedNames.
            recoveredBlock10Block27PC := 52.
        ].
        recoveredBlock10Block27Step = 52 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) undefName.
            recoveredBlock10Block27PC := 54.
        ].
        recoveredBlock10Block27Step = 54 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) = (recoveredBlock10Block27Stack2).
            recoveredBlock10Block27PC := 55.
        ].
        recoveredBlock10Block27Step = 55 ifTrue: [
            (recoveredBlock10Block27Stack1) ifTrue: [recoveredBlock10Block27PC := 58] ifFalse: [recoveredBlock10Block27PC := 198].
        ].
        recoveredBlock10Block27Step = 58 ifTrue: [
            recoveredBlock10Block27Stack1 := Set.
            recoveredBlock10Block27PC := 60.
        ].
        recoveredBlock10Block27Step = 60 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) new.
            recoveredBlock10Block27PC := 62.
        ].
        recoveredBlock10Block27Step = 62 ifTrue: [
            recoveredBlock10Block27Local3 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 65.
        ].
        recoveredBlock10Block27Step = 65 ifTrue: [
            recoveredBlock10Block27Stack1 := Set.
            recoveredBlock10Block27PC := 67.
        ].
        recoveredBlock10Block27Step = 67 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) new.
            recoveredBlock10Block27PC := 69.
        ].
        recoveredBlock10Block27Step = 69 ifTrue: [
            recoveredBlock10Block27Local2 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 72.
        ].
        recoveredBlock10Block27Step = 72 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Arg1.
            recoveredBlock10Block27PC := 75.
        ].
        recoveredBlock10Block27Step = 75 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Local3.
            recoveredBlock10Block27PC := 78.
        ].
        recoveredBlock10Block27Step = 78 ifTrue: [
            recoveredBlock10Block27Stack3 := Set.
            recoveredBlock10Block27PC := 80.
        ].
        recoveredBlock10Block27Step = 80 ifTrue: [
            recoveredBlock10Block27Stack3 := (recoveredBlock10Block27Stack3) new.
            recoveredBlock10Block27PC := 82.
        ].
        recoveredBlock10Block27Step = 82 ifTrue: [
            (recoveredBlock10Block27Stack1) allTransitionsWithTriggers: (recoveredBlock10Block27Stack2) visited: (recoveredBlock10Block27Stack3).
            recoveredBlock10Block27PC := 84.
        ].
        recoveredBlock10Block27Step = 84 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Block27Arg1.
            recoveredBlock10Block27PC := 87.
        ].
        recoveredBlock10Block27Step = 87 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Local2.
            recoveredBlock10Block27PC := 90.
        ].
        recoveredBlock10Block27Step = 90 ifTrue: [
            recoveredBlock10Block27Stack3 := Set.
            recoveredBlock10Block27PC := 92.
        ].
        recoveredBlock10Block27Step = 92 ifTrue: [
            recoveredBlock10Block27Stack3 := (recoveredBlock10Block27Stack3) new.
            recoveredBlock10Block27PC := 94.
        ].
        recoveredBlock10Block27Step = 94 ifTrue: [
            (recoveredBlock10Block27Stack1) allTransitionsWithTriggers: (recoveredBlock10Block27Stack2) visited: (recoveredBlock10Block27Stack3).
            recoveredBlock10Block27PC := 96.
        ].
        recoveredBlock10Block27Step = 96 ifTrue: [
            recoveredBlock10Block27Stack1 := Set.
            recoveredBlock10Block27PC := 98.
        ].
        recoveredBlock10Block27Step = 98 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) new.
            recoveredBlock10Block27PC := 100.
        ].
        recoveredBlock10Block27Step = 100 ifTrue: [
            recoveredBlock10Block27Local1 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 103.
        ].
        recoveredBlock10Block27Step = 103 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Block27Local3.
            recoveredBlock10Block27PC := 106.
        ].
        recoveredBlock10Block27Step = 106 ifTrue: [
            recoveredBlock10Block27Stack2 := [:recoveredBlock10Block27Block106Arg1 | 
    | recoveredBlock10Block27Block106Value0 recoveredBlock10Block27Block106Value1 recoveredBlock10Block27Block106Value2 |
    recoveredBlock10Block27Block106Value0 := recoveredBlock10Block27Local2.
    recoveredBlock10Block27Block106Value1 := [:recoveredBlock10Block27Block106Block115Arg1 | 
    | recoveredBlock10Block27Block106Block115Value0 recoveredBlock10Block27Block106Block115Value1 recoveredBlock10Block27Block106Block115Value2 recoveredBlock10Block27Block106Block115Value3 recoveredBlock10Block27Block106Block115Value4 |
    recoveredBlock10Block27Block106Block115Value0 := recoveredBlock10Block27Block106Arg1.
    recoveredBlock10Block27Block106Block115Value1 := (recoveredBlock10Block27Block106Block115Value0) triggerAlias.
    recoveredBlock10Block27Block106Block115Value2 := recoveredBlock10Block27Block106Block115Arg1.
    recoveredBlock10Block27Block106Block115Value3 := (recoveredBlock10Block27Block106Block115Value2) triggerAlias.
    recoveredBlock10Block27Block106Block115Value4 := (recoveredBlock10Block27Block106Block115Value1) = (recoveredBlock10Block27Block106Block115Value3).
    recoveredBlock10Block27Block106Block115Value4
].
    recoveredBlock10Block27Block106Value2 := (recoveredBlock10Block27Block106Value0) anySatisfy: (recoveredBlock10Block27Block106Value1).
    recoveredBlock10Block27Block106Value2
].
            recoveredBlock10Block27PC := 133.
        ].
        recoveredBlock10Block27Step = 133 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) select: (recoveredBlock10Block27Stack2).
            recoveredBlock10Block27PC := 135.
        ].
        recoveredBlock10Block27Step = 135 ifTrue: [
            recoveredBlock10Block27Local1 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 138.
        ].
        recoveredBlock10Block27Step = 138 ifTrue: [
            recoveredBlock10Block27Stack1 := true.
            recoveredBlock10Block27PC := 139.
        ].
        recoveredBlock10Block27Step = 139 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Local3.
            recoveredBlock10Block27PC := 142.
        ].
        recoveredBlock10Block27Step = 142 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) isEmpty.
            recoveredBlock10Block27PC := 144.
        ].
        recoveredBlock10Block27Step = 144 ifTrue: [
            (recoveredBlock10Block27Stack2) ifTrue: [recoveredBlock10Block27PC := 148] ifFalse: [recoveredBlock10Block27PC := 156].
        ].
        recoveredBlock10Block27Step = 148 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Local2.
            recoveredBlock10Block27PC := 151.
        ].
        recoveredBlock10Block27Step = 151 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) isEmpty.
            recoveredBlock10Block27PC := 153.
        ].
        recoveredBlock10Block27Step = 153 ifTrue: [
            (recoveredBlock10Block27Stack2) ifTrue: [recoveredBlock10Block27PC := 162] ifFalse: [recoveredBlock10Block27PC := 156].
        ].
        recoveredBlock10Block27Step = 156 ifTrue: [
            recoveredBlock10Block27PC := 157.
        ].
        recoveredBlock10Block27Step = 157 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Block27Local1.
            recoveredBlock10Block27PC := 160.
        ].
        recoveredBlock10Block27Step = 160 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) notEmpty.
            recoveredBlock10Block27PC := 162.
        ].
        recoveredBlock10Block27Step = 162 ifTrue: [
            recoveredBlock10Block27Local5 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 165.
        ].
        recoveredBlock10Block27Step = 165 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Block27Local1.
            recoveredBlock10Block27PC := 168.
        ].
        recoveredBlock10Block27Step = 168 ifTrue: [
            recoveredBlock10Block27Stack2 := [:block28119bccArg1 | 
    | block28119bccValue0 block28119bccValue1 |
    block28119bccValue0 := block28119bccArg1.
    block28119bccValue1 := (block28119bccValue0) triggerLabel.
    block28119bccValue1
].
            recoveredBlock10Block27PC := 170.
        ].
        recoveredBlock10Block27Step = 170 ifTrue: [
            recoveredBlock10Block27PC := 178.
        ].
        recoveredBlock10Block27Step = 178 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) collect: (recoveredBlock10Block27Stack2).
            recoveredBlock10Block27PC := 180.
        ].
        recoveredBlock10Block27Step = 180 ifTrue: [
            recoveredBlock10Block27Local4 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 183.
        ].
        recoveredBlock10Block27Step = 183 ifTrue: [
            recoveredBlock10Block27Stack1 := nil.
            recoveredBlock10Block27PC := 184.
        ].
        recoveredBlock10Block27Step = 184 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 185.
        ].
        recoveredBlock10Block27Step = 185 ifTrue: [
            recoveredBlock10Block27Local3 := recoveredBlock10Block27Stack2.
            recoveredBlock10Block27PC := 188.
        ].
        recoveredBlock10Block27Step = 188 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 189.
        ].
        recoveredBlock10Block27Step = 189 ifTrue: [
            recoveredBlock10Block27Local2 := recoveredBlock10Block27Stack2.
            recoveredBlock10Block27PC := 192.
        ].
        recoveredBlock10Block27Step = 192 ifTrue: [
            recoveredBlock10Block27Local1 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 195.
        ].
        recoveredBlock10Block27Step = 195 ifTrue: [
            recoveredBlock10Block27PC := 226.
        ].
        recoveredBlock10Block27Step = 198 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Arg1.
            recoveredBlock10Block27PC := 201.
        ].
        recoveredBlock10Block27Step = 201 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Arg1.
            recoveredBlock10Block27PC := 204.
        ].
        recoveredBlock10Block27Step = 204 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) triggerAlias.
            recoveredBlock10Block27PC := 205.
        ].
        recoveredBlock10Block27Step = 205 ifTrue: [
            recoveredBlock10Block27Stack3 := Set.
            recoveredBlock10Block27PC := 207.
        ].
        recoveredBlock10Block27Step = 207 ifTrue: [
            recoveredBlock10Block27Stack3 := (recoveredBlock10Block27Stack3) new.
            recoveredBlock10Block27PC := 209.
        ].
        recoveredBlock10Block27Step = 209 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) hasTransitionsForTrigger: (recoveredBlock10Block27Stack2) visited: (recoveredBlock10Block27Stack3).
            recoveredBlock10Block27PC := 211.
        ].
        recoveredBlock10Block27Step = 211 ifTrue: [
            recoveredBlock10Block27Local5 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 214.
        ].
        recoveredBlock10Block27Step = 214 ifTrue: [
            recoveredBlock10Block27Stack1 := OrderedCollection.
            recoveredBlock10Block27PC := 216.
        ].
        recoveredBlock10Block27Step = 216 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Arg1.
            recoveredBlock10Block27PC := 219.
        ].
        recoveredBlock10Block27Step = 219 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) triggerLabel.
            recoveredBlock10Block27PC := 221.
        ].
        recoveredBlock10Block27Step = 221 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) with: (recoveredBlock10Block27Stack2).
            recoveredBlock10Block27PC := 223.
        ].
        recoveredBlock10Block27Step = 223 ifTrue: [
            recoveredBlock10Block27Local4 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 226.
        ].
        recoveredBlock10Block27Step = 226 ifTrue: [
            recoveredBlock10Block27PC := 258.
        ].
        recoveredBlock10Block27Step = 230 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Block27Arg1.
            recoveredBlock10Block27PC := 233.
        ].
        recoveredBlock10Block27Step = 233 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Arg1.
            recoveredBlock10Block27PC := 236.
        ].
        recoveredBlock10Block27Step = 236 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) triggerAlias.
            recoveredBlock10Block27PC := 237.
        ].
        recoveredBlock10Block27Step = 237 ifTrue: [
            recoveredBlock10Block27Stack3 := Set.
            recoveredBlock10Block27PC := 239.
        ].
        recoveredBlock10Block27Step = 239 ifTrue: [
            recoveredBlock10Block27Stack3 := (recoveredBlock10Block27Stack3) new.
            recoveredBlock10Block27PC := 241.
        ].
        recoveredBlock10Block27Step = 241 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) hasTransitionsForTrigger: (recoveredBlock10Block27Stack2) visited: (recoveredBlock10Block27Stack3).
            recoveredBlock10Block27PC := 243.
        ].
        recoveredBlock10Block27Step = 243 ifTrue: [
            recoveredBlock10Block27Local5 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 246.
        ].
        recoveredBlock10Block27Step = 246 ifTrue: [
            recoveredBlock10Block27Stack1 := OrderedCollection.
            recoveredBlock10Block27PC := 248.
        ].
        recoveredBlock10Block27Step = 248 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Arg1.
            recoveredBlock10Block27PC := 251.
        ].
        recoveredBlock10Block27Step = 251 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) triggerLabel.
            recoveredBlock10Block27PC := 253.
        ].
        recoveredBlock10Block27Step = 253 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) with: (recoveredBlock10Block27Stack2).
            recoveredBlock10Block27PC := 255.
        ].
        recoveredBlock10Block27Step = 255 ifTrue: [
            recoveredBlock10Block27Local4 := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27PC := 258.
        ].
        recoveredBlock10Block27Step = 258 ifTrue: [
            recoveredBlock10Block27Stack1 := nil.
            recoveredBlock10Block27PC := 259.
        ].
        recoveredBlock10Block27Step = 259 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Local5.
            recoveredBlock10Block27PC := 262.
        ].
        recoveredBlock10Block27Step = 262 ifTrue: [
            (recoveredBlock10Block27Stack2) ifTrue: [recoveredBlock10Block27PC := 266] ifFalse: [recoveredBlock10Block27PC := 352].
        ].
        recoveredBlock10Block27Step = 266 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Arg1.
            recoveredBlock10Block27PC := 269.
        ].
        recoveredBlock10Block27Step = 269 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) priority.
            recoveredBlock10Block27PC := 271.
        ].
        recoveredBlock10Block27Step = 271 ifTrue: [
            recoveredBlock10Block27Stack3 := recoveredBlock10Arg1.
            recoveredBlock10Block27PC := 274.
        ].
        recoveredBlock10Block27Step = 274 ifTrue: [
            recoveredBlock10Block27Stack3 := (recoveredBlock10Block27Stack3) priority.
            recoveredBlock10Block27PC := 276.
        ].
        recoveredBlock10Block27Step = 276 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) = (recoveredBlock10Block27Stack3).
            recoveredBlock10Block27PC := 277.
        ].
        recoveredBlock10Block27Step = 277 ifTrue: [
            (recoveredBlock10Block27Stack2) ifTrue: [recoveredBlock10Block27PC := 280] ifFalse: [recoveredBlock10Block27PC := 352].
        ].
        recoveredBlock10Block27Step = 280 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Arg1.
            recoveredBlock10Block27PC := 283.
        ].
        recoveredBlock10Block27Step = 283 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) connectedStartState.
            recoveredBlock10Block27PC := 285.
        ].
        recoveredBlock10Block27Step = 285 ifTrue: [
            recoveredBlock10Block27Stack3 := recoveredBlock10Arg1.
            recoveredBlock10Block27PC := 288.
        ].
        recoveredBlock10Block27Step = 288 ifTrue: [
            recoveredBlock10Block27Stack3 := (recoveredBlock10Block27Stack3) connectedStartState.
            recoveredBlock10Block27PC := 290.
        ].
        recoveredBlock10Block27Step = 290 ifTrue: [
            (recoveredBlock10Block27Stack2 ~~ recoveredBlock10Block27Stack3) ifTrue: [recoveredBlock10Block27PC := 352] ifFalse: [recoveredBlock10Block27PC := 294].
        ].
        recoveredBlock10Block27Step = 294 ifTrue: [
            recoveredBlock10Block27PC := 295.
        ].
        recoveredBlock10Block27Step = 295 ifTrue: [
            recoveredBlock10Block27Stack1 := recoveredBlock10Block27Local4.
            recoveredBlock10Block27PC := 298.
        ].
        recoveredBlock10Block27Step = 298 ifTrue: [
            recoveredBlock10Block27Stack2 := [:recoveredBlock10Block27Block298Arg1 | 
    | recoveredBlock10Block27Block298Value0 recoveredBlock10Block27Block298Value1 recoveredBlock10Block27Block298Value2 recoveredBlock10Block27Block298Value3 recoveredBlock10Block27Block298Value4 recoveredBlock10Block27Block298Value5 |
    recoveredBlock10Block27Block298Value0 := recoveredBlock10Arg1.
    recoveredBlock10Block27Block298Value1 := (recoveredBlock10Block27Block298Value0) priority.
    recoveredBlock10Block27Block298Value2 := (recoveredBlock10Block27Block298Value1) printString.
    recoveredBlock10Block27Block298Value3 := recoveredBlock10Block27Block298Arg1.
    recoveredBlock10Block27Block298Value4 := (self) errLabel.
    recoveredBlock10Block27Block298Value5 := (self) smSyntaxErrNo: (50) with: (recoveredBlock10Block27Block298Value2) with: (recoveredBlock10Block27Block298Value3) with: (recoveredBlock10Block27Block298Value4).
    recoveredBlock10Block27Block298Value5
].
            recoveredBlock10Block27PC := 321.
        ].
        recoveredBlock10Block27Step = 321 ifTrue: [
            (recoveredBlock10Block27Stack1) do: (recoveredBlock10Block27Stack2).
            recoveredBlock10Block27PC := 323.
        ].
        recoveredBlock10Block27Step = 323 ifTrue: [
            recoveredBlock10Block27Stack1 := nil.
            recoveredBlock10Block27PC := 324.
        ].
        recoveredBlock10Block27Step = 324 ifTrue: [
            recoveredBlock10Block27Stack2 := recoveredBlock10Block27Local4.
            recoveredBlock10Block27PC := 327.
        ].
        recoveredBlock10Block27Step = 327 ifTrue: [
            recoveredBlock10Block27Stack2 := (recoveredBlock10Block27Stack2) isEmpty.
            recoveredBlock10Block27PC := 329.
        ].
        recoveredBlock10Block27Step = 329 ifTrue: [
            (recoveredBlock10Block27Stack2) ifTrue: [recoveredBlock10Block27PC := 332] ifFalse: [recoveredBlock10Block27PC := 352].
        ].
        recoveredBlock10Block27Step = 332 ifTrue: [
            recoveredBlock10Block27PC := 333.
        ].
        recoveredBlock10Block27Step = 333 ifTrue: [
            recoveredBlock10Block27Stack1 := self.
            recoveredBlock10Block27PC := 334.
        ].
        recoveredBlock10Block27Step = 334 ifTrue: [
            recoveredBlock10Block27Stack2 := 50.
            recoveredBlock10Block27PC := 336.
        ].
        recoveredBlock10Block27Step = 336 ifTrue: [
            recoveredBlock10Block27Stack3 := recoveredBlock10Arg1.
            recoveredBlock10Block27PC := 339.
        ].
        recoveredBlock10Block27Step = 339 ifTrue: [
            recoveredBlock10Block27Stack3 := (recoveredBlock10Block27Stack3) priority.
            recoveredBlock10Block27PC := 341.
        ].
        recoveredBlock10Block27Step = 341 ifTrue: [
            recoveredBlock10Block27Stack3 := (recoveredBlock10Block27Stack3) printString.
            recoveredBlock10Block27PC := 343.
        ].
        recoveredBlock10Block27Step = 343 ifTrue: [
            recoveredBlock10Block27Stack4 := self.
            recoveredBlock10Block27PC := 344.
        ].
        recoveredBlock10Block27Step = 344 ifTrue: [
            recoveredBlock10Block27Stack4 := (recoveredBlock10Block27Stack4) triggerLabel.
            recoveredBlock10Block27PC := 346.
        ].
        recoveredBlock10Block27Step = 346 ifTrue: [
            recoveredBlock10Block27Stack5 := self.
            recoveredBlock10Block27PC := 347.
        ].
        recoveredBlock10Block27Step = 347 ifTrue: [
            recoveredBlock10Block27Stack5 := (recoveredBlock10Block27Stack5) errLabel.
            recoveredBlock10Block27PC := 349.
        ].
        recoveredBlock10Block27Step = 349 ifTrue: [
            recoveredBlock10Block27Stack1 := (recoveredBlock10Block27Stack1) smSyntaxErrNo: (recoveredBlock10Block27Stack2) with: (recoveredBlock10Block27Stack3) with: (recoveredBlock10Block27Stack4) with: (recoveredBlock10Block27Stack5).
            recoveredBlock10Block27PC := 352.
        ].
        recoveredBlock10Block27Step = 352 ifTrue: [
            recoveredBlock10Block27Result := recoveredBlock10Block27Stack1.
            recoveredBlock10Block27Done := true.
        ].
    ].
    recoveredBlock10Block27Result
].
    recoveredBlock10Value4 := (recoveredBlock10Value2) do: (recoveredBlock10Value3).
    recoveredBlock10Value4
].
    (recoveredValue1) do: (recoveredValue3).
    ^self
! !

