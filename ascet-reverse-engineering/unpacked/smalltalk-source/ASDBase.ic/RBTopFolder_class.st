"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200097a0; bytecode file offset 0x908be4"
!RBTopFolder class methodsFor: 'recovered'!
className
    | recoveredValue0 |
    recoveredValue0 := (self) printString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000b1a4; bytecode file offset 0x908be4"
!RBTopFolder class methodsFor: 'recovered'!
editorIconName
    | recoveredValue0 |
    recoveredValue0 := (self) iconName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200198d4; bytecode file offset 0x92209c"
!RBTopFolder class methodsFor: 'recovered'!
requirementIDKey
    ^'requirementID'
! !

"ASDBase.ic method 0x2001cc7c; bytecode file offset 0x92209c"
!RBTopFolder class methodsFor: 'recovered'!
label
    ^'ASCET'
! !

"ASDBase.ic method 0x2001fe20; bytecode file offset 0x92209c"
!RBTopFolder class methodsFor: 'recovered'!
versionDBVersionKey
    ^'versionDBVersion'
! !

"ASDBase.ic method 0x20022e38; bytecode file offset 0x92209c"
!RBTopFolder class methodsFor: 'recovered'!
toolVersionOfAMDImportFile
    ^'toolVersionOfAMDImportFile'
! !

"ASDBase.ic method 0x200231f8; bytecode file offset 0x92209c"
!RBTopFolder class methodsFor: 'recovered'!
versionConfigurationKey
    ^'versionConfiguration'
! !

"ASDBase.ic method 0x20023360; bytecode file offset 0x92209c"
!RBTopFolder class methodsFor: 'recovered'!
iconName
    ^'GeneralFolderClosed'
! !

"ASDBase.ic method 0x200254b4; bytecode file offset 0x92209c"
!RBTopFolder class methodsFor: 'recovered'!
typeLabel
    ^'Folder'
! !

"ASDBase.ic method 0x2002576c; bytecode file offset 0x92209c"
!RBTopFolder class methodsFor: 'recovered'!
defaultItemLabel
    ^'Folder'
! !

"ASDBase.ic method 0x20025918; bytecode file offset 0x923928"
!RBTopFolder class methodsFor: 'recovered'!
versionStringSCM
    ^'ASCET-SCM'
! !

"ASDBase.ic method 0x20026a4c; bytecode file offset 0x923928"
!RBTopFolder class methodsFor: 'recovered'!
versionStringKey
    ^'versionString'
! !

"ASDBase.ic method 0x2005bb2c; bytecode file offset 0x958548"
!RBTopFolder class methodsFor: 'recovered'!
itemTypes
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073008; bytecode file offset 0x96f8bc"
!RBTopFolder class methodsFor: 'recovered'!
maxSizeShortLabel
    ^6
! !

"ASDBase.ic method 0x20074f64; bytecode file offset 0x9757c8"
!RBTopFolder class methodsFor: 'recovered'!
isFolder
    ^true
! !

"ASDBase.ic method 0x20087558; bytecode file offset 0x983e10"
!RBTopFolder class methodsFor: 'recovered'!
create: recoveredArg1 parent: recoveredArg2 databaseAccess: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) parent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008939c; bytecode file offset 0x985cfc"
!RBTopFolder class methodsFor: 'recovered'!
InitCallbacks
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    Callbacks := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x200ad930; bytecode file offset 0x9aa218"
!RBTopFolder class methodsFor: 'recovered'!
create: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) create: (recoveredValue0) parent: (recoveredValue1) checkPath: (true).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bd44c; bytecode file offset 0x9b9d70"
!RBTopFolder class methodsFor: 'recovered'!
CallbackListFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) Callbacks.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asRBDBReference.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200d02b0; bytecode file offset 0x9ccda0"
!RBTopFolder class methodsFor: 'recovered'!
toolBetaVersionOfLastModification
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('DSGN7464').
    ^'toolBetaVersionOfLastModification'
! !

"ASDBase.ic method 0x200d033c; bytecode file offset 0x9ccda0"
!RBTopFolder class methodsFor: 'recovered'!
toolVersionOfLastDeveloperModification
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('DSGN7464').
    ^'toolVersionOfLastDeveloperModification'
! !

"ASDBase.ic method 0x200d038c; bytecode file offset 0x9ccda0"
!RBTopFolder class methodsFor: 'recovered'!
toolVersionOfFirstModification
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('DSGN7464').
    ^'toolVersionOfFirstModification'
! !

"ASDBase.ic method 0x200d03c8; bytecode file offset 0x9ccda0"
!RBTopFolder class methodsFor: 'recovered'!
toolVersionOfLastModification
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('DSGN7464').
    ^'toolVersionOfLastModification'
! !

"ASDBase.ic method 0x200d03f0; bytecode file offset 0x9ccda0"
!RBTopFolder class methodsFor: 'recovered'!
toolVersionOfLastInternalModification
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('DSGN7464').
    ^'toolVersionOfLastInternalModification'
! !

"ASDBase.ic method 0x200d04b8; bytecode file offset 0x9ccda0"
!RBTopFolder class methodsFor: 'recovered'!
toolVersionOfLastBetaModification
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('DSGN7464').
    ^'toolVersionOfLastBetaModification'
! !

"ASDBase.ic method 0x200d04e0; bytecode file offset 0x9ccda0"
!RBTopFolder class methodsFor: 'recovered'!
toolBetaVersionOfLastInternalModification
    | recoveredValue0 |
    recoveredValue0 := ('Kk') == ('DSGN7464').
    ^'toolBetaVersionOfLastInternalModification'
! !

"ASDBase.ic method 0x200f7ca4; bytecode file offset 0x9f4e38"
!RBTopFolder class methodsFor: 'recovered'!
itemTypeLabels
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) itemTypes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280c50f4Arg1 | 
    | block280c50f4Value0 block280c50f4Value1 |
    block280c50f4Value0 := block280c50f4Arg1.
    block280c50f4Value1 := (block280c50f4Value0) printString.
    block280c50f4Value1
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) collect: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201051cc; bytecode file offset 0xa01b38"
!RBTopFolder class methodsFor: 'recovered'!
Callbacks
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Callbacks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) InitCallbacks.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := Callbacks.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20128a78; bytecode file offset 0xa25378"
!RBTopFolder class methodsFor: 'recovered'!
itemWithSpecClassNames
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGItemWithSpec.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280c939cArg1 | 
    | block280c939cValue0 block280c939cValue1 |
    block280c939cValue0 := block280c939cArg1.
    block280c939cValue1 := (block280c939cValue0) printString.
    block280c939cValue1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20145ee0; bytecode file offset 0xa427a8"
!RBTopFolder class methodsFor: 'recovered'!
create: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) new.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) className.
    (recoveredValue1) initializeRBDBObject: (recoveredValue2) className: (recoveredValue3).
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) label: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) initialize.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20155f20; bytecode file offset 0xa5280c"
!RBTopFolder class methodsFor: 'recovered'!
GetOrCreateCallbackListFor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) Callbacks.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asRBDBReference.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280cd9a4Value0 block280cd9a4Value1 |
    block280cd9a4Value0 := LookupTable.
    block280cd9a4Value1 := (block280cd9a4Value0) new.
    block280cd9a4Value1
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015e3c4; bytecode file offset 0xa5aca8"
!RBTopFolder class methodsFor: 'recovered'!
sortBlock
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block280cdc2cArg1 :block280cdc2cArg2 | 
    | block280cdc2cValue0 block280cdc2cValue1 block280cdc2cValue2 block280cdc2cValue3 block280cdc2cValue4 block280cdc2cValue5 block280cdc2cValue6 |
    block280cdc2cValue0 := EsString.
    block280cdc2cValue1 := (block280cdc2cValue0) sortBlockNumeric.
    block280cdc2cValue2 := block280cdc2cArg1.
    block280cdc2cValue3 := (block280cdc2cValue2) label.
    block280cdc2cValue4 := block280cdc2cArg2.
    block280cdc2cValue5 := (block280cdc2cValue4) label.
    block280cdc2cValue6 := (block280cdc2cValue1) value: (block280cdc2cValue3) value: (block280cdc2cValue5).
    block280cdc2cValue6
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201d0738; bytecode file offset 0xacd008"
!RBTopFolder class methodsFor: 'recovered'!
itemClassNames
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGItem.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) withAllSubclasses.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := SGLibrary.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) withAllSubclasses.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) removeAll: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:block280d53d8Arg1 | 
    | block280d53d8Value0 block280d53d8Value1 |
    block280d53d8Value0 := block280d53d8Arg1.
    block280d53d8Value1 := (block280d53d8Value0) printString.
    block280d53d8Value1
].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20337604; bytecode file offset 0xc33ee4"
!RBTopFolder class methodsFor: 'recovered'!
create: recoveredArg1 parent: recoveredArg2 checkPath: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PathLimitation'.
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) libraryPath.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := '\'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) checkPathName: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 49] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) addChild: (recoveredStack1) checkPath: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := ASDAscetController.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSCMActive.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) scmPostCreation.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20346308; bytecode file offset 0xc42bf4"
!RBTopFolder class methodsFor: 'recovered'!
classItemNames
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := SGClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := SGModule.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := SGContinuousTimeClass.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack3 := ARAtomicSoftwareComponent.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := ASDRecord.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := ARDataInterface.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := ARClientServerInterface.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := SGProject.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:block280ee284Arg1 | 
    | block280ee284Value0 block280ee284Value1 |
    block280ee284Value0 := block280ee284Arg1.
    block280ee284Value1 := (block280ee284Value0) printString.
    block280ee284Value1
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203f4fe4; bytecode file offset 0xcf18cc"
!RBTopFolder class methodsFor: 'recovered'!
dbXmlDirectExport: recoveredArg1 to: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := '/'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := CfsDirectoryDescriptor.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) mkdir: (recoveredStack2) ifPresent: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := -4.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    ^-8
].
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) getObjectIfUndefined: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) childrenProxies.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 recoveredBlock51Value3 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := (recoveredBlock51Value0) objectClass.
    recoveredBlock51Value2 := [:recoveredBlock51Block63Arg1 | 
    | recoveredBlock51Block63Value0 recoveredBlock51Block63Value1 recoveredBlock51Block63Value2 recoveredBlock51Block63Value3 recoveredBlock51Block63Value4 |
    recoveredBlock51Block63Value0 := recoveredBlock51Block63Arg1.
    recoveredBlock51Block63Value1 := recoveredBlock51Arg1.
    recoveredBlock51Block63Value2 := recoveredLocal1.
    recoveredBlock51Block63Value3 := recoveredArg3.
    recoveredBlock51Block63Value4 := (recoveredBlock51Block63Value0) dbXmlDirectExport: (recoveredBlock51Block63Value1) to: (recoveredBlock51Block63Value2) with: (recoveredBlock51Block63Value3).
    recoveredBlock51Block63Value4
].
    recoveredBlock51Value3 := (recoveredBlock51Value1) ifNotNil: (recoveredBlock51Value2).
    recoveredBlock51Value3
].
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

