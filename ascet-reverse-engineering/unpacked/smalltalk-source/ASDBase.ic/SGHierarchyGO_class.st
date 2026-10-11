"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015114; bytecode file offset 0x912098"
!SGHierarchyGO class methodsFor: 'recovered'!
dbClass
    | recoveredValue0 |
    recoveredValue0 := SGHierarchyGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018e84; bytecode file offset 0x92209c"
!SGHierarchyGO class methodsFor: 'recovered'!
defaultName
    ^'Hierarchy'
! !

"ASDBase.ic method 0x2008da14; bytecode file offset 0x98a2cc"
!SGHierarchyGO class methodsFor: 'recovered'!
minSize
    | recoveredValue0 |
    recoveredValue0 := (50) @ (50).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200ca938; bytecode file offset 0x9c7208"
!SGHierarchyGO class methodsFor: 'recovered'!
create: recoveredArg1 icon: recoveredArg2 lineStyle: recoveredArg3 size: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg4.
    recoveredValue4 := (self) createDefault: (recoveredValue0) icon: (recoveredValue1) lineStyle: (recoveredValue2) size: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025cbe0; bytecode file offset 0xb594b8"
!SGHierarchyGO class methodsFor: 'recovered'!
createDefault: recoveredArg1 icon: recoveredArg2 lineStyle: recoveredArg3 size: recoveredArg4
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := (self) createWithLineStyle: (recoveredValue0) manager: (nil).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg4.
    (recoveredValue3) setDefSize: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) setSelectFlag: (false).
    recoveredValue6 := recoveredValue2.
    recoveredValue7 := OrderedCollection.
    recoveredValue8 := (recoveredValue7) new.
    (recoveredValue6) setInterfaceGOs: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) createDefaultFrameGO.
    recoveredValue10 := recoveredValue2.
    recoveredValue11 := recoveredArg2.
    (recoveredValue10) updateForIcon: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    (recoveredValue2) createNameGO: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2029ea90; bytecode file offset 0xb9b35c"
!SGHierarchyGO class methodsFor: 'recovered'!
createFor: recoveredArg1 hierarchyWrapper: recoveredArg2 size: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := BlockMinSize.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPoint.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultName.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := DefaultLineStyle.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault: (recoveredStack1) icon: (recoveredStack2) lineStyle: (recoveredStack3) size: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) hierarchyMGO: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

