"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"dbgrun.ic method 0x20000018; bytecode file offset 0x75dc"
!DbgSourceManager methodsFor: 'recovered'!
updateSourceManager
    ^self
! !

"dbgrun.ic method 0x20000030; bytecode file offset 0x75ec"
!DbgSourceManager methodsFor: 'recovered'!
defaultBrowseForFrames: recoveredArg1
    ^self
! !

"dbgrun.ic method 0x2000005c; bytecode file offset 0x7618"
!DbgSourceManager methodsFor: 'recovered'!
canSaveChangesTo: recoveredArg1
    ^false
! !

"dbgrun.ic method 0x2000006c; bytecode file offset 0x7628"
!DbgSourceManager methodsFor: 'recovered'!
sourceStringFor: recoveredArg1
    ^nil
! !

"dbgrun.ic method 0x200000a4; bytecode file offset 0x7668"
!DbgSourceManager methodsFor: 'recovered'!
watch: recoveredArg1 in: recoveredArg2
    ^nil
! !

"dbgrun.ic method 0x200000ac; bytecode file offset 0x7668"
!DbgSourceManager methodsFor: 'recovered'!
evaluate: recoveredArg1 in: recoveredArg2
    ^nil
! !

"dbgrun.ic method 0x20000104; bytecode file offset 0x76d0"
!DbgSourceManager methodsFor: 'recovered'!
image
    | recoveredValue0 |
    recoveredValue0 := System.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000124; bytecode file offset 0x7708"
!DbgSourceManager methodsFor: 'recovered'!
sourceDisplayModes
    ^#('source')
! !

"dbgrun.ic method 0x2000013c; bytecode file offset 0x7708"
!DbgSourceManager methodsFor: 'recovered'!
informationDisplayModes
    ^#('edition' 'owner' 'developer')
! !

"dbgrun.ic method 0x20000174; bytecode file offset 0x7734"
!DbgSourceManager methodsFor: 'recovered'!
hasErrorOccurred
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) errorObject.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"dbgrun.ic method 0x200001c0; bytecode file offset 0x7780"
!DbgSourceManager methodsFor: 'recovered'!
informationToDisplayFor: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := MxDBG1.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200002e0; bytecode file offset 0x78a0"
!DbgSourceManager methodsFor: 'recovered'!
saveModifiedSource: recoveredArg1 for: recoveredArg2 updating: recoveredArg3 requestor: recoveredArg4
    (self) resetErrorObject.
    ^false
! !

"dbgrun.ic method 0x2000031c; bytecode file offset 0x78dc"
!DbgSourceManager methodsFor: 'recovered'!
resetErrorObject
    (self) errorObject: (nil).
    ^self
! !

"dbgrun.ic method 0x2000036c; bytecode file offset 0x7930"
!DbgSourceManager methodsFor: 'recovered'!
showingSourceString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sourceDisplayMode.
    recoveredValue1 := (recoveredValue0) = ('source').
    ^recoveredValue1
! !

"dbgrun.ic method 0x20000408; bytecode file offset 0x79cc"
!DbgSourceManager methodsFor: 'recovered'!
lastMethod
    | recoveredValue0 |
    recoveredValue0 := lastMethod.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000434; bytecode file offset 0x79f8"
!DbgSourceManager methodsFor: 'recovered'!
cachedSource
    | recoveredValue0 |
    recoveredValue0 := cachedSource.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000458; bytecode file offset 0x7a24"
!DbgSourceManager methodsFor: 'recovered'!
cachedParseTree
    | recoveredValue0 |
    recoveredValue0 := cachedParseTree.
    ^recoveredValue0
! !

"dbgrun.ic method 0x2000047c; bytecode file offset 0x7a50"
!DbgSourceManager methodsFor: 'recovered'!
sourceDisplayMode
    | recoveredValue0 |
    recoveredValue0 := sourceDisplayMode.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200004b8; bytecode file offset 0x7a84"
!DbgSourceManager methodsFor: 'recovered'!
informationDisplayMode
    | recoveredValue0 |
    recoveredValue0 := informationDisplayMode.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200004f4; bytecode file offset 0x7ab0"
!DbgSourceManager methodsFor: 'recovered'!
errorObject
    | recoveredValue0 |
    recoveredValue0 := errorObject.
    ^recoveredValue0
! !

"dbgrun.ic method 0x20000510; bytecode file offset 0x7adc"
!DbgSourceManager methodsFor: 'recovered'!
lineDelimiter
    | recoveredValue0 |
    recoveredValue0 := lineDelimiter.
    ^recoveredValue0
! !

"dbgrun.ic method 0x200005d8; bytecode file offset 0x7bac"
!DbgSourceManager methodsFor: 'recovered'!
supportsInformationDisplay
    ^false
! !

"dbgrun.ic method 0x200005e0; bytecode file offset 0x7bac"
!DbgSourceManager methodsFor: 'recovered'!
supportsHighlighting
    ^false
! !

"dbgrun.ic method 0x200005f0; bytecode file offset 0x7bac"
!DbgSourceManager methodsFor: 'recovered'!
supportsWatches
    ^false
! !

"dbgrun.ic method 0x20000604; bytecode file offset 0x7bc8"
!DbgSourceManager methodsFor: 'recovered'!
visibleVariablesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    (self) resetErrorObject.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) visibleVariables.
    ^recoveredValue1
! !

"dbgrun.ic method 0x20000638; bytecode file offset 0x7bfc"
!DbgSourceManager methodsFor: 'recovered'!
initializeLineDelimiter
    | recoveredValue0 |
    recoveredValue0 := LineDelimiter.
    (self) lineDelimiter: (recoveredValue0).
    ^self
! !

"dbgrun.ic method 0x200008bc; bytecode file offset 0x7e7c"
!DbgSourceManager methodsFor: 'recovered'!
cachedSource: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cachedSource := recoveredValue0.
    (self) cachedParseTree: (nil).
    ^self
! !

"dbgrun.ic method 0x200008d4; bytecode file offset 0x7ea8"
!DbgSourceManager methodsFor: 'recovered'!
lastMethod: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lastMethod := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x2000092c; bytecode file offset 0x7f10"
!DbgSourceManager methodsFor: 'recovered'!
cachedParseTree: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cachedParseTree := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000968; bytecode file offset 0x7f2c"
!DbgSourceManager methodsFor: 'recovered'!
sourceDisplayMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceDisplayMode := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200009a4; bytecode file offset 0x7f60"
!DbgSourceManager methodsFor: 'recovered'!
informationDisplayMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    informationDisplayMode := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200009b8; bytecode file offset 0x7f8c"
!DbgSourceManager methodsFor: 'recovered'!
errorObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errorObject := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x200009e4; bytecode file offset 0x7fb8"
!DbgSourceManager methodsFor: 'recovered'!
lineDelimiter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lineDelimiter := recoveredValue0.
    ^self
! !

"dbgrun.ic method 0x20000d4c; bytecode file offset 0x8314"
!DbgSourceManager methodsFor: 'recovered'!
flushCaches
    (self) cachedParseTree: (nil).
    (self) cachedSource: (nil).
    (self) lastMethod: (nil).
    ^self
! !

"dbgrun.ic method 0x20000f84; bytecode file offset 0x8554"
!DbgSourceManager methodsFor: 'recovered'!
sourceToDisplayFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) showingSourceString.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
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
            recoveredStack0 := (recoveredStack0) sourceStringFor: (recoveredStack1).
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
            recoveredStack1 := NlsCatDBG.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexedMsg: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) error: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x2000159c; bytecode file offset 0x8b78"
!DbgSourceManager methodsFor: 'recovered'!
initialize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1) flushCaches.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) initializeLineDelimiter.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceDisplayModes.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) sourceDisplayMode: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) informationDisplayModes.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) informationDisplayMode: (recoveredStack1).
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

"dbgrun.ic method 0x20001630; bytecode file offset 0x8c0c"
!DbgSourceManager methodsFor: 'recovered'!
pseudoVariablesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isTopOfStack.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAboutToReturn.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := EsLocalStackVariable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := '<returnValue>'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) named: (recoveredStack3) position: (recoveredStack4) in: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"dbgrun.ic method 0x200018ac; bytecode file offset 0x8e80"
!DbgSourceManager methodsFor: 'recovered'!
advanceSourceDisplayMode
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceDisplayModes.
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
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) sourceDisplayMode.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) indexOf: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) sourceDisplayMode: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) sourceDisplayMode: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"dbgrun.ic method 0x20002378; bytecode file offset 0x9968"
!DbgSourceManager methodsFor: 'recovered'!
dumpSystemConfigurationFor: recoveredArg1 on: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := MxDBG11.
    recoveredValue3 := (recoveredValue2) addLineDelimiters.
    recoveredValue4 := System.
    recoveredValue5 := (recoveredValue4) vmVersion.
    recoveredValue6 := System.
    recoveredValue7 := (recoveredValue6) copyright.
    recoveredValue8 := (recoveredValue3) bindWith: (recoveredValue5) with: (recoveredValue7).
    (recoveredValue0) nextPutAll: (recoveredValue8).
    recoveredValue9 := System.
    recoveredValue10 := (recoveredValue9) configuredSubsystems.
    recoveredValue11 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 recoveredBlock29Value4 recoveredBlock29Value5 recoveredBlock29Value6 recoveredBlock29Value7 recoveredBlock29Value8 |
    recoveredBlock29Value0 := recoveredArg2.
    recoveredBlock29Value1 := recoveredBlock29Value0.
    (recoveredBlock29Value1) cr.
    recoveredBlock29Value2 := MxDBG6.
    recoveredBlock29Value3 := recoveredBlock29Arg1.
    recoveredBlock29Value4 := (recoveredBlock29Value3) key.
    recoveredBlock29Value5 := recoveredBlock29Arg1.
    recoveredBlock29Value6 := (recoveredBlock29Value5) value.
    recoveredBlock29Value7 := (recoveredBlock29Value2) bindWith: (recoveredBlock29Value4) with: (recoveredBlock29Value6).
    recoveredBlock29Value8 := (recoveredBlock29Value0) nextPutAll: (recoveredBlock29Value7).
    recoveredBlock29Value8
].
    (recoveredValue10) associationsDo: (recoveredValue11).
    recoveredValue12 := recoveredArg2.
    (recoveredValue12) cr.
    ^self
! !

