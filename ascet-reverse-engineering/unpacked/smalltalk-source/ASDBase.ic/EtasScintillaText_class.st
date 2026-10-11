"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000a8b0; bytecode file offset 0x908be4"
!EtasScintillaText class methodsFor: 'recovered'!
initializeScintilla
    | recoveredValue0 |
    recoveredValue0 := (self) loadScintillaLibrary.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003c91c; bytecode file offset 0x9391f8"
!EtasScintillaText class methodsFor: 'recovered'!
isScintillaActive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LibraryHandle.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d0d8; bytecode file offset 0x93bf94"
!EtasScintillaText class methodsFor: 'recovered'!
bgColorNonEditable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) lightGrayW2K.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d408; bytecode file offset 0x93bf94"
!EtasScintillaText class methodsFor: 'recovered'!
bgColorEditable
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := (recoveredValue0) white.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005031c; bytecode file offset 0x94d048"
!EtasScintillaText class methodsFor: 'recovered'!
destroyScintilla
    (self) freeScintillaLibrary.
    ^self
! !

"ASDBase.ic method 0x2005c5f0; bytecode file offset 0x959680"
!EtasScintillaText class methodsFor: 'recovered'!
scintillaDirectory
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppProgramPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016a624; bytecode file offset 0xa66ee0"
!EtasScintillaText class methodsFor: 'recovered'!
freeScintillaLibrary
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LibraryHandle.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LibraryHandle.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) freeLibrary.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            LibraryHandle := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201dcc5c; bytecode file offset 0xad9520"
!EtasScintillaText class methodsFor: 'recovered'!
createWidget: recoveredArg1 parent: recoveredArg2 argBlock: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isScintillaActive.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 17].
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
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := super createWidget: (recoveredStack1) parent: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := CwText.
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
            recoveredStack3 := recoveredArg3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createWidget: (recoveredStack1) parent: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e1730; bytecode file offset 0xade000"
!EtasScintillaText class methodsFor: 'recovered'!
loadScintillaLibrary
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSHmodule.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) scintillaDirectory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'SciLexer.dll'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadLibrary: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            LibraryHandle := recoveredStack2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNull.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            LibraryHandle := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

