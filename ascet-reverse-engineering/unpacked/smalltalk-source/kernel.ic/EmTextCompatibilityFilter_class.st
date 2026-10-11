"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"kernel.ic method 0x200016f4; bytecode file offset 0x4c844"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
tabSize
    | recoveredValue0 |
    recoveredValue0 := TabSize.
    ^recoveredValue0
! !

"kernel.ic method 0x2000185c; bytecode file offset 0x4c844"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
maximumLineWidth
    | recoveredValue0 |
    recoveredValue0 := MaximumLineWidth.
    ^recoveredValue0
! !

"kernel.ic method 0x2000267c; bytecode file offset 0x4d58c"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
replaceTabs
    AddTabs := false.
    ^self
! !

"kernel.ic method 0x200027b0; bytecode file offset 0x4d6c0"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
addTabs
    AddTabs := true.
    ^self
! !

"kernel.ic method 0x20002c9c; bytecode file offset 0x4dce4"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
maximumLineWidth: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    MaximumLineWidth := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20002d20; bytecode file offset 0x4dce4"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
tabSize: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    TabSize := recoveredValue0.
    ^self
! !

"kernel.ic method 0x20009c08; bytecode file offset 0x54b20"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
initializeAfterLoad
    | recoveredValue0 |
    (self) tabSize: (4).
    (self) maximumLineWidth: (nil).
    recoveredValue0 := (self) addTabs.
    ^recoveredValue0
! !

"kernel.ic method 0x2000d5cc; bytecode file offset 0x584e8"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
sourceFilter
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := AddTabs.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) addTabs.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceTabs.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"kernel.ic method 0x2000f014; bytecode file offset 0x59f3c"
!EmTextCompatibilityFilter class methodsFor: 'recovered'!
new
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := super new.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) initialize.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := LineDelimiter.
    (recoveredValue2) endOfLineSequence: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := (self) tabSize.
    (recoveredValue4) tabSize: (recoveredValue5).
    ^recoveredValue0
! !

