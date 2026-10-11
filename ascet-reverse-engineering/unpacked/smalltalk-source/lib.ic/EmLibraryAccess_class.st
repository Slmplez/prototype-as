"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"lib.ic method 0x20001ae4; bytecode file offset 0x3db2c"
!EmLibraryAccess class methodsFor: 'recovered'!
removing
    | recoveredValue0 |
    recoveredValue0 := EmLibraryInterface.
    (recoveredValue0) shutDown.
    ^self
! !

"lib.ic method 0x20001af4; bytecode file offset 0x3db2c"
!EmLibraryAccess class methodsFor: 'recovered'!
saving
    | recoveredValue0 |
    recoveredValue0 := EmLibraryServerPrimitives.
    (recoveredValue0) clearDecompressBuffer.
    ^self
! !

"lib.ic method 0x20005c20; bytecode file offset 0x41c80"
!EmLibraryAccess class methodsFor: 'recovered'!
startUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmLocalMethodCache.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) openMethodCache.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20005c38; bytecode file offset 0x41c80"
!EmLibraryAccess class methodsFor: 'recovered'!
restart
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmLocalMethodCache.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) openMethodCache.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20005c50; bytecode file offset 0x41c80"
!EmLibraryAccess class methodsFor: 'recovered'!
shutDown
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EmLocalMethodCache.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) closeMethodCache.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2000b4fc; bytecode file offset 0x47538"
!EmLibraryAccess class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EnhancedLoaded.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == recoveredStack2) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) startUp.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            EnhancedLoaded := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := EmLibrary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) cache.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) resetMethodCache.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x20010cd0; bytecode file offset 0x4cd18"
!EmLibraryAccess class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'default'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := 'EmLibrary'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) initializeToNilClassInstanceVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'defaultName'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'EmLibrary'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) initializeToNilClassInstanceVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'openReadOnly'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'EmLibrary'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) initializeToNilClassInstanceVariable: (recoveredStack2) inClassNamed: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) image.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRunningImage.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'openInstances'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'Set new'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := 'EmLibrary'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) initializeClassInstanceVariable: (recoveredStack2) to: (recoveredStack3) inClassNamed: (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"lib.ic method 0x2001e1d4; bytecode file offset 0x5a234"
!EmLibraryAccess class methodsFor: 'recovered'!
packagerIncludeDoitMethods
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := EmLibrary.
    recoveredValue4 := (recoveredValue3) class.
    recoveredValue5 := (recoveredValue4) >> ('crashRecover:').
    (recoveredValue2) add: (recoveredValue5).
    recoveredValue6 := recoveredValue1.
    recoveredValue7 := EmLibrary.
    recoveredValue8 := (recoveredValue7) class.
    recoveredValue9 := (recoveredValue8) >> ('defaultName').
    (recoveredValue6) add: (recoveredValue9).
    recoveredValue10 := recoveredValue1.
    recoveredValue11 := EmLibrary.
    recoveredValue12 := (recoveredValue11) class.
    recoveredValue13 := (recoveredValue12) >> ('defaultName:').
    (recoveredValue10) add: (recoveredValue13).
    recoveredValue14 := recoveredValue1.
    recoveredValue15 := EmLibrary.
    recoveredValue16 := (recoveredValue15) class.
    recoveredValue17 := (recoveredValue16) >> ('hostSystemName').
    (recoveredValue14) add: (recoveredValue17).
    recoveredValue18 := recoveredValue1.
    recoveredValue19 := EmLibrary.
    recoveredValue20 := (recoveredValue19) class.
    recoveredValue21 := (recoveredValue20) >> ('hostSystemName:').
    (recoveredValue18) add: (recoveredValue21).
    recoveredValue22 := recoveredValue1.
    recoveredValue23 := EmLibrary.
    recoveredValue24 := (recoveredValue23) class.
    recoveredValue25 := (recoveredValue24) >> ('openReadOnly').
    (recoveredValue22) add: (recoveredValue25).
    recoveredValue26 := recoveredValue1.
    recoveredValue27 := EmLibrary.
    recoveredValue28 := (recoveredValue27) class.
    recoveredValue29 := (recoveredValue28) >> ('openReadOnly:').
    (recoveredValue26) add: (recoveredValue29).
    recoveredValue30 := recoveredValue1.
    recoveredValue31 := EmLibrary.
    recoveredValue32 := (recoveredValue31) class.
    recoveredValue33 := (recoveredValue32) >> ('serverAddress').
    (recoveredValue30) add: (recoveredValue33).
    recoveredValue34 := recoveredValue1.
    recoveredValue35 := EmLibrary.
    recoveredValue36 := (recoveredValue35) class.
    recoveredValue37 := (recoveredValue36) >> ('serverAddress:').
    (recoveredValue34) add: (recoveredValue37).
    recoveredValue38 := recoveredValue1.
    recoveredValue39 := EmLibrary.
    recoveredValue40 := (recoveredValue39) class.
    recoveredValue41 := (recoveredValue40) >> ('singleUserMode').
    (recoveredValue38) add: (recoveredValue41).
    ^recoveredValue1
! !

