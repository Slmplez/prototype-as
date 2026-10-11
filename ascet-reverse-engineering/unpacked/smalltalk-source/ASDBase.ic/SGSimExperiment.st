"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000400; bytecode file offset 0x8ffcfc"
!SGSimExperiment methodsFor: 'recovered'!
checkBeforeImported
    ^self
! !

"ASDBase.ic method 0x20005cb8; bytecode file offset 0x902744"
!SGSimExperiment methodsFor: 'recovered'!
writeXML: recoveredArg1 dataGeneratorConstant: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20008e40; bytecode file offset 0x908be4"
!SGSimExperiment methodsFor: 'recovered'!
isDisallowOverwriteSet
    | recoveredValue0 |
    recoveredValue0 := (self) isDisallowOverwrite.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200099f8; bytecode file offset 0x908be4"
!SGSimExperiment methodsFor: 'recovered'!
label
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000af40; bytecode file offset 0x908be4"
!SGSimExperiment methodsFor: 'recovered'!
importLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000da2c; bytecode file offset 0x90a4b8"
!SGSimExperiment methodsFor: 'recovered'!
xmlCollectDependent: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20013bb4; bytecode file offset 0x912098"
!SGSimExperiment methodsFor: 'recovered'!
containerClass
    | recoveredValue0 |
    recoveredValue0 := SGExperimentEnvironmentContainer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a990; bytecode file offset 0x92209c"
!SGSimExperiment methodsFor: 'recovered'!
iconName
    ^'GeneralExperiment'
! !

"ASDBase.ic method 0x2001b3d4; bytecode file offset 0x92209c"
!SGSimExperiment methodsFor: 'recovered'!
exportTypeString
    ^'Simulation Environment'
! !

"ASDBase.ic method 0x200405dc; bytecode file offset 0x93d278"
!SGSimExperiment methodsFor: 'recovered'!
sgClass
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := sgClass.
    recoveredValue1 := (recoveredValue0) getObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ba4c; bytecode file offset 0x958548"
!SGSimExperiment methodsFor: 'recovered'!
exportItems
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20064c84; bytecode file offset 0x961970"
!SGSimExperiment methodsFor: 'recovered'!
modified
    | recoveredValue0 |
    recoveredValue0 := (self) dbObject.
    (recoveredValue0) setModify.
    ^self
! !

"ASDBase.ic method 0x200664dc; bytecode file offset 0x963428"
!SGSimExperiment methodsFor: 'recovered'!
sgClassKey
    | recoveredValue0 |
    recoveredValue0 := sgClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067574; bytecode file offset 0x9646f8"
!SGSimExperiment methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006827c; bytecode file offset 0x965b90"
!SGSimExperiment methodsFor: 'recovered'!
referenceLabel
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200689ac; bytecode file offset 0x965b90"
!SGSimExperiment methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200693f0; bytecode file offset 0x966bdc"
!SGSimExperiment methodsFor: 'recovered'!
comment
    | recoveredValue0 |
    recoveredValue0 := comment.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006af04; bytecode file offset 0x967a18"
!SGSimExperiment methodsFor: 'recovered'!
timeStamp
    | recoveredValue0 |
    recoveredValue0 := timeStamp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bd78; bytecode file offset 0x96873c"
!SGSimExperiment methodsFor: 'recovered'!
simMode
    | recoveredValue0 |
    recoveredValue0 := simMode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c5f4; bytecode file offset 0x9692b0"
!SGSimExperiment methodsFor: 'recovered'!
dataGeneratorConfig
    | recoveredValue0 |
    recoveredValue0 := dataGeneratorConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d088; bytecode file offset 0x969c04"
!SGSimExperiment methodsFor: 'recovered'!
eventGeneratorConfig
    | recoveredValue0 |
    recoveredValue0 := eventGeneratorConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d8dc; bytecode file offset 0x96a390"
!SGSimExperiment methodsFor: 'recovered'!
measureWindowsConfig
    | recoveredValue0 |
    recoveredValue0 := measureWindowsConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006df40; bytecode file offset 0x96a9dc"
!SGSimExperiment methodsFor: 'recovered'!
calibrationWindowsConfig
    | recoveredValue0 |
    recoveredValue0 := calibrationWindowsConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e614; bytecode file offset 0x96af48"
!SGSimExperiment methodsFor: 'recovered'!
dataloggerConfig
    | recoveredValue0 |
    recoveredValue0 := loggerConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ead8; bytecode file offset 0x96b41c"
!SGSimExperiment methodsFor: 'recovered'!
monitorBDEConfig
    | recoveredValue0 |
    recoveredValue0 := monitorBDEConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ed1c; bytecode file offset 0x96b8a0"
!SGSimExperiment methodsFor: 'recovered'!
simViewConfig
    | recoveredValue0 |
    recoveredValue0 := simViewConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f1e8; bytecode file offset 0x96bc1c"
!SGSimExperiment methodsFor: 'recovered'!
solverConfig
    | recoveredValue0 |
    recoveredValue0 := solverConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f6c8; bytecode file offset 0x96bf7c"
!SGSimExperiment methodsFor: 'recovered'!
nvramCockpitConfig
    | recoveredValue0 |
    recoveredValue0 := nvramCockpitConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f8a8; bytecode file offset 0x96c1f4"
!SGSimExperiment methodsFor: 'recovered'!
targetDebuggerConfig
    | recoveredValue0 |
    recoveredValue0 := targetDebuggerConfig.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075f44; bytecode file offset 0x9757c8"
!SGSimExperiment methodsFor: 'recovered'!
isDbObject
    ^true
! !

"ASDBase.ic method 0x20079cd4; bytecode file offset 0x97c330"
!SGSimExperiment methodsFor: 'recovered'!
isFolder
    ^false
! !

"ASDBase.ic method 0x2007a224; bytecode file offset 0x97c330"
!SGSimExperiment methodsFor: 'recovered'!
isValidObject
    ^false
! !

"ASDBase.ic method 0x2007ddf4; bytecode file offset 0x97c330"
!SGSimExperiment methodsFor: 'recovered'!
isDisallowOverwrite
    ^false
! !

"ASDBase.ic method 0x2007de7c; bytecode file offset 0x97c330"
!SGSimExperiment methodsFor: 'recovered'!
hasTextDocumentation
    ^false
! !

"ASDBase.ic method 0x2007dffc; bytecode file offset 0x97c330"
!SGSimExperiment methodsFor: 'recovered'!
isSGClass
    ^false
! !

"ASDBase.ic method 0x20081bac; bytecode file offset 0x97e554"
!SGSimExperiment methodsFor: 'recovered'!
sgClassIfUndefined: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := sgClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) getObjectIfUndefined: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20083d40; bytecode file offset 0x9807dc"
!SGSimExperiment methodsFor: 'recovered'!
getIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) iconName.
    recoveredValue2 := (recoveredValue0) returnIconWithName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20090370; bytecode file offset 0x98ccc4"
!SGSimExperiment methodsFor: 'recovered'!
defaultExportFilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) trimNonAlphaNumericalCharacters.
    recoveredValue2 := (recoveredValue1) , ('.exp').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091b1c; bytecode file offset 0x98e3f0"
!SGSimExperiment methodsFor: 'recovered'!
allDependentProxiesWithUnloaded: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue0) with: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bdb64; bytecode file offset 0x9bb178"
!SGSimExperiment methodsFor: 'recovered'!
xmlSgClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sgClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be9f8; bytecode file offset 0x9bc0b4"
!SGSimExperiment methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c07cc; bytecode file offset 0x9bd228"
!SGSimExperiment methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c12a8; bytecode file offset 0x9bdf14"
!SGSimExperiment methodsFor: 'recovered'!
comment: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    comment := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2074; bytecode file offset 0x9beac8"
!SGSimExperiment methodsFor: 'recovered'!
timeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    timeStamp := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2778; bytecode file offset 0x9bf474"
!SGSimExperiment methodsFor: 'recovered'!
simMode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simMode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3214; bytecode file offset 0x9bfde0"
!SGSimExperiment methodsFor: 'recovered'!
dataGeneratorConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dataGeneratorConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3b58; bytecode file offset 0x9c058c"
!SGSimExperiment methodsFor: 'recovered'!
eventGeneratorConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    eventGeneratorConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3ecc; bytecode file offset 0x9c0bf0"
!SGSimExperiment methodsFor: 'recovered'!
measureWindowsConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    measureWindowsConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4568; bytecode file offset 0x9c11bc"
!SGSimExperiment methodsFor: 'recovered'!
calibrationWindowsConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    calibrationWindowsConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4d84; bytecode file offset 0x9c16b0"
!SGSimExperiment methodsFor: 'recovered'!
dataloggerConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    loggerConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c51b8; bytecode file offset 0x9c1afc"
!SGSimExperiment methodsFor: 'recovered'!
monitorBDEConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    monitorBDEConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c52b8; bytecode file offset 0x9c1f64"
!SGSimExperiment methodsFor: 'recovered'!
simViewConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    simViewConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5964; bytecode file offset 0x9c22c8"
!SGSimExperiment methodsFor: 'recovered'!
solverConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    solverConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5ca0; bytecode file offset 0x9c25bc"
!SGSimExperiment methodsFor: 'recovered'!
nvramCockpitConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    nvramCockpitConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5e10; bytecode file offset 0x9c2804"
!SGSimExperiment methodsFor: 'recovered'!
targetDebuggerConfig: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    targetDebuggerConfig := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200eb9b8; bytecode file offset 0x9e8278"
!SGSimExperiment methodsFor: 'recovered'!
writeXML: recoveredArg1 dataGeneratorMatrix: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) at: (6).
    (recoveredValue0) attr: ('stimulus') string: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200fad10; bytecode file offset 0x9f75dc"
!SGSimExperiment methodsFor: 'recovered'!
getLibrary
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    ^nil
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) getLibrary.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201270dc; bytecode file offset 0xa2399c"
!SGSimExperiment methodsFor: 'recovered'!
xmlCollectReferences: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSignalItem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013737c; bytecode file offset 0xa33c40"
!SGSimExperiment methodsFor: 'recovered'!
referencedItemsForExport
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) getSignalItem.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20141480; bytecode file offset 0xa3ddcc"
!SGSimExperiment methodsFor: 'recovered'!
isRead
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) isRead.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x20147894; bytecode file offset 0xa44158"
!SGSimExperiment methodsFor: 'recovered'!
writeXML: recoveredArg1 dataGeneratorSingleShot: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) writeXML: (recoveredValue0) dataGeneratorSimple: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) at: (7).
    (recoveredValue2) attr: ('phase') double: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2015301c; bytecode file offset 0xa4f8d8"
!SGSimExperiment methodsFor: 'recovered'!
fixWrongSgClassFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) dbObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) sgClass: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017b8a0; bytecode file offset 0xa7815c"
!SGSimExperiment methodsFor: 'recovered'!
sgClassLabel
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) label.
    ^recoveredBlock4Value1
].
    recoveredValue1 := (self) sgClassIfUndefined: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := (recoveredValue2) label.
    ^recoveredValue3
! !

"ASDBase.ic method 0x201a632c; bytecode file offset 0xaa2bec"
!SGSimExperiment methodsFor: 'recovered'!
sgClass: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDbObject.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBReference.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            sgClass := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            sgClass := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201bf6dc; bytecode file offset 0xabbf98"
!SGSimExperiment methodsFor: 'recovered'!
changeOID: recoveredArg1 newOID: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201c8688; bytecode file offset 0xac4f58"
!SGSimExperiment methodsFor: 'recovered'!
checkIfToAddForSGClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kk'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_67862'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) simulationConfigKeys.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) sgClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) addSimulationConfig: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d9238; bytecode file offset 0xad5afc"
!SGSimExperiment methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := name.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredArg1.
    (recoveredValue3) nextPutAll: ('Date: ').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := timeStamp.
    recoveredValue6 := (recoveredValue5) printString.
    (recoveredValue4) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredArg1.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredArg1.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2024cc80; bytecode file offset 0xb49554"
!SGSimExperiment methodsFor: 'recovered'!
writeXML: recoveredArg1 dataGeneratorPeriodic: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) writeXML: (recoveredStack1) dataGeneratorSimple: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'frequency'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) double: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'phase'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 7.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := [
    #[0 0 0 0 0 0 0 0]
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) attr: (recoveredStack1) double: (recoveredStack2).
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

"ASDBase.ic method 0x20262ca0; bytecode file offset 0xb5f574"
!SGSimExperiment methodsFor: 'recovered'!
writeXML: recoveredArg1 dataGeneratorTable: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'Data'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'timeScale'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack4 := 5.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := (recoveredStack3) description.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) double: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 5.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) writeXMLDataGuts: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a4c34; bytecode file offset 0xba14fc"
!SGSimExperiment methodsFor: 'recovered'!
getSignalItem
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dataGeneratorConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := dataGeneratorConfig.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := dataGeneratorConfig.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'Signal'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := [:recoveredBlock34Arg1 | 
    ^nil
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202dabac; bytecode file offset 0xbd7478"
!SGSimExperiment methodsFor: 'recovered'!
changeEntry: recoveredArg1 newOID: recoveredArg2 aliasDict: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDataConfigName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := (recoveredStack2) tableName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) changeEntry: (recoveredStack2) newOID: (recoveredStack3) aliasDict: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) uint16At: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 257.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeOIDEntry: (recoveredStack2) newOID: (recoveredStack3) aliasDict: (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 49.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) changeLabelEntry: (recoveredStack2) newOID: (recoveredStack3) aliasDict: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2035b4e0; bytecode file offset 0xc57dcc"
!SGSimExperiment methodsFor: 'recovered'!
writeXML: recoveredArg1 dataGeneratorGaussian: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'mean'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) double: (recoveredStack3).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'Call_2011400089'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Enumeration value for data generator found'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'V6.1.1'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := (recoveredStack4) currentItem.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) detectedIncompatibility: (recoveredStack2) for: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'variance'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := 'variance'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) double: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2038279c; bytecode file offset 0xc7f084"
!SGSimExperiment methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    super initialize.
    recoveredValue0 := SGTimeStamp.
    recoveredValue1 := (recoveredValue0) now.
    timeStamp := recoveredValue1.
    (self) initializeRBDBObject.
    recoveredValue2 := (self) dbObject.
    (recoveredValue2) name: ('ExperimentEnvironment').
    comment := ''.
    recoveredValue3 := SGReservedNames.
    recoveredValue4 := (recoveredValue3) defaultExperimentName.
    name := recoveredValue4.
    recoveredValue5 := Dictionary.
    recoveredValue6 := (recoveredValue5) new.
    dataGeneratorConfig := recoveredValue6.
    recoveredValue7 := Dictionary.
    recoveredValue8 := (recoveredValue7) new.
    eventGeneratorConfig := recoveredValue8.
    recoveredValue9 := Dictionary.
    recoveredValue10 := (recoveredValue9) new.
    measureWindowsConfig := recoveredValue10.
    recoveredValue11 := Dictionary.
    recoveredValue12 := (recoveredValue11) new.
    calibrationWindowsConfig := recoveredValue12.
    loggerConfig := nil.
    recoveredValue13 := Dictionary.
    recoveredValue14 := (recoveredValue13) new.
    monitorBDEConfig := recoveredValue14.
    simMode := ''.
    ^self
! !

"ASDBase.ic method 0x2038e550; bytecode file offset 0xc8ae18"
!SGSimExperiment methodsFor: 'recovered'!
changeOIDEntry: recoveredArg1 newOID: recoveredArg2 aliasDict: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 21.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 40.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesKey: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203b93f4; bytecode file offset 0xcb5cbc"
!SGSimExperiment methodsFor: 'recovered'!
changeInstVarAlias: recoveredArg1 dic: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 21.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 40.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) >= (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 recoveredBlock46Value4 recoveredBlock46Value5 recoveredBlock46Value6 |
    recoveredBlock46Value0 := recoveredArg1.
    recoveredBlock46Value1 := recoveredLocal3.
    recoveredBlock46Value2 := recoveredLocal2.
    recoveredBlock46Value3 := recoveredArg2.
    recoveredBlock46Value4 := recoveredLocal1.
    recoveredBlock46Value5 := (recoveredBlock46Value3) at: (recoveredBlock46Value4).
    recoveredBlock46Value6 := (recoveredBlock46Value0) replaceFrom: (recoveredBlock46Value1) to: (recoveredBlock46Value2) with: (recoveredBlock46Value5) startingAt: (1).
    recoveredBlock46Value6
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2045a574; bytecode file offset 0xd56e80"
!SGSimExperiment methodsFor: 'recovered'!
minToolVersion: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) destVersion.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super minToolVersion: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGeneratorConfig.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGeneratorConfig.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'DataGenChannels'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) values.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := [:recoveredBlock47Arg1 | 
    | recoveredBlock47Stack0 recoveredBlock47Stack1 recoveredBlock47Stack2 recoveredBlock47Stack3 recoveredBlock47Stack4 recoveredBlock47Stack5 recoveredBlock47PC recoveredBlock47Step recoveredBlock47Done recoveredBlock47Result |
    recoveredBlock47Stack0 := self.
    recoveredBlock47PC := 54.
    recoveredBlock47Done := false.
    [recoveredBlock47Done not] whileTrue: [
        recoveredBlock47Step := recoveredBlock47PC.
        recoveredBlock47Step = 54 ifTrue: [
            recoveredBlock47Stack1 := 'Kli'.
            recoveredBlock47PC := 56.
        ].
        recoveredBlock47Step = 56 ifTrue: [
            recoveredBlock47Stack2 := 'Call_2011400089'.
            recoveredBlock47PC := 58.
        ].
        recoveredBlock47Step = 58 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) == (recoveredBlock47Stack2).
            recoveredBlock47PC := 59.
        ].
        recoveredBlock47Step = 59 ifTrue: [
            recoveredBlock47PC := 60.
        ].
        recoveredBlock47Step = 60 ifTrue: [
            recoveredBlock47Stack1 := nil.
            recoveredBlock47PC := 61.
        ].
        recoveredBlock47Step = 61 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Arg1.
            recoveredBlock47PC := 62.
        ].
        recoveredBlock47Step = 62 ifTrue: [
            recoveredBlock47Stack3 := 4.
            recoveredBlock47PC := 64.
        ].
        recoveredBlock47Step = 64 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) at: (recoveredBlock47Stack3).
            recoveredBlock47PC := 66.
        ].
        recoveredBlock47Step = 66 ifTrue: [
            recoveredBlock47Stack3 := String.
            recoveredBlock47PC := 68.
        ].
        recoveredBlock47Step = 68 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) isKindOf: (recoveredBlock47Stack3).
            recoveredBlock47PC := 70.
        ].
        recoveredBlock47Step = 70 ifTrue: [
            (recoveredBlock47Stack2) ifTrue: [recoveredBlock47PC := 74] ifFalse: [recoveredBlock47PC := 109].
        ].
        recoveredBlock47Step = 74 ifTrue: [
            recoveredBlock47PC := 75.
        ].
        recoveredBlock47Step = 75 ifTrue: [
            recoveredBlock47Stack1 := 'V6.1.2'.
            recoveredBlock47PC := 77.
        ].
        recoveredBlock47Step = 77 ifTrue: [
            recoveredBlock47Stack2 := recoveredLocal2.
            recoveredBlock47PC := 80.
        ].
        recoveredBlock47Step = 80 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) > (recoveredBlock47Stack2).
            recoveredBlock47PC := 81.
        ].
        recoveredBlock47Step = 81 ifTrue: [
            (recoveredBlock47Stack1) ifTrue: [recoveredBlock47PC := 84] ifFalse: [recoveredBlock47PC := 98].
        ].
        recoveredBlock47Step = 84 ifTrue: [
            recoveredBlock47Stack1 := SGMonitorStreamDummy.
            recoveredBlock47PC := 86.
        ].
        recoveredBlock47Step = 86 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) create.
            recoveredBlock47PC := 88.
        ].
        recoveredBlock47Step = 88 ifTrue: [
            recoveredBlock47Stack2 := 'Enumerations in Data Generator only supported with ASCET V6.1.2 or higher. (%1)'.
            recoveredBlock47PC := 90.
        ].
        recoveredBlock47Step = 90 ifTrue: [
            recoveredBlock47Stack3 := self.
            recoveredBlock47PC := 91.
        ].
        recoveredBlock47Step = 91 ifTrue: [
            recoveredBlock47Stack4 := nil.
            recoveredBlock47PC := 92.
        ].
        recoveredBlock47Step = 92 ifTrue: [
            recoveredBlock47Stack3 := (recoveredBlock47Stack3) ascetLink: (recoveredBlock47Stack4).
            recoveredBlock47PC := 94.
        ].
        recoveredBlock47Step = 94 ifTrue: [
            recoveredBlock47Stack2 := (recoveredBlock47Stack2) bindWith: (recoveredBlock47Stack3).
            recoveredBlock47PC := 96.
        ].
        recoveredBlock47Step = 96 ifTrue: [
            (recoveredBlock47Stack1) addImportantInfoText: (recoveredBlock47Stack2).
            recoveredBlock47PC := 98.
        ].
        recoveredBlock47Step = 98 ifTrue: [
            recoveredBlock47Stack1 := recoveredLocal3.
            recoveredBlock47PC := 101.
        ].
        recoveredBlock47Step = 101 ifTrue: [
            recoveredBlock47Stack2 := 'V6.1.2'.
            recoveredBlock47PC := 103.
        ].
        recoveredBlock47Step = 103 ifTrue: [
            recoveredBlock47Stack1 := (recoveredBlock47Stack1) max: (recoveredBlock47Stack2).
            recoveredBlock47PC := 105.
        ].
        recoveredBlock47Step = 105 ifTrue: [
            recoveredBlock47Stack2 := recoveredBlock47Stack1.
            recoveredBlock47PC := 106.
        ].
        recoveredBlock47Step = 106 ifTrue: [
            recoveredLocal3 := recoveredBlock47Stack2.
            recoveredBlock47PC := 109.
        ].
        recoveredBlock47Step = 109 ifTrue: [
            recoveredBlock47Result := recoveredBlock47Stack1.
            recoveredBlock47Done := true.
        ].
    ].
    recoveredBlock47Result
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204a6fe8; bytecode file offset 0xda3904"
!SGSimExperiment methodsFor: 'recovered'!
writeXML: recoveredArg1 dataGeneratorSimple: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := Boolean.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'Boolean'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'value'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'Call_2011400089'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) isKindOf: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 103].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) controller.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 'Enumeration value for data generator found'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'V6.1.1'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := (recoveredStack4) controller.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack4 := (recoveredStack4) currentItem.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) detectedIncompatibility: (recoveredStack2) for: (recoveredStack3) in: (recoveredStack4).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := 'Enumeration'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'amplitude'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := [
    #[0 0 0 0 0 0 240 63]
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) ifNil: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nzqr: (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := 'offset'.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := 'Numeric'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := 'amplitude'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack4 := [
    #[0 0 0 0 0 0 240 63]
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) ifNil: (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nzqr: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := 'offset'.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := 4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) nzqr: (recoveredStack3).
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204b1ca4; bytecode file offset 0xdae578"
!SGSimExperiment methodsFor: 'recovered'!
changeLabelEntry: recoveredArg1 newOID: recoveredArg2 aliasDict: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg3.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7Stack5 recoveredBlock7Stack6 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            recoveredBlock7Stack3 := 2.
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) indexOfSubCollection: (recoveredBlock7Stack2) startingAt: (recoveredBlock7Stack3).
            recoveredBlock7PC := 22.
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredLocal4 := recoveredBlock7Stack1.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal4.
            recoveredBlock7PC := 29.
        ].
        recoveredBlock7Step = 29 ifTrue: [
            recoveredBlock7Stack3 := 0.
            recoveredBlock7PC := 31.
        ].
        recoveredBlock7Step = 31 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) ~= (recoveredBlock7Stack3).
            recoveredBlock7PC := 32.
        ].
        recoveredBlock7Step = 32 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 36] ifFalse: [recoveredBlock7PC := 136].
        ].
        recoveredBlock7Step = 36 ifTrue: [
            recoveredBlock7PC := 37.
        ].
        recoveredBlock7Step = 37 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal4.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 42.
        ].
        recoveredBlock7Step = 42 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) + (recoveredBlock7Stack2).
            recoveredBlock7PC := 43.
        ].
        recoveredBlock7Step = 43 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) + (-1).
            recoveredBlock7PC := 44.
        ].
        recoveredBlock7Step = 44 ifTrue: [
            recoveredLocal3 := recoveredBlock7Stack1.
            recoveredBlock7PC := 47.
        ].
        recoveredBlock7Step = 47 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 48.
        ].
        recoveredBlock7Step = 48 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 51.
        ].
        recoveredBlock7Step = 51 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 52.
        ].
        recoveredBlock7Step = 52 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal3.
            recoveredBlock7PC := 55.
        ].
        recoveredBlock7Step = 55 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) >= (recoveredBlock7Stack3).
            recoveredBlock7PC := 56.
        ].
        recoveredBlock7Step = 56 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 60] ifFalse: [recoveredBlock7PC := 136].
        ].
        recoveredBlock7Step = 60 ifTrue: [
            recoveredBlock7PC := 61.
        ].
        recoveredBlock7Step = 61 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 64.
        ].
        recoveredBlock7Step = 64 ifTrue: [
            recoveredBlock7Stack2 := recoveredLocal4.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal3.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) copyFrom: (recoveredBlock7Stack2) to: (recoveredBlock7Stack3).
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredLocal2 := recoveredBlock7Stack1.
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 76.
        ].
        recoveredBlock7Step = 76 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg3.
            recoveredBlock7PC := 79.
        ].
        recoveredBlock7Step = 79 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal2.
            recoveredBlock7PC := 82.
        ].
        recoveredBlock7Step = 82 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includesKey: (recoveredBlock7Stack3).
            recoveredBlock7PC := 83.
        ].
        recoveredBlock7Step = 83 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 86] ifFalse: [recoveredBlock7PC := 136].
        ].
        recoveredBlock7Step = 86 ifTrue: [
            recoveredBlock7PC := 87.
        ].
        recoveredBlock7Step = 87 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 90.
        ].
        recoveredBlock7Step = 90 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 93.
        ].
        recoveredBlock7Step = 93 ifTrue: [
            recoveredBlock7Stack3 := recoveredLocal4.
            recoveredBlock7PC := 96.
        ].
        recoveredBlock7Step = 96 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg1.
            recoveredBlock7PC := 99.
        ].
        recoveredBlock7Step = 99 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) size.
            recoveredBlock7PC := 100.
        ].
        recoveredBlock7Step = 100 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) copyFrom: (recoveredBlock7Stack3) to: (recoveredBlock7Stack4).
            recoveredBlock7PC := 102.
        ].
        recoveredBlock7Step = 102 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) , (recoveredBlock7Stack2).
            recoveredBlock7PC := 104.
        ].
        recoveredBlock7Step = 104 ifTrue: [
            recoveredLocal1 := recoveredBlock7Stack1.
            recoveredBlock7PC := 107.
        ].
        recoveredBlock7Step = 107 ifTrue: [
            recoveredBlock7Stack1 := recoveredLocal1.
            recoveredBlock7PC := 110.
        ].
        recoveredBlock7Step = 110 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg2.
            recoveredBlock7PC := 113.
        ].
        recoveredBlock7Step = 113 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) size.
            recoveredBlock7PC := 114.
        ].
        recoveredBlock7Step = 114 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) + (1).
            recoveredBlock7PC := 115.
        ].
        recoveredBlock7Step = 115 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg2.
            recoveredBlock7PC := 118.
        ].
        recoveredBlock7Step = 118 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) size.
            recoveredBlock7PC := 119.
        ].
        recoveredBlock7Step = 119 ifTrue: [
            recoveredBlock7Stack4 := recoveredLocal2.
            recoveredBlock7PC := 122.
        ].
        recoveredBlock7Step = 122 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) size.
            recoveredBlock7PC := 123.
        ].
        recoveredBlock7Step = 123 ifTrue: [
            recoveredBlock7Stack3 := (recoveredBlock7Stack3) + (recoveredBlock7Stack4).
            recoveredBlock7PC := 124.
        ].
        recoveredBlock7Step = 124 ifTrue: [
            recoveredBlock7Stack4 := recoveredArg3.
            recoveredBlock7PC := 127.
        ].
        recoveredBlock7Step = 127 ifTrue: [
            recoveredBlock7Stack5 := recoveredLocal2.
            recoveredBlock7PC := 130.
        ].
        recoveredBlock7Step = 130 ifTrue: [
            recoveredBlock7Stack4 := (recoveredBlock7Stack4) at: (recoveredBlock7Stack5).
            recoveredBlock7PC := 132.
        ].
        recoveredBlock7Step = 132 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) replaceFrom: (recoveredBlock7Stack2) to: (recoveredBlock7Stack3) with: (recoveredBlock7Stack4).
            recoveredBlock7PC := 135.
        ].
        recoveredBlock7Step = 135 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 136 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) keysDo: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x204c3a1c; bytecode file offset 0xdc031c"
!SGSimExperiment methodsFor: 'recovered'!
writeXMLMonitorConfig: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := monitorBDEConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'MonitoredDiagramElements'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := monitorBDEConfig.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := [:recoveredBlock25Arg1 :recoveredBlock25Arg2 | 
    | recoveredBlock25Local1 recoveredBlock25Stack0 recoveredBlock25Stack1 recoveredBlock25Stack2 recoveredBlock25Stack3 recoveredBlock25Stack4 recoveredBlock25PC recoveredBlock25Step recoveredBlock25Done recoveredBlock25Result |
    recoveredBlock25Stack0 := self.
    recoveredBlock25PC := 32.
    recoveredBlock25Done := false.
    [recoveredBlock25Done not] whileTrue: [
        recoveredBlock25Step := recoveredBlock25PC.
        recoveredBlock25Step = 32 ifTrue: [
            recoveredBlock25Stack1 := ''.
            recoveredBlock25PC := 34.
        ].
        recoveredBlock25Step = 34 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 37.
        ].
        recoveredBlock25Step = 37 ifTrue: [
            recoveredBlock25Stack1 := 'Kli'.
            recoveredBlock25PC := 39.
        ].
        recoveredBlock25Step = 39 ifTrue: [
            recoveredBlock25Stack2 := 'Call_93353'.
            recoveredBlock25PC := 41.
        ].
        recoveredBlock25Step = 41 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) == (recoveredBlock25Stack2).
            recoveredBlock25PC := 42.
        ].
        recoveredBlock25Step = 42 ifTrue: [
            recoveredBlock25PC := 43.
        ].
        recoveredBlock25Step = 43 ifTrue: [
            recoveredBlock25Stack1 := nil.
            recoveredBlock25PC := 44.
        ].
        recoveredBlock25Step = 44 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg2.
            recoveredBlock25PC := 47.
        ].
        recoveredBlock25Step = 47 ifTrue: [
            (recoveredBlock25Stack2 == nil) ifTrue: [recoveredBlock25PC := 142] ifFalse: [recoveredBlock25PC := 50].
        ].
        recoveredBlock25Step = 50 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Arg2.
            recoveredBlock25PC := 53.
        ].
        recoveredBlock25Step = 53 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) isCollection.
            recoveredBlock25PC := 55.
        ].
        recoveredBlock25Step = 55 ifTrue: [
            (recoveredBlock25Stack2) ifTrue: [recoveredBlock25PC := 58] ifFalse: [recoveredBlock25PC := 142].
        ].
        recoveredBlock25Step = 58 ifTrue: [
            recoveredBlock25PC := 59.
        ].
        recoveredBlock25Step = 59 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg2.
            recoveredBlock25PC := 62.
        ].
        recoveredBlock25Step = 62 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) notEmpty.
            recoveredBlock25PC := 64.
        ].
        recoveredBlock25Step = 64 ifTrue: [
            (recoveredBlock25Stack1) ifTrue: [recoveredBlock25PC := 68] ifFalse: [recoveredBlock25PC := 110].
        ].
        recoveredBlock25Step = 68 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Arg2.
            recoveredBlock25PC := 71.
        ].
        recoveredBlock25Step = 71 ifTrue: [
            recoveredBlock25Stack2 := [:recoveredBlock25Block71Arg1 | 
    | recoveredBlock25Block71Value0 recoveredBlock25Block71Value1 recoveredBlock25Block71Value2 recoveredBlock25Block71Value3 recoveredBlock25Block71Value4 recoveredBlock25Block71Value5 |
    recoveredBlock25Block71Value0 := recoveredBlock25Local1.
    recoveredBlock25Block71Value1 := recoveredBlock25Block71Arg1.
    recoveredBlock25Block71Value2 := (recoveredBlock25Block71Value1) asString.
    recoveredBlock25Block71Value3 := (recoveredBlock25Block71Value0) , (recoveredBlock25Block71Value2).
    recoveredBlock25Block71Value4 := (recoveredBlock25Block71Value3) , (',').
    recoveredBlock25Block71Value5 := recoveredBlock25Block71Value4.
    recoveredBlock25Local1 := recoveredBlock25Block71Value5.
    recoveredBlock25Block71Value4
].
            recoveredBlock25PC := 95.
        ].
        recoveredBlock25Step = 95 ifTrue: [
            (recoveredBlock25Stack1) do: (recoveredBlock25Stack2).
            recoveredBlock25PC := 97.
        ].
        recoveredBlock25Step = 97 ifTrue: [
            recoveredBlock25Stack1 := recoveredBlock25Local1.
            recoveredBlock25PC := 100.
        ].
        recoveredBlock25Step = 100 ifTrue: [
            recoveredBlock25Stack2 := recoveredBlock25Local1.
            recoveredBlock25PC := 103.
        ].
        recoveredBlock25Step = 103 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) size.
            recoveredBlock25PC := 104.
        ].
        recoveredBlock25Step = 104 ifTrue: [
            recoveredBlock25Stack2 := (recoveredBlock25Stack2) + (-1).
            recoveredBlock25PC := 105.
        ].
        recoveredBlock25Step = 105 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) truncateTo: (recoveredBlock25Stack2).
            recoveredBlock25PC := 107.
        ].
        recoveredBlock25Step = 107 ifTrue: [
            recoveredBlock25Local1 := recoveredBlock25Stack1.
            recoveredBlock25PC := 110.
        ].
        recoveredBlock25Step = 110 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 113.
        ].
        recoveredBlock25Step = 113 ifTrue: [
            recoveredBlock25Stack2 := 'BlockDiagram'.
            recoveredBlock25PC := 115.
        ].
        recoveredBlock25Step = 115 ifTrue: [
            (recoveredBlock25Stack1) openComplex: (recoveredBlock25Stack2).
            recoveredBlock25PC := 117.
        ].
        recoveredBlock25Step = 117 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 120.
        ].
        recoveredBlock25Step = 120 ifTrue: [
            recoveredBlock25Stack2 := 'name'.
            recoveredBlock25PC := 122.
        ].
        recoveredBlock25Step = 122 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Arg1.
            recoveredBlock25PC := 125.
        ].
        recoveredBlock25Step = 125 ifTrue: [
            (recoveredBlock25Stack1) attr: (recoveredBlock25Stack2) string: (recoveredBlock25Stack3).
            recoveredBlock25PC := 127.
        ].
        recoveredBlock25Step = 127 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 130.
        ].
        recoveredBlock25Step = 130 ifTrue: [
            recoveredBlock25Stack2 := 'graphicOIDs'.
            recoveredBlock25PC := 132.
        ].
        recoveredBlock25Step = 132 ifTrue: [
            recoveredBlock25Stack3 := recoveredBlock25Local1.
            recoveredBlock25PC := 135.
        ].
        recoveredBlock25Step = 135 ifTrue: [
            (recoveredBlock25Stack1) attr: (recoveredBlock25Stack2) string: (recoveredBlock25Stack3).
            recoveredBlock25PC := 137.
        ].
        recoveredBlock25Step = 137 ifTrue: [
            recoveredBlock25Stack1 := recoveredArg1.
            recoveredBlock25PC := 140.
        ].
        recoveredBlock25Step = 140 ifTrue: [
            recoveredBlock25Stack1 := (recoveredBlock25Stack1) closeComplex.
            recoveredBlock25PC := 142.
        ].
        recoveredBlock25Step = 142 ifTrue: [
            recoveredBlock25Result := recoveredBlock25Stack1.
            recoveredBlock25Done := true.
        ].
    ].
    recoveredBlock25Result
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e7b84; bytecode file offset 0xde4470"
!SGSimExperiment methodsFor: 'recovered'!
hasReferencesToTaskNamed: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) simViewConfig.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := [:recoveredBlock5Block15Arg1 | 
    | recoveredBlock5Block15Stack0 recoveredBlock5Block15Stack1 recoveredBlock5Block15Stack2 recoveredBlock5Block15Stack3 recoveredBlock5Block15Stack4 recoveredBlock5Block15PC recoveredBlock5Block15Step recoveredBlock5Block15Done recoveredBlock5Block15Result |
    recoveredBlock5Block15Stack0 := self.
    recoveredBlock5Block15PC := 22.
    recoveredBlock5Block15Done := false.
    [recoveredBlock5Block15Done not] whileTrue: [
        recoveredBlock5Block15Step := recoveredBlock5Block15PC.
        recoveredBlock5Block15Step = 22 ifTrue: [
            recoveredBlock5Block15Stack1 := nil.
            recoveredBlock5Block15PC := 23.
        ].
        recoveredBlock5Block15Step = 23 ifTrue: [
            recoveredBlock5Block15Stack2 := recoveredBlock5Block15Arg1.
            recoveredBlock5Block15PC := 24.
        ].
        recoveredBlock5Block15Step = 24 ifTrue: [
            recoveredBlock5Block15Stack3 := recoveredArg1.
            recoveredBlock5Block15PC := 27.
        ].
        recoveredBlock5Block15Step = 27 ifTrue: [
            recoveredBlock5Block15Stack2 := (recoveredBlock5Block15Stack2) equals: (recoveredBlock5Block15Stack3).
            recoveredBlock5Block15PC := 28.
        ].
        recoveredBlock5Block15Step = 28 ifTrue: [
            (recoveredBlock5Block15Stack2) ifTrue: [recoveredBlock5Block15PC := 32] ifFalse: [recoveredBlock5Block15PC := 35].
        ].
        recoveredBlock5Block15Step = 32 ifTrue: [
            recoveredBlock5Block15PC := 33.
        ].
        recoveredBlock5Block15Step = 33 ifTrue: [
            recoveredBlock5Block15Stack1 := true.
            recoveredBlock5Block15PC := 34.
        ].
        recoveredBlock5Block15Step = 34 ifTrue: [
            ^recoveredBlock5Block15Stack1
        ].
        recoveredBlock5Block15Step = 35 ifTrue: [
            recoveredBlock5Block15Result := recoveredBlock5Block15Stack1.
            recoveredBlock5Block15Done := true.
        ].
    ].
    recoveredBlock5Block15Result
].
    recoveredBlock5Value2 := (recoveredBlock5Value0) at: ('measureTask') ifPresent: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    recoveredValue2 := (self) dataloggerConfig.
    recoveredValue3 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := (recoveredBlock44Value0) contentsConfiguration.
    recoveredBlock44Value2 := [:recoveredBlock44Block55Arg1 | 
    | recoveredBlock44Block55Value0 recoveredBlock44Block55Value1 recoveredBlock44Block55Value2 recoveredBlock44Block55Value3 |
    recoveredBlock44Block55Value0 := recoveredBlock44Block55Arg1.
    recoveredBlock44Block55Value1 := (recoveredBlock44Block55Value0) selectedTask.
    recoveredBlock44Block55Value2 := [:recoveredBlock44Block55Block65Arg1 | 
    | recoveredBlock44Block55Block65Stack0 recoveredBlock44Block55Block65Stack1 recoveredBlock44Block55Block65Stack2 recoveredBlock44Block55Block65Stack3 recoveredBlock44Block55Block65Stack4 recoveredBlock44Block55Block65PC recoveredBlock44Block55Block65Step recoveredBlock44Block55Block65Done recoveredBlock44Block55Block65Result |
    recoveredBlock44Block55Block65Stack0 := self.
    recoveredBlock44Block55Block65PC := 72.
    recoveredBlock44Block55Block65Done := false.
    [recoveredBlock44Block55Block65Done not] whileTrue: [
        recoveredBlock44Block55Block65Step := recoveredBlock44Block55Block65PC.
        recoveredBlock44Block55Block65Step = 72 ifTrue: [
            recoveredBlock44Block55Block65Stack1 := nil.
            recoveredBlock44Block55Block65PC := 73.
        ].
        recoveredBlock44Block55Block65Step = 73 ifTrue: [
            recoveredBlock44Block55Block65Stack2 := recoveredBlock44Block55Block65Arg1.
            recoveredBlock44Block55Block65PC := 74.
        ].
        recoveredBlock44Block55Block65Step = 74 ifTrue: [
            recoveredBlock44Block55Block65Stack3 := recoveredArg1.
            recoveredBlock44Block55Block65PC := 77.
        ].
        recoveredBlock44Block55Block65Step = 77 ifTrue: [
            recoveredBlock44Block55Block65Stack2 := (recoveredBlock44Block55Block65Stack2) equals: (recoveredBlock44Block55Block65Stack3).
            recoveredBlock44Block55Block65PC := 78.
        ].
        recoveredBlock44Block55Block65Step = 78 ifTrue: [
            (recoveredBlock44Block55Block65Stack2) ifTrue: [recoveredBlock44Block55Block65PC := 82] ifFalse: [recoveredBlock44Block55Block65PC := 85].
        ].
        recoveredBlock44Block55Block65Step = 82 ifTrue: [
            recoveredBlock44Block55Block65PC := 83.
        ].
        recoveredBlock44Block55Block65Step = 83 ifTrue: [
            recoveredBlock44Block55Block65Stack1 := true.
            recoveredBlock44Block55Block65PC := 84.
        ].
        recoveredBlock44Block55Block65Step = 84 ifTrue: [
            ^recoveredBlock44Block55Block65Stack1
        ].
        recoveredBlock44Block55Block65Step = 85 ifTrue: [
            recoveredBlock44Block55Block65Result := recoveredBlock44Block55Block65Stack1.
            recoveredBlock44Block55Block65Done := true.
        ].
    ].
    recoveredBlock44Block55Block65Result
].
    recoveredBlock44Block55Value3 := (recoveredBlock44Block55Value1) ifNotNil: (recoveredBlock44Block55Value2).
    recoveredBlock44Block55Value3
].
    recoveredBlock44Value3 := (recoveredBlock44Value1) at: ('options') ifPresent: (recoveredBlock44Value2).
    recoveredBlock44Value3
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) measureWindowsConfig.
    recoveredValue5 := [:recoveredBlock97Arg1 | 
    | recoveredBlock97Value0 recoveredBlock97Value1 recoveredBlock97Value2 |
    recoveredBlock97Value0 := recoveredBlock97Arg1.
    recoveredBlock97Value1 := [:recoveredBlock97Block105Arg1 | 
    | recoveredBlock97Block105Local1 recoveredBlock97Block105Value0 recoveredBlock97Block105Value1 recoveredBlock97Block105Value2 recoveredBlock97Block105Value3 recoveredBlock97Block105Value4 recoveredBlock97Block105Value5 |
    recoveredBlock97Block105Value0 := recoveredBlock97Block105Arg1.
    recoveredBlock97Block105Value1 := (recoveredBlock97Block105Value0) contentsConfiguration.
    recoveredBlock97Block105Value2 := (recoveredBlock97Block105Value1) at: ('dataConfigs').
    recoveredBlock97Block105Local1 := recoveredBlock97Block105Value2.
    recoveredBlock97Block105Value3 := recoveredBlock97Block105Local1.
    recoveredBlock97Block105Value4 := [:recoveredBlock97Block105Block121Arg1 | 
    | recoveredBlock97Block105Block121Value0 recoveredBlock97Block105Block121Value1 recoveredBlock97Block105Block121Value2 |
    recoveredBlock97Block105Block121Value0 := recoveredBlock97Block105Block121Arg1.
    recoveredBlock97Block105Block121Value1 := [:recoveredBlock97Block105Block121Block131Arg1 | 
    | recoveredBlock97Block105Block121Block131Stack0 recoveredBlock97Block105Block121Block131Stack1 recoveredBlock97Block105Block121Block131Stack2 recoveredBlock97Block105Block121Block131Stack3 recoveredBlock97Block105Block121Block131Stack4 recoveredBlock97Block105Block121Block131PC recoveredBlock97Block105Block121Block131Step recoveredBlock97Block105Block121Block131Done recoveredBlock97Block105Block121Block131Result |
    recoveredBlock97Block105Block121Block131Stack0 := self.
    recoveredBlock97Block105Block121Block131PC := 138.
    recoveredBlock97Block105Block121Block131Done := false.
    [recoveredBlock97Block105Block121Block131Done not] whileTrue: [
        recoveredBlock97Block105Block121Block131Step := recoveredBlock97Block105Block121Block131PC.
        recoveredBlock97Block105Block121Block131Step = 138 ifTrue: [
            recoveredBlock97Block105Block121Block131Stack1 := nil.
            recoveredBlock97Block105Block121Block131PC := 139.
        ].
        recoveredBlock97Block105Block121Block131Step = 139 ifTrue: [
            recoveredBlock97Block105Block121Block131Stack2 := recoveredBlock97Block105Block121Block131Arg1.
            recoveredBlock97Block105Block121Block131PC := 140.
        ].
        recoveredBlock97Block105Block121Block131Step = 140 ifTrue: [
            recoveredBlock97Block105Block121Block131Stack3 := recoveredArg1.
            recoveredBlock97Block105Block121Block131PC := 143.
        ].
        recoveredBlock97Block105Block121Block131Step = 143 ifTrue: [
            recoveredBlock97Block105Block121Block131Stack2 := (recoveredBlock97Block105Block121Block131Stack2) equals: (recoveredBlock97Block105Block121Block131Stack3).
            recoveredBlock97Block105Block121Block131PC := 144.
        ].
        recoveredBlock97Block105Block121Block131Step = 144 ifTrue: [
            (recoveredBlock97Block105Block121Block131Stack2) ifTrue: [recoveredBlock97Block105Block121Block131PC := 148] ifFalse: [recoveredBlock97Block105Block121Block131PC := 151].
        ].
        recoveredBlock97Block105Block121Block131Step = 148 ifTrue: [
            recoveredBlock97Block105Block121Block131PC := 149.
        ].
        recoveredBlock97Block105Block121Block131Step = 149 ifTrue: [
            recoveredBlock97Block105Block121Block131Stack1 := true.
            recoveredBlock97Block105Block121Block131PC := 150.
        ].
        recoveredBlock97Block105Block121Block131Step = 150 ifTrue: [
            ^recoveredBlock97Block105Block121Block131Stack1
        ].
        recoveredBlock97Block105Block121Block131Step = 151 ifTrue: [
            recoveredBlock97Block105Block121Block131Result := recoveredBlock97Block105Block121Block131Stack1.
            recoveredBlock97Block105Block121Block131Done := true.
        ].
    ].
    recoveredBlock97Block105Block121Block131Result
].
    recoveredBlock97Block105Block121Value2 := (recoveredBlock97Block105Block121Value0) at: ('acquiConfig') ifPresent: (recoveredBlock97Block105Block121Value1).
    recoveredBlock97Block105Block121Value2
].
    recoveredBlock97Block105Value5 := (recoveredBlock97Block105Value3) do: (recoveredBlock97Block105Value4).
    recoveredBlock97Block105Value5
].
    recoveredBlock97Value2 := (recoveredBlock97Value0) do: (recoveredBlock97Value1).
    recoveredBlock97Value2
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    ^false
! !

"ASDBase.ic method 0x2054ce30; bytecode file offset 0xe49724"
!SGSimExperiment methodsFor: 'recovered'!
replaceAcquisitionTaskSetting: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) simViewConfig.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := [:recoveredBlock9Block21Arg1 | 
    | recoveredBlock9Block21Value0 recoveredBlock9Block21Value1 recoveredBlock9Block21Value2 recoveredBlock9Block21Value3 |
    recoveredBlock9Block21Value0 := recoveredArg1.
    recoveredBlock9Block21Value1 := recoveredBlock9Block21Arg1.
    recoveredBlock9Block21Value2 := [:recoveredBlock9Block21Block32Arg1 | 
    | recoveredBlock9Block21Block32Value0 recoveredBlock9Block21Block32Value1 |
    recoveredBlock9Block21Block32Value0 := recoveredBlock9Arg1.
    recoveredBlock9Block21Block32Value1 := recoveredBlock9Block21Block32Arg1.
    (recoveredBlock9Block21Block32Value0) at: ('measureTask') put: (recoveredBlock9Block21Block32Value1).
    recoveredLocal1 := true.
    true
].
    recoveredBlock9Block21Value3 := (recoveredBlock9Block21Value0) at: (recoveredBlock9Block21Value1) ifPresent: (recoveredBlock9Block21Value2).
    recoveredBlock9Block21Value3
].
    recoveredBlock9Value2 := (recoveredBlock9Value0) at: ('measureTask') ifPresent: (recoveredBlock9Value1).
    recoveredBlock9Value2
].
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataloggerConfig.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := [:recoveredBlock63Arg1 | 
    | recoveredBlock63Value0 recoveredBlock63Value1 recoveredBlock63Value2 recoveredBlock63Value3 |
    recoveredBlock63Value0 := recoveredBlock63Arg1.
    recoveredBlock63Value1 := (recoveredBlock63Value0) contentsConfiguration.
    recoveredBlock63Value2 := [:recoveredBlock63Block75Arg1 | 
    | recoveredBlock63Block75Value0 recoveredBlock63Block75Value1 recoveredBlock63Block75Value2 recoveredBlock63Block75Value3 |
    recoveredBlock63Block75Value0 := recoveredBlock63Block75Arg1.
    recoveredBlock63Block75Value1 := (recoveredBlock63Block75Value0) selectedTask.
    recoveredBlock63Block75Value2 := [:recoveredBlock63Block75Block87Arg1 | 
    | recoveredBlock63Block75Block87Value0 recoveredBlock63Block75Block87Value1 recoveredBlock63Block75Block87Value2 recoveredBlock63Block75Block87Value3 |
    recoveredBlock63Block75Block87Value0 := recoveredArg1.
    recoveredBlock63Block75Block87Value1 := recoveredBlock63Block75Block87Arg1.
    recoveredBlock63Block75Block87Value2 := [:recoveredBlock63Block75Block87Block98Arg1 | 
    | recoveredBlock63Block75Block87Block98Value0 recoveredBlock63Block75Block87Block98Value1 |
    recoveredBlock63Block75Block87Block98Value0 := recoveredBlock63Block75Arg1.
    recoveredBlock63Block75Block87Block98Value1 := recoveredBlock63Block75Block87Block98Arg1.
    (recoveredBlock63Block75Block87Block98Value0) selectedTask: (recoveredBlock63Block75Block87Block98Value1).
    recoveredLocal1 := true.
    true
].
    recoveredBlock63Block75Block87Value3 := (recoveredBlock63Block75Block87Value0) at: (recoveredBlock63Block75Block87Value1) ifPresent: (recoveredBlock63Block75Block87Value2).
    recoveredBlock63Block75Block87Value3
].
    recoveredBlock63Block75Value3 := (recoveredBlock63Block75Value1) ifNotNil: (recoveredBlock63Block75Value2).
    recoveredBlock63Block75Value3
].
    recoveredBlock63Value3 := (recoveredBlock63Value1) at: ('options') ifPresent: (recoveredBlock63Value2).
    recoveredBlock63Value3
].
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureWindowsConfig.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := [:recoveredBlock130Arg1 | 
    | recoveredBlock130Value0 recoveredBlock130Value1 recoveredBlock130Value2 |
    recoveredBlock130Value0 := recoveredBlock130Arg1.
    recoveredBlock130Value1 := [:recoveredBlock130Block137Arg1 | 
    | recoveredBlock130Block137Local1 recoveredBlock130Block137Value0 recoveredBlock130Block137Value1 recoveredBlock130Block137Value2 recoveredBlock130Block137Value3 recoveredBlock130Block137Value4 recoveredBlock130Block137Value5 |
    recoveredBlock130Block137Value0 := recoveredBlock130Block137Arg1.
    recoveredBlock130Block137Value1 := (recoveredBlock130Block137Value0) contentsConfiguration.
    recoveredBlock130Block137Value2 := (recoveredBlock130Block137Value1) at: ('dataConfigs').
    recoveredBlock130Block137Local1 := recoveredBlock130Block137Value2.
    recoveredBlock130Block137Value3 := recoveredBlock130Block137Local1.
    recoveredBlock130Block137Value4 := [:recoveredBlock130Block137Block153Arg1 | 
    | recoveredBlock130Block137Block153Value0 recoveredBlock130Block137Block153Value1 recoveredBlock130Block137Block153Value2 |
    recoveredBlock130Block137Block153Value0 := recoveredBlock130Block137Block153Arg1.
    recoveredBlock130Block137Block153Value1 := [:recoveredBlock130Block137Block153Block165Arg1 | 
    | recoveredBlock130Block137Block153Block165Value0 recoveredBlock130Block137Block153Block165Value1 recoveredBlock130Block137Block153Block165Value2 recoveredBlock130Block137Block153Block165Value3 |
    recoveredBlock130Block137Block153Block165Value0 := recoveredArg1.
    recoveredBlock130Block137Block153Block165Value1 := recoveredBlock130Block137Block153Block165Arg1.
    recoveredBlock130Block137Block153Block165Value2 := [:recoveredBlock130Block137Block153Block165Block176Arg1 | 
    | recoveredBlock130Block137Block153Block165Block176Value0 recoveredBlock130Block137Block153Block165Block176Value1 |
    recoveredBlock130Block137Block153Block165Block176Value0 := recoveredBlock130Block137Block153Arg1.
    recoveredBlock130Block137Block153Block165Block176Value1 := recoveredBlock130Block137Block153Block165Block176Arg1.
    (recoveredBlock130Block137Block153Block165Block176Value0) at: ('acquiConfig') put: (recoveredBlock130Block137Block153Block165Block176Value1).
    recoveredLocal1 := true.
    true
].
    recoveredBlock130Block137Block153Block165Value3 := (recoveredBlock130Block137Block153Block165Value0) at: (recoveredBlock130Block137Block153Block165Value1) ifPresent: (recoveredBlock130Block137Block153Block165Value2).
    recoveredBlock130Block137Block153Block165Value3
].
    recoveredBlock130Block137Block153Value2 := (recoveredBlock130Block137Block153Value0) at: ('acquiConfig') ifPresent: (recoveredBlock130Block137Block153Value1).
    recoveredBlock130Block137Block153Value2
].
    recoveredBlock130Block137Value5 := (recoveredBlock130Block137Value3) do: (recoveredBlock130Block137Value4).
    recoveredBlock130Block137Value5
].
    recoveredBlock130Value2 := (recoveredBlock130Value0) do: (recoveredBlock130Value1).
    recoveredBlock130Value2
].
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 216] ifFalse: [recoveredPC := 219].
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack0) modified.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205b2070; bytecode file offset 0xeae9d0"
!SGSimExperiment methodsFor: 'recovered'!
writeXMLDataGenerator: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := dataGeneratorConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'DataGenerator'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'automaticStop'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := dataGeneratorConfig.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'AutomaticStop'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := [
    false
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'interpolate'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := dataGeneratorConfig.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := 'Interpolate'.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := [
    false
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 'repeat'.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := dataGeneratorConfig.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack4 := 'Repeat'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := [
    false
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'EHI_2008400346'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'ignoreTimestampOffset'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := dataGeneratorConfig.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := 'IgnoreTimestampOffset'.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack5 := [
    false
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := dataGeneratorConfig.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'DataGenChannels'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock114Value0 |
    recoveredBlock114Value0 := dataGeneratorConfig.
    recoveredBlock114Value0
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := [:recoveredBlock125Arg1 :recoveredBlock125Arg2 | 
    | recoveredBlock125Local1 recoveredBlock125Local2 recoveredBlock125Stack0 recoveredBlock125Stack1 recoveredBlock125Stack2 recoveredBlock125Stack3 recoveredBlock125Stack4 recoveredBlock125Stack5 recoveredBlock125PC recoveredBlock125Step recoveredBlock125Done recoveredBlock125Result |
    recoveredBlock125Stack0 := self.
    recoveredBlock125PC := 132.
    recoveredBlock125Done := false.
    [recoveredBlock125Done not] whileTrue: [
        recoveredBlock125Step := recoveredBlock125PC.
        recoveredBlock125Step = 132 ifTrue: [
            recoveredBlock125Stack1 := nil.
            recoveredBlock125PC := 133.
        ].
        recoveredBlock125Step = 133 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 134.
        ].
        recoveredBlock125Step = 134 ifTrue: [
            (recoveredBlock125Stack2 == nil) ifTrue: [recoveredBlock125PC := 233] ifFalse: [recoveredBlock125PC := 138].
        ].
        recoveredBlock125Step = 138 ifTrue: [
            recoveredBlock125PC := 139.
        ].
        recoveredBlock125Step = 139 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 142.
        ].
        recoveredBlock125Step = 142 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg1.
            recoveredBlock125PC := 143.
        ].
        recoveredBlock125Step = 143 ifTrue: [
            recoveredBlock125Stack3 := self.
            recoveredBlock125PC := 144.
        ].
        recoveredBlock125Step = 144 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) sgClass.
            recoveredBlock125PC := 146.
        ].
        recoveredBlock125Step = 146 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) elementEntryFor: (recoveredBlock125Stack2) in: (recoveredBlock125Stack3).
            recoveredBlock125PC := 148.
        ].
        recoveredBlock125Step = 148 ifTrue: [
            recoveredBlock125Local2 := recoveredBlock125Stack1.
            recoveredBlock125PC := 149.
        ].
        recoveredBlock125Step = 149 ifTrue: [
            recoveredBlock125Stack1 := nil.
            recoveredBlock125PC := 150.
        ].
        recoveredBlock125Step = 150 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Local2.
            recoveredBlock125PC := 151.
        ].
        recoveredBlock125Step = 151 ifTrue: [
            (recoveredBlock125Stack2 == nil) ifTrue: [recoveredBlock125PC := 231] ifFalse: [recoveredBlock125PC := 154].
        ].
        recoveredBlock125Step = 154 ifTrue: [
            recoveredBlock125PC := 155.
        ].
        recoveredBlock125Step = 155 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 158.
        ].
        recoveredBlock125Step = 158 ifTrue: [
            recoveredBlock125Stack2 := 'Channel'.
            recoveredBlock125PC := 160.
        ].
        recoveredBlock125Step = 160 ifTrue: [
            (recoveredBlock125Stack1) openComplex: (recoveredBlock125Stack2).
            recoveredBlock125PC := 162.
        ].
        recoveredBlock125Step = 162 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 165.
        ].
        recoveredBlock125Step = 165 ifTrue: [
            recoveredBlock125Stack2 := 'Name'.
            recoveredBlock125PC := 167.
        ].
        recoveredBlock125Step = 167 ifTrue: [
            recoveredBlock125Stack3 := recoveredBlock125Local2.
            recoveredBlock125PC := 168.
        ].
        recoveredBlock125Step = 168 ifTrue: [
            recoveredBlock125Stack4 := 2.
            recoveredBlock125PC := 170.
        ].
        recoveredBlock125Step = 170 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) at: (recoveredBlock125Stack4).
            recoveredBlock125PC := 172.
        ].
        recoveredBlock125Step = 172 ifTrue: [
            (recoveredBlock125Stack1) attr: (recoveredBlock125Stack2) string: (recoveredBlock125Stack3).
            recoveredBlock125PC := 174.
        ].
        recoveredBlock125Step = 174 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 177.
        ].
        recoveredBlock125Step = 177 ifTrue: [
            recoveredBlock125Stack2 := 'ID'.
            recoveredBlock125PC := 179.
        ].
        recoveredBlock125Step = 179 ifTrue: [
            recoveredBlock125Stack3 := recoveredBlock125Local2.
            recoveredBlock125PC := 180.
        ].
        recoveredBlock125Step = 180 ifTrue: [
            recoveredBlock125Stack4 := 1.
            recoveredBlock125PC := 182.
        ].
        recoveredBlock125Step = 182 ifTrue: [
            recoveredBlock125Stack3 := (recoveredBlock125Stack3) at: (recoveredBlock125Stack4).
            recoveredBlock125PC := 184.
        ].
        recoveredBlock125Step = 184 ifTrue: [
            (recoveredBlock125Stack1) attr: (recoveredBlock125Stack2) id: (recoveredBlock125Stack3).
            recoveredBlock125PC := 186.
        ].
        recoveredBlock125Step = 186 ifTrue: [
            recoveredBlock125Stack1 := (LookupTable new) elementCount: (12); keyArray: (#('table' 'random' 'pulseBool' 'gaussian' nil nil nil nil nil nil nil nil nil nil 'pulse' nil 'signal' nil nil nil nil nil 'ramp' nil nil nil nil nil nil 'constant' 'sine' 'step' nil nil nil nil nil nil nil nil nil nil 'sinus' 'matrix')); valueArray: (#(#('writeXML:dataGeneratorTable:' 'Table') #('writeXML:dataGeneratorSimple:' 'Random') #('writeXML:dataGeneratorPeriodic:' 'Pulse') #('writeXML:dataGeneratorGaussian:' 'Gaussian') nil nil nil nil nil nil nil nil nil nil #('writeXML:dataGeneratorPeriodic:' 'Pulse') nil #('writeXML:dataGeneratorMatrix:' 'Matrix') nil nil nil nil nil #('writeXML:dataGeneratorPeriodic:' 'Ramp') nil nil nil nil nil nil #('writeXML:dataGeneratorSimple:' 'Constant') #('writeXML:dataGeneratorPeriodic:' 'Sinus') #('writeXML:dataGeneratorSingleShot:' 'Step') nil nil nil nil nil nil nil nil nil nil #('writeXML:dataGeneratorPeriodic:' 'Sinus') #('writeXML:dataGeneratorMatrix:' 'Matrix'))); yourself.
            recoveredBlock125PC := 188.
        ].
        recoveredBlock125Step = 188 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Arg2.
            recoveredBlock125PC := 189.
        ].
        recoveredBlock125Step = 189 ifTrue: [
            recoveredBlock125Stack3 := 1.
            recoveredBlock125PC := 191.
        ].
        recoveredBlock125Step = 191 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) at: (recoveredBlock125Stack3).
            recoveredBlock125PC := 193.
        ].
        recoveredBlock125Step = 193 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) at: (recoveredBlock125Stack2).
            recoveredBlock125PC := 195.
        ].
        recoveredBlock125Step = 195 ifTrue: [
            recoveredBlock125Local1 := recoveredBlock125Stack1.
            recoveredBlock125PC := 196.
        ].
        recoveredBlock125Step = 196 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 199.
        ].
        recoveredBlock125Step = 199 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Local1.
            recoveredBlock125PC := 200.
        ].
        recoveredBlock125Step = 200 ifTrue: [
            recoveredBlock125Stack3 := 2.
            recoveredBlock125PC := 202.
        ].
        recoveredBlock125Step = 202 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) at: (recoveredBlock125Stack3).
            recoveredBlock125PC := 204.
        ].
        recoveredBlock125Step = 204 ifTrue: [
            (recoveredBlock125Stack1) openComplex: (recoveredBlock125Stack2).
            recoveredBlock125PC := 206.
        ].
        recoveredBlock125Step = 206 ifTrue: [
            recoveredBlock125Stack1 := self.
            recoveredBlock125PC := 207.
        ].
        recoveredBlock125Step = 207 ifTrue: [
            recoveredBlock125Stack2 := recoveredBlock125Local1.
            recoveredBlock125PC := 208.
        ].
        recoveredBlock125Step = 208 ifTrue: [
            recoveredBlock125Stack3 := 1.
            recoveredBlock125PC := 210.
        ].
        recoveredBlock125Step = 210 ifTrue: [
            recoveredBlock125Stack2 := (recoveredBlock125Stack2) at: (recoveredBlock125Stack3).
            recoveredBlock125PC := 212.
        ].
        recoveredBlock125Step = 212 ifTrue: [
            recoveredBlock125Stack3 := recoveredArg1.
            recoveredBlock125PC := 215.
        ].
        recoveredBlock125Step = 215 ifTrue: [
            recoveredBlock125Stack4 := recoveredBlock125Arg2.
            recoveredBlock125PC := 216.
        ].
        recoveredBlock125Step = 216 ifTrue: [
            (recoveredBlock125Stack1) perform: (recoveredBlock125Stack2) with: (recoveredBlock125Stack3) with: (recoveredBlock125Stack4).
            recoveredBlock125PC := 219.
        ].
        recoveredBlock125Step = 219 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 222.
        ].
        recoveredBlock125Step = 222 ifTrue: [
            (recoveredBlock125Stack1) closeComplex.
            recoveredBlock125PC := 224.
        ].
        recoveredBlock125Step = 224 ifTrue: [
            recoveredBlock125Stack1 := recoveredArg1.
            recoveredBlock125PC := 227.
        ].
        recoveredBlock125Step = 227 ifTrue: [
            recoveredBlock125Stack1 := (recoveredBlock125Stack1) closeComplex.
            recoveredBlock125PC := 229.
        ].
        recoveredBlock125Step = 229 ifTrue: [
            recoveredBlock125Stack2 := nil.
            recoveredBlock125PC := 230.
        ].
        recoveredBlock125Step = 230 ifTrue: [
            recoveredBlock125Local1 := recoveredBlock125Stack2.
            recoveredBlock125PC := 231.
        ].
        recoveredBlock125Step = 231 ifTrue: [
            recoveredBlock125Stack2 := nil.
            recoveredBlock125PC := 232.
        ].
        recoveredBlock125Step = 232 ifTrue: [
            recoveredBlock125Local2 := recoveredBlock125Stack2.
            recoveredBlock125PC := 233.
        ].
        recoveredBlock125Step = 233 ifTrue: [
            recoveredBlock125Result := recoveredBlock125Stack1.
            recoveredBlock125Done := true.
        ].
    ].
    recoveredBlock125Result
].
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := dataGeneratorConfig.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := 'Signal'.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := [:recoveredBlock244Arg1 | 
    | recoveredBlock244Local1 recoveredBlock244Stack0 recoveredBlock244Stack1 recoveredBlock244Stack2 recoveredBlock244Stack3 recoveredBlock244Stack4 recoveredBlock244Stack5 recoveredBlock244PC recoveredBlock244Step recoveredBlock244Done recoveredBlock244Result |
    recoveredBlock244Stack0 := self.
    recoveredBlock244PC := 250.
    recoveredBlock244Done := false.
    [recoveredBlock244Done not] whileTrue: [
        recoveredBlock244Step := recoveredBlock244PC.
        recoveredBlock244Step = 250 ifTrue: [
            recoveredBlock244Stack1 := recoveredArg1.
            recoveredBlock244PC := 253.
        ].
        recoveredBlock244Step = 253 ifTrue: [
            recoveredBlock244Stack2 := 'Signal'.
            recoveredBlock244PC := 255.
        ].
        recoveredBlock244Step = 255 ifTrue: [
            (recoveredBlock244Stack1) openComplex: (recoveredBlock244Stack2).
            recoveredBlock244PC := 257.
        ].
        recoveredBlock244Step = 257 ifTrue: [
            recoveredBlock244Stack1 := recoveredArg1.
            recoveredBlock244PC := 260.
        ].
        recoveredBlock244Step = 260 ifTrue: [
            recoveredBlock244Stack2 := 'signalName'.
            recoveredBlock244PC := 262.
        ].
        recoveredBlock244Step = 262 ifTrue: [
            recoveredBlock244Stack3 := recoveredBlock244Arg1.
            recoveredBlock244PC := 263.
        ].
        recoveredBlock244Step = 263 ifTrue: [
            recoveredBlock244Stack3 := (recoveredBlock244Stack3) getDBObject.
            recoveredBlock244PC := 265.
        ].
        recoveredBlock244Step = 265 ifTrue: [
            recoveredBlock244Stack4 := recoveredBlock244Stack3.
            recoveredBlock244PC := 266.
        ].
        recoveredBlock244Step = 266 ifTrue: [
            recoveredBlock244Local1 := recoveredBlock244Stack4.
            recoveredBlock244PC := 267.
        ].
        recoveredBlock244Step = 267 ifTrue: [
            (recoveredBlock244Stack3 == nil) ifTrue: [recoveredBlock244PC := 276] ifFalse: [recoveredBlock244PC := 270].
        ].
        recoveredBlock244Step = 270 ifTrue: [
            recoveredBlock244Stack3 := recoveredBlock244Local1.
            recoveredBlock244PC := 271.
        ].
        recoveredBlock244Step = 271 ifTrue: [
            recoveredBlock244Stack3 := (recoveredBlock244Stack3) isError.
            recoveredBlock244PC := 273.
        ].
        recoveredBlock244Step = 273 ifTrue: [
            (recoveredBlock244Stack3) ifTrue: [recoveredBlock244PC := 276] ifFalse: [recoveredBlock244PC := 282].
        ].
        recoveredBlock244Step = 276 ifTrue: [
            recoveredBlock244Stack3 := '<undefined>'.
            recoveredBlock244PC := 278.
        ].
        recoveredBlock244Step = 278 ifTrue: [
            recoveredBlock244PC := 285.
        ].
        recoveredBlock244Step = 282 ifTrue: [
            recoveredBlock244Stack3 := recoveredBlock244Arg1.
            recoveredBlock244PC := 283.
        ].
        recoveredBlock244Step = 283 ifTrue: [
            recoveredBlock244Stack3 := (recoveredBlock244Stack3) name.
            recoveredBlock244PC := 285.
        ].
        recoveredBlock244Step = 285 ifTrue: [
            (recoveredBlock244Stack1) attr: (recoveredBlock244Stack2) string: (recoveredBlock244Stack3).
            recoveredBlock244PC := 287.
        ].
        recoveredBlock244Step = 287 ifTrue: [
            recoveredBlock244Stack1 := recoveredArg1.
            recoveredBlock244PC := 290.
        ].
        recoveredBlock244Step = 290 ifTrue: [
            recoveredBlock244Stack2 := 'signalOID'.
            recoveredBlock244PC := 292.
        ].
        recoveredBlock244Step = 292 ifTrue: [
            recoveredBlock244Stack3 := recoveredBlock244Arg1.
            recoveredBlock244PC := 293.
        ].
        recoveredBlock244Step = 293 ifTrue: [
            recoveredBlock244Stack3 := (recoveredBlock244Stack3) globalId.
            recoveredBlock244PC := 295.
        ].
        recoveredBlock244Step = 295 ifTrue: [
            (recoveredBlock244Stack1) attr: (recoveredBlock244Stack2) idRef: (recoveredBlock244Stack3).
            recoveredBlock244PC := 297.
        ].
        recoveredBlock244Step = 297 ifTrue: [
            recoveredBlock244Stack1 := recoveredArg1.
            recoveredBlock244PC := 300.
        ].
        recoveredBlock244Step = 300 ifTrue: [
            recoveredBlock244Stack1 := (recoveredBlock244Stack1) closeComplex.
            recoveredBlock244PC := 302.
        ].
        recoveredBlock244Step = 302 ifTrue: [
            recoveredBlock244Result := recoveredBlock244Stack1.
            recoveredBlock244Done := true.
        ].
    ].
    recoveredBlock244Result
].
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            (recoveredStack1) ifNotNil: (recoveredStack2).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205cda24; bytecode file offset 0xeca34c"
!SGSimExperiment methodsFor: 'recovered'!
updateForSGClass: recoveredArg1 aliasDic: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) dbObject.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) oid.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) measureWindowsConfig.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Local1 recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) contentsConfiguration.
    recoveredBlock13Value2 := (recoveredBlock13Value1) at: ('dataConfigs').
    recoveredBlock13Local1 := recoveredBlock13Value2.
    recoveredBlock13Value3 := recoveredBlock13Local1.
    recoveredBlock13Value4 := [:recoveredBlock13Block28Arg1 | 
    | recoveredBlock13Block28Local1 recoveredBlock13Block28Stack0 recoveredBlock13Block28Stack1 recoveredBlock13Block28Stack2 recoveredBlock13Block28Stack3 recoveredBlock13Block28Stack4 recoveredBlock13Block28Stack5 recoveredBlock13Block28PC recoveredBlock13Block28Step recoveredBlock13Block28Done recoveredBlock13Block28Result |
    recoveredBlock13Block28Stack0 := self.
    recoveredBlock13Block28PC := 34.
    recoveredBlock13Block28Done := false.
    [recoveredBlock13Block28Done not] whileTrue: [
        recoveredBlock13Block28Step := recoveredBlock13Block28PC.
        recoveredBlock13Block28Step = 34 ifTrue: [
            recoveredBlock13Block28Stack1 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 35.
        ].
        recoveredBlock13Block28Step = 35 ifTrue: [
            recoveredBlock13Block28Stack2 := 'name'.
            recoveredBlock13Block28PC := 37.
        ].
        recoveredBlock13Block28Step = 37 ifTrue: [
            recoveredBlock13Block28Stack3 := [].
            recoveredBlock13Block28PC := 39.
        ].
        recoveredBlock13Block28Step = 39 ifTrue: [
            recoveredBlock13Block28Stack1 := (recoveredBlock13Block28Stack1) at: (recoveredBlock13Block28Stack2) ifAbsent: (recoveredBlock13Block28Stack3).
            recoveredBlock13Block28PC := 41.
        ].
        recoveredBlock13Block28Step = 41 ifTrue: [
            recoveredLocal4 := recoveredBlock13Block28Stack1.
            recoveredBlock13Block28PC := 44.
        ].
        recoveredBlock13Block28Step = 44 ifTrue: [
            recoveredBlock13Block28Stack1 := nil.
            recoveredBlock13Block28PC := 45.
        ].
        recoveredBlock13Block28Step = 45 ifTrue: [
            recoveredBlock13Block28Stack2 := recoveredLocal4.
            recoveredBlock13Block28PC := 48.
        ].
        recoveredBlock13Block28Step = 48 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) isString.
            recoveredBlock13Block28PC := 50.
        ].
        recoveredBlock13Block28Step = 50 ifTrue: [
            recoveredBlock13Block28Stack3 := recoveredLocal4.
            recoveredBlock13Block28PC := 53.
        ].
        recoveredBlock13Block28Step = 53 ifTrue: [
            recoveredBlock13Block28Stack3 := (recoveredBlock13Block28Stack3) isNil.
            recoveredBlock13Block28PC := 54.
        ].
        recoveredBlock13Block28Step = 54 ifTrue: [
            recoveredBlock13Block28Stack2 := (recoveredBlock13Block28Stack2) | (recoveredBlock13Block28Stack3).
            recoveredBlock13Block28PC := 56.
        ].
        recoveredBlock13Block28Step = 56 ifTrue: [
            (recoveredBlock13Block28Stack2) ifTrue: [recoveredBlock13Block28PC := 81] ifFalse: [recoveredBlock13Block28PC := 60].
        ].
        recoveredBlock13Block28Step = 60 ifTrue: [
            recoveredBlock13Block28PC := 61.
        ].
        recoveredBlock13Block28Step = 61 ifTrue: [
            recoveredBlock13Block28Stack1 := self.
            recoveredBlock13Block28PC := 62.
        ].
        recoveredBlock13Block28Step = 62 ifTrue: [
            recoveredBlock13Block28Stack2 := recoveredLocal4.
            recoveredBlock13Block28PC := 65.
        ].
        recoveredBlock13Block28Step = 65 ifTrue: [
            recoveredBlock13Block28Stack3 := recoveredLocal3.
            recoveredBlock13Block28PC := 68.
        ].
        recoveredBlock13Block28Step = 68 ifTrue: [
            recoveredBlock13Block28Stack4 := recoveredArg2.
            recoveredBlock13Block28PC := 71.
        ].
        recoveredBlock13Block28Step = 71 ifTrue: [
            recoveredBlock13Block28Stack1 := (recoveredBlock13Block28Stack1) changeEntry: (recoveredBlock13Block28Stack2) newOID: (recoveredBlock13Block28Stack3) aliasDict: (recoveredBlock13Block28Stack4).
            recoveredBlock13Block28PC := 74.
        ].
        recoveredBlock13Block28Step = 74 ifTrue: [
            recoveredBlock13Block28Local1 := recoveredBlock13Block28Stack1.
            recoveredBlock13Block28PC := 75.
        ].
        recoveredBlock13Block28Step = 75 ifTrue: [
            recoveredBlock13Block28Stack1 := recoveredBlock13Block28Arg1.
            recoveredBlock13Block28PC := 76.
        ].
        recoveredBlock13Block28Step = 76 ifTrue: [
            recoveredBlock13Block28Stack2 := 'name'.
            recoveredBlock13Block28PC := 78.
        ].
        recoveredBlock13Block28Step = 78 ifTrue: [
            recoveredBlock13Block28Stack3 := recoveredBlock13Block28Local1.
            recoveredBlock13Block28PC := 79.
        ].
        recoveredBlock13Block28Step = 79 ifTrue: [
            recoveredBlock13Block28Stack1 := (recoveredBlock13Block28Stack1) at: (recoveredBlock13Block28Stack2) put: (recoveredBlock13Block28Stack3).
            recoveredBlock13Block28PC := 81.
        ].
        recoveredBlock13Block28Step = 81 ifTrue: [
            recoveredBlock13Block28Result := recoveredBlock13Block28Stack1.
            recoveredBlock13Block28Done := true.
        ].
    ].
    recoveredBlock13Block28Result
].
    recoveredBlock13Value5 := (recoveredBlock13Value3) do: (recoveredBlock13Value4).
    recoveredBlock13Value5
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := (recoveredStack0) calibrationWindowsConfig.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Local1 recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 recoveredBlock90Value5 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := (recoveredBlock90Value0) contentsConfiguration.
    recoveredBlock90Value2 := (recoveredBlock90Value1) at: ('dataConfigs').
    recoveredBlock90Local1 := recoveredBlock90Value2.
    recoveredBlock90Value3 := recoveredBlock90Local1.
    recoveredBlock90Value4 := [:recoveredBlock90Block104Arg1 | 
    | recoveredBlock90Block104Local1 recoveredBlock90Block104Stack0 recoveredBlock90Block104Stack1 recoveredBlock90Block104Stack2 recoveredBlock90Block104Stack3 recoveredBlock90Block104Stack4 recoveredBlock90Block104Stack5 recoveredBlock90Block104PC recoveredBlock90Block104Step recoveredBlock90Block104Done recoveredBlock90Block104Result |
    recoveredBlock90Block104Stack0 := self.
    recoveredBlock90Block104PC := 110.
    recoveredBlock90Block104Done := false.
    [recoveredBlock90Block104Done not] whileTrue: [
        recoveredBlock90Block104Step := recoveredBlock90Block104PC.
        recoveredBlock90Block104Step = 110 ifTrue: [
            recoveredBlock90Block104Stack1 := recoveredBlock90Block104Arg1.
            recoveredBlock90Block104PC := 111.
        ].
        recoveredBlock90Block104Step = 111 ifTrue: [
            recoveredBlock90Block104Stack2 := 'name'.
            recoveredBlock90Block104PC := 113.
        ].
        recoveredBlock90Block104Step = 113 ifTrue: [
            recoveredBlock90Block104Stack3 := [].
            recoveredBlock90Block104PC := 115.
        ].
        recoveredBlock90Block104Step = 115 ifTrue: [
            recoveredBlock90Block104Stack1 := (recoveredBlock90Block104Stack1) at: (recoveredBlock90Block104Stack2) ifAbsent: (recoveredBlock90Block104Stack3).
            recoveredBlock90Block104PC := 117.
        ].
        recoveredBlock90Block104Step = 117 ifTrue: [
            recoveredLocal4 := recoveredBlock90Block104Stack1.
            recoveredBlock90Block104PC := 120.
        ].
        recoveredBlock90Block104Step = 120 ifTrue: [
            recoveredBlock90Block104Stack1 := nil.
            recoveredBlock90Block104PC := 121.
        ].
        recoveredBlock90Block104Step = 121 ifTrue: [
            recoveredBlock90Block104Stack2 := recoveredLocal4.
            recoveredBlock90Block104PC := 124.
        ].
        recoveredBlock90Block104Step = 124 ifTrue: [
            recoveredBlock90Block104Stack2 := (recoveredBlock90Block104Stack2) isString.
            recoveredBlock90Block104PC := 126.
        ].
        recoveredBlock90Block104Step = 126 ifTrue: [
            recoveredBlock90Block104Stack3 := recoveredLocal4.
            recoveredBlock90Block104PC := 129.
        ].
        recoveredBlock90Block104Step = 129 ifTrue: [
            recoveredBlock90Block104Stack3 := (recoveredBlock90Block104Stack3) isNil.
            recoveredBlock90Block104PC := 130.
        ].
        recoveredBlock90Block104Step = 130 ifTrue: [
            recoveredBlock90Block104Stack2 := (recoveredBlock90Block104Stack2) | (recoveredBlock90Block104Stack3).
            recoveredBlock90Block104PC := 132.
        ].
        recoveredBlock90Block104Step = 132 ifTrue: [
            (recoveredBlock90Block104Stack2) ifTrue: [recoveredBlock90Block104PC := 157] ifFalse: [recoveredBlock90Block104PC := 136].
        ].
        recoveredBlock90Block104Step = 136 ifTrue: [
            recoveredBlock90Block104PC := 137.
        ].
        recoveredBlock90Block104Step = 137 ifTrue: [
            recoveredBlock90Block104Stack1 := self.
            recoveredBlock90Block104PC := 138.
        ].
        recoveredBlock90Block104Step = 138 ifTrue: [
            recoveredBlock90Block104Stack2 := recoveredLocal4.
            recoveredBlock90Block104PC := 141.
        ].
        recoveredBlock90Block104Step = 141 ifTrue: [
            recoveredBlock90Block104Stack3 := recoveredLocal3.
            recoveredBlock90Block104PC := 144.
        ].
        recoveredBlock90Block104Step = 144 ifTrue: [
            recoveredBlock90Block104Stack4 := recoveredArg2.
            recoveredBlock90Block104PC := 147.
        ].
        recoveredBlock90Block104Step = 147 ifTrue: [
            recoveredBlock90Block104Stack1 := (recoveredBlock90Block104Stack1) changeEntry: (recoveredBlock90Block104Stack2) newOID: (recoveredBlock90Block104Stack3) aliasDict: (recoveredBlock90Block104Stack4).
            recoveredBlock90Block104PC := 150.
        ].
        recoveredBlock90Block104Step = 150 ifTrue: [
            recoveredBlock90Block104Local1 := recoveredBlock90Block104Stack1.
            recoveredBlock90Block104PC := 151.
        ].
        recoveredBlock90Block104Step = 151 ifTrue: [
            recoveredBlock90Block104Stack1 := recoveredBlock90Block104Arg1.
            recoveredBlock90Block104PC := 152.
        ].
        recoveredBlock90Block104Step = 152 ifTrue: [
            recoveredBlock90Block104Stack2 := 'name'.
            recoveredBlock90Block104PC := 154.
        ].
        recoveredBlock90Block104Step = 154 ifTrue: [
            recoveredBlock90Block104Stack3 := recoveredBlock90Block104Local1.
            recoveredBlock90Block104PC := 155.
        ].
        recoveredBlock90Block104Step = 155 ifTrue: [
            recoveredBlock90Block104Stack1 := (recoveredBlock90Block104Stack1) at: (recoveredBlock90Block104Stack2) put: (recoveredBlock90Block104Stack3).
            recoveredBlock90Block104PC := 157.
        ].
        recoveredBlock90Block104Step = 157 ifTrue: [
            recoveredBlock90Block104Result := recoveredBlock90Block104Stack1.
            recoveredBlock90Block104Done := true.
        ].
    ].
    recoveredBlock90Block104Result
].
    recoveredBlock90Value5 := (recoveredBlock90Value3) do: (recoveredBlock90Value4).
    recoveredBlock90Value5
].
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataGeneratorConfig.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := [:recoveredBlock168Arg1 | 
    | recoveredBlock168Stack0 recoveredBlock168Stack1 recoveredBlock168Stack2 recoveredBlock168Stack3 recoveredBlock168Stack4 recoveredBlock168PC recoveredBlock168Step recoveredBlock168Done recoveredBlock168Result |
    recoveredBlock168Stack0 := self.
    recoveredBlock168PC := 174.
    recoveredBlock168Done := false.
    [recoveredBlock168Done not] whileTrue: [
        recoveredBlock168Step := recoveredBlock168PC.
        recoveredBlock168Step = 174 ifTrue: [
            recoveredBlock168Stack1 := recoveredBlock168Arg1.
            recoveredBlock168PC := 175.
        ].
        recoveredBlock168Step = 175 ifTrue: [
            recoveredBlock168Stack1 := (recoveredBlock168Stack1) key.
            recoveredBlock168PC := 177.
        ].
        recoveredBlock168Step = 177 ifTrue: [
            recoveredLocal4 := recoveredBlock168Stack1.
            recoveredBlock168PC := 180.
        ].
        recoveredBlock168Step = 180 ifTrue: [
            recoveredBlock168Stack1 := nil.
            recoveredBlock168PC := 181.
        ].
        recoveredBlock168Step = 181 ifTrue: [
            recoveredBlock168Stack2 := recoveredLocal4.
            recoveredBlock168PC := 184.
        ].
        recoveredBlock168Step = 184 ifTrue: [
            recoveredBlock168Stack2 := (recoveredBlock168Stack2) isString.
            recoveredBlock168PC := 186.
        ].
        recoveredBlock168Step = 186 ifTrue: [
            (recoveredBlock168Stack2) ifTrue: [recoveredBlock168PC := 209] ifFalse: [recoveredBlock168PC := 190].
        ].
        recoveredBlock168Step = 190 ifTrue: [
            recoveredBlock168PC := 191.
        ].
        recoveredBlock168Step = 191 ifTrue: [
            recoveredBlock168Stack1 := self.
            recoveredBlock168PC := 192.
        ].
        recoveredBlock168Step = 192 ifTrue: [
            recoveredBlock168Stack2 := recoveredLocal4.
            recoveredBlock168PC := 195.
        ].
        recoveredBlock168Step = 195 ifTrue: [
            recoveredBlock168Stack3 := recoveredLocal3.
            recoveredBlock168PC := 198.
        ].
        recoveredBlock168Step = 198 ifTrue: [
            (recoveredBlock168Stack1) changeOID: (recoveredBlock168Stack2) newOID: (recoveredBlock168Stack3).
            recoveredBlock168PC := 200.
        ].
        recoveredBlock168Step = 200 ifTrue: [
            recoveredBlock168Stack1 := self.
            recoveredBlock168PC := 201.
        ].
        recoveredBlock168Step = 201 ifTrue: [
            recoveredBlock168Stack2 := recoveredLocal4.
            recoveredBlock168PC := 204.
        ].
        recoveredBlock168Step = 204 ifTrue: [
            recoveredBlock168Stack3 := recoveredArg2.
            recoveredBlock168PC := 207.
        ].
        recoveredBlock168Step = 207 ifTrue: [
            recoveredBlock168Stack1 := (recoveredBlock168Stack1) changeInstVarAlias: (recoveredBlock168Stack2) dic: (recoveredBlock168Stack3).
            recoveredBlock168PC := 209.
        ].
        recoveredBlock168Step = 209 ifTrue: [
            recoveredBlock168Result := recoveredBlock168Stack1.
            recoveredBlock168Done := true.
        ].
    ].
    recoveredBlock168Result
].
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack0) associationsDo: (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack0 := (recoveredStack0) dataloggerConfig.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 266] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack0 := (recoveredStack0) contentsConfiguration.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack1 := 'dataConfigs'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := [:recoveredBlock234Arg1 | 
    | recoveredBlock234Stack0 recoveredBlock234Stack1 recoveredBlock234Stack2 recoveredBlock234Stack3 recoveredBlock234Stack4 recoveredBlock234PC recoveredBlock234Step recoveredBlock234Done recoveredBlock234Result |
    recoveredBlock234Stack0 := self.
    recoveredBlock234PC := 240.
    recoveredBlock234Done := false.
    [recoveredBlock234Done not] whileTrue: [
        recoveredBlock234Step := recoveredBlock234PC.
        recoveredBlock234Step = 240 ifTrue: [
            recoveredBlock234Stack1 := nil.
            recoveredBlock234PC := 241.
        ].
        recoveredBlock234Step = 241 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Arg1.
            recoveredBlock234PC := 242.
        ].
        recoveredBlock234Step = 242 ifTrue: [
            recoveredBlock234Stack2 := (recoveredBlock234Stack2) isString.
            recoveredBlock234PC := 244.
        ].
        recoveredBlock234Step = 244 ifTrue: [
            (recoveredBlock234Stack2) ifTrue: [recoveredBlock234PC := 263] ifFalse: [recoveredBlock234PC := 248].
        ].
        recoveredBlock234Step = 248 ifTrue: [
            recoveredBlock234PC := 249.
        ].
        recoveredBlock234Step = 249 ifTrue: [
            recoveredBlock234Stack1 := self.
            recoveredBlock234PC := 250.
        ].
        recoveredBlock234Step = 250 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Arg1.
            recoveredBlock234PC := 251.
        ].
        recoveredBlock234Step = 251 ifTrue: [
            recoveredBlock234Stack3 := recoveredLocal3.
            recoveredBlock234PC := 254.
        ].
        recoveredBlock234Step = 254 ifTrue: [
            (recoveredBlock234Stack1) changeOID: (recoveredBlock234Stack2) newOID: (recoveredBlock234Stack3).
            recoveredBlock234PC := 256.
        ].
        recoveredBlock234Step = 256 ifTrue: [
            recoveredBlock234Stack1 := self.
            recoveredBlock234PC := 257.
        ].
        recoveredBlock234Step = 257 ifTrue: [
            recoveredBlock234Stack2 := recoveredBlock234Arg1.
            recoveredBlock234PC := 258.
        ].
        recoveredBlock234Step = 258 ifTrue: [
            recoveredBlock234Stack3 := recoveredArg2.
            recoveredBlock234PC := 261.
        ].
        recoveredBlock234Step = 261 ifTrue: [
            recoveredBlock234Stack1 := (recoveredBlock234Stack1) changeInstVarAlias: (recoveredBlock234Stack2) dic: (recoveredBlock234Stack3).
            recoveredBlock234PC := 263.
        ].
        recoveredBlock234Step = 263 ifTrue: [
            recoveredBlock234Result := recoveredBlock234Stack1.
            recoveredBlock234Done := true.
        ].
    ].
    recoveredBlock234Result
].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := 'Muzaffar'.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := 'EHI67887'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack0 := 'Kk'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := 'Call_67887'.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack0 := (recoveredStack0) solverConfig.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 346] ifFalse: [recoveredPC := 284].
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := (recoveredStack0) solverConfig.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack0 := (recoveredStack0) keys.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack0 := (recoveredStack0) copy.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := [:recoveredBlock297Arg1 | 
    | recoveredBlock297Local1 recoveredBlock297Stack0 recoveredBlock297Stack1 recoveredBlock297Stack2 recoveredBlock297Stack3 recoveredBlock297Stack4 recoveredBlock297Stack5 recoveredBlock297PC recoveredBlock297Step recoveredBlock297Done recoveredBlock297Result |
    recoveredBlock297Stack0 := self.
    recoveredBlock297PC := 304.
    recoveredBlock297Done := false.
    [recoveredBlock297Done not] whileTrue: [
        recoveredBlock297Step := recoveredBlock297PC.
        recoveredBlock297Step = 304 ifTrue: [
            recoveredBlock297Stack1 := recoveredArg2.
            recoveredBlock297PC := 307.
        ].
        recoveredBlock297Step = 307 ifTrue: [
            recoveredBlock297Stack2 := recoveredBlock297Arg1.
            recoveredBlock297PC := 308.
        ].
        recoveredBlock297Step = 308 ifTrue: [
            recoveredBlock297Stack3 := [].
            recoveredBlock297PC := 310.
        ].
        recoveredBlock297Step = 310 ifTrue: [
            recoveredBlock297Stack1 := (recoveredBlock297Stack1) at: (recoveredBlock297Stack2) ifAbsent: (recoveredBlock297Stack3).
            recoveredBlock297PC := 312.
        ].
        recoveredBlock297Step = 312 ifTrue: [
            recoveredBlock297Local1 := recoveredBlock297Stack1.
            recoveredBlock297PC := 313.
        ].
        recoveredBlock297Step = 313 ifTrue: [
            recoveredBlock297Stack1 := nil.
            recoveredBlock297PC := 314.
        ].
        recoveredBlock297Step = 314 ifTrue: [
            recoveredBlock297Stack2 := recoveredBlock297Local1.
            recoveredBlock297PC := 315.
        ].
        recoveredBlock297Step = 315 ifTrue: [
            (recoveredBlock297Stack2 == nil) ifTrue: [recoveredBlock297PC := 331] ifFalse: [recoveredBlock297PC := 318].
        ].
        recoveredBlock297Step = 318 ifTrue: [
            recoveredBlock297PC := 319.
        ].
        recoveredBlock297Step = 319 ifTrue: [
            recoveredBlock297Stack1 := self.
            recoveredBlock297PC := 320.
        ].
        recoveredBlock297Step = 320 ifTrue: [
            recoveredBlock297Stack1 := (recoveredBlock297Stack1) solverConfig.
            recoveredBlock297PC := 322.
        ].
        recoveredBlock297Step = 322 ifTrue: [
            recoveredBlock297Stack2 := recoveredBlock297Local1.
            recoveredBlock297PC := 323.
        ].
        recoveredBlock297Step = 323 ifTrue: [
            recoveredBlock297Stack3 := self.
            recoveredBlock297PC := 324.
        ].
        recoveredBlock297Step = 324 ifTrue: [
            recoveredBlock297Stack3 := (recoveredBlock297Stack3) solverConfig.
            recoveredBlock297PC := 326.
        ].
        recoveredBlock297Step = 326 ifTrue: [
            recoveredBlock297Stack4 := recoveredBlock297Arg1.
            recoveredBlock297PC := 327.
        ].
        recoveredBlock297Step = 327 ifTrue: [
            recoveredBlock297Stack3 := (recoveredBlock297Stack3) at: (recoveredBlock297Stack4).
            recoveredBlock297PC := 329.
        ].
        recoveredBlock297Step = 329 ifTrue: [
            recoveredBlock297Stack1 := (recoveredBlock297Stack1) at: (recoveredBlock297Stack2) put: (recoveredBlock297Stack3).
            recoveredBlock297PC := 331.
        ].
        recoveredBlock297Step = 331 ifTrue: [
            recoveredBlock297Result := recoveredBlock297Stack1.
            recoveredBlock297Done := true.
        ].
    ].
    recoveredBlock297Result
].
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack0 := (recoveredStack0) solverConfig.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) removeAllKeys: (recoveredStack1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2062a8ec; bytecode file offset 0xf2729c"
!SGSimExperiment methodsFor: 'recovered'!
writeXMLEventGenerator: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := eventGeneratorConfig.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'EventGenerator'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'stepMode'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := eventGeneratorConfig.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := 'StepMode'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack5 := [
    'Steps'
].
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) enum: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'steps'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := eventGeneratorConfig.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack4 := 'Steps'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := [
    1
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) int: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := eventGeneratorConfig.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'StepMode'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := [
    'Steps'
].
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 'Break At'.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := 'BreakCondition'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'element'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := eventGeneratorConfig.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack4 := 'BreakCondition'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack5 := [
    ''
].
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack6 := [:block2811fa28Arg1 | 
    | block2811fa28Stack0 block2811fa28Stack1 block2811fa28Stack2 block2811fa28Stack3 block2811fa28Stack4 block2811fa28PC block2811fa28Step block2811fa28Done block2811fa28Result |
    block2811fa28Stack0 := self.
    block2811fa28PC := 4.
    block2811fa28Done := false.
    [block2811fa28Done not] whileTrue: [
        block2811fa28Step := block2811fa28PC.
        block2811fa28Step = 4 ifTrue: [
            block2811fa28Stack1 := block2811fa28Arg1.
            block2811fa28PC := 5.
        ].
        block2811fa28Step = 5 ifTrue: [
            block2811fa28Stack2 := [
    #()
].
            block2811fa28PC := 7.
        ].
        block2811fa28Step = 7 ifTrue: [
            block2811fa28PC := 13.
        ].
        block2811fa28Step = 13 ifTrue: [
            block2811fa28Stack1 := (block2811fa28Stack1) ifNil: (block2811fa28Stack2).
            block2811fa28PC := 15.
        ].
        block2811fa28Step = 15 ifTrue: [
            block2811fa28Stack2 := 1.
            block2811fa28PC := 17.
        ].
        block2811fa28Step = 17 ifTrue: [
            block2811fa28Stack3 := [
    ''
].
            block2811fa28PC := 19.
        ].
        block2811fa28Step = 19 ifTrue: [
            block2811fa28PC := 25.
        ].
        block2811fa28Step = 25 ifTrue: [
            block2811fa28Stack1 := (block2811fa28Stack1) at: (block2811fa28Stack2) ifAbsent: (block2811fa28Stack3).
            block2811fa28PC := 27.
        ].
        block2811fa28Step = 27 ifTrue: [
            block2811fa28Result := block2811fa28Stack1.
            block2811fa28Done := true.
        ].
    ].
    block2811fa28Result
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5) ifPresent: (recoveredStack6).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 'operator'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := eventGeneratorConfig.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := 'BreakCondition'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack5 := [
    '>='
].
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack6 := [:block2811fab8Arg1 | 
    | block2811fab8Stack0 block2811fab8Stack1 block2811fab8Stack2 block2811fab8Stack3 block2811fab8Stack4 block2811fab8PC block2811fab8Step block2811fab8Done block2811fab8Result |
    block2811fab8Stack0 := self.
    block2811fab8PC := 4.
    block2811fab8Done := false.
    [block2811fab8Done not] whileTrue: [
        block2811fab8Step := block2811fab8PC.
        block2811fab8Step = 4 ifTrue: [
            block2811fab8Stack1 := block2811fab8Arg1.
            block2811fab8PC := 5.
        ].
        block2811fab8Step = 5 ifTrue: [
            block2811fab8Stack2 := [
    #()
].
            block2811fab8PC := 7.
        ].
        block2811fab8Step = 7 ifTrue: [
            block2811fab8PC := 13.
        ].
        block2811fab8Step = 13 ifTrue: [
            block2811fab8Stack1 := (block2811fab8Stack1) ifNil: (block2811fab8Stack2).
            block2811fab8PC := 15.
        ].
        block2811fab8Step = 15 ifTrue: [
            block2811fab8Stack2 := 2.
            block2811fab8PC := 17.
        ].
        block2811fab8Step = 17 ifTrue: [
            block2811fab8Stack3 := [
    '>='
].
            block2811fab8PC := 19.
        ].
        block2811fab8Step = 19 ifTrue: [
            block2811fab8PC := 25.
        ].
        block2811fab8Step = 25 ifTrue: [
            block2811fab8Stack1 := (block2811fab8Stack1) at: (block2811fab8Stack2) ifAbsent: (block2811fab8Stack3).
            block2811fab8PC := 27.
        ].
        block2811fab8Step = 27 ifTrue: [
            block2811fab8Result := block2811fab8Stack1.
            block2811fab8Done := true.
        ].
    ].
    block2811fab8Result
].
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5) ifPresent: (recoveredStack6).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) enum: (recoveredStack3).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := 'level'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := eventGeneratorConfig.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := 'BreakCondition'.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack5 := [
    #[0 0 0 0 0 0 0 0]
].
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack6 := [:block2811fb48Arg1 | 
    | block2811fb48Stack0 block2811fb48Stack1 block2811fb48Stack2 block2811fb48Stack3 block2811fb48Stack4 block2811fb48PC block2811fb48Step block2811fb48Done block2811fb48Result |
    block2811fb48Stack0 := self.
    block2811fb48PC := 4.
    block2811fb48Done := false.
    [block2811fb48Done not] whileTrue: [
        block2811fb48Step := block2811fb48PC.
        block2811fb48Step = 4 ifTrue: [
            block2811fb48Stack1 := block2811fb48Arg1.
            block2811fb48PC := 5.
        ].
        block2811fb48Step = 5 ifTrue: [
            block2811fb48Stack2 := [
    #()
].
            block2811fb48PC := 7.
        ].
        block2811fb48Step = 7 ifTrue: [
            block2811fb48PC := 13.
        ].
        block2811fb48Step = 13 ifTrue: [
            block2811fb48Stack1 := (block2811fb48Stack1) ifNil: (block2811fb48Stack2).
            block2811fb48PC := 15.
        ].
        block2811fb48Step = 15 ifTrue: [
            block2811fb48Stack2 := 3.
            block2811fb48PC := 17.
        ].
        block2811fb48Step = 17 ifTrue: [
            block2811fb48Stack3 := [
    #[0 0 0 0 0 0 0 0]
].
            block2811fb48PC := 19.
        ].
        block2811fb48Step = 19 ifTrue: [
            block2811fb48PC := 25.
        ].
        block2811fb48Step = 25 ifTrue: [
            block2811fb48Stack1 := (block2811fb48Stack1) at: (block2811fb48Stack2) ifAbsent: (block2811fb48Stack3).
            block2811fb48PC := 27.
        ].
        block2811fb48Step = 27 ifTrue: [
            block2811fb48Result := block2811fb48Stack1.
            block2811fb48Done := true.
        ].
    ].
    block2811fb48Result
].
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5) ifPresent: (recoveredStack6).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) double: (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := eventGeneratorConfig.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := 'EventSimChannels'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 442] ifFalse: [recoveredPC := 276].
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack1 := eventGeneratorConfig.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := [:recoveredBlock278Arg1 :recoveredBlock278Arg2 | 
    | recoveredBlock278Local1 recoveredBlock278Stack0 recoveredBlock278Stack1 recoveredBlock278Stack2 recoveredBlock278Stack3 recoveredBlock278Stack4 recoveredBlock278Stack5 recoveredBlock278PC recoveredBlock278Step recoveredBlock278Done recoveredBlock278Result |
    recoveredBlock278Stack0 := self.
    recoveredBlock278PC := 284.
    recoveredBlock278Done := false.
    [recoveredBlock278Done not] whileTrue: [
        recoveredBlock278Step := recoveredBlock278PC.
        recoveredBlock278Step = 284 ifTrue: [
            recoveredBlock278Stack1 := recoveredBlock278Arg2.
            recoveredBlock278PC := 285.
        ].
        recoveredBlock278Step = 285 ifTrue: [
            recoveredBlock278Stack2 := 1.
            recoveredBlock278PC := 287.
        ].
        recoveredBlock278Step = 287 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) at: (recoveredBlock278Stack2).
            recoveredBlock278PC := 289.
        ].
        recoveredBlock278Step = 289 ifTrue: [
            recoveredBlock278Stack2 := 4.
            recoveredBlock278PC := 291.
        ].
        recoveredBlock278Step = 291 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) = (recoveredBlock278Stack2).
            recoveredBlock278PC := 292.
        ].
        recoveredBlock278Step = 292 ifTrue: [
            (recoveredBlock278Stack1) ifTrue: [recoveredBlock278PC := 296] ifFalse: [recoveredBlock278PC := 301].
        ].
        recoveredBlock278Step = 296 ifTrue: [
            recoveredBlock278Stack1 := 180.
            recoveredBlock278PC := 300.
        ].
        recoveredBlock278Step = 300 ifTrue: [
            recoveredBlock278Local1 := recoveredBlock278Stack1.
            recoveredBlock278PC := 301.
        ].
        recoveredBlock278Step = 301 ifTrue: [
            recoveredBlock278Stack1 := recoveredBlock278Arg2.
            recoveredBlock278PC := 302.
        ].
        recoveredBlock278Step = 302 ifTrue: [
            recoveredBlock278Stack2 := 1.
            recoveredBlock278PC := 304.
        ].
        recoveredBlock278Step = 304 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) at: (recoveredBlock278Stack2).
            recoveredBlock278PC := 306.
        ].
        recoveredBlock278Step = 306 ifTrue: [
            recoveredBlock278Stack2 := 6.
            recoveredBlock278PC := 308.
        ].
        recoveredBlock278Step = 308 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) = (recoveredBlock278Stack2).
            recoveredBlock278PC := 309.
        ].
        recoveredBlock278Step = 309 ifTrue: [
            (recoveredBlock278Stack1) ifTrue: [recoveredBlock278PC := 312] ifFalse: [recoveredBlock278PC := 317].
        ].
        recoveredBlock278Step = 312 ifTrue: [
            recoveredBlock278Stack1 := 120.
            recoveredBlock278PC := 316.
        ].
        recoveredBlock278Step = 316 ifTrue: [
            recoveredBlock278Local1 := recoveredBlock278Stack1.
            recoveredBlock278PC := 317.
        ].
        recoveredBlock278Step = 317 ifTrue: [
            recoveredBlock278Stack1 := recoveredBlock278Arg2.
            recoveredBlock278PC := 318.
        ].
        recoveredBlock278Step = 318 ifTrue: [
            recoveredBlock278Stack2 := 1.
            recoveredBlock278PC := 320.
        ].
        recoveredBlock278Step = 320 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) at: (recoveredBlock278Stack2).
            recoveredBlock278PC := 322.
        ].
        recoveredBlock278Step = 322 ifTrue: [
            recoveredBlock278Stack2 := 8.
            recoveredBlock278PC := 324.
        ].
        recoveredBlock278Step = 324 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) = (recoveredBlock278Stack2).
            recoveredBlock278PC := 325.
        ].
        recoveredBlock278Step = 325 ifTrue: [
            (recoveredBlock278Stack1) ifTrue: [recoveredBlock278PC := 328] ifFalse: [recoveredBlock278PC := 333].
        ].
        recoveredBlock278Step = 328 ifTrue: [
            recoveredBlock278Stack1 := 90.
            recoveredBlock278PC := 332.
        ].
        recoveredBlock278Step = 332 ifTrue: [
            recoveredBlock278Local1 := recoveredBlock278Stack1.
            recoveredBlock278PC := 333.
        ].
        recoveredBlock278Step = 333 ifTrue: [
            recoveredBlock278Stack1 := recoveredBlock278Local1.
            recoveredBlock278PC := 334.
        ].
        recoveredBlock278Step = 334 ifTrue: [
            (recoveredBlock278Stack1 ~~ nil) ifTrue: [recoveredBlock278PC := 343] ifFalse: [recoveredBlock278PC := 338].
        ].
        recoveredBlock278Step = 338 ifTrue: [
            recoveredBlock278Stack1 := 180.
            recoveredBlock278PC := 342.
        ].
        recoveredBlock278Step = 342 ifTrue: [
            recoveredBlock278Local1 := recoveredBlock278Stack1.
            recoveredBlock278PC := 343.
        ].
        recoveredBlock278Step = 343 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 346.
        ].
        recoveredBlock278Step = 346 ifTrue: [
            recoveredBlock278Stack2 := 'Channel'.
            recoveredBlock278PC := 348.
        ].
        recoveredBlock278Step = 348 ifTrue: [
            (recoveredBlock278Stack1) openComplex: (recoveredBlock278Stack2).
            recoveredBlock278PC := 350.
        ].
        recoveredBlock278Step = 350 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 353.
        ].
        recoveredBlock278Step = 353 ifTrue: [
            recoveredBlock278Stack2 := 'name'.
            recoveredBlock278PC := 355.
        ].
        recoveredBlock278Step = 355 ifTrue: [
            recoveredBlock278Stack3 := recoveredBlock278Arg1.
            recoveredBlock278PC := 356.
        ].
        recoveredBlock278Step = 356 ifTrue: [
            (recoveredBlock278Stack1) attr: (recoveredBlock278Stack2) nmToken: (recoveredBlock278Stack3).
            recoveredBlock278PC := 358.
        ].
        recoveredBlock278Step = 358 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 361.
        ].
        recoveredBlock278Step = 361 ifTrue: [
            recoveredBlock278Stack2 := 'degreesCS'.
            recoveredBlock278PC := 363.
        ].
        recoveredBlock278Step = 363 ifTrue: [
            recoveredBlock278Stack3 := recoveredBlock278Local1.
            recoveredBlock278PC := 364.
        ].
        recoveredBlock278Step = 364 ifTrue: [
            (recoveredBlock278Stack1) attr: (recoveredBlock278Stack2) int: (recoveredBlock278Stack3).
            recoveredBlock278PC := 366.
        ].
        recoveredBlock278Step = 366 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 369.
        ].
        recoveredBlock278Step = 369 ifTrue: [
            recoveredBlock278Stack2 := 'delay'.
            recoveredBlock278PC := 371.
        ].
        recoveredBlock278Step = 371 ifTrue: [
            recoveredBlock278Stack3 := recoveredBlock278Arg2.
            recoveredBlock278PC := 372.
        ].
        recoveredBlock278Step = 372 ifTrue: [
            recoveredBlock278Stack4 := 2.
            recoveredBlock278PC := 374.
        ].
        recoveredBlock278Step = 374 ifTrue: [
            recoveredBlock278Stack3 := (recoveredBlock278Stack3) at: (recoveredBlock278Stack4).
            recoveredBlock278PC := 376.
        ].
        recoveredBlock278Step = 376 ifTrue: [
            recoveredBlock278Stack4 := [
    #[0 0 0 0 0 0 0 0]
].
            recoveredBlock278PC := 378.
        ].
        recoveredBlock278Step = 378 ifTrue: [
            recoveredBlock278PC := 385.
        ].
        recoveredBlock278Step = 385 ifTrue: [
            recoveredBlock278Stack3 := (recoveredBlock278Stack3) ifNil: (recoveredBlock278Stack4).
            recoveredBlock278PC := 387.
        ].
        recoveredBlock278Step = 387 ifTrue: [
            (recoveredBlock278Stack1) attr: (recoveredBlock278Stack2) double: (recoveredBlock278Stack3).
            recoveredBlock278PC := 389.
        ].
        recoveredBlock278Step = 389 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 392.
        ].
        recoveredBlock278Step = 392 ifTrue: [
            recoveredBlock278Stack2 := 'enabled'.
            recoveredBlock278PC := 394.
        ].
        recoveredBlock278Step = 394 ifTrue: [
            recoveredBlock278Stack3 := true.
            recoveredBlock278PC := 395.
        ].
        recoveredBlock278Step = 395 ifTrue: [
            (recoveredBlock278Stack1) attr: (recoveredBlock278Stack2) boolean: (recoveredBlock278Stack3).
            recoveredBlock278PC := 397.
        ].
        recoveredBlock278Step = 397 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 400.
        ].
        recoveredBlock278Step = 400 ifTrue: [
            recoveredBlock278Stack2 := 'mode'.
            recoveredBlock278PC := 402.
        ].
        recoveredBlock278Step = 402 ifTrue: [
            recoveredBlock278Stack3 := recoveredBlock278Arg2.
            recoveredBlock278PC := 403.
        ].
        recoveredBlock278Step = 403 ifTrue: [
            recoveredBlock278Stack4 := 3.
            recoveredBlock278PC := 405.
        ].
        recoveredBlock278Step = 405 ifTrue: [
            recoveredBlock278Stack3 := (recoveredBlock278Stack3) at: (recoveredBlock278Stack4).
            recoveredBlock278PC := 407.
        ].
        recoveredBlock278Step = 407 ifTrue: [
            (recoveredBlock278Stack1) attr: (recoveredBlock278Stack2) enum: (recoveredBlock278Stack3).
            recoveredBlock278PC := 409.
        ].
        recoveredBlock278Step = 409 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 412.
        ].
        recoveredBlock278Step = 412 ifTrue: [
            recoveredBlock278Stack2 := 'phase'.
            recoveredBlock278PC := 414.
        ].
        recoveredBlock278Step = 414 ifTrue: [
            recoveredBlock278Stack3 := #[0 0 0 0 0 0 0 0].
            recoveredBlock278PC := 416.
        ].
        recoveredBlock278Step = 416 ifTrue: [
            (recoveredBlock278Stack1) attr: (recoveredBlock278Stack2) double: (recoveredBlock278Stack3).
            recoveredBlock278PC := 418.
        ].
        recoveredBlock278Step = 418 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 421.
        ].
        recoveredBlock278Step = 421 ifTrue: [
            recoveredBlock278Stack2 := 'priority'.
            recoveredBlock278PC := 423.
        ].
        recoveredBlock278Step = 423 ifTrue: [
            recoveredBlock278Stack3 := recoveredBlock278Arg2.
            recoveredBlock278PC := 424.
        ].
        recoveredBlock278Step = 424 ifTrue: [
            recoveredBlock278Stack4 := 5.
            recoveredBlock278PC := 426.
        ].
        recoveredBlock278Step = 426 ifTrue: [
            recoveredBlock278Stack3 := (recoveredBlock278Stack3) at: (recoveredBlock278Stack4).
            recoveredBlock278PC := 428.
        ].
        recoveredBlock278Step = 428 ifTrue: [
            (recoveredBlock278Stack1) attr: (recoveredBlock278Stack2) int: (recoveredBlock278Stack3).
            recoveredBlock278PC := 430.
        ].
        recoveredBlock278Step = 430 ifTrue: [
            recoveredBlock278Stack1 := recoveredArg1.
            recoveredBlock278PC := 433.
        ].
        recoveredBlock278Step = 433 ifTrue: [
            recoveredBlock278Stack1 := (recoveredBlock278Stack1) closeComplex.
            recoveredBlock278PC := 435.
        ].
        recoveredBlock278Step = 435 ifTrue: [
            recoveredBlock278Result := recoveredBlock278Stack1.
            recoveredBlock278Done := true.
        ].
    ].
    recoveredBlock278Result
].
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredPC := 586.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack2 := [:recoveredBlock445Arg1 :recoveredBlock445Arg2 | 
    | recoveredBlock445Stack0 recoveredBlock445Stack1 recoveredBlock445Stack2 recoveredBlock445Stack3 recoveredBlock445Stack4 recoveredBlock445Stack5 recoveredBlock445Stack6 recoveredBlock445PC recoveredBlock445Step recoveredBlock445Done recoveredBlock445Result |
    recoveredBlock445Stack0 := self.
    recoveredBlock445PC := 452.
    recoveredBlock445Done := false.
    [recoveredBlock445Done not] whileTrue: [
        recoveredBlock445Step := recoveredBlock445PC.
        recoveredBlock445Step = 452 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 455.
        ].
        recoveredBlock445Step = 455 ifTrue: [
            recoveredBlock445Stack2 := 'Channel'.
            recoveredBlock445PC := 457.
        ].
        recoveredBlock445Step = 457 ifTrue: [
            (recoveredBlock445Stack1) openComplex: (recoveredBlock445Stack2).
            recoveredBlock445PC := 459.
        ].
        recoveredBlock445Step = 459 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 462.
        ].
        recoveredBlock445Step = 462 ifTrue: [
            recoveredBlock445Stack2 := 'name'.
            recoveredBlock445PC := 464.
        ].
        recoveredBlock445Step = 464 ifTrue: [
            recoveredBlock445Stack3 := recoveredBlock445Arg1.
            recoveredBlock445PC := 465.
        ].
        recoveredBlock445Step = 465 ifTrue: [
            (recoveredBlock445Stack1) attr: (recoveredBlock445Stack2) string: (recoveredBlock445Stack3).
            recoveredBlock445PC := 467.
        ].
        recoveredBlock445Step = 467 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 470.
        ].
        recoveredBlock445Step = 470 ifTrue: [
            recoveredBlock445Stack2 := 'degreesCS'.
            recoveredBlock445PC := 472.
        ].
        recoveredBlock445Step = 472 ifTrue: [
            recoveredBlock445Stack3 := recoveredBlock445Arg2.
            recoveredBlock445PC := 473.
        ].
        recoveredBlock445Step = 473 ifTrue: [
            recoveredBlock445Stack4 := 'DegreesCS'.
            recoveredBlock445PC := 475.
        ].
        recoveredBlock445Step = 475 ifTrue: [
            recoveredBlock445Stack5 := [
    180
].
            recoveredBlock445PC := 477.
        ].
        recoveredBlock445Step = 477 ifTrue: [
            recoveredBlock445PC := 485.
        ].
        recoveredBlock445Step = 485 ifTrue: [
            recoveredBlock445Stack3 := (recoveredBlock445Stack3) at: (recoveredBlock445Stack4) ifAbsent: (recoveredBlock445Stack5).
            recoveredBlock445PC := 487.
        ].
        recoveredBlock445Step = 487 ifTrue: [
            (recoveredBlock445Stack1) attr: (recoveredBlock445Stack2) int: (recoveredBlock445Stack3).
            recoveredBlock445PC := 489.
        ].
        recoveredBlock445Step = 489 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 492.
        ].
        recoveredBlock445Step = 492 ifTrue: [
            recoveredBlock445Stack2 := 'delay'.
            recoveredBlock445PC := 494.
        ].
        recoveredBlock445Step = 494 ifTrue: [
            recoveredBlock445Stack3 := recoveredBlock445Arg2.
            recoveredBlock445PC := 495.
        ].
        recoveredBlock445Step = 495 ifTrue: [
            recoveredBlock445Stack4 := 'Delay'.
            recoveredBlock445PC := 498.
        ].
        recoveredBlock445Step = 498 ifTrue: [
            recoveredBlock445Stack3 := (recoveredBlock445Stack3) at: (recoveredBlock445Stack4).
            recoveredBlock445PC := 500.
        ].
        recoveredBlock445Step = 500 ifTrue: [
            recoveredBlock445Stack4 := [
    #[0 0 0 0 0 0 0 0]
].
            recoveredBlock445PC := 504.
        ].
        recoveredBlock445Step = 504 ifTrue: [
            recoveredBlock445PC := 511.
        ].
        recoveredBlock445Step = 511 ifTrue: [
            recoveredBlock445Stack3 := (recoveredBlock445Stack3) ifNil: (recoveredBlock445Stack4).
            recoveredBlock445PC := 513.
        ].
        recoveredBlock445Step = 513 ifTrue: [
            (recoveredBlock445Stack1) attr: (recoveredBlock445Stack2) double: (recoveredBlock445Stack3).
            recoveredBlock445PC := 515.
        ].
        recoveredBlock445Step = 515 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 518.
        ].
        recoveredBlock445Step = 518 ifTrue: [
            recoveredBlock445Stack2 := 'enabled'.
            recoveredBlock445PC := 520.
        ].
        recoveredBlock445Step = 520 ifTrue: [
            recoveredBlock445Stack3 := recoveredBlock445Arg2.
            recoveredBlock445PC := 521.
        ].
        recoveredBlock445Step = 521 ifTrue: [
            recoveredBlock445Stack4 := 'enabled'.
            recoveredBlock445PC := 523.
        ].
        recoveredBlock445Step = 523 ifTrue: [
            recoveredBlock445Stack5 := [
    true
].
            recoveredBlock445PC := 526.
        ].
        recoveredBlock445Step = 526 ifTrue: [
            recoveredBlock445PC := 532.
        ].
        recoveredBlock445Step = 532 ifTrue: [
            recoveredBlock445Stack3 := (recoveredBlock445Stack3) at: (recoveredBlock445Stack4) ifAbsent: (recoveredBlock445Stack5).
            recoveredBlock445PC := 534.
        ].
        recoveredBlock445Step = 534 ifTrue: [
            (recoveredBlock445Stack1) attr: (recoveredBlock445Stack2) boolean: (recoveredBlock445Stack3).
            recoveredBlock445PC := 536.
        ].
        recoveredBlock445Step = 536 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 539.
        ].
        recoveredBlock445Step = 539 ifTrue: [
            recoveredBlock445Stack2 := 'mode'.
            recoveredBlock445PC := 541.
        ].
        recoveredBlock445Step = 541 ifTrue: [
            recoveredBlock445Stack3 := recoveredBlock445Arg2.
            recoveredBlock445PC := 542.
        ].
        recoveredBlock445Step = 542 ifTrue: [
            recoveredBlock445Stack4 := 'Mode'.
            recoveredBlock445PC := 546.
        ].
        recoveredBlock445Step = 546 ifTrue: [
            recoveredBlock445Stack3 := (recoveredBlock445Stack3) at: (recoveredBlock445Stack4).
            recoveredBlock445PC := 548.
        ].
        recoveredBlock445Step = 548 ifTrue: [
            (recoveredBlock445Stack1) attr: (recoveredBlock445Stack2) enum: (recoveredBlock445Stack3).
            recoveredBlock445PC := 550.
        ].
        recoveredBlock445Step = 550 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 553.
        ].
        recoveredBlock445Step = 553 ifTrue: [
            recoveredBlock445Stack2 := 'phase'.
            recoveredBlock445PC := 555.
        ].
        recoveredBlock445Step = 555 ifTrue: [
            recoveredBlock445Stack3 := recoveredBlock445Arg2.
            recoveredBlock445PC := 556.
        ].
        recoveredBlock445Step = 556 ifTrue: [
            recoveredBlock445Stack4 := 'Phase'.
            recoveredBlock445PC := 560.
        ].
        recoveredBlock445Step = 560 ifTrue: [
            recoveredBlock445Stack3 := (recoveredBlock445Stack3) at: (recoveredBlock445Stack4).
            recoveredBlock445PC := 562.
        ].
        recoveredBlock445Step = 562 ifTrue: [
            (recoveredBlock445Stack1) attr: (recoveredBlock445Stack2) double: (recoveredBlock445Stack3).
            recoveredBlock445PC := 564.
        ].
        recoveredBlock445Step = 564 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 567.
        ].
        recoveredBlock445Step = 567 ifTrue: [
            recoveredBlock445Stack2 := 'priority'.
            recoveredBlock445PC := 569.
        ].
        recoveredBlock445Step = 569 ifTrue: [
            recoveredBlock445Stack3 := recoveredBlock445Arg2.
            recoveredBlock445PC := 570.
        ].
        recoveredBlock445Step = 570 ifTrue: [
            recoveredBlock445Stack4 := 'Prio'.
            recoveredBlock445PC := 574.
        ].
        recoveredBlock445Step = 574 ifTrue: [
            recoveredBlock445Stack3 := (recoveredBlock445Stack3) at: (recoveredBlock445Stack4).
            recoveredBlock445PC := 576.
        ].
        recoveredBlock445Step = 576 ifTrue: [
            (recoveredBlock445Stack1) attr: (recoveredBlock445Stack2) int: (recoveredBlock445Stack3).
            recoveredBlock445PC := 578.
        ].
        recoveredBlock445Step = 578 ifTrue: [
            recoveredBlock445Stack1 := recoveredArg1.
            recoveredBlock445PC := 581.
        ].
        recoveredBlock445Step = 581 ifTrue: [
            recoveredBlock445Stack1 := (recoveredBlock445Stack1) closeComplex.
            recoveredBlock445PC := 583.
        ].
        recoveredBlock445Step = 583 ifTrue: [
            recoveredBlock445Result := recoveredBlock445Stack1.
            recoveredBlock445Done := true.
        ].
    ].
    recoveredBlock445Result
].
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack1) keysAndValuesDo: (recoveredStack2).
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            (recoveredStack1) closeComplex.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x206389d0; bytecode file offset 0xf353b0"
!SGSimExperiment methodsFor: 'recovered'!
writeXML: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := sgClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 recoveredBlock6Value4 |
    recoveredBlock6Value0 := recoveredArg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) controller.
    recoveredBlock6Value2 := name.
    recoveredBlock6Value3 := ('Experiment "') , (recoveredBlock6Value2).
    recoveredBlock6Value4 := (recoveredBlock6Value3) , ('" is missing own class').
    (recoveredBlock6Value1) inconsistencyFound: (recoveredBlock6Value4).
    ^nil
].
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := 'Experiment'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) openComplex: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := 'ID'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := dbObject.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) dbObject: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 'Version'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := ASDDisplayStrings.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := (recoveredStack3) undefinedString.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := 'Name'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack3 := name.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) id: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 'timestamp'.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := timeStamp.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := (recoveredStack3) seconds.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) dateTime: (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'comment'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := comment.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) string: (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := simViewConfig.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 258] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 'collapsedView'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := simViewConfig.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := 'collapsedView'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack5 := [
    false
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 'animatedStates'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := simViewConfig.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := 'animatedStates'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack5 := [
    false
].
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4) ifAbsent: (recoveredStack5).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) attr: (recoveredStack2) boolean: (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := simViewConfig.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 'offlineMeasureRate'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := [:recoveredBlock138Arg1 | 
    | recoveredBlock138Value0 recoveredBlock138Value1 recoveredBlock138Value2 |
    recoveredBlock138Value0 := recoveredArg1.
    recoveredBlock138Value1 := recoveredBlock138Arg1.
    recoveredBlock138Value2 := (recoveredBlock138Value0) attr: ('offlineMeasureRate') nzqr: (recoveredBlock138Value1).
    recoveredBlock138Value2
].
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := 'Call_389889'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack2 := 'DET102070'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := simViewConfig.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := 'measureTask'.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := [:recoveredBlock174Arg1 | 
    | recoveredBlock174Stack0 recoveredBlock174Stack1 recoveredBlock174Stack2 recoveredBlock174Stack3 recoveredBlock174Stack4 recoveredBlock174PC recoveredBlock174Step recoveredBlock174Done recoveredBlock174Result |
    recoveredBlock174Stack0 := self.
    recoveredBlock174PC := 180.
    recoveredBlock174Done := false.
    [recoveredBlock174Done not] whileTrue: [
        recoveredBlock174Step := recoveredBlock174PC.
        recoveredBlock174Step = 180 ifTrue: [
            recoveredBlock174Stack1 := recoveredBlock174Arg1.
            recoveredBlock174PC := 181.
        ].
        recoveredBlock174Step = 181 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) isString.
            recoveredBlock174PC := 183.
        ].
        recoveredBlock174Step = 183 ifTrue: [
            (recoveredBlock174Stack1) ifTrue: [recoveredBlock174PC := 186] ifFalse: [recoveredBlock174PC := 198].
        ].
        recoveredBlock174Step = 186 ifTrue: [
            recoveredBlock174Stack1 := recoveredArg1.
            recoveredBlock174PC := 189.
        ].
        recoveredBlock174Step = 189 ifTrue: [
            recoveredBlock174Stack2 := 'acquisitionTaskName'.
            recoveredBlock174PC := 191.
        ].
        recoveredBlock174Step = 191 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Arg1.
            recoveredBlock174PC := 192.
        ].
        recoveredBlock174Step = 192 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) attr: (recoveredBlock174Stack2) string: (recoveredBlock174Stack3).
            recoveredBlock174PC := 194.
        ].
        recoveredBlock174Step = 194 ifTrue: [
            recoveredBlock174PC := 206.
        ].
        recoveredBlock174Step = 198 ifTrue: [
            recoveredBlock174Stack1 := recoveredArg1.
            recoveredBlock174PC := 201.
        ].
        recoveredBlock174Step = 201 ifTrue: [
            recoveredBlock174Stack2 := 'acquisitionTaskID'.
            recoveredBlock174PC := 203.
        ].
        recoveredBlock174Step = 203 ifTrue: [
            recoveredBlock174Stack3 := recoveredBlock174Arg1.
            recoveredBlock174PC := 204.
        ].
        recoveredBlock174Step = 204 ifTrue: [
            recoveredBlock174Stack1 := (recoveredBlock174Stack1) attr: (recoveredBlock174Stack2) nnInt: (recoveredBlock174Stack3).
            recoveredBlock174PC := 206.
        ].
        recoveredBlock174Step = 206 ifTrue: [
            recoveredBlock174Result := recoveredBlock174Stack1.
            recoveredBlock174Done := true.
        ].
    ].
    recoveredBlock174Result
].
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := simViewConfig.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := 'simViewPos'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := [:recoveredBlock216Arg1 | 
    | recoveredBlock216Value0 recoveredBlock216Value1 recoveredBlock216Value2 |
    recoveredBlock216Value0 := recoveredArg1.
    recoveredBlock216Value1 := recoveredBlock216Arg1.
    recoveredBlock216Value2 := (recoveredBlock216Value0) complex: ('Position') point: (recoveredBlock216Value1).
    recoveredBlock216Value2
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := simViewConfig.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := 'simViewSize'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack4 := [:recoveredBlock240Arg1 | 
    | recoveredBlock240Value0 recoveredBlock240Value1 recoveredBlock240Value2 |
    recoveredBlock240Value0 := recoveredArg1.
    recoveredBlock240Value1 := recoveredBlock240Arg1.
    recoveredBlock240Value2 := (recoveredBlock240Value0) complex: ('Size') size: (recoveredBlock240Value1).
    recoveredBlock240Value2
].
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3) ifPresent: (recoveredStack4).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack0) writeXMLDataGenerator: (recoveredStack1).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            (recoveredStack0) writeXMLEventGenerator: (recoveredStack1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := 'Layers'.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := 'Layer'.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack1 := 'LayerLayout'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack0 := measureWindowsConfig.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack1 := [:recoveredBlock292Arg1 :recoveredBlock292Arg2 | 
    | recoveredBlock292Value0 recoveredBlock292Value1 recoveredBlock292Value2 recoveredBlock292Value3 recoveredBlock292Value4 |
    recoveredBlock292Value0 := recoveredBlock292Arg2.
    recoveredBlock292Value1 := recoveredArg1.
    recoveredBlock292Value2 := recoveredBlock292Arg1.
    recoveredBlock292Value3 := (self) sgClass.
    recoveredBlock292Value4 := (recoveredBlock292Value0) writeXML: (recoveredBlock292Value1) name: (recoveredBlock292Value2) class: (recoveredBlock292Value3).
    recoveredBlock292Value4
].
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack0 := calibrationWindowsConfig.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := [:recoveredBlock314Arg1 :recoveredBlock314Arg2 | 
    | recoveredBlock314Value0 recoveredBlock314Value1 recoveredBlock314Value2 recoveredBlock314Value3 recoveredBlock314Value4 |
    recoveredBlock314Value0 := recoveredBlock314Arg2.
    recoveredBlock314Value1 := recoveredArg1.
    recoveredBlock314Value2 := recoveredBlock314Arg1.
    recoveredBlock314Value3 := (self) sgClass.
    recoveredBlock314Value4 := (recoveredBlock314Value0) writeXML: (recoveredBlock314Value1) name: (recoveredBlock314Value2) class: (recoveredBlock314Value3).
    recoveredBlock314Value4
].
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := 'Call_93130'.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) writeXMLMonitorConfig: (recoveredStack1).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := solverConfig.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 453] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack1 := 'CTSolvers'.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack0 := solverConfig.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := [:recoveredBlock375Arg1 :recoveredBlock375Arg2 | 
    | recoveredBlock375Local1 recoveredBlock375Stack0 recoveredBlock375Stack1 recoveredBlock375Stack2 recoveredBlock375Stack3 recoveredBlock375PC recoveredBlock375Step recoveredBlock375Done recoveredBlock375Result |
    recoveredBlock375Stack0 := self.
    recoveredBlock375PC := 382.
    recoveredBlock375Done := false.
    [recoveredBlock375Done not] whileTrue: [
        recoveredBlock375Step := recoveredBlock375PC.
        recoveredBlock375Step = 382 ifTrue: [
            recoveredBlock375Stack0 := (recoveredBlock375Stack0) sgClass.
            recoveredBlock375PC := 384.
        ].
        recoveredBlock375Step = 384 ifTrue: [
            recoveredBlock375Stack1 := recoveredBlock375Arg1.
            recoveredBlock375PC := 385.
        ].
        recoveredBlock375Step = 385 ifTrue: [
            recoveredBlock375Stack0 := (recoveredBlock375Stack0) elementAliasName: (recoveredBlock375Stack1).
            recoveredBlock375PC := 387.
        ].
        recoveredBlock375Step = 387 ifTrue: [
            recoveredBlock375Local1 := recoveredBlock375Stack0.
            recoveredBlock375PC := 388.
        ].
        recoveredBlock375Step = 388 ifTrue: [
            recoveredBlock375Stack0 := recoveredBlock375Local1.
            recoveredBlock375PC := 389.
        ].
        recoveredBlock375Step = 389 ifTrue: [
            (recoveredBlock375Stack0 == nil) ifTrue: [recoveredBlock375PC := 432] ifFalse: [recoveredBlock375PC := 392].
        ].
        recoveredBlock375Step = 392 ifTrue: [
            recoveredBlock375Stack0 := recoveredArg1.
            recoveredBlock375PC := 395.
        ].
        recoveredBlock375Step = 395 ifTrue: [
            recoveredBlock375Stack1 := 'CTSolver'.
            recoveredBlock375PC := 398.
        ].
        recoveredBlock375Step = 398 ifTrue: [
            (recoveredBlock375Stack0) openComplex: (recoveredBlock375Stack1).
            recoveredBlock375PC := 400.
        ].
        recoveredBlock375Step = 400 ifTrue: [
            recoveredBlock375Stack0 := recoveredArg1.
            recoveredBlock375PC := 403.
        ].
        recoveredBlock375Step = 403 ifTrue: [
            recoveredBlock375Stack1 := 'elementName'.
            recoveredBlock375PC := 406.
        ].
        recoveredBlock375Step = 406 ifTrue: [
            recoveredBlock375Stack2 := recoveredBlock375Local1.
            recoveredBlock375PC := 407.
        ].
        recoveredBlock375Step = 407 ifTrue: [
            recoveredBlock375Stack2 := (recoveredBlock375Stack2) elementName.
            recoveredBlock375PC := 411.
        ].
        recoveredBlock375Step = 411 ifTrue: [
            (recoveredBlock375Stack0) attr: (recoveredBlock375Stack1) nmToken: (recoveredBlock375Stack2).
            recoveredBlock375PC := 415.
        ].
        recoveredBlock375Step = 415 ifTrue: [
            recoveredBlock375Stack0 := recoveredBlock375Arg2.
            recoveredBlock375PC := 416.
        ].
        recoveredBlock375Step = 416 ifTrue: [
            recoveredBlock375Stack1 := recoveredArg1.
            recoveredBlock375PC := 419.
        ].
        recoveredBlock375Step = 419 ifTrue: [
            (recoveredBlock375Stack0) writeXML: (recoveredBlock375Stack1).
            recoveredBlock375PC := 423.
        ].
        recoveredBlock375Step = 423 ifTrue: [
            recoveredBlock375Stack0 := recoveredArg1.
            recoveredBlock375PC := 426.
        ].
        recoveredBlock375Step = 426 ifTrue: [
            recoveredBlock375Stack0 := (recoveredBlock375Stack0) closeComplex.
            recoveredBlock375PC := 428.
        ].
        recoveredBlock375Step = 428 ifTrue: [
            recoveredBlock375PC := 445.
        ].
        recoveredBlock375Step = 432 ifTrue: [
            recoveredBlock375Stack0 := recoveredArg1.
            recoveredBlock375PC := 435.
        ].
        recoveredBlock375Step = 435 ifTrue: [
            recoveredBlock375Stack0 := (recoveredBlock375Stack0) controller.
            recoveredBlock375PC := 436.
        ].
        recoveredBlock375Step = 436 ifTrue: [
            recoveredBlock375Stack1 := 'CTSolver variable'.
            recoveredBlock375PC := 440.
        ].
        recoveredBlock375Step = 440 ifTrue: [
            recoveredBlock375Stack2 := recoveredBlock375Arg1.
            recoveredBlock375PC := 441.
        ].
        recoveredBlock375Step = 441 ifTrue: [
            recoveredBlock375Stack0 := (recoveredBlock375Stack0) badRef: (recoveredBlock375Stack1) oid: (recoveredBlock375Stack2).
            recoveredBlock375PC := 445.
        ].
        recoveredBlock375Step = 445 ifTrue: [
            recoveredBlock375Result := recoveredBlock375Stack0.
            recoveredBlock375Done := true.
        ].
    ].
    recoveredBlock375Result
].
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack0 := loggerConfig.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 471] ifFalse: [recoveredPC := 458].
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack0 := loggerConfig.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := (recoveredStack2) sgClass.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            (recoveredStack0) writeXMLDataLogger: (recoveredStack1) sgClass: (recoveredStack2).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack1 := 'Elements'.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack0) openComplex: (recoveredStack1).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack0 := (recoveredStack0) idrefs.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack1 := [:recoveredBlock487Arg1 | 
    | recoveredBlock487Stack0 recoveredBlock487Stack1 recoveredBlock487Stack2 recoveredBlock487Stack3 recoveredBlock487Stack4 recoveredBlock487Stack5 recoveredBlock487PC recoveredBlock487Step recoveredBlock487Done recoveredBlock487Result |
    recoveredBlock487Stack0 := self.
    recoveredBlock487PC := 494.
    recoveredBlock487Done := false.
    [recoveredBlock487Done not] whileTrue: [
        recoveredBlock487Step := recoveredBlock487PC.
        recoveredBlock487Step = 494 ifTrue: [
            recoveredBlock487Stack1 := nil.
            recoveredBlock487PC := 495.
        ].
        recoveredBlock487Step = 495 ifTrue: [
            recoveredBlock487Stack2 := recoveredBlock487Arg1.
            recoveredBlock487PC := 496.
        ].
        recoveredBlock487Step = 496 ifTrue: [
            (recoveredBlock487Stack2 == nil) ifTrue: [recoveredBlock487PC := 641] ifFalse: [recoveredBlock487PC := 500].
        ].
        recoveredBlock487Step = 500 ifTrue: [
            recoveredBlock487PC := 501.
        ].
        recoveredBlock487Step = 501 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 504.
        ].
        recoveredBlock487Step = 504 ifTrue: [
            recoveredBlock487Stack2 := recoveredBlock487Arg1.
            recoveredBlock487PC := 505.
        ].
        recoveredBlock487Step = 505 ifTrue: [
            recoveredBlock487Stack3 := 3.
            recoveredBlock487PC := 507.
        ].
        recoveredBlock487Step = 507 ifTrue: [
            recoveredBlock487Stack2 := (recoveredBlock487Stack2) at: (recoveredBlock487Stack3).
            recoveredBlock487PC := 511.
        ].
        recoveredBlock487Step = 511 ifTrue: [
            (recoveredBlock487Stack2) ifTrue: [recoveredBlock487PC := 514] ifFalse: [recoveredBlock487PC := 522].
        ].
        recoveredBlock487Step = 514 ifTrue: [
            recoveredBlock487Stack2 := 'Calibration'.
            recoveredBlock487PC := 518.
        ].
        recoveredBlock487Step = 518 ifTrue: [
            recoveredBlock487PC := 526.
        ].
        recoveredBlock487Step = 522 ifTrue: [
            recoveredBlock487Stack2 := 'Measurement'.
            recoveredBlock487PC := 526.
        ].
        recoveredBlock487Step = 526 ifTrue: [
            (recoveredBlock487Stack1) openComplex: (recoveredBlock487Stack2).
            recoveredBlock487PC := 528.
        ].
        recoveredBlock487Step = 528 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 531.
        ].
        recoveredBlock487Step = 531 ifTrue: [
            recoveredBlock487Stack2 := 'Device'.
            recoveredBlock487PC := 534.
        ].
        recoveredBlock487Step = 534 ifTrue: [
            (recoveredBlock487Stack1) openComplex: (recoveredBlock487Stack2).
            recoveredBlock487PC := 536.
        ].
        recoveredBlock487Step = 536 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 539.
        ].
        recoveredBlock487Step = 539 ifTrue: [
            recoveredBlock487Stack2 := 'ID'.
            recoveredBlock487PC := 541.
        ].
        recoveredBlock487Step = 541 ifTrue: [
            recoveredBlock487Stack3 := 'default'.
            recoveredBlock487PC := 544.
        ].
        recoveredBlock487Step = 544 ifTrue: [
            (recoveredBlock487Stack1) attr: (recoveredBlock487Stack2) id: (recoveredBlock487Stack3).
            recoveredBlock487PC := 546.
        ].
        recoveredBlock487Step = 546 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 549.
        ].
        recoveredBlock487Step = 549 ifTrue: [
            recoveredBlock487Stack2 := 'Name'.
            recoveredBlock487PC := 551.
        ].
        recoveredBlock487Step = 551 ifTrue: [
            recoveredBlock487Stack3 := 'default'.
            recoveredBlock487PC := 554.
        ].
        recoveredBlock487Step = 554 ifTrue: [
            (recoveredBlock487Stack1) attr: (recoveredBlock487Stack2) string: (recoveredBlock487Stack3).
            recoveredBlock487PC := 556.
        ].
        recoveredBlock487Step = 556 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 559.
        ].
        recoveredBlock487Step = 559 ifTrue: [
            recoveredBlock487Stack2 := 'Group'.
            recoveredBlock487PC := 562.
        ].
        recoveredBlock487Step = 562 ifTrue: [
            (recoveredBlock487Stack1) openComplex: (recoveredBlock487Stack2).
            recoveredBlock487PC := 564.
        ].
        recoveredBlock487Step = 564 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 567.
        ].
        recoveredBlock487Step = 567 ifTrue: [
            recoveredBlock487Stack2 := 'ID'.
            recoveredBlock487PC := 569.
        ].
        recoveredBlock487Step = 569 ifTrue: [
            recoveredBlock487Stack3 := 'default'.
            recoveredBlock487PC := 572.
        ].
        recoveredBlock487Step = 572 ifTrue: [
            (recoveredBlock487Stack1) attr: (recoveredBlock487Stack2) id: (recoveredBlock487Stack3).
            recoveredBlock487PC := 574.
        ].
        recoveredBlock487Step = 574 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 577.
        ].
        recoveredBlock487Step = 577 ifTrue: [
            recoveredBlock487Stack2 := 'Name'.
            recoveredBlock487PC := 579.
        ].
        recoveredBlock487Step = 579 ifTrue: [
            recoveredBlock487Stack3 := 'default'.
            recoveredBlock487PC := 582.
        ].
        recoveredBlock487Step = 582 ifTrue: [
            (recoveredBlock487Stack1) attr: (recoveredBlock487Stack2) string: (recoveredBlock487Stack3).
            recoveredBlock487PC := 584.
        ].
        recoveredBlock487Step = 584 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 587.
        ].
        recoveredBlock487Step = 587 ifTrue: [
            recoveredBlock487Stack2 := 'Element'.
            recoveredBlock487PC := 590.
        ].
        recoveredBlock487Step = 590 ifTrue: [
            (recoveredBlock487Stack1) openComplex: (recoveredBlock487Stack2).
            recoveredBlock487PC := 592.
        ].
        recoveredBlock487Step = 592 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 595.
        ].
        recoveredBlock487Step = 595 ifTrue: [
            recoveredBlock487Stack2 := 'Name'.
            recoveredBlock487PC := 597.
        ].
        recoveredBlock487Step = 597 ifTrue: [
            recoveredBlock487Stack3 := recoveredBlock487Arg1.
            recoveredBlock487PC := 598.
        ].
        recoveredBlock487Step = 598 ifTrue: [
            recoveredBlock487Stack4 := 2.
            recoveredBlock487PC := 600.
        ].
        recoveredBlock487Step = 600 ifTrue: [
            recoveredBlock487Stack3 := (recoveredBlock487Stack3) at: (recoveredBlock487Stack4).
            recoveredBlock487PC := 605.
        ].
        recoveredBlock487Step = 605 ifTrue: [
            (recoveredBlock487Stack1) attr: (recoveredBlock487Stack2) string: (recoveredBlock487Stack3).
            recoveredBlock487PC := 607.
        ].
        recoveredBlock487Step = 607 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 610.
        ].
        recoveredBlock487Step = 610 ifTrue: [
            recoveredBlock487Stack2 := 'ID'.
            recoveredBlock487PC := 612.
        ].
        recoveredBlock487Step = 612 ifTrue: [
            recoveredBlock487Stack3 := recoveredBlock487Arg1.
            recoveredBlock487PC := 613.
        ].
        recoveredBlock487Step = 613 ifTrue: [
            recoveredBlock487Stack4 := 1.
            recoveredBlock487PC := 615.
        ].
        recoveredBlock487Step = 615 ifTrue: [
            recoveredBlock487Stack3 := (recoveredBlock487Stack3) at: (recoveredBlock487Stack4).
            recoveredBlock487PC := 619.
        ].
        recoveredBlock487Step = 619 ifTrue: [
            (recoveredBlock487Stack1) attr: (recoveredBlock487Stack2) id: (recoveredBlock487Stack3).
            recoveredBlock487PC := 621.
        ].
        recoveredBlock487Step = 621 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 624.
        ].
        recoveredBlock487Step = 624 ifTrue: [
            (recoveredBlock487Stack1) closeComplex.
            recoveredBlock487PC := 626.
        ].
        recoveredBlock487Step = 626 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 629.
        ].
        recoveredBlock487Step = 629 ifTrue: [
            (recoveredBlock487Stack1) closeComplex.
            recoveredBlock487PC := 631.
        ].
        recoveredBlock487Step = 631 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 634.
        ].
        recoveredBlock487Step = 634 ifTrue: [
            (recoveredBlock487Stack1) closeComplex.
            recoveredBlock487PC := 636.
        ].
        recoveredBlock487Step = 636 ifTrue: [
            recoveredBlock487Stack1 := recoveredArg1.
            recoveredBlock487PC := 639.
        ].
        recoveredBlock487Step = 639 ifTrue: [
            recoveredBlock487Stack1 := (recoveredBlock487Stack1) closeComplex.
            recoveredBlock487PC := 641.
        ].
        recoveredBlock487Step = 641 ifTrue: [
            recoveredBlock487Result := recoveredBlock487Stack1.
            recoveredBlock487Done := true.
        ].
    ].
    recoveredBlock487Result
].
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 650.
        ].
        recoveredStep = 650 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            (recoveredStack0) closeComplex.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

