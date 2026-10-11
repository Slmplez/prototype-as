"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20001298; bytecode file offset 0x7d460"
!CwText class methodsFor: 'recovered'!
lineDelimiter
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OSxSmallText.
    recoveredValue1 := (recoveredValue0) lineDelimiter.
    ^recoveredValue1
! !

"winsys.ic method 0x20001e6c; bytecode file offset 0x7e054"
!CwText class methodsFor: 'recovered'!
largeText: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    LargeText := recoveredValue0.
    ^self
! !

"winsys.ic method 0x2000209c; bytecode file offset 0x7e260"
!CwText class methodsFor: 'recovered'!
largeText
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LargeText.
    recoveredValue1 := (recoveredValue0) == (true).
    ^recoveredValue1
! !

"winsys.ic method 0x200113e4; bytecode file offset 0x8d5bc"
!CwText class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LargeText.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := System.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'CW'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) subsystemType: (recoveredStack3).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'WIN32s'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) largeText: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"winsys.ic method 0x2001dc90; bytecode file offset 0x99e7c"
!CwText class methodsFor: 'recovered'!
defaultResourceSnapshotInfo
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := super defaultResourceSnapshotInfo.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := CwResourceSnapshot.
    recoveredValue3 := (recoveredValue2) getSelector: ('getString') setSelector: ('setString:').
    (recoveredValue1) add: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := CwResourceSnapshot.
    recoveredValue6 := (recoveredValue5) getSelector: ('getSelectionPosition') setSelector: ('setSelection:').
    (recoveredValue4) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := CwResourceSnapshot.
    recoveredValue9 := (recoveredValue8) getSelector: ('topCharacter') setSelector: ('topCharacter:').
    (recoveredValue7) add: (recoveredValue9).
    ^recoveredValue0
! !

