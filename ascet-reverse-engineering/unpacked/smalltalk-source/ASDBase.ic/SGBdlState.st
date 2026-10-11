"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200022b0; bytecode file offset 0x8ffcfc"
!SGBdlState methodsFor: 'recovered'!
initStartState
    ^self
! !

"ASDBase.ic method 0x20003980; bytecode file offset 0x90206c"
!SGBdlState methodsFor: 'recovered'!
addInTrans: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005a68; bytecode file offset 0x902744"
!SGBdlState methodsFor: 'recovered'!
allTransitionsWithTriggers: recoveredArg1 visited: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20006eb4; bytecode file offset 0x908be4"
!SGBdlState methodsFor: 'recovered'!
additionalMethodNamePart
    | recoveredValue0 |
    recoveredValue0 := (self) mdlLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20007628; bytecode file offset 0x908be4"
!SGBdlState methodsFor: 'recovered'!
levelName
    | recoveredValue0 |
    recoveredValue0 := (self) stateVariableName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000908c; bytecode file offset 0x908be4"
!SGBdlState methodsFor: 'recovered'!
asMdlInitValue
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000be64; bytecode file offset 0x908be4"
!SGBdlState methodsFor: 'recovered'!
hasHierarchyExit
    | recoveredValue0 |
    recoveredValue0 := (self) hasExit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000f41c; bytecode file offset 0x90bd10"
!SGBdlState methodsFor: 'recovered'!
hasTransitionsForTrigger: recoveredArg1 visited: recoveredArg2
    ^true
! !

"ASDBase.ic method 0x20016550; bytecode file offset 0x92209c"
!SGBdlState methodsFor: 'recovered'!
staticName
    ^'Static'
! !

"ASDBase.ic method 0x2001b650; bytecode file offset 0x92209c"
!SGBdlState methodsFor: 'recovered'!
triggerLabel
    ^'undef'
! !

"ASDBase.ic method 0x20021428; bytecode file offset 0x92209c"
!SGBdlState methodsFor: 'recovered'!
exitName
    ^'Exit'
! !

"ASDBase.ic method 0x20025508; bytecode file offset 0x92209c"
!SGBdlState methodsFor: 'recovered'!
entryName
    ^'Entry'
! !

"ASDBase.ic method 0x2002f004; bytecode file offset 0x934580"
!SGBdlState methodsFor: 'recovered'!
topCodeBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) topCodeBlock.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fa04; bytecode file offset 0x934580"
!SGBdlState methodsFor: 'recovered'!
mdlLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) mdlName.
    recoveredValue1 := (recoveredValue0) mdlLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036714; bytecode file offset 0x934580"
!SGBdlState methodsFor: 'recovered'!
parentStateForState
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) hierarchyBlock.
    recoveredValue1 := (recoveredValue0) errLabel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003845c; bytecode file offset 0x934d10"
!SGBdlState methodsFor: 'recovered'!
isHierarchyChild: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) == (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d8f8; bytecode file offset 0x93bf94"
!SGBdlState methodsFor: 'recovered'!
asMdlClassType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGUnsignedInteger.
    recoveredValue1 := (recoveredValue0) createDefault.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041540; bytecode file offset 0x93e1a0"
!SGBdlState methodsFor: 'recovered'!
stateVariableName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := owner.
    recoveredValue1 := (recoveredValue0) stateVariableName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004979c; bytecode file offset 0x947128"
!SGBdlState methodsFor: 'recovered'!
exitPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) exitName.
    recoveredValue1 := (self) portNamed: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a61c; bytecode file offset 0x947128"
!SGBdlState methodsFor: 'recovered'!
staticPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) staticName.
    recoveredValue1 := (self) portNamed: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a78c; bytecode file offset 0x947128"
!SGBdlState methodsFor: 'recovered'!
entryPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) entryName.
    recoveredValue1 := (self) portNamed: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20050e10; bytecode file offset 0x94d84c"
!SGBdlState methodsFor: 'recovered'!
hasExit
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exitPort.
    recoveredValue1 := (recoveredValue0) isUndef.
    recoveredValue2 := (recoveredValue1) not.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051150; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
asdlExitForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exitPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) code.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200514c0; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
asdlStaticForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) staticPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) code.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051894; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
staticTypeForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) staticPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) type.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051920; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
entryTypeForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) entryPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) type.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051b28; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
bdeStaticForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) staticPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) bdeCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051f60; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
bdeExitForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exitPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) bdeCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052190; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
exitTypeForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) exitPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) type.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200523e8; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
asdlEntryForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) entryPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) code.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200525a0; bytecode file offset 0x94f0e0"
!SGBdlState methodsFor: 'recovered'!
bdeEntryForState
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) entryPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) bdeCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20054f60; bytecode file offset 0x952a9c"
!SGBdlState methodsFor: 'recovered'!
acceptBdlVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) acceptBdlState: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006d6a4; bytecode file offset 0x96a390"
!SGBdlState methodsFor: 'recovered'!
isStartState
    | recoveredValue0 |
    recoveredValue0 := startState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e0e8; bytecode file offset 0x96a9dc"
!SGBdlState methodsFor: 'recovered'!
cgenId
    | recoveredValue0 |
    recoveredValue0 := cgenId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20076724; bytecode file offset 0x9757c8"
!SGBdlState methodsFor: 'recovered'!
isBdlState
    ^true
! !

"ASDBase.ic method 0x2007a554; bytecode file offset 0x97c330"
!SGBdlState methodsFor: 'recovered'!
isStateMachine
    ^false
! !

"ASDBase.ic method 0x20083a68; bytecode file offset 0x9804b8"
!SGBdlState methodsFor: 'recovered'!
collectStates: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) add: (self).
    ^self
! !

"ASDBase.ic method 0x200c40f4; bytecode file offset 0x9c0bf0"
!SGBdlState methodsFor: 'recovered'!
startState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c44f0; bytecode file offset 0x9c11bc"
!SGBdlState methodsFor: 'recovered'!
cgenId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cgenId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5aa0; bytecode file offset 0x9d235c"
!SGBdlState methodsFor: 'recovered'!
initialize
    super initialize.
    startState := false.
    ^self
! !

"ASDBase.ic method 0x200f783c; bytecode file offset 0x9f4e38"
!SGBdlState methodsFor: 'recovered'!
isBdlValid
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectorPorts.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c4a58Arg1 | 
    | block280c4a58Value0 block280c4a58Value1 |
    block280c4a58Value0 := block280c4a58Arg1.
    block280c4a58Value1 := (block280c4a58Value0) isBdlValid.
    block280c4a58Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) conform: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f837c; bytecode file offset 0x9f4e38"
!SGBdlState methodsFor: 'recovered'!
transitionsForState
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getTransitions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c5b38Arg1 | 
    | block280c5b38Value0 block280c5b38Value1 |
    block280c5b38Value0 := block280c5b38Arg1.
    block280c5b38Value1 := (block280c5b38Value0) id.
    block280c5b38Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201078b0; bytecode file offset 0xa04178"
!SGBdlState methodsFor: 'recovered'!
errLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := super errLabel.
    recoveredValue1 := ('state "') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('"').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20208cb0; bytecode file offset 0xb0557c"
!SGBdlState methodsFor: 'recovered'!
fullPath
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlState.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlHierarchyState.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20222b5c; bytecode file offset 0xb1f428"
!SGBdlState methodsFor: 'recovered'!
path
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) addFirst: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlState.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlHierarchyState.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

