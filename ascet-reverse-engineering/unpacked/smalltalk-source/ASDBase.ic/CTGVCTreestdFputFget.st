"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2007b8ec; bytecode file offset 0x97c330"
!CTGVCTreestdFputFget methodsFor: 'recovered'!
isTranProc
    ^false
! !

"ASDBase.ic method 0x2007cd74; bytecode file offset 0x97c330"
!CTGVCTreestdFputFget methodsFor: 'recovered'!
isSingleUser
    ^false
! !

"ASDBase.ic method 0x2036cfb0; bytecode file offset 0xc69888"
!CTGVCTreestdFputFget methodsFor: 'recovered'!
initIsam: recoveredArg1 files: recoveredArg2 sections: recoveredArg3 dataBuffers: recoveredArg4 userProfile: recoveredArg5 userId: recoveredArg6 password: recoveredArg7 serverName: recoveredArg8
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CTreeLibrary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := recoveredArg5.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := recoveredArg6.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack7 := (recoveredStack7) asPSZ.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := recoveredArg7.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack8 := (recoveredStack8) asPSZ.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := recoveredArg8.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack9 := (recoveredStack9) asPSZ.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) initISAM: (recoveredStack2) fils: (recoveredStack3) sect: (recoveredStack4) dBufs: (recoveredStack5) userProf: (recoveredStack6) userId: (recoveredStack7) userWord: (recoveredStack8) servName: (recoveredStack9).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) sctusrprf.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg5.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) sctusrprf: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 125.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := CTError.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'initIsamExt'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) location: (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            InitFlag := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

