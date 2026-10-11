"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200106ac; bytecode file offset 0x90cf68"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getStringCollection: recoveredArg1 stringCollection: recoveredArg2 valueCollection: recoveredArg3
    | recoveredValue0 |
    recoveredValue0 := recoveredArg2.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20018518; bytecode file offset 0x92209c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionDefaultValueForCustomerControlLabel
    ^'Customer Control'
! !

"ASDBase.ic method 0x20018800; bytecode file offset 0x92209c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionDefaultValueForCustomerControlIconFile
    ^'customercontrol.ico'
! !

"ASDBase.ic method 0x2001d510; bytecode file offset 0x92209c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
declarationFilenamePattern
    ^'*.aod.xml'
! !

"ASDBase.ic method 0x2001f94c; bytecode file offset 0x92209c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionDefaultValueForRMIControlIconFile
    ^'rmicontrol.ico'
! !

"ASDBase.ic method 0x200208a0; bytecode file offset 0x92209c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionDefaultValueForCustomerControlCategory
    ^'CustomerControlGeneral'
! !

"ASDBase.ic method 0x200226d0; bytecode file offset 0x92209c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionDefaultValueForRMIControlLabel
    ^'RMI'
! !

"ASDBase.ic method 0x2002459c; bytecode file offset 0x92209c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionDefaultValueForRMIControlCategory
    ^'CustomerControlRMI'
! !

"ASDBase.ic method 0x200256ac; bytecode file offset 0x92209c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionDefaultValueForRMIControlProgId
    ^'Etas.RMIControl'
! !

"ASDBase.ic method 0x2003b360; bytecode file offset 0x938608"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getAllOptionsForCategory: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getOptionsFromCategory: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f598; bytecode file offset 0x93bf94"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGHostAccess.
    recoveredValue1 := (recoveredValue0) instance.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049dec; bytecode file offset 0x947128"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getAllOptionsForCategoryCustomer
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionValueForCustomerControlCategory.
    recoveredValue1 := (self) getAllOptionsForCategory: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a6fc; bytecode file offset 0x947128"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getAllOptionsForCategoryRMI
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) optionValueForRMIControlCategory.
    recoveredValue1 := (self) getAllOptionsForCategory: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20057978; bytecode file offset 0x956284"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
calculateChecksumForFilename: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) hostAccess.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) calculateChecksumForFilename: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200606d8; bytecode file offset 0x95cf9c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
initDeclarationFiles
    | recoveredValue0 |
    recoveredValue0 := (self) getDeclarationFiles.
    declarationFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20083458; bytecode file offset 0x97fe64"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getXmlCategory: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getAttribute: ('xmlCategory').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200926a0; bytecode file offset 0x98ef64"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
appendOption: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := options.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200abcac; bytecode file offset 0x9a85bc"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
declarationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) declarationFiles.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) removeDoubleBackslashes.
    (recoveredValue0) add: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c08cc; bytecode file offset 0x9bd228"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
declarationFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    declarationFiles := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013dda8; bytecode file offset 0xa3a670"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
projectOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cbd18Arg1 | 
    | block280cbd18Value0 block280cbd18Value1 block280cbd18Value2 |
    block280cbd18Value0 := block280cbd18Arg1.
    block280cbd18Value1 := (block280cbd18Value0) optionCategory.
    block280cbd18Value2 := (block280cbd18Value1) = ('PROJECT').
    block280cbd18Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014f564; bytecode file offset 0xa4be30"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
toolOptions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280cd0c8Arg1 | 
    | block280cd0c8Value0 block280cd0c8Value1 block280cd0c8Value2 |
    block280cd0c8Value0 := block280cd0c8Arg1.
    block280cd0c8Value1 := (block280cd0c8Value0) optionCategory.
    block280cd0c8Value2 := (#('FILE' 'FIXED')) includes: (block280cd0c8Value1).
    block280cd0c8Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) select: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20158e0c; bytecode file offset 0xa556cc"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
allowMixedFloatIntCharTable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'MixedFloatIntCharTable'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ETASInternal'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015cf0c; bytecode file offset 0xa597cc"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
declarationFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := declarationFiles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := Set.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            declarationFiles := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) initDeclarationFiles.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := declarationFiles.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20167454; bytecode file offset 0xa63d1c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
fileExists: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := CfsStat.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) stat: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkForExistency: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201683c4; bytecode file offset 0xa64c98"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getOptionsFromCategory: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) xmlCategory.
    recoveredBlock5Value2 := recoveredArg1.
    recoveredBlock5Value3 := (recoveredBlock5Value1) = (recoveredBlock5Value2).
    recoveredBlock5Value3
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016a53c; bytecode file offset 0xa66e0c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
content
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) allOptions.
    recoveredValue5 := recoveredLocal1.
    (self) writeOptions: (recoveredValue4) toXMLStream: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201735f8; bytecode file offset 0xa6febc"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
modelInline
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getOption: ('ModelInline') fromCategory: ('ETASInternal').
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    ^recoveredBlock10Value0
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x2017a7a0; bytecode file offset 0xa77060"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getArtificialUUID
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'artificialUUID'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ETASInternal'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201834f4; bytecode file offset 0xa7fdbc"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    recoveredValue0 := (self) declarationFiles.
    recoveredValue1 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := (self) readOptionsDeclarationsFromXMLFile: (recoveredBlock10Value0).
    recoveredBlock10Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20189174; bytecode file offset 0xa85a48"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
crcValue
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) allOptions.
    recoveredValue5 := recoveredLocal1.
    (self) writeOptions: (recoveredValue4) toXMLStream: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    recoveredValue8 := (recoveredValue7) crcValue.
    ^recoveredValue8
! !

"ASDBase.ic method 0x201992ec; bytecode file offset 0xa95bc8"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionValueForRMIControlCategory
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'RmiOptionCategory'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CustomerControls'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultValueForRMIControlCategory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199304; bytecode file offset 0xa95bc8"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionValueForCustomerControlCategory
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'CustomerControlOptionCategory'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CustomerControls'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultValueForCustomerControlCategory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199334; bytecode file offset 0xa95c70"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionValueForCustomerControlProgId
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'CustomerControlProgId'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueForCustomerControlCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultValueForCustomerControlCategory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019934c; bytecode file offset 0xa95c70"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionValueForRMIControlLabel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'RmiControlLabel'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueForRMIControlCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultValueForRMIControlLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199364; bytecode file offset 0xa95c70"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionValueForRMIControlIconFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'RmiControlIconFile'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueForRMIControlCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultValueForRMIControlIconFile.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2019937c; bytecode file offset 0xa95c70"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionValueForRMIControlProgId
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'RmiControlProgId'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueForRMIControlCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultValueForRMIControlProgId.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20199394; bytecode file offset 0xa95c70"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionValueForCustomerControlIconFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'CustomerControlIconFile'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueForCustomerControlCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultValueForCustomerControlIconFile.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201993ac; bytecode file offset 0xa95c70"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
optionValueForCustomerControlLabel
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'CustomerControlLabel'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueForCustomerControlCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOption: (recoveredStack1) fromCategory: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionDefaultValueForCustomerControlLabel.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2020d620; bytecode file offset 0xb09efc"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
labelFromScoopixSchemaVersionValue: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := TGAbstractBuildToolDeclaration.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) noToolType.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'SCOOP-IX V'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := 'SIX'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) removeSubstring: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := (recoveredStack2) asFloat.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 10.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) / (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2023684c; bytecode file offset 0xb33140"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
isOptionForRMIControlAvailable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'RmiControlProgId'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueForRMIControlCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOptionNamed: (recoveredStack1) fromCategory: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := OleAutomationObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionValueForRMIControlProgId.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) clsidFrom: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20236870; bytecode file offset 0xb33140"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
isOptionForCustomerControlAvailable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'CustomerControlProgId'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) optionValueForCustomerControlCategory.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOptionNamed: (recoveredStack1) fromCategory: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := OleAutomationObject.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionValueForCustomerControlProgId.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) clsidFrom: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) free.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20244364; bytecode file offset 0xb40c28"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
readOptionsDeclarationsFromXMLFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getDOMFromXMLFile: (recoveredValue0) rootTagName: ('OptionDeclarations').
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := [
    ^self
].
    (recoveredValue1) ifNil: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredArg1.
    (self) readOptionsDeclarationsFromXMLDocument: (recoveredValue4) fileName: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x202cb1c4; bytecode file offset 0xbc7a8c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getOptionNamed: recoveredArg1 fromCategory: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) xmlCategory.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg2.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) attributeName.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203018a8; bytecode file offset 0xbfe174"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
setOption: recoveredArg1 fromCategory: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := false.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) xmlCategory.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg2.
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 22] ifFalse: [recoveredBlock5PC := 29].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) attributeName.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := recoveredArg1.
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 29.
        ].
        recoveredBlock5Step = 29 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2030a6bc; bytecode file offset 0xc06f80"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getValueCollection: recoveredArg1 stringCollection: recoveredArg2 valueCollection: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 53].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 32] ifFalse: [recoveredLocal1 := nil. recoveredPC := 52]] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203c5c30; bytecode file offset 0xcc2508"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getOption: recoveredArg1 fromCategory: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) basicOptionAt: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 15.
        ].
        recoveredBlock8Step = 15 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) optionClass.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Stack2 := EtasPathOption.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isKindOf: (recoveredBlock8Stack2).
            recoveredBlock8PC := 19.
        ].
        recoveredBlock8Step = 19 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 22] ifFalse: [recoveredBlock8PC := 39].
        ].
        recoveredBlock8Step = 22 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 23.
        ].
        recoveredBlock8Step = 23 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack3 := [
    ^nil
].
            recoveredBlock8PC := 34.
        ].
        recoveredBlock8Step = 34 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) optionAt: (recoveredBlock8Stack2) ifAbsent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 36.
        ].
        recoveredBlock8Step = 36 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) asPathname.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 39 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 40.
        ].
        recoveredBlock8Step = 40 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) optionClass.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack2 := EtasFileOption.
            recoveredBlock8PC := 43.
        ].
        recoveredBlock8Step = 43 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) isKindOf: (recoveredBlock8Stack2).
            recoveredBlock8PC := 44.
        ].
        recoveredBlock8Step = 44 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 48] ifFalse: [recoveredBlock8PC := 65].
        ].
        recoveredBlock8Step = 48 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 49.
        ].
        recoveredBlock8Step = 49 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 52.
        ].
        recoveredBlock8Step = 52 ifTrue: [
            recoveredBlock8Stack3 := [
    ^nil
].
            recoveredBlock8PC := 60.
        ].
        recoveredBlock8Step = 60 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) optionAt: (recoveredBlock8Stack2) ifAbsent: (recoveredBlock8Stack3).
            recoveredBlock8PC := 62.
        ].
        recoveredBlock8Step = 62 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) asFilename.
            recoveredBlock8PC := 64.
        ].
        recoveredBlock8Step = 64 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 65 ifTrue: [
            recoveredBlock8Stack1 := recoveredArg1.
            recoveredBlock8PC := 68.
        ].
        recoveredBlock8Step = 68 ifTrue: [
            recoveredBlock8Stack2 := [
    ^nil
].
            recoveredBlock8PC := 76.
        ].
        recoveredBlock8Step = 76 ifTrue: [
            recoveredBlock8Stack0 := (recoveredBlock8Stack0) optionAt: (recoveredBlock8Stack1) ifAbsent: (recoveredBlock8Stack2).
            recoveredBlock8PC := 78.
        ].
        recoveredBlock8Step = 78 ifTrue: [
            ^recoveredBlock8Stack0
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x204d4ba0; bytecode file offset 0xdd14a0"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
readOptionDeclarationFor: recoveredArg1 fromTag: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Kli'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'Call_2001426'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'External Options'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) group: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 'Group'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSBString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) group: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'Unnamed External Option'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'Label'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 58].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSBString.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) label: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 'Description'.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSBString.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) description: (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := 'Tooltip'.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 110].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSBString.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            (recoveredStack1) toolTip: (recoveredStack2).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 'InitialValue'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 152] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := (recoveredStack2) asSBString.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack1) xmlValue: (recoveredStack2).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack1) updateDefaultValueWithXMLDeclaration: (recoveredStack2).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e89e0; bytecode file offset 0xee536c"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
readOptionsDeclarationsFromXMLDocument: recoveredArg1 fileName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getElementsByTagName: ('OptionDeclaration').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Local2 recoveredBlock16Local3 recoveredBlock16Local4 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16Stack5 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := EtasXMLOptionEntry.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) new.
            recoveredBlock16PC := 25.
        ].
        recoveredBlock16Step = 25 ifTrue: [
            recoveredBlock16Local4 := recoveredBlock16Stack1.
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 31.
        ].
        recoveredBlock16Step = 31 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 32.
        ].
        recoveredBlock16Step = 32 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getXmlCategory: (recoveredBlock16Stack3).
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            (recoveredBlock16Stack1) xmlCategory: (recoveredBlock16Stack2).
            recoveredBlock16PC := 39.
        ].
        recoveredBlock16Step = 39 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack3 := 'attributeName'.
            recoveredBlock16PC := 47.
        ].
        recoveredBlock16Step = 47 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getAttribute: (recoveredBlock16Stack3).
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            (recoveredBlock16Stack1) attributeName: (recoveredBlock16Stack2).
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            recoveredBlock16Stack1 := 'Kk'.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack2 := 'Call_70233'.
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) == (recoveredBlock16Stack2).
            recoveredBlock16PC := 56.
        ].
        recoveredBlock16Step = 56 ifTrue: [
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 60.
        ].
        recoveredBlock16Step = 60 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            recoveredBlock16Stack3 := 'optionCategory'.
            recoveredBlock16PC := 65.
        ].
        recoveredBlock16Step = 65 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getAttribute: (recoveredBlock16Stack3).
            recoveredBlock16PC := 67.
        ].
        recoveredBlock16Step = 67 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 68.
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16Local2 := recoveredBlock16Stack3.
            recoveredBlock16PC := 71.
        ].
        recoveredBlock16Step = 71 ifTrue: [
            (recoveredBlock16Stack2 ~~ nil) ifTrue: [recoveredBlock16PC := 78] ifFalse: [recoveredBlock16PC := 74].
        ].
        recoveredBlock16Step = 74 ifTrue: [
            recoveredBlock16Stack2 := nil.
            recoveredBlock16PC := 75.
        ].
        recoveredBlock16Step = 75 ifTrue: [
            recoveredBlock16PC := 85.
        ].
        recoveredBlock16Step = 78 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local2.
            recoveredBlock16PC := 81.
        ].
        recoveredBlock16Step = 81 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) asReducedString.
            recoveredBlock16PC := 83.
        ].
        recoveredBlock16Step = 83 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) asSymbol.
            recoveredBlock16PC := 85.
        ].
        recoveredBlock16Step = 85 ifTrue: [
            (recoveredBlock16Stack1) optionCategory: (recoveredBlock16Stack2).
            recoveredBlock16PC := 87.
        ].
        recoveredBlock16Step = 87 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 90.
        ].
        recoveredBlock16Step = 90 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 93.
        ].
        recoveredBlock16Step = 93 ifTrue: [
            recoveredBlock16Stack3 := 'optionFile'.
            recoveredBlock16PC := 95.
        ].
        recoveredBlock16Step = 95 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getAttribute: (recoveredBlock16Stack3).
            recoveredBlock16PC := 97.
        ].
        recoveredBlock16Step = 97 ifTrue: [
            (recoveredBlock16Stack1) optionFile: (recoveredBlock16Stack2).
            recoveredBlock16PC := 99.
        ].
        recoveredBlock16Step = 99 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 102.
        ].
        recoveredBlock16Step = 102 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) optionCategory.
            recoveredBlock16PC := 104.
        ].
        recoveredBlock16Step = 104 ifTrue: [
            recoveredBlock16Stack2 := 'FILE'.
            recoveredBlock16PC := 106.
        ].
        recoveredBlock16Step = 106 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) = (recoveredBlock16Stack2).
            recoveredBlock16PC := 107.
        ].
        recoveredBlock16Step = 107 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 110] ifFalse: [recoveredBlock16PC := 136].
        ].
        recoveredBlock16Step = 110 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 113.
        ].
        recoveredBlock16Step = 113 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) optionFile.
            recoveredBlock16PC := 115.
        ].
        recoveredBlock16Step = 115 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 128] ifFalse: [recoveredBlock16PC := 118].
        ].
        recoveredBlock16Step = 118 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 121.
        ].
        recoveredBlock16Step = 121 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) optionFile.
            recoveredBlock16PC := 123.
        ].
        recoveredBlock16Step = 123 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) isEmpty.
            recoveredBlock16PC := 125.
        ].
        recoveredBlock16Step = 125 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 128] ifFalse: [recoveredBlock16PC := 136].
        ].
        recoveredBlock16Step = 128 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 131.
        ].
        recoveredBlock16Step = 131 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 132.
        ].
        recoveredBlock16Step = 132 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) externalOptionFile.
            recoveredBlock16PC := 134.
        ].
        recoveredBlock16Step = 134 ifTrue: [
            (recoveredBlock16Stack1) optionFile: (recoveredBlock16Stack2).
            recoveredBlock16PC := 136.
        ].
        recoveredBlock16Step = 136 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 139.
        ].
        recoveredBlock16Step = 139 ifTrue: [
            recoveredBlock16Stack2 := 'optionClass'.
            recoveredBlock16PC := 141.
        ].
        recoveredBlock16Step = 141 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttribute: (recoveredBlock16Stack2).
            recoveredBlock16PC := 143.
        ].
        recoveredBlock16Step = 143 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 144.
        ].
        recoveredBlock16Step = 144 ifTrue: [
            recoveredBlock16Local3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 147.
        ].
        recoveredBlock16Step = 147 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 172] ifFalse: [recoveredBlock16PC := 150].
        ].
        recoveredBlock16Step = 150 ifTrue: [
            recoveredBlock16Stack1 := 'Kk'.
            recoveredBlock16PC := 152.
        ].
        recoveredBlock16Step = 152 ifTrue: [
            recoveredBlock16Stack2 := 'Call_70233'.
            recoveredBlock16PC := 154.
        ].
        recoveredBlock16Step = 154 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) == (recoveredBlock16Stack2).
            recoveredBlock16PC := 155.
        ].
        recoveredBlock16Step = 155 ifTrue: [
            recoveredBlock16PC := 156.
        ].
        recoveredBlock16Step = 156 ifTrue: [
            recoveredBlock16Stack1 := Smalltalk.
            recoveredBlock16PC := 158.
        ].
        recoveredBlock16Step = 158 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local3.
            recoveredBlock16PC := 161.
        ].
        recoveredBlock16Step = 161 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) asReducedString.
            recoveredBlock16PC := 163.
        ].
        recoveredBlock16Step = 163 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) asSymbol.
            recoveredBlock16PC := 165.
        ].
        recoveredBlock16Step = 165 ifTrue: [
            recoveredBlock16Stack3 := [].
            recoveredBlock16PC := 167.
        ].
        recoveredBlock16Step = 167 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) ifAbsent: (recoveredBlock16Stack3).
            recoveredBlock16PC := 169.
        ].
        recoveredBlock16Step = 169 ifTrue: [
            recoveredBlock16Local3 := recoveredBlock16Stack1.
            recoveredBlock16PC := 172.
        ].
        recoveredBlock16Step = 172 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local3.
            recoveredBlock16PC := 175.
        ].
        recoveredBlock16Step = 175 ifTrue: [
            (recoveredBlock16Stack1 ~~ nil) ifTrue: [recoveredBlock16PC := 212] ifFalse: [recoveredBlock16PC := 178].
        ].
        recoveredBlock16Step = 178 ifTrue: [
            recoveredBlock16Stack1 := RBUserInfo.
            recoveredBlock16PC := 180.
        ].
        recoveredBlock16Step = 180 ifTrue: [
            recoveredBlock16Stack2 := 'Unknown or missing optionClass in '.
            recoveredBlock16PC := 182.
        ].
        recoveredBlock16Step = 182 ifTrue: [
            recoveredBlock16Stack3 := recoveredArg2.
            recoveredBlock16PC := 185.
        ].
        recoveredBlock16Step = 185 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) , (recoveredBlock16Stack3).
            recoveredBlock16PC := 187.
        ].
        recoveredBlock16Step = 187 ifTrue: [
            recoveredBlock16Stack3 := '\Option: '.
            recoveredBlock16PC := 189.
        ].
        recoveredBlock16Step = 189 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) , (recoveredBlock16Stack3).
            recoveredBlock16PC := 191.
        ].
        recoveredBlock16Step = 191 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local4.
            recoveredBlock16PC := 194.
        ].
        recoveredBlock16Step = 194 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) attributeName.
            recoveredBlock16PC := 196.
        ].
        recoveredBlock16Step = 196 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) , (recoveredBlock16Stack3).
            recoveredBlock16PC := 198.
        ].
        recoveredBlock16Step = 198 ifTrue: [
            recoveredBlock16Stack3 := '\The option will be ignored.'.
            recoveredBlock16PC := 200.
        ].
        recoveredBlock16Step = 200 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) , (recoveredBlock16Stack3).
            recoveredBlock16PC := 202.
        ].
        recoveredBlock16Step = 202 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) withCrs.
            recoveredBlock16PC := 204.
        ].
        recoveredBlock16Step = 204 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) errorMessage: (recoveredBlock16Stack2).
            recoveredBlock16PC := 206.
        ].
        recoveredBlock16Step = 206 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) prompt.
            recoveredBlock16PC := 208.
        ].
        recoveredBlock16Step = 208 ifTrue: [
            recoveredBlock16PC := 389.
        ].
        recoveredBlock16Step = 212 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local3.
            recoveredBlock16PC := 215.
        ].
        recoveredBlock16Step = 215 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) new.
            recoveredBlock16PC := 216.
        ].
        recoveredBlock16Step = 216 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) initialize.
            recoveredBlock16PC := 218.
        ].
        recoveredBlock16Step = 218 ifTrue: [
            recoveredBlock16Local3 := recoveredBlock16Stack1.
            recoveredBlock16PC := 221.
        ].
        recoveredBlock16Step = 221 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 224.
        ].
        recoveredBlock16Step = 224 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local3.
            recoveredBlock16PC := 227.
        ].
        recoveredBlock16Step = 227 ifTrue: [
            (recoveredBlock16Stack1) optionClass: (recoveredBlock16Stack2).
            recoveredBlock16PC := 229.
        ].
        recoveredBlock16Step = 229 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 230.
        ].
        recoveredBlock16Step = 230 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 233.
        ].
        recoveredBlock16Step = 233 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local3.
            recoveredBlock16PC := 236.
        ].
        recoveredBlock16Step = 236 ifTrue: [
            (recoveredBlock16Stack1) getSpecificOptionDeclarationFrom: (recoveredBlock16Stack2) for: (recoveredBlock16Stack3).
            recoveredBlock16PC := 238.
        ].
        recoveredBlock16Step = 238 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 239.
        ].
        recoveredBlock16Step = 239 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local3.
            recoveredBlock16PC := 242.
        ].
        recoveredBlock16Step = 242 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Arg1.
            recoveredBlock16PC := 245.
        ].
        recoveredBlock16Step = 245 ifTrue: [
            (recoveredBlock16Stack1) readOptionDeclarationFor: (recoveredBlock16Stack2) fromTag: (recoveredBlock16Stack3).
            recoveredBlock16PC := 247.
        ].
        recoveredBlock16Step = 247 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local3.
            recoveredBlock16PC := 250.
        ].
        recoveredBlock16Step = 250 ifTrue: [
            recoveredBlock16Stack2 := 'EXTERNAL'.
            recoveredBlock16PC := 252.
        ].
        recoveredBlock16Step = 252 ifTrue: [
            (recoveredBlock16Stack1) type: (recoveredBlock16Stack2).
            recoveredBlock16PC := 254.
        ].
        recoveredBlock16Step = 254 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local3.
            recoveredBlock16PC := 257.
        ].
        recoveredBlock16Step = 257 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 260.
        ].
        recoveredBlock16Step = 260 ifTrue: [
            (recoveredBlock16Stack1) updateVisibleWithXMLDeclaration: (recoveredBlock16Stack2).
            recoveredBlock16PC := 262.
        ].
        recoveredBlock16Step = 262 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local3.
            recoveredBlock16PC := 265.
        ].
        recoveredBlock16Step = 265 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 268.
        ].
        recoveredBlock16Step = 268 ifTrue: [
            (recoveredBlock16Stack1) updateSensitiveWithXMLDeclaration: (recoveredBlock16Stack2).
            recoveredBlock16PC := 270.
        ].
        recoveredBlock16Step = 270 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local4.
            recoveredBlock16PC := 273.
        ].
        recoveredBlock16Step = 273 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) optionCategory.
            recoveredBlock16PC := 275.
        ].
        recoveredBlock16Step = 275 ifTrue: [
            recoveredBlock16Stack2 := 'FIXED'.
            recoveredBlock16PC := 277.
        ].
        recoveredBlock16Step = 277 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) = (recoveredBlock16Stack2).
            recoveredBlock16PC := 278.
        ].
        recoveredBlock16Step = 278 ifTrue: [
            (recoveredBlock16Stack1) ifTrue: [recoveredBlock16PC := 282] ifFalse: [recoveredBlock16PC := 288].
        ].
        recoveredBlock16Step = 282 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local3.
            recoveredBlock16PC := 285.
        ].
        recoveredBlock16Step = 285 ifTrue: [
            recoveredBlock16Stack2 := false.
            recoveredBlock16PC := 286.
        ].
        recoveredBlock16Step = 286 ifTrue: [
            (recoveredBlock16Stack1) sensitive: (recoveredBlock16Stack2).
            recoveredBlock16PC := 288.
        ].
        recoveredBlock16Step = 288 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local3.
            recoveredBlock16PC := 291.
        ].
        recoveredBlock16Step = 291 ifTrue: [
            recoveredBlock16Stack2 := true.
            recoveredBlock16PC := 292.
        ].
        recoveredBlock16Step = 292 ifTrue: [
            (recoveredBlock16Stack1) forceNewDescription: (recoveredBlock16Stack2).
            recoveredBlock16PC := 294.
        ].
        recoveredBlock16Step = 294 ifTrue: [
            recoveredBlock16Stack1 := self.
            recoveredBlock16PC := 295.
        ].
        recoveredBlock16Step = 295 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) allOptions.
            recoveredBlock16PC := 297.
        ].
        recoveredBlock16Step = 297 ifTrue: [
            recoveredBlock16Stack2 := [:recoveredBlock16Block297Arg1 | 
    | recoveredBlock16Block297Stack0 recoveredBlock16Block297Stack1 recoveredBlock16Block297Stack2 recoveredBlock16Block297Stack3 recoveredBlock16Block297Stack4 recoveredBlock16Block297PC recoveredBlock16Block297Step recoveredBlock16Block297Done recoveredBlock16Block297Result |
    recoveredBlock16Block297Stack0 := nil.
    recoveredBlock16Block297PC := 304.
    recoveredBlock16Block297Done := false.
    [recoveredBlock16Block297Done not] whileTrue: [
        recoveredBlock16Block297Step := recoveredBlock16Block297PC.
        recoveredBlock16Block297Step = 304 ifTrue: [
            recoveredBlock16Block297Stack1 := false.
            recoveredBlock16Block297PC := 305.
        ].
        recoveredBlock16Block297Step = 305 ifTrue: [
            recoveredBlock16Block297Stack2 := recoveredBlock16Block297Arg1.
            recoveredBlock16Block297PC := 306.
        ].
        recoveredBlock16Block297Step = 306 ifTrue: [
            recoveredBlock16Block297Stack2 := (recoveredBlock16Block297Stack2) xmlCategory.
            recoveredBlock16Block297PC := 308.
        ].
        recoveredBlock16Block297Step = 308 ifTrue: [
            recoveredBlock16Block297Stack3 := recoveredBlock16Local4.
            recoveredBlock16Block297PC := 311.
        ].
        recoveredBlock16Block297Step = 311 ifTrue: [
            recoveredBlock16Block297Stack3 := (recoveredBlock16Block297Stack3) xmlCategory.
            recoveredBlock16Block297PC := 313.
        ].
        recoveredBlock16Block297Step = 313 ifTrue: [
            recoveredBlock16Block297Stack2 := (recoveredBlock16Block297Stack2) = (recoveredBlock16Block297Stack3).
            recoveredBlock16Block297PC := 314.
        ].
        recoveredBlock16Block297Step = 314 ifTrue: [
            (recoveredBlock16Block297Stack2) ifTrue: [recoveredBlock16Block297PC := 318] ifFalse: [recoveredBlock16Block297PC := 328].
        ].
        recoveredBlock16Block297Step = 318 ifTrue: [
            recoveredBlock16Block297PC := 319.
        ].
        recoveredBlock16Block297Step = 319 ifTrue: [
            recoveredBlock16Block297Stack1 := recoveredBlock16Block297Arg1.
            recoveredBlock16Block297PC := 320.
        ].
        recoveredBlock16Block297Step = 320 ifTrue: [
            recoveredBlock16Block297Stack1 := (recoveredBlock16Block297Stack1) attributeName.
            recoveredBlock16Block297PC := 322.
        ].
        recoveredBlock16Block297Step = 322 ifTrue: [
            recoveredBlock16Block297Stack2 := recoveredBlock16Local4.
            recoveredBlock16Block297PC := 325.
        ].
        recoveredBlock16Block297Step = 325 ifTrue: [
            recoveredBlock16Block297Stack2 := (recoveredBlock16Block297Stack2) attributeName.
            recoveredBlock16Block297PC := 327.
        ].
        recoveredBlock16Block297Step = 327 ifTrue: [
            recoveredBlock16Block297Stack1 := (recoveredBlock16Block297Stack1) = (recoveredBlock16Block297Stack2).
            recoveredBlock16Block297PC := 328.
        ].
        recoveredBlock16Block297Step = 328 ifTrue: [
            recoveredBlock16Block297Result := recoveredBlock16Block297Stack1.
            recoveredBlock16Block297Done := true.
        ].
    ].
    recoveredBlock16Block297Result
].
            recoveredBlock16PC := 329.
        ].
        recoveredBlock16Step = 329 ifTrue: [
            recoveredBlock16Stack3 := [:recoveredBlock16Block329Arg1 | 
    | recoveredBlock16Block329Value0 recoveredBlock16Block329Value1 recoveredBlock16Block329Value2 recoveredBlock16Block329Value3 recoveredBlock16Block329Value4 recoveredBlock16Block329Value5 recoveredBlock16Block329Value6 recoveredBlock16Block329Value7 recoveredBlock16Block329Value8 recoveredBlock16Block329Value9 recoveredBlock16Block329Value10 recoveredBlock16Block329Value11 |
    recoveredBlock16Block329Value0 := RBUserInfo.
    recoveredBlock16Block329Value1 := recoveredBlock16Local4.
    recoveredBlock16Block329Value2 := (recoveredBlock16Block329Value1) attributeName.
    recoveredBlock16Block329Value3 := ('The option ') , (recoveredBlock16Block329Value2).
    recoveredBlock16Block329Value4 := (recoveredBlock16Block329Value3) , (' exists already in ').
    recoveredBlock16Block329Value5 := recoveredBlock16Local4.
    recoveredBlock16Block329Value6 := (recoveredBlock16Block329Value5) xmlCategory.
    recoveredBlock16Block329Value7 := (recoveredBlock16Block329Value4) , (recoveredBlock16Block329Value6).
    recoveredBlock16Block329Value8 := ('.\The option will be ignored.') withCrs.
    recoveredBlock16Block329Value9 := (recoveredBlock16Block329Value7) , (recoveredBlock16Block329Value8).
    recoveredBlock16Block329Value10 := (recoveredBlock16Block329Value0) errorMessage: (recoveredBlock16Block329Value9).
    recoveredBlock16Block329Value11 := (recoveredBlock16Block329Value10) prompt.
    recoveredBlock16Block329Value11
].
            recoveredBlock16PC := 369.
        ].
        recoveredBlock16Step = 369 ifTrue: [
            recoveredBlock16Stack4 := [
    | recoveredBlock16Block369Value0 recoveredBlock16Block369Value1 |
    recoveredBlock16Block369Value0 := recoveredBlock16Local4.
    recoveredBlock16Block369Value1 := (self) appendOption: (recoveredBlock16Block369Value0).
    recoveredBlock16Block369Value1
].
            recoveredBlock16PC := 382.
        ].
        recoveredBlock16Step = 382 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) detect: (recoveredBlock16Stack2) ifOne: (recoveredBlock16Stack3) ifNone: (recoveredBlock16Stack4).
            recoveredBlock16PC := 385.
        ].
        recoveredBlock16Step = 385 ifTrue: [
            recoveredBlock16Stack2 := nil.
            recoveredBlock16PC := 386.
        ].
        recoveredBlock16Step = 386 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 389.
        ].
        recoveredBlock16Step = 389 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2065b630; bytecode file offset 0xf57ff4"
!EtasXMLDefinedOptions methodsFor: 'recovered'!
getSpecificOptionDeclarationFrom: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := EtasBooleanOption.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := EtasStringOption.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 'StringOption'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 'MultiLine'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 66].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := (recoveredStack2) asBoolean.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) multiLine: (recoveredStack2).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := EtasPathOption.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := EtasFileOption.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 343].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := Dictionary.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := 'FileOption'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 341] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 'DialogTitle'.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 138].
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 160] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack1) dialogTitle: (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 'SearchPath'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack1) searchPath: (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := 'SearchMask'.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 210].
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 232] ifFalse: [recoveredPC := 222].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack1) searchMask: (recoveredStack2).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := 'InvalidCharacters'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 268] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            (recoveredStack1) invalidCharacters: (recoveredStack2).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := 'FilterTypes'.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 333] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack2 := 'FilterType'.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementsByTagName: (recoveredStack2).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := [:recoveredBlock289Arg1 | 
    | recoveredBlock289Local1 recoveredBlock289Stack0 recoveredBlock289Stack1 recoveredBlock289Stack2 recoveredBlock289Stack3 recoveredBlock289Stack4 recoveredBlock289PC recoveredBlock289Step recoveredBlock289Done recoveredBlock289Result |
    recoveredBlock289Stack0 := self.
    recoveredBlock289PC := 296.
    recoveredBlock289Done := false.
    [recoveredBlock289Done not] whileTrue: [
        recoveredBlock289Step := recoveredBlock289PC.
        recoveredBlock289Step = 296 ifTrue: [
            recoveredBlock289Stack1 := nil.
            recoveredBlock289PC := 297.
        ].
        recoveredBlock289Step = 297 ifTrue: [
            recoveredBlock289Stack2 := recoveredBlock289Arg1.
            recoveredBlock289PC := 298.
        ].
        recoveredBlock289Step = 298 ifTrue: [
            recoveredBlock289Stack3 := 'Description'.
            recoveredBlock289PC := 300.
        ].
        recoveredBlock289Step = 300 ifTrue: [
            recoveredBlock289Stack2 := (recoveredBlock289Stack2) getElementByTagName: (recoveredBlock289Stack3).
            recoveredBlock289PC := 302.
        ].
        recoveredBlock289Step = 302 ifTrue: [
            recoveredBlock289Stack3 := recoveredBlock289Stack2.
            recoveredBlock289PC := 303.
        ].
        recoveredBlock289Step = 303 ifTrue: [
            recoveredBlock289Local1 := recoveredBlock289Stack3.
            recoveredBlock289PC := 304.
        ].
        recoveredBlock289Step = 304 ifTrue: [
            (recoveredBlock289Stack2 == nil) ifTrue: [recoveredBlock289PC := 330] ifFalse: [recoveredBlock289PC := 308].
        ].
        recoveredBlock289Step = 308 ifTrue: [
            recoveredBlock289PC := 309.
        ].
        recoveredBlock289Step = 309 ifTrue: [
            recoveredBlock289Stack1 := 'Rnz'.
            recoveredBlock289PC := 311.
        ].
        recoveredBlock289Step = 311 ifTrue: [
            recoveredBlock289Stack2 := 'Bugfix'.
            recoveredBlock289PC := 313.
        ].
        recoveredBlock289Step = 313 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) == (recoveredBlock289Stack2).
            recoveredBlock289PC := 314.
        ].
        recoveredBlock289Step = 314 ifTrue: [
            recoveredBlock289PC := 315.
        ].
        recoveredBlock289Step = 315 ifTrue: [
            recoveredBlock289Stack1 := recoveredLocal3.
            recoveredBlock289PC := 318.
        ].
        recoveredBlock289Step = 318 ifTrue: [
            recoveredBlock289Stack2 := recoveredBlock289Arg1.
            recoveredBlock289PC := 319.
        ].
        recoveredBlock289Step = 319 ifTrue: [
            recoveredBlock289Stack3 := 'extension'.
            recoveredBlock289PC := 321.
        ].
        recoveredBlock289Step = 321 ifTrue: [
            recoveredBlock289Stack2 := (recoveredBlock289Stack2) getAttribute: (recoveredBlock289Stack3).
            recoveredBlock289PC := 323.
        ].
        recoveredBlock289Step = 323 ifTrue: [
            recoveredBlock289Stack3 := recoveredBlock289Local1.
            recoveredBlock289PC := 324.
        ].
        recoveredBlock289Step = 324 ifTrue: [
            recoveredBlock289Stack3 := (recoveredBlock289Stack3) getContentText.
            recoveredBlock289PC := 326.
        ].
        recoveredBlock289Step = 326 ifTrue: [
            recoveredBlock289Stack3 := (recoveredBlock289Stack3) data.
            recoveredBlock289PC := 328.
        ].
        recoveredBlock289Step = 328 ifTrue: [
            recoveredBlock289Stack1 := (recoveredBlock289Stack1) at: (recoveredBlock289Stack2) put: (recoveredBlock289Stack3).
            recoveredBlock289PC := 330.
        ].
        recoveredBlock289Step = 330 ifTrue: [
            recoveredBlock289Result := recoveredBlock289Stack1.
            recoveredBlock289Done := true.
        ].
    ].
    recoveredBlock289Result
].
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack1) filterDictionary: (recoveredStack2).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := EtasNumericOption.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := EtasFloatOption.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 448].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack2 := 'NumericOption'.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 446] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := 'MinValue'.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 410] ifFalse: [recoveredPC := 388].
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 410] ifFalse: [recoveredPC := 400].
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            (recoveredStack1) min: (recoveredStack2).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack2 := 'MaxValue'.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 446] ifFalse: [recoveredPC := 424].
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 446] ifFalse: [recoveredPC := 436].
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack2 := (recoveredStack2) data.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := EtasEnumerationOption.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack3 := EtasEditableEnumerationOption.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack4 := EtasMultiSelectEnumerationOption.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack5 := EtasExtendableEnumerationOption.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 465.
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 470] ifFalse: [recoveredPC := 811].
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := 'EnumerationOption'.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 677] ifFalse: [recoveredPC := 498].
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            recoveredStack2 := 'StringValues'.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 505.
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 552] ifFalse: [recoveredPC := 512].
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack2 := 'StringValue'.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementsByTagName: (recoveredStack2).
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack2 := [:recoveredBlock519Arg1 | 
    | recoveredBlock519Stack0 recoveredBlock519Stack1 recoveredBlock519Stack2 recoveredBlock519Stack3 recoveredBlock519Stack4 recoveredBlock519PC recoveredBlock519Step recoveredBlock519Done recoveredBlock519Result |
    recoveredBlock519Stack0 := self.
    recoveredBlock519PC := 526.
    recoveredBlock519Done := false.
    [recoveredBlock519Done not] whileTrue: [
        recoveredBlock519Step := recoveredBlock519PC.
        recoveredBlock519Step = 526 ifTrue: [
            recoveredBlock519Stack1 := nil.
            recoveredBlock519PC := 527.
        ].
        recoveredBlock519Step = 527 ifTrue: [
            recoveredBlock519Stack2 := recoveredBlock519Arg1.
            recoveredBlock519PC := 528.
        ].
        recoveredBlock519Step = 528 ifTrue: [
            recoveredBlock519Stack2 := (recoveredBlock519Stack2) getContentText.
            recoveredBlock519PC := 530.
        ].
        recoveredBlock519Step = 530 ifTrue: [
            recoveredBlock519Stack3 := recoveredBlock519Stack2.
            recoveredBlock519PC := 531.
        ].
        recoveredBlock519Step = 531 ifTrue: [
            recoveredLocal5 := recoveredBlock519Stack3.
            recoveredBlock519PC := 534.
        ].
        recoveredBlock519Step = 534 ifTrue: [
            (recoveredBlock519Stack2 == nil) ifTrue: [recoveredBlock519PC := 549] ifFalse: [recoveredBlock519PC := 538].
        ].
        recoveredBlock519Step = 538 ifTrue: [
            recoveredBlock519PC := 539.
        ].
        recoveredBlock519Step = 539 ifTrue: [
            recoveredBlock519Stack1 := recoveredLocal3.
            recoveredBlock519PC := 542.
        ].
        recoveredBlock519Step = 542 ifTrue: [
            recoveredBlock519Stack2 := recoveredLocal5.
            recoveredBlock519PC := 545.
        ].
        recoveredBlock519Step = 545 ifTrue: [
            recoveredBlock519Stack2 := (recoveredBlock519Stack2) data.
            recoveredBlock519PC := 547.
        ].
        recoveredBlock519Step = 547 ifTrue: [
            recoveredBlock519Stack1 := (recoveredBlock519Stack1) add: (recoveredBlock519Stack2).
            recoveredBlock519PC := 549.
        ].
        recoveredBlock519Step = 549 ifTrue: [
            recoveredBlock519Result := recoveredBlock519Stack1.
            recoveredBlock519Done := true.
        ].
    ].
    recoveredBlock519Result
].
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            recoveredStack2 := 'Values'.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 563.
        ].
        recoveredStep = 563 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 606] ifFalse: [recoveredPC := 566].
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := 'Value'.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementsByTagName: (recoveredStack2).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredStack2 := [:recoveredBlock573Arg1 | 
    | recoveredBlock573Stack0 recoveredBlock573Stack1 recoveredBlock573Stack2 recoveredBlock573Stack3 recoveredBlock573Stack4 recoveredBlock573PC recoveredBlock573Step recoveredBlock573Done recoveredBlock573Result |
    recoveredBlock573Stack0 := self.
    recoveredBlock573PC := 580.
    recoveredBlock573Done := false.
    [recoveredBlock573Done not] whileTrue: [
        recoveredBlock573Step := recoveredBlock573PC.
        recoveredBlock573Step = 580 ifTrue: [
            recoveredBlock573Stack1 := nil.
            recoveredBlock573PC := 581.
        ].
        recoveredBlock573Step = 581 ifTrue: [
            recoveredBlock573Stack2 := recoveredBlock573Arg1.
            recoveredBlock573PC := 582.
        ].
        recoveredBlock573Step = 582 ifTrue: [
            recoveredBlock573Stack2 := (recoveredBlock573Stack2) getContentText.
            recoveredBlock573PC := 584.
        ].
        recoveredBlock573Step = 584 ifTrue: [
            recoveredBlock573Stack3 := recoveredBlock573Stack2.
            recoveredBlock573PC := 585.
        ].
        recoveredBlock573Step = 585 ifTrue: [
            recoveredLocal5 := recoveredBlock573Stack3.
            recoveredBlock573PC := 588.
        ].
        recoveredBlock573Step = 588 ifTrue: [
            (recoveredBlock573Stack2 == nil) ifTrue: [recoveredBlock573PC := 603] ifFalse: [recoveredBlock573PC := 592].
        ].
        recoveredBlock573Step = 592 ifTrue: [
            recoveredBlock573PC := 593.
        ].
        recoveredBlock573Step = 593 ifTrue: [
            recoveredBlock573Stack1 := recoveredLocal2.
            recoveredBlock573PC := 596.
        ].
        recoveredBlock573Step = 596 ifTrue: [
            recoveredBlock573Stack2 := recoveredLocal5.
            recoveredBlock573PC := 599.
        ].
        recoveredBlock573Step = 599 ifTrue: [
            recoveredBlock573Stack2 := (recoveredBlock573Stack2) data.
            recoveredBlock573PC := 601.
        ].
        recoveredBlock573Step = 601 ifTrue: [
            recoveredBlock573Stack1 := (recoveredBlock573Stack1) add: (recoveredBlock573Stack2).
            recoveredBlock573PC := 603.
        ].
        recoveredBlock573Step = 603 ifTrue: [
            recoveredBlock573Result := recoveredBlock573Stack1.
            recoveredBlock573Done := true.
        ].
    ].
    recoveredBlock573Result
].
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := EtasEditableEnumerationOption.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 616] ifFalse: [recoveredPC := 673].
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredStack2 := 'Action'.
            recoveredPC := 621.
        ].
        recoveredStep = 621 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 627.
        ].
        recoveredStep = 627 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 673] ifFalse: [recoveredPC := 630].
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 673] ifFalse: [recoveredPC := 642].
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack2 := [:recoveredBlock645Arg1 | 
    | recoveredBlock645Value0 recoveredBlock645Value1 recoveredBlock645Value2 recoveredBlock645Value3 recoveredBlock645Value4 |
    recoveredBlock645Value0 := OSCall.
    recoveredBlock645Value1 := (recoveredBlock645Value0) new.
    recoveredBlock645Value2 := recoveredLocal5.
    recoveredBlock645Value3 := (recoveredBlock645Value2) data.
    recoveredBlock645Value4 := (recoveredBlock645Value1) runProcess: (recoveredBlock645Value3).
    recoveredBlock645Value4
].
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack1) action: (recoveredStack2).
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 688] ifFalse: [recoveredPC := 694].
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 697.
        ].
        recoveredStep = 697 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 701.
        ].
        recoveredStep = 701 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 714] ifFalse: [recoveredPC := 782].
        ].
        recoveredStep = 714 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 724.
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredPC := 753.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 734] ifFalse: [recoveredPC := 781]] ifFalse: [recoveredPC := 756].
        ].
        recoveredStep = 756 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 764.
        ].
        recoveredStep = 764 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 777] ifFalse: [recoveredPC := 772].
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredPC := 737.
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            (recoveredStack1) stringCollection: (recoveredStack2).
            recoveredPC := 793.
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            (recoveredStack1) valueCollection: (recoveredStack2).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 805.
        ].
        recoveredStep = 805 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack2 := EtasButtonOption.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 825.
        ].
        recoveredStep = 825 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 830] ifFalse: [recoveredPC := 905].
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 833.
        ].
        recoveredStep = 833 ifTrue: [
            recoveredStack2 := 'ButtonOption'.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 842.
        ].
        recoveredStep = 842 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 903] ifFalse: [recoveredPC := 846].
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 849.
        ].
        recoveredStep = 849 ifTrue: [
            recoveredStack2 := 'Action'.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredStack1 := (recoveredStack1) getElementByTagName: (recoveredStack2).
            recoveredPC := 853.
        ].
        recoveredStep = 853 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 903] ifFalse: [recoveredPC := 860].
        ].
        recoveredStep = 860 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack1 := (recoveredStack1) getContentText.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 866.
        ].
        recoveredStep = 866 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 869.
        ].
        recoveredStep = 869 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 903] ifFalse: [recoveredPC := 872].
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            recoveredStack2 := [:recoveredBlock875Arg1 | 
    | recoveredBlock875Value0 recoveredBlock875Value1 recoveredBlock875Value2 recoveredBlock875Value3 recoveredBlock875Value4 |
    recoveredBlock875Value0 := OSCall.
    recoveredBlock875Value1 := (recoveredBlock875Value0) new.
    recoveredBlock875Value2 := recoveredLocal5.
    recoveredBlock875Value3 := (recoveredBlock875Value2) data.
    recoveredBlock875Value4 := (recoveredBlock875Value1) runProcess: (recoveredBlock875Value3).
    recoveredBlock875Value4
].
            recoveredPC := 898.
        ].
        recoveredStep = 898 ifTrue: [
            (recoveredStack1) action: (recoveredStack2).
            recoveredPC := 903.
        ].
        recoveredStep = 903 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 904.
        ].
        recoveredStep = 904 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 905 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

