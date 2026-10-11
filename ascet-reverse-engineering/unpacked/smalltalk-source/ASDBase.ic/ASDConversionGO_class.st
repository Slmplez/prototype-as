"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007ff4; bytecode file offset 0x908be4"
!ASDConversionGO class methodsFor: 'recovered'!
conversionTypeDefault
    | recoveredValue0 |
    recoveredValue0 := (self) conversionTypeLimit.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013d70; bytecode file offset 0x912098"
!ASDConversionGO class methodsFor: 'recovered'!
dbClass
    | recoveredValue0 |
    recoveredValue0 := ASDConversionGODB.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a6f0; bytecode file offset 0x92209c"
!ASDConversionGO class methodsFor: 'recovered'!
conversionTypeWrapAround
    ^'wrapAround'
! !

"ASDBase.ic method 0x2001d804; bytecode file offset 0x92209c"
!ASDConversionGO class methodsFor: 'recovered'!
conversionTypeLimit
    ^'limit'
! !

"ASDBase.ic method 0x2001fb38; bytecode file offset 0x92209c"
!ASDConversionGO class methodsFor: 'recovered'!
goTypeString
    ^'Conversion'
! !

"ASDBase.ic method 0x2003dd68; bytecode file offset 0x93bf94"
!ASDConversionGO class methodsFor: 'recovered'!
defaultIntervalTypeLimitClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLimitedInteger.
    recoveredValue1 := (recoveredValue0) defaultIntervalTypeClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003e498; bytecode file offset 0x93bf94"
!ASDConversionGO class methodsFor: 'recovered'!
defaultIntervalTypeWrapAroundClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGWrapAroundInteger.
    recoveredValue1 := (recoveredValue0) defaultIntervalTypeClass.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200efeac; bytecode file offset 0x9ec7e4"
!ASDConversionGO class methodsFor: 'recovered'!
interfacePositions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: ('ConversionOp') put: (#(150 350)).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201aa240; bytecode file offset 0xaa6b2c"
!ASDConversionGO class methodsFor: 'recovered'!
createDefaultWrapAround
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := DefaultLineStyle.
    recoveredValue1 := (recoveredValue0) deepCopy.
    recoveredValue2 := (self) createWith: (nil) lineStyle: (recoveredValue1) type: ('OperationsWrapAround') inputs: (1) size: (nil).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) setConversionWrapAround.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) setDefaults.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201aa260; bytecode file offset 0xaa6b2c"
!ASDConversionGO class methodsFor: 'recovered'!
createDefaultLimit
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := DefaultLineStyle.
    recoveredValue1 := (recoveredValue0) deepCopy.
    recoveredValue2 := (self) createWith: (nil) lineStyle: (recoveredValue1) type: ('OperationsLimit') inputs: (1) size: (nil).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    (recoveredValue3) setConversionLimit.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) setDefaults.
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20241c58; bytecode file offset 0xb3e554"
!ASDConversionGO class methodsFor: 'recovered'!
interfaceProcs
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (1).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := SGAliasMethod.
    recoveredValue4 := Array.
    recoveredValue5 := (recoveredValue4) with: ('value').
    recoveredValue6 := Array.
    recoveredValue7 := (recoveredValue6) with: (nil).
    recoveredValue8 := (recoveredValue3) createWithReturn: ('ConversionOp') returnTemplate: (nil) inputArguments: (recoveredValue5) inputTemplates: (recoveredValue7).
    (recoveredValue2) at: (1) put: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x202d46c4; bytecode file offset 0xbd0f9c"
!ASDConversionGO class methodsFor: 'recovered'!
createWith: recoveredArg1 lineStyle: recoveredArg2 type: recoveredArg3 inputs: recoveredArg4 size: recoveredArg5
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack4 := recoveredArg4.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack5 := recoveredArg5.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := super createWith: (recoveredStack1) lineStyle: (recoveredStack2) type: (recoveredStack3) inputs: (recoveredStack4) size: (recoveredStack5).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'OperationsLimit'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) setConversionLimit.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) buildIconGO.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 'OperationsWrapAround'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) setConversionWrapAround.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) buildIconGO.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) setDefaults.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

