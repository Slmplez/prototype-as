"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002620c; bytecode file offset 0x923928"
!SGSwitchBlockGO class methodsFor: 'recovered'!
mappingTable
    | recoveredValue0 |
    recoveredValue0 := (LookupTable new) elementCount: (2); keyArray: (#('ControlsMux' nil nil nil nil nil nil nil nil nil 'ControlsCase')); valueArray: (#('MUX' nil nil nil nil nil nil nil nil nil 'Case')); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200268cc; bytecode file offset 0x923928"
!SGSwitchBlockGO class methodsFor: 'recovered'!
goTypeString
    ^''
! !

"ASDBase.ic method 0x200331c4; bytecode file offset 0x934580"
!SGSwitchBlockGO class methodsFor: 'recovered'!
typeSymbol
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) name.
    recoveredValue1 := (recoveredValue0) asSymbol.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ca068; bytecode file offset 0x9c692c"
!SGSwitchBlockGO class methodsFor: 'recovered'!
createWith: recoveredArg1 inputs: recoveredArg2 lineStyle: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (self) createWith: (recoveredValue0) inputs: (recoveredValue1) lineStyle: (recoveredValue2) size: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200defb8; bytecode file offset 0x9db870"
!SGSwitchBlockGO class methodsFor: 'recovered'!
createWith: recoveredArg1 inputs: recoveredArg2 lineStyle: recoveredArg3 oldFashion: recoveredArg4 size: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := recoveredArg5.
    recoveredValue4 := (self) createWith: (recoveredValue0) inputs: (recoveredValue1) lineStyle: (recoveredValue2) size: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2035c5ec; bytecode file offset 0xc58ee0"
!SGSwitchBlockGO class methodsFor: 'recovered'!
operatorIcons
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := ('BDEMux') asString.
    (recoveredValue3) at: ('Else If') put: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := ('BDECase') asString.
    (recoveredValue5) at: ('Case') put: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := ('BDEIfThen') asString.
    (recoveredValue7) at: ('If') put: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := ('BDESwitch') asString.
    (recoveredValue9) at: ('Switch') put: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := ('BDEOldMux') asString.
    (recoveredValue11) at: ('Else If Old') put: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := ('BDEOldMux2') asString.
    (recoveredValue13) at: ('Else If Old2') put: (recoveredValue14).
    recoveredValue15 := recoveredLocal1.
    ^recoveredValue15
! !

"ASDBase.ic method 0x2037fb8c; bytecode file offset 0xc7c47c"
!SGSwitchBlockGO class methodsFor: 'recovered'!
createWith: recoveredArg1 inputs: recoveredArg2 lineStyle: recoveredArg3 size: recoveredArg4
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := super createWith: (recoveredStack1) lineStyle: (recoveredStack2) inputs: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredArg4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) xAxis: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) // (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) yAxis: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) initAxisFor: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) createDefaultFrameGO.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) buildIconGO.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) createOutput.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) buildInterfaceFor: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := OrderedCollection.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) hideInterfaceNames: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) connectorNamesAsString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

