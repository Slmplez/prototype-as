"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20070720; bytecode file offset 0x96d06c"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
buttonPressed
    | recoveredValue0 |
    recoveredValue0 := buttonPressed.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074920; bytecode file offset 0x9711d4"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
defaultWidth
    ^270
! !

"ASDBase.ic method 0x200769cc; bytecode file offset 0x9757c8"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
isBooleanEditor
    ^true
! !

"ASDBase.ic method 0x200871f8; bytecode file offset 0x983b04"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
buttonPressed: recoveredArg1 clientData: recoveredArg2 event: recoveredArg3
    (self) buttonPressed: (true).
    ^self
! !

"ASDBase.ic method 0x200882c4; bytecode file offset 0x984bc0"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
supportedSourceModels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('MatBool').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20090a30; bytecode file offset 0x98d2ec"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
defaultHeight
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) tableEditor.
    recoveredValue1 := (recoveredValue0) itemHeight.
    recoveredValue2 := (recoveredValue1) * (5).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200c6c58; bytecode file offset 0x9c36ec"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
buttonPressed: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    buttonPressed := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5ba0; bytecode file offset 0x9d247c"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
initialize
    super initialize.
    buttonPressed := false.
    ^self
! !

"ASDBase.ic method 0x20103bf0; bytecode file offset 0xa004a8"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
printRepresentation: recoveredArg1 isAxis: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2015c6e4; bytecode file offset 0xa59014"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
trueBitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := (recoveredValue0) resourceManager.
    recoveredValue2 := ('EEBitOn') asString.
    recoveredValue3 := (recoveredValue1) returnImageWithName: (recoveredValue2).
    recoveredValue4 := CgRGBColor.
    recoveredValue5 := (recoveredValue4) white.
    recoveredValue6 := (recoveredValue5) asOSRGB.
    recoveredValue7 := (recoveredValue3) transparentPixel: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2015c73c; bytecode file offset 0xa59014"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
falseBitmap
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := RBUserInterface.
    recoveredValue1 := (recoveredValue0) resourceManager.
    recoveredValue2 := ('EEBitOff') asString.
    recoveredValue3 := (recoveredValue1) returnImageWithName: (recoveredValue2).
    recoveredValue4 := CgRGBColor.
    recoveredValue5 := (recoveredValue4) white.
    recoveredValue6 := (recoveredValue5) asOSRGB.
    recoveredValue7 := (recoveredValue3) transparentPixel: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2021fc5c; bytecode file offset 0xb1c534"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
getBlockValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) tableEditor.
    recoveredValue1 := (recoveredValue0) selectedCells.
    recoveredValue2 := (recoveredValue1) asSortedCollection.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    recoveredBlock9Value0 := (self) dataElement.
    recoveredBlock9Value1 := (recoveredBlock9Value0) getPhysValue.
    recoveredBlock9Value2 := recoveredBlock9Arg1.
    recoveredBlock9Value3 := (self) xIndexFromCell: (recoveredBlock9Value2).
    recoveredBlock9Value4 := recoveredBlock9Arg1.
    recoveredBlock9Value5 := (self) yIndexFromCell: (recoveredBlock9Value4).
    recoveredBlock9Value6 := (recoveredBlock9Value1) at: (recoveredBlock9Value3) at: (recoveredBlock9Value5).
    recoveredBlock9Value6
].
    recoveredValue5 := (recoveredValue3) collect: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20278b10; bytecode file offset 0xb753e0"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
tableEditorBlock: recoveredArg1 clientData: recoveredArg2 callData: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) resetHeadings.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) buttonPressed.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) buttonPressed: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) buttonPressed: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCells.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) invert.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a7350; bytecode file offset 0xba3c28"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
decCell: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xIndexFromCell: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) yIndexFromCell: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := false.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) atXIndex: (recoveredStack1) yIndex: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Call_41665'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableEditor.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCells.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) updateCachedCells: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a73ac; bytecode file offset 0xba3c84"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
incCell: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xIndexFromCell: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) yIndexFromCell: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) atXIndex: (recoveredStack1) yIndex: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Call_41665'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableEditor.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCells.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) updateCachedCells: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202e4aac; bytecode file offset 0xbe13a4"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
optionsMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := MTExtras.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'showInfo'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := GMVInfoAbout.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := Dots.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'showInfo'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack6 := XKI.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := 'Ctrl+I'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20303390; bytecode file offset 0xbffc74"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
invertCell: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) xIndexFromCell: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) yIndexFromCell: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) not.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) atXIndex: (recoveredStack1) yIndex: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'Call_41665'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableEditor.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedCells.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) asOrderedCollection.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) updateCachedCells: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20307eac; bytecode file offset 0xc04784"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
decBlock
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) tableEditor.
    recoveredValue1 := (recoveredValue0) selectedCells.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ('Kk') == ('Call_41665').
    recoveredValue3 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := [:recoveredBlock16Block25Arg1 | 
    | recoveredBlock16Block25Local1 recoveredBlock16Block25Local2 recoveredBlock16Block25Value0 recoveredBlock16Block25Value1 recoveredBlock16Block25Value2 recoveredBlock16Block25Value3 recoveredBlock16Block25Value4 recoveredBlock16Block25Value5 recoveredBlock16Block25Value6 |
    recoveredBlock16Block25Value0 := recoveredBlock16Block25Arg1.
    recoveredBlock16Block25Value1 := (self) xIndexFromCell: (recoveredBlock16Block25Value0).
    recoveredBlock16Block25Local2 := recoveredBlock16Block25Value1.
    recoveredBlock16Block25Value2 := recoveredBlock16Block25Arg1.
    recoveredBlock16Block25Value3 := (self) yIndexFromCell: (recoveredBlock16Block25Value2).
    recoveredBlock16Block25Local1 := recoveredBlock16Block25Value3.
    recoveredBlock16Block25Value4 := recoveredBlock16Block25Local2.
    recoveredBlock16Block25Value5 := recoveredBlock16Block25Local1.
    recoveredBlock16Block25Value6 := (self) atXIndex: (recoveredBlock16Block25Value4) yIndex: (recoveredBlock16Block25Value5) put: (false).
    recoveredBlock16Block25Value6
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) do: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    recoveredValue4 := (self) doBlockOperation: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20307f10; bytecode file offset 0xc047e8"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
incBlock
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) tableEditor.
    recoveredValue1 := (recoveredValue0) selectedCells.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ('Kk') == ('Call_41665').
    recoveredValue3 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := [:recoveredBlock16Block25Arg1 | 
    | recoveredBlock16Block25Local1 recoveredBlock16Block25Local2 recoveredBlock16Block25Value0 recoveredBlock16Block25Value1 recoveredBlock16Block25Value2 recoveredBlock16Block25Value3 recoveredBlock16Block25Value4 recoveredBlock16Block25Value5 recoveredBlock16Block25Value6 |
    recoveredBlock16Block25Value0 := recoveredBlock16Block25Arg1.
    recoveredBlock16Block25Value1 := (self) xIndexFromCell: (recoveredBlock16Block25Value0).
    recoveredBlock16Block25Local2 := recoveredBlock16Block25Value1.
    recoveredBlock16Block25Value2 := recoveredBlock16Block25Arg1.
    recoveredBlock16Block25Value3 := (self) yIndexFromCell: (recoveredBlock16Block25Value2).
    recoveredBlock16Block25Local1 := recoveredBlock16Block25Value3.
    recoveredBlock16Block25Value4 := recoveredBlock16Block25Local2.
    recoveredBlock16Block25Value5 := recoveredBlock16Block25Local1.
    recoveredBlock16Block25Value6 := (self) atXIndex: (recoveredBlock16Block25Value4) yIndex: (recoveredBlock16Block25Value5) put: (true).
    recoveredBlock16Block25Value6
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) do: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    recoveredValue4 := (self) doBlockOperation: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2031d7c4; bytecode file offset 0xc1a094"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
valueAtIndex: recoveredArg1 data: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) xSize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) ySize.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037a71c; bytecode file offset 0xc77000"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
invertBlock
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) tableEditor.
    recoveredValue1 := (recoveredValue0) selectedCells.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := ('Kk') == ('Call_41665').
    recoveredValue3 := [
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 |
    recoveredBlock16Value0 := recoveredLocal2.
    recoveredBlock16Value1 := [:recoveredBlock16Block25Arg1 | 
    | recoveredBlock16Block25Local1 recoveredBlock16Block25Local2 recoveredBlock16Block25Value0 recoveredBlock16Block25Value1 recoveredBlock16Block25Value2 recoveredBlock16Block25Value3 recoveredBlock16Block25Value4 recoveredBlock16Block25Value5 recoveredBlock16Block25Value6 recoveredBlock16Block25Value7 recoveredBlock16Block25Value8 recoveredBlock16Block25Value9 recoveredBlock16Block25Value10 recoveredBlock16Block25Value11 recoveredBlock16Block25Value12 recoveredBlock16Block25Value13 |
    recoveredBlock16Block25Value0 := recoveredBlock16Block25Arg1.
    recoveredBlock16Block25Value1 := (self) xIndexFromCell: (recoveredBlock16Block25Value0).
    recoveredBlock16Block25Local2 := recoveredBlock16Block25Value1.
    recoveredBlock16Block25Value2 := recoveredBlock16Block25Arg1.
    recoveredBlock16Block25Value3 := (self) yIndexFromCell: (recoveredBlock16Block25Value2).
    recoveredBlock16Block25Local1 := recoveredBlock16Block25Value3.
    recoveredBlock16Block25Value4 := (self) dataElement.
    recoveredBlock16Block25Value5 := (recoveredBlock16Block25Value4) getPhysValue.
    recoveredBlock16Block25Value6 := recoveredBlock16Block25Local2.
    recoveredBlock16Block25Value7 := recoveredBlock16Block25Local1.
    recoveredBlock16Block25Value8 := (recoveredBlock16Block25Value5) at: (recoveredBlock16Block25Value6) at: (recoveredBlock16Block25Value7).
    recoveredLocal1 := recoveredBlock16Block25Value8.
    recoveredBlock16Block25Value9 := recoveredBlock16Block25Local2.
    recoveredBlock16Block25Value10 := recoveredBlock16Block25Local1.
    recoveredBlock16Block25Value11 := recoveredLocal1.
    recoveredBlock16Block25Value12 := (recoveredBlock16Block25Value11) not.
    recoveredBlock16Block25Value13 := (self) atXIndex: (recoveredBlock16Block25Value9) yIndex: (recoveredBlock16Block25Value10) put: (recoveredBlock16Block25Value12).
    recoveredBlock16Block25Value13
].
    recoveredBlock16Value2 := (recoveredBlock16Value0) do: (recoveredBlock16Value1).
    recoveredBlock16Value2
].
    recoveredValue4 := (self) doBlockOperation: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20419268; bytecode file offset 0xd15b54"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
getCellRepresentation: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysValue.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) dim.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) dataElement.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) getPhysValue.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) dim.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) y.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) x.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := true.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) printRepresentation: (recoveredStack2) isAxis: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPhysValue.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) x.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) y.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := RBRenderableBitmapString.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) string: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) trueBitmap.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredPC := 99.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := RBRenderableBitmapString.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) string: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) falseBitmap.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) image: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b3898; bytecode file offset 0xdb01b8"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
invert
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWriteProtected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedHeadingIndexes.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) tableEditor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedHeadingIndexes.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCells.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) asOrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInvalidSelection: (recoveredStack1).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlockValues.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) cancelEdit.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) invertBlock.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) invertCell: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) updateCachedCells: (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) getBlockValues.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := undoBuffer.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := RBEditValueOperation.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 'Invert'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := (recoveredStack3) getBlockIndices.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack2) indices: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) prevValues: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054af20; bytecode file offset 0xe47870"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
createWidgetHierarchy
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) primaryWidget.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 'mainForm'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 'tableEditor'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:block2810efd0Arg1 | 
    | block2810efd0Value0 block2810efd0Value1 block2810efd0Value2 block2810efd0Value3 block2810efd0Value4 block2810efd0Value5 block2810efd0Value6 block2810efd0Value7 |
    block2810efd0Value0 := block2810efd0Arg1.
    block2810efd0Value1 := block2810efd0Value0.
    (block2810efd0Value1) editable: (false).
    block2810efd0Value2 := block2810efd0Value0.
    (block2810efd0Value2) selectableColumns: (false).
    block2810efd0Value3 := block2810efd0Value0.
    (block2810efd0Value3) lockedColumns: (1).
    block2810efd0Value4 := block2810efd0Value0.
    (block2810efd0Value4) headingSeparatorThickness: (3).
    block2810efd0Value5 := block2810efd0Value0.
    block2810efd0Value6 := XmCELLBLOCKSELECT.
    (block2810efd0Value5) selectionPolicy: (block2810efd0Value6).
    block2810efd0Value7 := (block2810efd0Value0) itemHeight: (25).
    block2810efd0Value7
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) createScrolledEnhancedTableList: (recoveredStack1) argBlock: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) manageChild.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) parent.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 'aScrolledEnhancedTableList1'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 'tableEditor'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := [:recoveredBlock111Arg1 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 recoveredBlock111Value5 recoveredBlock111Value6 recoveredBlock111Value7 recoveredBlock111Value8 recoveredBlock111Value9 recoveredBlock111Value10 recoveredBlock111Value11 recoveredBlock111Value12 recoveredBlock111Value13 recoveredBlock111Value14 recoveredBlock111Value15 recoveredBlock111Value16 recoveredBlock111Value17 recoveredBlock111Value18 recoveredBlock111Value19 recoveredBlock111Value20 |
    recoveredBlock111Value0 := recoveredBlock111Arg1.
    recoveredBlock111Value1 := recoveredBlock111Value0.
    recoveredBlock111Value2 := XmATTACHFORM.
    (recoveredBlock111Value1) bottomAttachment: (recoveredBlock111Value2).
    recoveredBlock111Value3 := recoveredBlock111Value0.
    recoveredBlock111Value4 := XmATTACHFORM.
    (recoveredBlock111Value3) topAttachment: (recoveredBlock111Value4).
    recoveredBlock111Value5 := recoveredBlock111Value0.
    recoveredBlock111Value6 := XmATTACHFORM.
    (recoveredBlock111Value5) leftAttachment: (recoveredBlock111Value6).
    recoveredBlock111Value7 := recoveredBlock111Value0.
    recoveredBlock111Value8 := XmATTACHFORM.
    (recoveredBlock111Value7) rightAttachment: (recoveredBlock111Value8).
    recoveredBlock111Value9 := recoveredBlock111Value0.
    recoveredBlock111Value10 := recoveredLocal4.
    recoveredBlock111Value11 := (29) * (recoveredBlock111Value10).
    recoveredBlock111Value12 := (recoveredBlock111Value11) rounded.
    (recoveredBlock111Value9) y: (recoveredBlock111Value12).
    recoveredBlock111Value13 := recoveredBlock111Value0.
    recoveredBlock111Value14 := recoveredLocal4.
    recoveredBlock111Value15 := (55) * (recoveredBlock111Value14).
    recoveredBlock111Value16 := (recoveredBlock111Value15) rounded.
    (recoveredBlock111Value13) height: (recoveredBlock111Value16).
    recoveredBlock111Value17 := recoveredLocal5.
    recoveredBlock111Value18 := (522) * (recoveredBlock111Value17).
    recoveredBlock111Value19 := (recoveredBlock111Value18) rounded.
    recoveredBlock111Value20 := (recoveredBlock111Value0) width: (recoveredBlock111Value19).
    recoveredBlock111Value20
].
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack0) setValuesBlock: (recoveredStack1).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := XmNmodifyVerifyCallback.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := 'tableEditorModify:clientData:callData:'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := XmNcolumnHeadingSelectionCallback.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := 'tableEditorColumn:clientData:callData:'.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack2 := XmNcellBlockSelectionCallback.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := 'tableEditorBlock:clientData:callData:'.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack1 := ButtonPressMask.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := 'buttonPressed:clientData:event:'.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack0) addEventHandler: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b8170; bytecode file offset 0xeb4be4"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
editMenu
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasMenu.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultMenuClass.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := MTEdit.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack2) title: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'undo'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := GMVUndo.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 |
    recoveredBlock18Value0 := (self) isWriteProtected.
    recoveredBlock18Value1 := (recoveredBlock18Value0) not.
    recoveredBlock18Value2 := (self) canUndo.
    recoveredBlock18Value3 := (recoveredBlock18Value1) & (recoveredBlock18Value2).
    recoveredBlock18Value3
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'undo'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := XKU.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack5 := 'Ctrl+U'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := 'redo'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack4 := GMVRedo.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 |
    recoveredBlock55Value0 := (self) isWriteProtected.
    recoveredBlock55Value1 := (recoveredBlock55Value0) not.
    recoveredBlock55Value2 := (self) canRedo.
    recoveredBlock55Value3 := (recoveredBlock55Value1) & (recoveredBlock55Value2).
    recoveredBlock55Value3
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := 'redo'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := XKD.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack5 := 'Ctrl+D'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := 'copySelectionIntoClipboard'.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := GMVCopy.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock96Value0 |
    recoveredBlock96Value0 := (self) valueSelected.
    recoveredBlock96Value0
].
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := 'copySelectionIntoClipboard'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack6 := XKC.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack5 := 'Ctrl+C'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 'pasteFromClipboard'.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := GMVPaste.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock127Value0 recoveredBlock127Value1 recoveredBlock127Value2 recoveredBlock127Value3 recoveredBlock127Value4 recoveredBlock127Value5 recoveredBlock127Value6 recoveredBlock127Value7 |
    recoveredBlock127Value0 := (self) isWriteProtected.
    recoveredBlock127Value1 := (recoveredBlock127Value0) not.
    recoveredBlock127Value2 := (self) valueSelected.
    recoveredBlock127Value3 := (recoveredBlock127Value1) & (recoveredBlock127Value2).
    recoveredBlock127Value4 := OSClipboard.
    recoveredBlock127Value5 := (recoveredBlock127Value4) getString.
    recoveredBlock127Value6 := (recoveredBlock127Value5) notNil.
    recoveredBlock127Value7 := (recoveredBlock127Value3) & (recoveredBlock127Value6).
    recoveredBlock127Value7
].
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack3 := 'pasteFromClipboard'.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack6 := XKV.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack5 := 'Ctrl+V'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := 'copyAllIntoClipboard'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := GMVCopyEditData.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := 'selectAll'.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := GMVSelectAllValues.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack5 := [
    true
].
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := 'selectAll'.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack6 := XKA.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack5 := 'Ctrl+A'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            (recoveredStack2) addLine.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := 'decrement'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack4 := SCSetToFalse.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock223Value0 |
    recoveredBlock223Value0 := (self) selectedCellIsEditable.
    recoveredBlock223Value0
].
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := 'decrement'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack6 := XKN.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack5 := 'Ctrl+N'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := 'increment'.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack4 := SCSetToTrue.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock255Value0 |
    recoveredBlock255Value0 := (self) selectedCellIsEditable.
    recoveredBlock255Value0
].
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := 'increment'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack6 := XKM.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack5 := 'Ctrl+M'.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := 'invert'.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack4 := SCInvert.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock287Value0 |
    recoveredBlock287Value0 := (self) selectedCellIsEditable.
    recoveredBlock287Value0
].
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack2) add: (recoveredStack3) label: (recoveredStack4) enable: (recoveredStack5).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := 'invert'.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := CwAccelerator.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack5 := ControlMask.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack6 := XKJ.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack4 := (recoveredStack4) mask: (recoveredStack5) keysym: (recoveredStack6).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack5 := 'Ctrl+J'.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack2) setAcceleratorAt: (recoveredStack3) to: (recoveredStack4) text: (recoveredStack5).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x205e8108; bytecode file offset 0xee4a7c"
!ASDDataBooleanMatrixEditWidget methodsFor: 'recovered'!
pasteFromClipboard
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWriteProtected.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := OSClipboard.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) getString.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) tableEditor.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) selectedCell.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal15 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInvalidSelection: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) xIndexFromCell: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) yIndexFromCell: (recoveredStack1).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) isWEditable.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := ReadStream.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := OSClipboard.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) getString.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := $x.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 144.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 5.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := 'y \ x'.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredLocal10 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) editBlockStartIndex.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) y.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) xSize.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataElement.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack0 := (recoveredStack0) ySize.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredPC := 292.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := ReadStream.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredLocal13 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 289].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack0 := (recoveredStack0) editBlockStartIndex.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := (recoveredStack0) x.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredPC := 258.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 234] ifFalse: [recoveredPC := 255].
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal9 := recoveredStack0.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 275] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack0 := recoveredLocal13.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) nextBoolean.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := (recoveredStack0) notNil.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := (recoveredStack0) & (recoveredStack1).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack0 := (recoveredStack0) | (recoveredStack1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 305] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 312] ifFalse: [recoveredPC := 314].
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack0 := recoveredLocal10.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := [:recoveredBlock316Arg1 | 
    | recoveredBlock316Value0 recoveredBlock316Value1 recoveredBlock316Value2 recoveredBlock316Value3 recoveredBlock316Value4 recoveredBlock316Value5 recoveredBlock316Value6 |
    recoveredBlock316Value0 := (self) dataElement.
    recoveredBlock316Value1 := (recoveredBlock316Value0) value.
    recoveredBlock316Value2 := recoveredBlock316Arg1.
    recoveredBlock316Value3 := (recoveredBlock316Value2) x.
    recoveredBlock316Value4 := recoveredBlock316Arg1.
    recoveredBlock316Value5 := (recoveredBlock316Value4) y.
    recoveredBlock316Value6 := (recoveredBlock316Value1) at: (recoveredBlock316Value3) at: (recoveredBlock316Value5).
    recoveredBlock316Value6
].
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) doUndoRedoIndices: (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := undoBuffer.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := RBEditValueOperation.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := 'Einf'.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack4 := Character.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack5 := 252.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack4 := (recoveredStack4) value: (recoveredStack5).
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack4 := 'gen'.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            (recoveredStack2) operationName: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack2) indices: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack2) prevValues: (recoveredStack3).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack1 := (recoveredStack1) values: (recoveredStack2).
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

