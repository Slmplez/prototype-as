"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20006e78; bytecode file offset 0x908be4"
!ASDConversionDialog methodsFor: 'recovered'!
checkLimits
    | recoveredValue0 |
    recoveredValue0 := (self) checkForValidLimitsForIntegerTypes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20029234; bytecode file offset 0x934580"
!ASDConversionDialog methodsFor: 'recovered'!
isMinMaxSensitive
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) go.
    recoveredValue1 := (recoveredValue0) useLimits.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bdb4; bytecode file offset 0x934580"
!ASDConversionDialog methodsFor: 'recovered'!
hasImplementationType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) go.
    recoveredValue1 := (recoveredValue0) isConversionWrapAround.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032a34; bytecode file offset 0x934580"
!ASDConversionDialog methodsFor: 'recovered'!
getImplementationType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetImplType.
    recoveredValue1 := (recoveredValue0) getObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006180c; bytecode file offset 0x95e838"
!ASDConversionDialog methodsFor: 'recovered'!
widgetImplType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('widgetImplType').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20061d84; bytecode file offset 0x95e838"
!ASDConversionDialog methodsFor: 'recovered'!
widgetImplTypeLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) widgetDictionary.
    recoveredValue1 := (recoveredValue0) at: ('widgetImplTypeLabel').
    ^recoveredValue1
! !

"ASDBase.ic method 0x20205fe0; bytecode file offset 0xb028dc"
!ASDConversionDialog methodsFor: 'recovered'!
menuSetModelMinToDefault
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImplementationType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultIntervalTypeLimitClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) menuSetModelMinToDefaultImplType: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20206008; bytecode file offset 0xb028dc"
!ASDConversionDialog methodsFor: 'recovered'!
menuSetModelMaxToDefault
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImplementationType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) getObject.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultIntervalTypeLimitClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) createDefault.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) menuSetModelMaxToDefaultImplType: (recoveredStack1).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2037b6bc; bytecode file offset 0xc77fac"
!ASDConversionDialog methodsFor: 'recovered'!
updateData
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImplementationType.
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
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) widgetImplType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) implementationType: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) useLimits.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntegerOrInfinity.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) asIntegerOrInfinity.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) interval: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045a084; bytecode file offset 0xd56988"
!ASDConversionDialog methodsFor: 'recovered'!
updateWidgets
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hasImplementationType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) items.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 |
    recoveredBlock11Value0 := recoveredBlock11Arg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) species.
    recoveredBlock11Value2 := (self) go.
    recoveredBlock11Value3 := (recoveredBlock11Value2) implementationType.
    recoveredBlock11Value4 := (recoveredBlock11Value3) species.
    recoveredBlock11Value5 := (recoveredBlock11Value1) equals: (recoveredBlock11Value4).
    recoveredBlock11Value5
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) setObject: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) useLimits.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) left.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) interval.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) right.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) implementationType.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRBInteger.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMax.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2048b27c; bytecode file offset 0xd87ba8"
!ASDConversionDialog methodsFor: 'recovered'!
initializeAfterCreate
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) shell.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'Conversion Attributes'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) title: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) installActionKeys.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) updateFonts.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) getIconName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) getIconName.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) getIconName.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := '32'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := (recoveredStack2) asAtom.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) iconSmall: (recoveredStack1) large: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) go.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) isConversionWrapAround.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplTypeLabel.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) unmanageChild.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetModelMin.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) setFocus.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := [:block2810306cArg1 | 
    | block2810306cStack0 block2810306cStack1 block2810306cStack2 block2810306cPC block2810306cStep block2810306cDone block2810306cResult |
    block2810306cStack0 := self.
    block2810306cPC := 4.
    block2810306cDone := false.
    [block2810306cDone not] whileTrue: [
        block2810306cStep := block2810306cPC.
        block2810306cStep = 4 ifTrue: [
            block2810306cStack1 := block2810306cArg1.
            block2810306cPC := 5.
        ].
        block2810306cStep = 5 ifTrue: [
            (block2810306cStack1 ~~ nil) ifTrue: [block2810306cPC := 14] ifFalse: [block2810306cPC := 8].
        ].
        block2810306cStep = 8 ifTrue: [
            block2810306cStack1 := ''.
            block2810306cPC := 10.
        ].
        block2810306cStep = 10 ifTrue: [
            block2810306cPC := 17.
        ].
        block2810306cStep = 14 ifTrue: [
            block2810306cStack1 := block2810306cArg1.
            block2810306cPC := 15.
        ].
        block2810306cStep = 15 ifTrue: [
            block2810306cStack1 := (block2810306cStack1) getDisplayLabel.
            block2810306cPC := 17.
        ].
        block2810306cStep = 17 ifTrue: [
            block2810306cResult := block2810306cStack1.
            block2810306cDone := true.
        ].
    ].
    block2810306cResult
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) printBlock: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := RBInteger.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) allImplTypes.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) items: (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) widgetImplType.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) osWidget.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) setFocus.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack0) updateWidgets.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack0) updateSensitivity.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack0) initContextMenus.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2066f430; bytecode file offset 0xf6be60"
!ASDConversionDialog methodsFor: 'recovered'!
createWidgetHierarchy: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
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
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := [:block28126af0Arg1 | 
    | block28126af0Value0 block28126af0Value1 block28126af0Value2 block28126af0Value3 block28126af0Value4 block28126af0Value5 block28126af0Value6 block28126af0Value7 block28126af0Value8 block28126af0Value9 block28126af0Value10 block28126af0Value11 block28126af0Value12 |
    block28126af0Value0 := block28126af0Arg1.
    block28126af0Value1 := block28126af0Value0.
    (block28126af0Value1) allowShellResize: (true).
    block28126af0Value2 := block28126af0Value0.
    block28126af0Value3 := MWMINPUTPRIMARYAPPLICATIONMODAL.
    (block28126af0Value2) mwmInputMode: (block28126af0Value3).
    block28126af0Value4 := block28126af0Value0.
    (block28126af0Value4) title: ('Dialog').
    block28126af0Value5 := MWMDECORBORDER.
    block28126af0Value6 := MWMDECORRESIZEH.
    block28126af0Value7 := (block28126af0Value5) | (block28126af0Value6).
    block28126af0Value8 := MWMDECORTITLE.
    block28126af0Value9 := (block28126af0Value7) | (block28126af0Value8).
    block28126af0Value10 := MWMDECORMENU.
    block28126af0Value11 := (block28126af0Value9) | (block28126af0Value10).
    block28126af0Value12 := (block28126af0Value0) mwmDecorations: (block28126af0Value11).
    block28126af0Value12
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) createDialogShell: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'dialogShell'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal11.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [:block28126b14Arg1 | 
    | block28126b14Value0 block28126b14Value1 block28126b14Value2 |
    block28126b14Value0 := block28126b14Arg1.
    block28126b14Value1 := block28126b14Value0.
    (block28126b14Value1) height: (300).
    block28126b14Value2 := (block28126b14Value0) width: (300).
    block28126b14Value2
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMainWindow: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'mainWindow'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) createForm: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := 'mainForm'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'widgetModelMinLabel'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := [:block28126b38Arg1 | 
    | block28126b38Value0 block28126b38Value1 block28126b38Value2 block28126b38Value3 block28126b38Value4 block28126b38Value5 |
    block28126b38Value0 := block28126b38Arg1.
    block28126b38Value1 := block28126b38Value0.
    (block28126b38Value1) width: (50).
    block28126b38Value2 := block28126b38Value0.
    (block28126b38Value2) height: (22).
    block28126b38Value3 := block28126b38Value0.
    block28126b38Value4 := XmALIGNMENTBEGINNING.
    (block28126b38Value3) alignment: (block28126b38Value4).
    block28126b38Value5 := block28126b38Value0.
    (block28126b38Value5) labelString: ('Min').
    block28126b38Value0
].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := 'widgetModelMinLabel'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack2 := 'widgetModelMin'.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := [:block28126b5cArg1 | 
    | block28126b5cValue0 block28126b5cValue1 block28126b5cValue2 |
    block28126b5cValue0 := block28126b5cArg1.
    block28126b5cValue1 := block28126b5cValue0.
    (block28126b5cValue1) height: (22).
    block28126b5cValue2 := (block28126b5cValue0) characterMethod: ('checkInteger:').
    block28126b5cValue2
].
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack2 := 'widgetModelMin'.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack2 := 'widgetModelMaxLabel'.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := [:block28126b80Arg1 | 
    | block28126b80Value0 block28126b80Value1 block28126b80Value2 block28126b80Value3 block28126b80Value4 block28126b80Value5 |
    block28126b80Value0 := block28126b80Arg1.
    block28126b80Value1 := block28126b80Value0.
    (block28126b80Value1) width: (50).
    block28126b80Value2 := block28126b80Value0.
    (block28126b80Value2) height: (22).
    block28126b80Value3 := block28126b80Value0.
    block28126b80Value4 := XmALIGNMENTBEGINNING.
    (block28126b80Value3) alignment: (block28126b80Value4).
    block28126b80Value5 := block28126b80Value0.
    (block28126b80Value5) labelString: ('Max').
    block28126b80Value0
].
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack2 := 'widgetModelMaxLabel'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := 'widgetModelMax'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := [:block28126ba4Arg1 | 
    | block28126ba4Value0 block28126ba4Value1 block28126ba4Value2 |
    block28126ba4Value0 := block28126ba4Arg1.
    block28126ba4Value1 := block28126ba4Value0.
    (block28126ba4Value1) height: (22).
    block28126ba4Value2 := (block28126ba4Value0) characterMethod: ('checkInteger:').
    block28126ba4Value2
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEnhancedText: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := 'widgetModelMax'.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack2 := 'widgetImplTypeLabel'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := [:block28126bc8Arg1 | 
    | block28126bc8Value0 block28126bc8Value1 block28126bc8Value2 block28126bc8Value3 block28126bc8Value4 block28126bc8Value5 |
    block28126bc8Value0 := block28126bc8Arg1.
    block28126bc8Value1 := block28126bc8Value0.
    (block28126bc8Value1) width: (50).
    block28126bc8Value2 := block28126bc8Value0.
    (block28126bc8Value2) height: (22).
    block28126bc8Value3 := block28126bc8Value0.
    block28126bc8Value4 := XmALIGNMENTBEGINNING.
    (block28126bc8Value3) alignment: (block28126bc8Value4).
    block28126bc8Value5 := block28126bc8Value0.
    (block28126bc8Value5) labelString: ('Type').
    block28126bc8Value0
].
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) createLabel: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := 'widgetImplTypeLabel'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := 'widgetImplType'.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := [:block28126becArg1 | 
    | block28126becValue0 block28126becValue1 block28126becValue2 |
    block28126becValue0 := block28126becArg1.
    block28126becValue1 := block28126becValue0.
    (block28126becValue1) height: (22).
    block28126becValue2 := block28126becValue0.
    (block28126becValue2) visibleItemCount: (10).
    block28126becValue0
].
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) createEtasObjectComboBox: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := 'widgetImplType'.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack3 := [:block28126c10Arg1 | 
    | block28126c10Value0 block28126c10Value1 block28126c10Value2 block28126c10Value3 block28126c10Value4 |
    block28126c10Value0 := block28126c10Arg1.
    block28126c10Value1 := block28126c10Value0.
    (block28126c10Value1) labelString: ('OK').
    block28126c10Value2 := block28126c10Value0.
    (block28126c10Value2) mnemonic: ($O).
    block28126c10Value3 := block28126c10Value0.
    (block28126c10Value3) height: (24).
    block28126c10Value4 := (block28126c10Value0) width: (90).
    block28126c10Value4
].
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack2 := 'widgetButtonOk'.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := [:block28126c34Arg1 | 
    | block28126c34Value0 block28126c34Value1 block28126c34Value2 block28126c34Value3 block28126c34Value4 |
    block28126c34Value0 := block28126c34Arg1.
    block28126c34Value1 := block28126c34Value0.
    (block28126c34Value1) labelString: ('Cancel').
    block28126c34Value2 := block28126c34Value0.
    (block28126c34Value2) mnemonic: ($C).
    block28126c34Value3 := block28126c34Value0.
    (block28126c34Value3) height: (24).
    block28126c34Value4 := (block28126c34Value0) width: (90).
    block28126c34Value4
].
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) createPushButton: (recoveredStack2) argBlock: (recoveredStack3).
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack1 := (recoveredStack1) manageChild.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := 'widgetButtonCancel'.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack2 := [:recoveredBlock526Arg1 | 
    | recoveredBlock526Value0 recoveredBlock526Value1 recoveredBlock526Value2 |
    recoveredBlock526Value0 := recoveredBlock526Arg1.
    recoveredBlock526Value1 := recoveredLocal9.
    recoveredBlock526Value2 := (recoveredBlock526Value0) workWindow: (recoveredBlock526Value1).
    recoveredBlock526Value2
].
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := [:block28126c58Arg1 | 
    | block28126c58Value0 block28126c58Value1 block28126c58Value2 block28126c58Value3 block28126c58Value4 block28126c58Value5 block28126c58Value6 block28126c58Value7 block28126c58Value8 block28126c58Value9 block28126c58Value10 |
    block28126c58Value0 := block28126c58Arg1.
    block28126c58Value1 := block28126c58Value0.
    block28126c58Value2 := XmATTACHNONE.
    (block28126c58Value1) leftAttachment: (block28126c58Value2).
    block28126c58Value3 := block28126c58Value0.
    block28126c58Value4 := XmATTACHNONE.
    (block28126c58Value3) topAttachment: (block28126c58Value4).
    block28126c58Value5 := block28126c58Value0.
    block28126c58Value6 := XmATTACHFORM.
    (block28126c58Value5) rightAttachment: (block28126c58Value6).
    block28126c58Value7 := block28126c58Value0.
    (block28126c58Value7) rightOffset: (5).
    block28126c58Value8 := block28126c58Value0.
    block28126c58Value9 := XmATTACHFORM.
    (block28126c58Value8) bottomAttachment: (block28126c58Value9).
    block28126c58Value10 := (block28126c58Value0) bottomOffset: (5).
    block28126c58Value10
].
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack2 := [:recoveredBlock614Arg1 | 
    | recoveredBlock614Value0 recoveredBlock614Value1 recoveredBlock614Value2 recoveredBlock614Value3 recoveredBlock614Value4 recoveredBlock614Value5 recoveredBlock614Value6 recoveredBlock614Value7 recoveredBlock614Value8 recoveredBlock614Value9 recoveredBlock614Value10 recoveredBlock614Value11 recoveredBlock614Value12 recoveredBlock614Value13 |
    recoveredBlock614Value0 := recoveredBlock614Arg1.
    recoveredBlock614Value1 := recoveredBlock614Value0.
    recoveredBlock614Value2 := XmATTACHNONE.
    (recoveredBlock614Value1) leftAttachment: (recoveredBlock614Value2).
    recoveredBlock614Value3 := recoveredBlock614Value0.
    recoveredBlock614Value4 := XmATTACHNONE.
    (recoveredBlock614Value3) topAttachment: (recoveredBlock614Value4).
    recoveredBlock614Value5 := recoveredBlock614Value0.
    recoveredBlock614Value6 := XmATTACHWIDGET.
    (recoveredBlock614Value5) rightAttachment: (recoveredBlock614Value6).
    recoveredBlock614Value7 := recoveredBlock614Value0.
    recoveredBlock614Value8 := recoveredLocal1.
    (recoveredBlock614Value7) rightWidget: (recoveredBlock614Value8).
    recoveredBlock614Value9 := recoveredBlock614Value0.
    (recoveredBlock614Value9) rightOffset: (5).
    recoveredBlock614Value10 := recoveredBlock614Value0.
    recoveredBlock614Value11 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock614Value10) bottomAttachment: (recoveredBlock614Value11).
    recoveredBlock614Value12 := recoveredLocal1.
    recoveredBlock614Value13 := (recoveredBlock614Value0) bottomWidget: (recoveredBlock614Value12).
    recoveredBlock614Value13
].
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredStack4 := 'widgetButtonOkActivate:clientData:callData:'.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 702.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := XmNactivateCallback.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack4 := 'widgetButtonCancelActivate:clientData:callData:'.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            (recoveredStack1) addCallback: (recoveredStack2) receiver: (recoveredStack3) selector: (recoveredStack4) clientData: (recoveredStack5).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack2 := [:block28126c7cArg1 | 
    | block28126c7cValue0 block28126c7cValue1 block28126c7cValue2 block28126c7cValue3 block28126c7cValue4 block28126c7cValue5 block28126c7cValue6 |
    block28126c7cValue0 := block28126c7cArg1.
    block28126c7cValue1 := block28126c7cValue0.
    block28126c7cValue2 := XmATTACHFORM.
    (block28126c7cValue1) topAttachment: (block28126c7cValue2).
    block28126c7cValue3 := block28126c7cValue0.
    (block28126c7cValue3) topOffset: (5).
    block28126c7cValue4 := block28126c7cValue0.
    block28126c7cValue5 := XmATTACHFORM.
    (block28126c7cValue4) leftAttachment: (block28126c7cValue5).
    block28126c7cValue6 := (block28126c7cValue0) leftOffset: (5).
    block28126c7cValue6
].
            recoveredPC := 722.
        ].
        recoveredStep = 722 ifTrue: [
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack2 := [:recoveredBlock766Arg1 | 
    | recoveredBlock766Value0 recoveredBlock766Value1 recoveredBlock766Value2 recoveredBlock766Value3 recoveredBlock766Value4 recoveredBlock766Value5 recoveredBlock766Value6 recoveredBlock766Value7 recoveredBlock766Value8 recoveredBlock766Value9 recoveredBlock766Value10 recoveredBlock766Value11 recoveredBlock766Value12 recoveredBlock766Value13 |
    recoveredBlock766Value0 := recoveredBlock766Arg1.
    recoveredBlock766Value1 := recoveredBlock766Value0.
    recoveredBlock766Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock766Value1) topAttachment: (recoveredBlock766Value2).
    recoveredBlock766Value3 := recoveredBlock766Value0.
    recoveredBlock766Value4 := recoveredLocal8.
    (recoveredBlock766Value3) topWidget: (recoveredBlock766Value4).
    recoveredBlock766Value5 := recoveredBlock766Value0.
    (recoveredBlock766Value5) topOffset: (0).
    recoveredBlock766Value6 := recoveredBlock766Value0.
    recoveredBlock766Value7 := XmATTACHFORM.
    (recoveredBlock766Value6) rightAttachment: (recoveredBlock766Value7).
    recoveredBlock766Value8 := recoveredBlock766Value0.
    (recoveredBlock766Value8) rightOffset: (5).
    recoveredBlock766Value9 := recoveredBlock766Value0.
    recoveredBlock766Value10 := XmATTACHWIDGET.
    (recoveredBlock766Value9) leftAttachment: (recoveredBlock766Value10).
    recoveredBlock766Value11 := recoveredBlock766Value0.
    recoveredBlock766Value12 := recoveredLocal8.
    (recoveredBlock766Value11) leftWidget: (recoveredBlock766Value12).
    recoveredBlock766Value13 := (recoveredBlock766Value0) leftOffset: (5).
    recoveredBlock766Value13
].
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            recoveredStack2 := [:recoveredBlock842Arg1 | 
    | recoveredBlock842Value0 recoveredBlock842Value1 recoveredBlock842Value2 recoveredBlock842Value3 recoveredBlock842Value4 recoveredBlock842Value5 recoveredBlock842Value6 recoveredBlock842Value7 recoveredBlock842Value8 |
    recoveredBlock842Value0 := recoveredBlock842Arg1.
    recoveredBlock842Value1 := recoveredBlock842Value0.
    recoveredBlock842Value2 := XmATTACHWIDGET.
    (recoveredBlock842Value1) topAttachment: (recoveredBlock842Value2).
    recoveredBlock842Value3 := recoveredBlock842Value0.
    recoveredBlock842Value4 := recoveredLocal7.
    (recoveredBlock842Value3) topWidget: (recoveredBlock842Value4).
    recoveredBlock842Value5 := recoveredBlock842Value0.
    (recoveredBlock842Value5) topOffset: (5).
    recoveredBlock842Value6 := recoveredBlock842Value0.
    recoveredBlock842Value7 := XmATTACHFORM.
    (recoveredBlock842Value6) leftAttachment: (recoveredBlock842Value7).
    recoveredBlock842Value8 := (recoveredBlock842Value0) leftOffset: (5).
    recoveredBlock842Value8
].
            recoveredPC := 888.
        ].
        recoveredStep = 888 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 893.
        ].
        recoveredStep = 893 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 896.
        ].
        recoveredStep = 896 ifTrue: [
            recoveredStack2 := [:recoveredBlock896Arg1 | 
    | recoveredBlock896Value0 recoveredBlock896Value1 recoveredBlock896Value2 recoveredBlock896Value3 recoveredBlock896Value4 recoveredBlock896Value5 recoveredBlock896Value6 recoveredBlock896Value7 recoveredBlock896Value8 recoveredBlock896Value9 recoveredBlock896Value10 recoveredBlock896Value11 recoveredBlock896Value12 recoveredBlock896Value13 |
    recoveredBlock896Value0 := recoveredBlock896Arg1.
    recoveredBlock896Value1 := recoveredBlock896Value0.
    recoveredBlock896Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock896Value1) topAttachment: (recoveredBlock896Value2).
    recoveredBlock896Value3 := recoveredBlock896Value0.
    recoveredBlock896Value4 := recoveredLocal6.
    (recoveredBlock896Value3) topWidget: (recoveredBlock896Value4).
    recoveredBlock896Value5 := recoveredBlock896Value0.
    (recoveredBlock896Value5) topOffset: (0).
    recoveredBlock896Value6 := recoveredBlock896Value0.
    recoveredBlock896Value7 := XmATTACHFORM.
    (recoveredBlock896Value6) rightAttachment: (recoveredBlock896Value7).
    recoveredBlock896Value8 := recoveredBlock896Value0.
    (recoveredBlock896Value8) rightOffset: (5).
    recoveredBlock896Value9 := recoveredBlock896Value0.
    recoveredBlock896Value10 := XmATTACHWIDGET.
    (recoveredBlock896Value9) leftAttachment: (recoveredBlock896Value10).
    recoveredBlock896Value11 := recoveredBlock896Value0.
    recoveredBlock896Value12 := recoveredLocal6.
    (recoveredBlock896Value11) leftWidget: (recoveredBlock896Value12).
    recoveredBlock896Value13 := (recoveredBlock896Value0) leftOffset: (5).
    recoveredBlock896Value13
].
            recoveredPC := 964.
        ].
        recoveredStep = 964 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 969.
        ].
        recoveredStep = 969 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 972.
        ].
        recoveredStep = 972 ifTrue: [
            recoveredStack2 := [:recoveredBlock972Arg1 | 
    | recoveredBlock972Value0 recoveredBlock972Value1 recoveredBlock972Value2 recoveredBlock972Value3 recoveredBlock972Value4 recoveredBlock972Value5 recoveredBlock972Value6 recoveredBlock972Value7 recoveredBlock972Value8 |
    recoveredBlock972Value0 := recoveredBlock972Arg1.
    recoveredBlock972Value1 := recoveredBlock972Value0.
    recoveredBlock972Value2 := XmATTACHWIDGET.
    (recoveredBlock972Value1) topAttachment: (recoveredBlock972Value2).
    recoveredBlock972Value3 := recoveredBlock972Value0.
    recoveredBlock972Value4 := recoveredLocal5.
    (recoveredBlock972Value3) topWidget: (recoveredBlock972Value4).
    recoveredBlock972Value5 := recoveredBlock972Value0.
    (recoveredBlock972Value5) topOffset: (5).
    recoveredBlock972Value6 := recoveredBlock972Value0.
    recoveredBlock972Value7 := XmATTACHFORM.
    (recoveredBlock972Value6) leftAttachment: (recoveredBlock972Value7).
    recoveredBlock972Value8 := (recoveredBlock972Value0) leftOffset: (5).
    recoveredBlock972Value8
].
            recoveredPC := 1018.
        ].
        recoveredStep = 1018 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1023.
        ].
        recoveredStep = 1023 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1026.
        ].
        recoveredStep = 1026 ifTrue: [
            recoveredStack2 := [:recoveredBlock1026Arg1 | 
    | recoveredBlock1026Value0 recoveredBlock1026Value1 recoveredBlock1026Value2 recoveredBlock1026Value3 recoveredBlock1026Value4 recoveredBlock1026Value5 recoveredBlock1026Value6 recoveredBlock1026Value7 recoveredBlock1026Value8 recoveredBlock1026Value9 recoveredBlock1026Value10 recoveredBlock1026Value11 recoveredBlock1026Value12 recoveredBlock1026Value13 |
    recoveredBlock1026Value0 := recoveredBlock1026Arg1.
    recoveredBlock1026Value1 := recoveredBlock1026Value0.
    recoveredBlock1026Value2 := XmATTACHOPPOSITEWIDGET.
    (recoveredBlock1026Value1) topAttachment: (recoveredBlock1026Value2).
    recoveredBlock1026Value3 := recoveredBlock1026Value0.
    recoveredBlock1026Value4 := recoveredLocal4.
    (recoveredBlock1026Value3) topWidget: (recoveredBlock1026Value4).
    recoveredBlock1026Value5 := recoveredBlock1026Value0.
    (recoveredBlock1026Value5) topOffset: (0).
    recoveredBlock1026Value6 := recoveredBlock1026Value0.
    recoveredBlock1026Value7 := XmATTACHFORM.
    (recoveredBlock1026Value6) rightAttachment: (recoveredBlock1026Value7).
    recoveredBlock1026Value8 := recoveredBlock1026Value0.
    (recoveredBlock1026Value8) rightOffset: (5).
    recoveredBlock1026Value9 := recoveredBlock1026Value0.
    recoveredBlock1026Value10 := XmATTACHWIDGET.
    (recoveredBlock1026Value9) leftAttachment: (recoveredBlock1026Value10).
    recoveredBlock1026Value11 := recoveredBlock1026Value0.
    recoveredBlock1026Value12 := recoveredLocal4.
    (recoveredBlock1026Value11) leftWidget: (recoveredBlock1026Value12).
    recoveredBlock1026Value13 := (recoveredBlock1026Value0) leftOffset: (5).
    recoveredBlock1026Value13
].
            recoveredPC := 1094.
        ].
        recoveredStep = 1094 ifTrue: [
            (recoveredStack1) setValuesBlock: (recoveredStack2).
            recoveredPC := 1099.
        ].
        recoveredStep = 1099 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 1102.
        ].
        recoveredStep = 1102 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1107.
        ].
        recoveredStep = 1107 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 1110.
        ].
        recoveredStep = 1110 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1115.
        ].
        recoveredStep = 1115 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 1118.
        ].
        recoveredStep = 1118 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1123.
        ].
        recoveredStep = 1123 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 1126.
        ].
        recoveredStep = 1126 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1131.
        ].
        recoveredStep = 1131 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 1134.
        ].
        recoveredStep = 1134 ifTrue: [
            (recoveredStack1) addTabGroup.
            recoveredPC := 1139.
        ].
        recoveredStep = 1139 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 1142.
        ].
        recoveredStep = 1142 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 1145.
        ].
        recoveredStep = 1145 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 1148.
        ].
        recoveredStep = 1148 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 1153.
        ].
        recoveredStep = 1153 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

