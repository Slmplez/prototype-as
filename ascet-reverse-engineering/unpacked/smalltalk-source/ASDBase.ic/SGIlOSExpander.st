"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200005e8; bytecode file offset 0x8ffcfc"
!SGIlOSExpander methodsFor: 'recovered'!
realTimeObjects
    ^self
! !

"ASDBase.ic method 0x20000998; bytecode file offset 0x8ffcfc"
!SGIlOSExpander methodsFor: 'recovered'!
beginSubsystem
    ^self
! !

"ASDBase.ic method 0x20000ca0; bytecode file offset 0x8ffcfc"
!SGIlOSExpander methodsFor: 'recovered'!
beginMethodBodyRTOAccess
    ^self
! !

"ASDBase.ic method 0x20001a20; bytecode file offset 0x8ffcfc"
!SGIlOSExpander methodsFor: 'recovered'!
endRealTimeObjects
    ^self
! !

"ASDBase.ic method 0x20002680; bytecode file offset 0x8ffcfc"
!SGIlOSExpander methodsFor: 'recovered'!
beginProcessBody
    ^self
! !

"ASDBase.ic method 0x20002f88; bytecode file offset 0x8ffcfc"
!SGIlOSExpander methodsFor: 'recovered'!
endSubsystem
    ^self
! !

"ASDBase.ic method 0x20004448; bytecode file offset 0x90206c"
!SGIlOSExpander methodsFor: 'recovered'!
usesEventTask: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005660; bytecode file offset 0x90206c"
!SGIlOSExpander methodsFor: 'recovered'!
usesInitTask: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005be8; bytecode file offset 0x902744"
!SGIlOSExpander methodsFor: 'recovered'!
enableTicks: recoveredArg1 tickDuration: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000da64; bytecode file offset 0x90a4b8"
!SGIlOSExpander methodsFor: 'recovered'!
generatedOSCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20019e8c; bytecode file offset 0x92209c"
!SGIlOSExpander methodsFor: 'recovered'!
targetES910Type
    ^'ES910'
! !

"ASDBase.ic method 0x2001c478; bytecode file offset 0x92209c"
!SGIlOSExpander methodsFor: 'recovered'!
targetPCRPType
    ^'RTPRO-PC'
! !

"ASDBase.ic method 0x2002aaa4; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c454; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
freeBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) freeBlock.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c4a4; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
body
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) body.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e334; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
reserveBlock
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) reserveBlock.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20030dd4; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
popExpr
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) popExpr.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031a94; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
block
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) block.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031c64; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
moduleName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) moduleName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200340a4; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) generator.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037524; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
declHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) declHeader.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20037954; bytecode file offset 0x934580"
!SGIlOSExpander methodsFor: 'recovered'!
initHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) initHeader.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004ef24; bytecode file offset 0x94d048"
!SGIlOSExpander methodsFor: 'recovered'!
endOperatingSystem
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f3b0; bytecode file offset 0x94d048"
!SGIlOSExpander methodsFor: 'recovered'!
endAtomic
    (self) interruptsResume.
    ^self
! !

"ASDBase.ic method 0x2004fa70; bytecode file offset 0x94d048"
!SGIlOSExpander methodsFor: 'recovered'!
startAtomic
    (self) interruptsSuspend.
    ^self
! !

"ASDBase.ic method 0x2004fb18; bytecode file offset 0x94d048"
!SGIlOSExpander methodsFor: 'recovered'!
interruptsResume
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fe48; bytecode file offset 0x94d048"
!SGIlOSExpander methodsFor: 'recovered'!
endDynamics
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x20050100; bytecode file offset 0x94d048"
!SGIlOSExpander methodsFor: 'recovered'!
interruptsSuspend
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200502d4; bytecode file offset 0x94d048"
!SGIlOSExpander methodsFor: 'recovered'!
beginDynamics
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005388c; bytecode file offset 0x9505d0"
!SGIlOSExpander methodsFor: 'recovered'!
operatingSystem: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200574e8; bytecode file offset 0x956284"
!SGIlOSExpander methodsFor: 'recovered'!
processRefs: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) processRefs: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20057d08; bytecode file offset 0x956284"
!SGIlOSExpander methodsFor: 'recovered'!
pushExpr: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) pushExpr: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066b24; bytecode file offset 0x963428"
!SGIlOSExpander methodsFor: 'recovered'!
owner
    | recoveredValue0 |
    recoveredValue0 := owner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007ed2c; bytecode file offset 0x97c330"
!SGIlOSExpander methodsFor: 'recovered'!
supportsDtAsDouble
    ^false
! !

"ASDBase.ic method 0x200876d8; bytecode file offset 0x983f90"
!SGIlOSExpander methodsFor: 'recovered'!
initTask: recoveredArg1 id: recoveredArg2 prio: recoveredArg3 maxActive: recoveredArg4 procs: recoveredArg5 opModes: recoveredArg6
    | recoveredValue0 |
    recoveredValue0 := recoveredArg5.
    (self) popExpr: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ae368; bytecode file offset 0x9ab034"
!SGIlOSExpander methodsFor: 'recovered'!
newlinePutCComment: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) newlinePutCComment: (recoveredValue1) on: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae6f8; bytecode file offset 0x9ab034"
!SGIlOSExpander methodsFor: 'recovered'!
nextPutCComment: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) nextPutCComment: (recoveredValue1) on: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bde7c; bytecode file offset 0x9bb178"
!SGIlOSExpander methodsFor: 'recovered'!
owner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    owner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200beef8; bytecode file offset 0x9bc0b4"
!SGIlOSExpander methodsFor: 'recovered'!
taskAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    taskAttributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200de9a4; bytecode file offset 0x9db320"
!SGIlOSExpander methodsFor: 'recovered'!
resourceInit: recoveredArg1 type: recoveredArg2 value: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) instVarInit: (recoveredValue1) type: (recoveredValue2) value: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ee2d0; bytecode file offset 0x9eabdc"
!SGIlOSExpander methodsFor: 'recovered'!
classResourceId: recoveredArg1 type: recoveredArg2 in: recoveredArg3 attributes: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) classVarId: (recoveredValue1) type: (recoveredValue2) in: (recoveredValue3) attributes: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ee320; bytecode file offset 0x9eabdc"
!SGIlOSExpander methodsFor: 'recovered'!
resourceDecl: recoveredArg1 type: recoveredArg2 value: recoveredArg3 attributes: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    recoveredValue4 := recoveredArg4.
    (recoveredValue0) instVarDecl: (recoveredValue1) type: (recoveredValue2) value: (recoveredValue3) attributes: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x200ffc00; bytecode file offset 0x9fc4c8"
!SGIlOSExpander methodsFor: 'recovered'!
endMessageCopyStruct: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) declHeader.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) decIndent.
    (recoveredValue1) newlinePutAll: ('};').
    ^self
! !

"ASDBase.ic method 0x20129398; bytecode file offset 0xa25c54"
!SGIlOSExpander methodsFor: 'recovered'!
taskAttributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := taskAttributes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgTaskAttributes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            taskAttributes := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := taskAttributes.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20195d64; bytecode file offset 0xa92634"
!SGIlOSExpander methodsFor: 'recovered'!
beginMessageCopyStruct: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) declHeader.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) newlinePutAll: ('struct ').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) nextPutAll: (' {').
    (recoveredValue1) incIndent.
    ^self
! !

"ASDBase.ic method 0x20207054; bytecode file offset 0xb03930"
!SGIlOSExpander methodsFor: 'recovered'!
popExpr: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) popExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 29]] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20207060; bytecode file offset 0xb03930"
!SGIlOSExpander methodsFor: 'recovered'!
allMsgs: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) popExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 29]] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020706c; bytecode file offset 0xb03930"
!SGIlOSExpander methodsFor: 'recovered'!
allRes: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) popExpr.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 12] ifFalse: [recoveredLocal1 := nil. recoveredPC := 29]] ifFalse: [recoveredPC := 19].
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020759c; bytecode file offset 0xb03e68"
!SGIlOSExpander methodsFor: 'recovered'!
assignMsgCopy: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBQuantFloat.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) owner.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) ileFloat64.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) assign: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) owner.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) endStmnt.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203064ec; bytecode file offset 0xc02dc4"
!SGIlOSExpander methodsFor: 'recovered'!
defineMsgCopyStruct: recoveredArg1 msgCopyInstance: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) owner.
    recoveredValue1 := (recoveredValue0) declHeader.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) newlinePutAll: ('extern struct ').
    recoveredValue3 := recoveredValue1.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) nextPutAll: (recoveredValue4).
    recoveredValue5 := recoveredValue1.
    (recoveredValue5) nextPutAll: (' ').
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := recoveredArg2.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    (recoveredValue1) nextPutAll: (';').
    recoveredValue8 := (self) body.
    recoveredValue9 := recoveredValue8.
    (recoveredValue9) newlinePutAll: ('struct ').
    recoveredValue10 := recoveredValue8.
    recoveredValue11 := recoveredArg1.
    (recoveredValue10) nextPutAll: (recoveredValue11).
    recoveredValue12 := recoveredValue8.
    (recoveredValue12) nextPutAll: (' ').
    recoveredValue13 := recoveredValue8.
    recoveredValue14 := recoveredArg2.
    (recoveredValue13) nextPutAll: (recoveredValue14).
    (recoveredValue8) nextPutAll: (';').
    ^self
! !

"ASDBase.ic method 0x203bd86c; bytecode file offset 0xcba13c"
!SGIlOSExpander methodsFor: 'recovered'!
processRefs: recoveredArg1 on: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := (recoveredStack4) popExpr.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack3) addFirst: (recoveredStack4).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 18] ifFalse: [recoveredPC := 57]] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 53] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 |
    recoveredBlock61Value0 := recoveredArg2.
    recoveredBlock61Value1 := recoveredBlock61Value0.
    recoveredBlock61Value2 := recoveredBlock61Arg1.
    (recoveredBlock61Value1) newlinePutAll: (recoveredBlock61Value2).
    recoveredBlock61Value3 := (recoveredBlock61Value0) listSeparator.
    recoveredBlock61Value3
].
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

