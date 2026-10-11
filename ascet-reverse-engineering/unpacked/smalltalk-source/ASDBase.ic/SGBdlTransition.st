"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000ae0; bytecode file offset 0x8ffcfc"
!SGBdlTransition methodsFor: 'recovered'!
reset
    ^self
! !

"ASDBase.ic method 0x2000a73c; bytecode file offset 0x908be4"
!SGBdlTransition methodsFor: 'recovered'!
prioForTrans
    | recoveredValue0 |
    recoveredValue0 := (self) priority.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001eb60; bytecode file offset 0x92209c"
!SGBdlTransition methodsFor: 'recovered'!
actionName
    ^'Action'
! !

"ASDBase.ic method 0x20020780; bytecode file offset 0x92209c"
!SGBdlTransition methodsFor: 'recovered'!
triggerName
    ^'Trigger'
! !

"ASDBase.ic method 0x2004974c; bytecode file offset 0x947128"
!SGBdlTransition methodsFor: 'recovered'!
actionPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) actionName.
    recoveredValue1 := (self) portNamed: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a06c; bytecode file offset 0x947128"
!SGBdlTransition methodsFor: 'recovered'!
triggerPort
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) triggerName.
    recoveredValue1 := (self) portNamed: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200513a8; bytecode file offset 0x94f0e0"
!SGBdlTransition methodsFor: 'recovered'!
asdlForCondition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) conditionPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) code.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005159c; bytecode file offset 0x94f0e0"
!SGBdlTransition methodsFor: 'recovered'!
bdeForAction
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) actionPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) bdeCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20051de4; bytecode file offset 0x94f0e0"
!SGBdlTransition methodsFor: 'recovered'!
actionTypeForTrans
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) actionPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) type.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052028; bytecode file offset 0x94f0e0"
!SGBdlTransition methodsFor: 'recovered'!
conditionTypeForTrans
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) conditionPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) type.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20052064; bytecode file offset 0x94f0e0"
!SGBdlTransition methodsFor: 'recovered'!
bdeForCondition
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) conditionPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) bdeCode.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005244c; bytecode file offset 0x94f0e0"
!SGBdlTransition methodsFor: 'recovered'!
triggerAlias
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) triggerPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) methodAliasName.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200526a4; bytecode file offset 0x94f0e0"
!SGBdlTransition methodsFor: 'recovered'!
asdlForAction
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) actionPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) code.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005580c; bytecode file offset 0x952a9c"
!SGBdlTransition methodsFor: 'recovered'!
acceptBdlVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) acceptBdlTransition: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20065404; bytecode file offset 0x961e78"
!SGBdlTransition methodsFor: 'recovered'!
triggerForTrans
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) triggerPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) mdlName.
    recoveredValue3 := (recoveredValue2) label.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2006553c; bytecode file offset 0x961e78"
!SGBdlTransition methodsFor: 'recovered'!
triggerLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) triggerPort.
    recoveredValue1 := (recoveredValue0) sequence.
    recoveredValue2 := (recoveredValue1) mdlName.
    recoveredValue3 := (recoveredValue2) label.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2006bae0; bytecode file offset 0x96873c"
!SGBdlTransition methodsFor: 'recovered'!
startState
    | recoveredValue0 |
    recoveredValue0 := startState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c2e4; bytecode file offset 0x9692b0"
!SGBdlTransition methodsFor: 'recovered'!
endState
    | recoveredValue0 |
    recoveredValue0 := endState.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d300; bytecode file offset 0x969c04"
!SGBdlTransition methodsFor: 'recovered'!
priority
    | recoveredValue0 |
    recoveredValue0 := priority.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007862c; bytecode file offset 0x9757c8"
!SGBdlTransition methodsFor: 'recovered'!
isBdlTransition
    ^true
! !

"ASDBase.ic method 0x200796a4; bytecode file offset 0x97c330"
!SGBdlTransition methodsFor: 'recovered'!
isStartState
    ^false
! !

"ASDBase.ic method 0x200c2890; bytecode file offset 0x9bf474"
!SGBdlTransition methodsFor: 'recovered'!
startState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    startState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3484; bytecode file offset 0x9bfde0"
!SGBdlTransition methodsFor: 'recovered'!
endState: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    endState := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3998; bytecode file offset 0x9c058c"
!SGBdlTransition methodsFor: 'recovered'!
priority: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    priority := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d8450; bytecode file offset 0x9d4d24"
!SGBdlTransition methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) errLabel.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x200e6910; bytecode file offset 0x9e31cc"
!SGBdlTransition methodsFor: 'recovered'!
initialize
    super initialize.
    priority := 0.
    ^self
! !

"ASDBase.ic method 0x20190d2c; bytecode file offset 0xa8d5f0"
!SGBdlTransition methodsFor: 'recovered'!
connectedEndState
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) endState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlMetaJunction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) endState.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlHierarchyConnector.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) endState.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedEndState.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201b1344; bytecode file offset 0xaadc0c"
!SGBdlTransition methodsFor: 'recovered'!
connectedStartState
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) endState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlMetaJunction.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) endState.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isBdlHierarchyConnector.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) startState.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedStartState.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20262c50; bytecode file offset 0xb5f524"
!SGBdlTransition methodsFor: 'recovered'!
allTransitionsWithTriggers: recoveredArg1 visited: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerAlias.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := self.
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
            recoveredStack0 := (recoveredStack0) connectedEndState.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) allTransitionsWithTriggers: (recoveredStack1) visited: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20298ff8; bytecode file offset 0xb958cc"
!SGBdlTransition methodsFor: 'recovered'!
hasTransitionsForTrigger: recoveredArg1 visited: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerAlias.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) triggerAlias.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := SGReservedNames.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) undefName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedEndState.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasTransitionsForTrigger: (recoveredStack1) visited: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203288d4; bytecode file offset 0xc251b0"
!SGBdlTransition methodsFor: 'recovered'!
errLabel
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedStartState.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := '?'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) connectedEndState.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := '?'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) errLabel.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := 'transition from '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := ' to '.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ' with prio '.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) priority.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

