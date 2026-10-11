"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000aa24; bytecode file offset 0x908be4"
!SGParseController methodsFor: 'recovered'!
hasError
    | recoveredValue0 |
    recoveredValue0 := (self) error.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028674; bytecode file offset 0x934580"
!SGParseController methodsFor: 'recovered'!
currentMethod
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicModel.
    recoveredValue1 := (recoveredValue0) currentMethod.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036294; bytecode file offset 0x934580"
!SGParseController methodsFor: 'recovered'!
configForModule
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) logicManager.
    recoveredValue1 := (recoveredValue0) configForModule.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d2c8; bytecode file offset 0x93bf94"
!SGParseController methodsFor: 'recovered'!
mdlBuilder
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMdBuilder.
    recoveredValue1 := (recoveredValue0) currentMdlBuilder.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d318; bytecode file offset 0x93bf94"
!SGParseController methodsFor: 'recovered'!
logicManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e2c8; bytecode file offset 0x93bf94"
!SGParseController methodsFor: 'recovered'!
logicModel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) currentLogicModel.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e408; bytecode file offset 0x93bf94"
!SGParseController methodsFor: 'recovered'!
specification
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) currentModelSpec.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e978; bytecode file offset 0x93bf94"
!SGParseController methodsFor: 'recovered'!
context
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) currentContext.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f5c8; bytecode file offset 0x93bf94"
!SGParseController methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048a9c; bytecode file offset 0x945358"
!SGParseController methodsFor: 'recovered'!
resetError
    error := false.
    ^self
! !

"ASDBase.ic method 0x2004903c; bytecode file offset 0x9458f0"
!SGParseController methodsFor: 'recovered'!
resetGoal
    goal := nil.
    ^self
! !

"ASDBase.ic method 0x2005c7e4; bytecode file offset 0x959680"
!SGParseController methodsFor: 'recovered'!
implForModule
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) makeConfigForModule.
    recoveredValue2 := (recoveredValue1) implementation.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006b840; bytecode file offset 0x96873c"
!SGParseController methodsFor: 'recovered'!
error
    | recoveredValue0 |
    recoveredValue0 := error.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c094; bytecode file offset 0x9692b0"
!SGParseController methodsFor: 'recovered'!
goal
    | recoveredValue0 |
    recoveredValue0 := goal.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c3514; bytecode file offset 0x9bfde0"
!SGParseController methodsFor: 'recovered'!
goal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    goal := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200cd214; bytecode file offset 0x9c9b84"
!SGParseController methodsFor: 'recovered'!
actionsHeaderFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppProgramPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (recoveredValue2) , ('\mdltoint.ini').
    ^recoveredValue3
! !

"ASDBase.ic method 0x200da224; bytecode file offset 0x9d6ae0"
!SGParseController methodsFor: 'recovered'!
execute: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasError.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2010b704; bytecode file offset 0xa07fc4"
!SGParseController methodsFor: 'recovered'!
initialize
    super initialize.
    goal := nil.
    (self) resetError.
    ^self
! !

"ASDBase.ic method 0x20114d00; bytecode file offset 0xa115c0"
!SGParseController methodsFor: 'recovered'!
initializeActions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (100).
    actions := recoveredValue1.
    (self) readActionsFromFile.
    ^self
! !

"ASDBase.ic method 0x201352d8; bytecode file offset 0xa31ba0"
!SGParseController methodsFor: 'recovered'!
parseErrorNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    (recoveredValue0) semErrorNo: (recoveredValue1) args: (recoveredValue4) category: ('Lm') source: (nil).
    ^self
! !

"ASDBase.ic method 0x201e8d64; bytecode file offset 0xae5634"
!SGParseController methodsFor: 'recovered'!
getMethodSelector: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) actions.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 recoveredBlock8Value3 |
    recoveredBlock8Value0 := recoveredArg1.
    recoveredBlock8Value1 := (recoveredBlock8Value0) printString.
    recoveredBlock8Value2 := ('missing methodSelector at index ') , (recoveredBlock8Value1).
    recoveredBlock8Value3 := (self) fatal: (recoveredBlock8Value2).
    recoveredBlock8Value3
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsent: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) asSymbol.
    ^recoveredValue4
! !

"ASDBase.ic method 0x2026f648; bytecode file offset 0xb6bf20"
!SGParseController methodsFor: 'recovered'!
callbackMessages
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) add: ('at:line:').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) add: ('performAction:').
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) add: ('performAction:with:').
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) add: ('performAction:with:with:').
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) add: ('goal:').
    (recoveredValue2) add: ('error:at:line:').
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x203ce2a0; bytecode file offset 0xccab90"
!SGParseController methodsFor: 'recovered'!
sourceAt: recoveredArg1 line: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := (self) currentMethod.
    recoveredValue1 := (recoveredValue0) dataModelRef.
    recoveredValue2 := recoveredValue1.
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := [
    ^nil
].
    (recoveredValue1) ifNil: (recoveredValue3).
    recoveredValue4 := SGLmASCETLinkSource.
    recoveredValue5 := (recoveredValue4) create.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := (self) context.
    (recoveredValue6) context: (recoveredValue7).
    recoveredValue8 := recoveredValue5.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue10) @ (recoveredValue11).
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := recoveredArg1.
    recoveredValue15 := (recoveredValue13) @ (recoveredValue14).
    recoveredValue16 := (self) logicManager.
    recoveredValue17 := (recoveredValue16) ascetLinkCreateConfigForCGenMessage.
    recoveredValue18 := (recoveredValue9) ascetLinkInTextFrom: (recoveredValue12) to: (recoveredValue15) parameters: (recoveredValue17).
    (recoveredValue8) ascetLink: (recoveredValue18).
    recoveredLocal1 := recoveredValue5.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := recoveredLocal1.
    recoveredValue21 := (self) currentMethod.
    recoveredValue22 := (recoveredValue21) lineMarkerForMethod.
    recoveredValue23 := recoveredArg2.
    recoveredValue24 := (recoveredValue20) commentMarkerText: (recoveredValue22) lineNumber: (recoveredValue23).
    (recoveredValue19) commentMarker: (recoveredValue24).
    recoveredValue25 := recoveredLocal1.
    ^recoveredValue25
! !

"ASDBase.ic method 0x20515d40; bytecode file offset 0xe12650"
!SGParseController methodsFor: 'recovered'!
readActionsFromFile
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := String.
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
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) actionsHeaderFileName.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 50.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) actionsHeaderFileName.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) parseErrorNo: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) fatalWithDisplay.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 187.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := '#define'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) skipToAll: (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) skipToAll: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := '	'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToAll: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Stack0 recoveredBlock78Stack1 recoveredBlock78Stack2 recoveredBlock78Stack3 recoveredBlock78Stack4 recoveredBlock78PC recoveredBlock78Step recoveredBlock78Done recoveredBlock78Result |
    recoveredBlock78Stack0 := self.
    recoveredBlock78PC := 84.
    recoveredBlock78Done := false.
    [recoveredBlock78Done not] whileTrue: [
        recoveredBlock78Step := recoveredBlock78PC.
        recoveredBlock78Step = 84 ifTrue: [
            recoveredBlock78Stack1 := recoveredBlock78Arg1.
            recoveredBlock78PC := 85.
        ].
        recoveredBlock78Step = 85 ifTrue: [
            recoveredBlock78Stack2 := $_.
            recoveredBlock78PC := 88.
        ].
        recoveredBlock78Step = 88 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) = (recoveredBlock78Stack2).
            recoveredBlock78PC := 89.
        ].
        recoveredBlock78Step = 89 ifTrue: [
            (recoveredBlock78Stack1) ifTrue: [recoveredBlock78PC := 92] ifFalse: [recoveredBlock78PC := 104].
        ].
        recoveredBlock78Step = 92 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal2.
            recoveredBlock78PC := 95.
        ].
        recoveredBlock78Step = 95 ifTrue: [
            recoveredBlock78Stack2 := recoveredLocal1.
            recoveredBlock78PC := 98.
        ].
        recoveredBlock78Step = 98 ifTrue: [
            recoveredBlock78Stack3 := $:.
            recoveredBlock78PC := 102.
        ].
        recoveredBlock78Step = 102 ifTrue: [
            (recoveredBlock78Stack1) at: (recoveredBlock78Stack2) put: (recoveredBlock78Stack3).
            recoveredBlock78PC := 104.
        ].
        recoveredBlock78Step = 104 ifTrue: [
            recoveredBlock78Stack1 := recoveredLocal1.
            recoveredBlock78PC := 107.
        ].
        recoveredBlock78Step = 107 ifTrue: [
            recoveredBlock78Stack1 := (recoveredBlock78Stack1) + (1).
            recoveredBlock78PC := 108.
        ].
        recoveredBlock78Step = 108 ifTrue: [
            recoveredBlock78Stack2 := recoveredBlock78Stack1.
            recoveredBlock78PC := 109.
        ].
        recoveredBlock78Step = 109 ifTrue: [
            recoveredLocal1 := recoveredBlock78Stack2.
            recoveredBlock78PC := 112.
        ].
        recoveredBlock78Step = 112 ifTrue: [
            recoveredBlock78Result := recoveredBlock78Stack1.
            recoveredBlock78Done := true.
        ].
    ].
    recoveredBlock78Result
].
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) lineDelimiter.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToAll: (recoveredStack2).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) zapBlanks.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := 100.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 171].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) actions.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) asSymbol.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 187 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

