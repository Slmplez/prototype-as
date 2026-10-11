"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20061730; bytecode file offset 0x95e838"
!SGGenericSource methodsFor: 'recovered'!
eccoHFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('.h.pl').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061a50; bytecode file offset 0x95e838"
!SGGenericSource methodsFor: 'recovered'!
eccoInlineHFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) inlineHeaderFileName.
    recoveredValue1 := (recoveredValue0) , ('.pl').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061b2c; bytecode file offset 0x95e838"
!SGGenericSource methodsFor: 'recovered'!
eccoInternalHFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) internalHeaderFileNameNoExtension.
    recoveredValue1 := (recoveredValue0) , ('.h.pl').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061c1c; bytecode file offset 0x95e838"
!SGGenericSource methodsFor: 'recovered'!
eccoSixFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('.six.pl').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061c6c; bytecode file offset 0x95e838"
!SGGenericSource methodsFor: 'recovered'!
eccoDbFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('.db').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061f3c; bytecode file offset 0x95e838"
!SGGenericSource methodsFor: 'recovered'!
eccoCFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) fileName.
    recoveredValue1 := (recoveredValue0) , ('.c.pl').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007b664; bytecode file offset 0x97c330"
!SGGenericSource methodsFor: 'recovered'!
hasGenericSCOOPIXSource
    ^false
! !

"ASDBase.ic method 0x2007e7b4; bytecode file offset 0x97c330"
!SGGenericSource methodsFor: 'recovered'!
hasInlineGenericHeaderSource
    ^false
! !

"ASDBase.ic method 0x202d4a68; bytecode file offset 0xbd1354"
!SGGenericSource methodsFor: 'recovered'!
bemSourceCWithIncludes
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) bemSourceC.
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
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := SGBasicWriteStream.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPerlCodeStream.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) beginPlainCode.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) preprocessorCommands.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := (recoveredStack2) userReference.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := (recoveredStack2) isExternalCode.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) printCSourceCommandsOn: (recoveredStack1) externCode: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPerlCodeStream.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) endPlainCode.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

