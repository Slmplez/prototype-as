"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDGenUtil_base.ic method 0x20000304; bytecode file offset 0xe5d8"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
fileInWithReferencesForData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fileInWithReferencesForData: (recoveredValue1).
    ^recoveredValue2
! !

"ASDGenUtil_base.ic method 0x20000334; bytecode file offset 0xe5d8"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
fileInWithoutReferencesForData: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) fileInWithoutReferencesForData: (recoveredValue1).
    ^recoveredValue2
! !

"ASDGenUtil_base.ic method 0x2000044c; bytecode file offset 0xe650"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
showFileInLogFile
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) showFileInLogFile.
    ^self
! !

"ASDGenUtil_base.ic method 0x2000047c; bytecode file offset 0xe650"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
showDataFile
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) showDataFile.
    ^self
! !

"ASDGenUtil_base.ic method 0x2000049c; bytecode file offset 0xe650"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
showFileOutLogFile
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) showFileOutLogFile.
    ^self
! !

"ASDGenUtil_base.ic method 0x200004d0; bytecode file offset 0xe674"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
outputType
    | recoveredValue0 |
    recoveredValue0 := outputType.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x200004ec; bytecode file offset 0xe690"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
expander
    | recoveredValue0 |
    recoveredValue0 := expander.
    ^recoveredValue0
! !

"ASDGenUtil_base.ic method 0x200007a4; bytecode file offset 0xe978"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
fileInParametersForExp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fileInParametersForExp: (recoveredValue1).
    ^self
! !

"ASDGenUtil_base.ic method 0x200007b4; bytecode file offset 0xe978"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
fileOutAllParametersForExp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fileOutAllParametersForExp: (recoveredValue1).
    ^self
! !

"ASDGenUtil_base.ic method 0x200007d4; bytecode file offset 0xe978"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
fileOutSelectedParametersForExp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) fileOutSelectedParametersForExp: (recoveredValue1).
    ^self
! !

"ASDGenUtil_base.ic method 0x20000860; bytecode file offset 0xea34"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
fileOutWithoutReferencesForData: recoveredArg1 elements: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) fileOutWithoutReferencesForData: (recoveredValue1) elements: (recoveredValue2).
    ^self
! !

"ASDGenUtil_base.ic method 0x20000890; bytecode file offset 0xea34"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
fileOutWithReferencesForData: recoveredArg1 elements: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) fileOutWithReferencesForData: (recoveredValue1) elements: (recoveredValue2).
    ^self
! !

"ASDGenUtil_base.ic method 0x200008f0; bytecode file offset 0xea8c"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
outputType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outputType := recoveredValue0.
    ^self
! !

"ASDGenUtil_base.ic method 0x20000924; bytecode file offset 0xeac8"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
expander: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expander := recoveredValue0.
    ^self
! !

"ASDGenUtil_base.ic method 0x200018c8; bytecode file offset 0xfa8c"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
getOutputType
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getcwd.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := '\dataexchange.ini'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ASDDAMOSOptions.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDamosExtensionForOutput.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'sgm'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'PaCo'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'ConservationFile'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20001bec; bytecode file offset 0xfda4"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
init
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOutputType.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            outputType := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := outputType.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'PaCo'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := SGMsrdocDamosTransferManager.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOn: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            expander := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := SGDAMOSCFileInOutTB.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ASCETSD.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) createOn: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            expander := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDGenUtil_base.ic method 0x20001f88; bytecode file offset 0x10148"
!SGMsrdocDamosDynToolbox methodsFor: 'recovered'!
checkExtensionForOutputFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'data exchange'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'ExtensionForOutputFile'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEntry: (recoveredStack2) in: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := 'kon'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

