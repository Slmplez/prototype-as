"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20015444; bytecode file offset 0x912098"
!TGErrorWarning methodsFor: 'recovered'!
getMaxNoOfErrors
    | recoveredValue0 |
    recoveredValue0 := MaxNoOfErrors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200194e4; bytecode file offset 0x92209c"
!TGErrorWarning methodsFor: 'recovered'!
rteSources
    ^#()
! !

"ASDBase.ic method 0x20028a74; bytecode file offset 0x934580"
!TGErrorWarning methodsFor: 'recovered'!
bannerTemplates
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) userReference.
    recoveredValue1 := (recoveredValue0) bannerTemplates.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040f00; bytecode file offset 0x93d83c"
!TGErrorWarning methodsFor: 'recovered'!
noErrors
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := errors.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200413a8; bytecode file offset 0x93dd2c"
!TGErrorWarning methodsFor: 'recovered'!
noWarnings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := warnings.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066d9c; bytecode file offset 0x9646f8"
!TGErrorWarning methodsFor: 'recovered'!
errors
    | recoveredValue0 |
    recoveredValue0 := errors.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200682cc; bytecode file offset 0x965b90"
!TGErrorWarning methodsFor: 'recovered'!
warnings
    | recoveredValue0 |
    recoveredValue0 := warnings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a1f8; bytecode file offset 0x966bdc"
!TGErrorWarning methodsFor: 'recovered'!
infos
    | recoveredValue0 |
    recoveredValue0 := infos.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b044; bytecode file offset 0x967a18"
!TGErrorWarning methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b360; bytecode file offset 0x96873c"
!TGErrorWarning methodsFor: 'recovered'!
description
    | recoveredValue0 |
    recoveredValue0 := description.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c5d4; bytecode file offset 0x9692b0"
!TGErrorWarning methodsFor: 'recovered'!
userReference
    | recoveredValue0 |
    recoveredValue0 := userReference.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073778; bytecode file offset 0x970b34"
!TGErrorWarning methodsFor: 'recovered'!
destinationPath
    ^nil
! !

"ASDBase.ic method 0x20092a80; bytecode file offset 0x98f464"
!TGErrorWarning methodsFor: 'recovered'!
addWarning: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := warnings.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092c70; bytecode file offset 0x98f534"
!TGErrorWarning methodsFor: 'recovered'!
addInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := infos.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200986a4; bytecode file offset 0x995850"
!TGErrorWarning methodsFor: 'recovered'!
addUnit: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) units.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009d0dc; bytecode file offset 0x999998"
!TGErrorWarning methodsFor: 'recovered'!
maxNoOfErrorsExceeded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := errors.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (self) getMaxNoOfErrors.
    recoveredValue3 := (recoveredValue1) > (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200bea50; bytecode file offset 0x9bc0b4"
!TGErrorWarning methodsFor: 'recovered'!
errors: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errors := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bf97c; bytecode file offset 0x9bd228"
!TGErrorWarning methodsFor: 'recovered'!
warnings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    warnings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1090; bytecode file offset 0x9bdf14"
!TGErrorWarning methodsFor: 'recovered'!
infos: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    infos := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1f64; bytecode file offset 0x9beac8"
!TGErrorWarning methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2228; bytecode file offset 0x9bf474"
!TGErrorWarning methodsFor: 'recovered'!
description: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    description := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c321c; bytecode file offset 0x9bfde0"
!TGErrorWarning methodsFor: 'recovered'!
userReference: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    userReference := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3900; bytecode file offset 0x9c058c"
!TGErrorWarning methodsFor: 'recovered'!
units: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    units := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012a0dc; bytecode file offset 0xa269a8"
!TGErrorWarning methodsFor: 'recovered'!
units
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := units.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            units := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := units.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201e4b34; bytecode file offset 0xae13fc"
!TGErrorWarning methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    errors := recoveredValue1.
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := (recoveredValue2) new.
    warnings := recoveredValue3.
    recoveredValue4 := OrderedCollection.
    recoveredValue5 := (recoveredValue4) new.
    infos := recoveredValue5.
    description := ''.
    ^self
! !

"ASDBase.ic method 0x20276700; bytecode file offset 0xb72fcc"
!TGErrorWarning methodsFor: 'recovered'!
addError: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := errors.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMaxNoOfErrors.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := errors.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := errors.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) getMaxNoOfErrors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := errors.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := TGReturnMessage.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'Too many errors...'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) createMessage: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) add: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f8fe4; bytecode file offset 0xcf58d4"
!TGErrorWarning methodsFor: 'recovered'!
displayErrorsAndWarnings
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := errors.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 recoveredBlock14Value4 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Value0.
    (recoveredBlock14Value1) cr.
    (recoveredBlock14Value0) nextPutAll: ('--- Error --- ').
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := recoveredLocal1.
    recoveredBlock14Value4 := (recoveredBlock14Value2) display: (recoveredBlock14Value3).
    recoveredBlock14Value4
].
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := warnings.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [:recoveredBlock41Arg1 | 
    | recoveredBlock41Value0 recoveredBlock41Value1 recoveredBlock41Value2 recoveredBlock41Value3 recoveredBlock41Value4 |
    recoveredBlock41Value0 := recoveredLocal1.
    recoveredBlock41Value1 := recoveredBlock41Value0.
    (recoveredBlock41Value1) cr.
    (recoveredBlock41Value0) nextPutAll: ('--- Warning --- ').
    recoveredBlock41Value2 := recoveredBlock41Arg1.
    recoveredBlock41Value3 := recoveredLocal1.
    recoveredBlock41Value4 := (recoveredBlock41Value2) display: (recoveredBlock41Value3).
    recoveredBlock41Value4
].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := RBUserQuestion.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) cancelOk.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) prompt.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

