"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20001ef0; bytecode file offset 0x8ffcfc"
!ASAP2Function methodsFor: 'recovered'!
sgClass
    ^self
! !

"ASDBase.ic method 0x20004bd0; bytecode file offset 0x90206c"
!ASAP2Function methodsFor: 'recovered'!
sgClassIfUndefined: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20008ffc; bytecode file offset 0x908be4"
!ASAP2Function methodsFor: 'recovered'!
iconString
    | recoveredValue0 |
    recoveredValue0 := (self) iconName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200185a8; bytecode file offset 0x92209c"
!ASAP2Function methodsFor: 'recovered'!
visualCallBackImageElement
    ^'ElementsTypeVariableLocal'
! !

"ASDBase.ic method 0x20018e54; bytecode file offset 0x92209c"
!ASAP2Function methodsFor: 'recovered'!
iconName
    ^'ET16_PROJECTDEFINITION'
! !

"ASDBase.ic method 0x200223f4; bytecode file offset 0x92209c"
!ASAP2Function methodsFor: 'recovered'!
getModuleSetMethod
    ^'addFunction:'
! !

"ASDBase.ic method 0x20023de0; bytecode file offset 0x92209c"
!ASAP2Function methodsFor: 'recovered'!
compareAccessors
    ^#('functionVersion' 'refCharacteristic' 'defCharacteristic' 'inMeasurement' 'outMeasurement' 'locMeasurement' 'subFunction')
! !

"ASDBase.ic method 0x200270d8; bytecode file offset 0x923a44"
!ASAP2Function methodsFor: 'recovered'!
clearSubFunction
    | recoveredValue0 |
    recoveredValue0 := (self) isSubFunction: (false).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2002744c; bytecode file offset 0x923d40"
!ASAP2Function methodsFor: 'recovered'!
setSubFunction
    | recoveredValue0 |
    recoveredValue0 := (self) isSubFunction: (true).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003c2a8; bytecode file offset 0x938b78"
!ASAP2Function methodsFor: 'recovered'!
readObjectShortFrom: recoveredArg1 pcId: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) readObjectFrom: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004b778; bytecode file offset 0x948384"
!ASAP2Function methodsFor: 'recovered'!
defCharacteristic
    | recoveredValue0 |
    recoveredValue0 := (self) at: (4).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004beb8; bytecode file offset 0x94877c"
!ASAP2Function methodsFor: 'recovered'!
refCharacteristic
    | recoveredValue0 |
    recoveredValue0 := (self) at: (5).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c130; bytecode file offset 0x948b80"
!ASAP2Function methodsFor: 'recovered'!
inMeasurement
    | recoveredValue0 |
    recoveredValue0 := (self) at: (6).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c3f0; bytecode file offset 0x948e28"
!ASAP2Function methodsFor: 'recovered'!
outMeasurement
    | recoveredValue0 |
    recoveredValue0 := (self) at: (7).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004c674; bytecode file offset 0x949118"
!ASAP2Function methodsFor: 'recovered'!
locMeasurement
    | recoveredValue0 |
    recoveredValue0 := (self) at: (8).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ca00; bytecode file offset 0x9492dc"
!ASAP2Function methodsFor: 'recovered'!
subFunction
    | recoveredValue0 |
    recoveredValue0 := (self) at: (9).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004cd28; bytecode file offset 0x9495f8"
!ASAP2Function methodsFor: 'recovered'!
annotation
    | recoveredValue0 |
    recoveredValue0 := (self) at: (11).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004ce14; bytecode file offset 0x949804"
!ASAP2Function methodsFor: 'recovered'!
functionVersion
    | recoveredValue0 |
    recoveredValue0 := (self) at: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20056618; bytecode file offset 0x9531e4"
!ASAP2Function methodsFor: 'recovered'!
getSetMethodFor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getObject.
    recoveredValue2 := (recoveredValue1) getFunctionSetMethod.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005a07c; bytecode file offset 0x956a30"
!ASAP2Function methodsFor: 'recovered'!
renameIn: recoveredArg1 using: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue0) renameFunctionsUsing: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20073cb0; bytecode file offset 0x970b34"
!ASAP2Function methodsFor: 'recovered'!
functionList
    ^nil
! !

"ASDBase.ic method 0x20073db0; bytecode file offset 0x970b34"
!ASAP2Function methodsFor: 'recovered'!
mapList
    ^nil
! !

"ASDBase.ic method 0x2007b5b4; bytecode file offset 0x97c330"
!ASAP2Function methodsFor: 'recovered'!
isPrimitive
    ^false
! !

"ASDBase.ic method 0x200839fc; bytecode file offset 0x9804b8"
!ASAP2Function methodsFor: 'recovered'!
addToSpecificationModule: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) addFunction: (self).
    ^self
! !

"ASDBase.ic method 0x20084f90; bytecode file offset 0x981ca4"
!ASAP2Function methodsFor: 'recovered'!
emWriteObjectShortOn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) emWriteObjectOn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20086718; bytecode file offset 0x9830a8"
!ASAP2Function methodsFor: 'recovered'!
addNamedObject: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) add: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20088ea0; bytecode file offset 0x98575c"
!ASAP2Function methodsFor: 'recovered'!
createCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new: (4).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20097da4; bytecode file offset 0x995850"
!ASAP2Function methodsFor: 'recovered'!
resetDataElementsFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) comments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) resetDataElementsFor: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a243c; bytecode file offset 0x99ed48"
!ASAP2Function methodsFor: 'recovered'!
createDeviceLink: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ASAP2FunctionLabel.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) create: (self) device: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a4a08; bytecode file offset 0x9a1ad4"
!ASAP2Function methodsFor: 'recovered'!
getFunctionVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getString: (recoveredValue0).
    (self) functionVersion: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a65f0; bytecode file offset 0x9a2f38"
!ASAP2Function methodsFor: 'recovered'!
defCharacteristic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (4) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6878; bytecode file offset 0x9a32e0"
!ASAP2Function methodsFor: 'recovered'!
refCharacteristic: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (5) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a6bd8; bytecode file offset 0x9a3694"
!ASAP2Function methodsFor: 'recovered'!
inMeasurement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (6) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7064; bytecode file offset 0x9a391c"
!ASAP2Function methodsFor: 'recovered'!
outMeasurement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (7) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7088; bytecode file offset 0x9a3b44"
!ASAP2Function methodsFor: 'recovered'!
locMeasurement: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (8) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a72bc; bytecode file offset 0x9a3d0c"
!ASAP2Function methodsFor: 'recovered'!
subFunction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (9) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a752c; bytecode file offset 0x9a3e74"
!ASAP2Function methodsFor: 'recovered'!
isSubFunction: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (10) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a76d0; bytecode file offset 0x9a3fd0"
!ASAP2Function methodsFor: 'recovered'!
annotation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (11) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7874; bytecode file offset 0x9a4138"
!ASAP2Function methodsFor: 'recovered'!
functionVersion: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (12) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a9578; bytecode file offset 0x9a5ef4"
!ASAP2Function methodsFor: 'recovered'!
getCommentObjectFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) function.
    recoveredValue3 := (recoveredValue0) getCommentObjectFor: (self) in: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a95d8; bytecode file offset 0x9a5ef4"
!ASAP2Function methodsFor: 'recovered'!
getHardwareObjectFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) function.
    recoveredValue3 := (recoveredValue0) getHardwareObjectFor: (self) in: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200a9904; bytecode file offset 0x9a6780"
!ASAP2Function methodsFor: 'recovered'!
addOutMeasurementList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) outMeasurement.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9964; bytecode file offset 0x9a6780"
!ASAP2Function methodsFor: 'recovered'!
addDefCharacteristicList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) defCharacteristic.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9974; bytecode file offset 0x9a6780"
!ASAP2Function methodsFor: 'recovered'!
addInMeasurementList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) inMeasurement.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9a34; bytecode file offset 0x9a6780"
!ASAP2Function methodsFor: 'recovered'!
addLocMeasurementList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) locMeasurement.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9b14; bytecode file offset 0x9a6780"
!ASAP2Function methodsFor: 'recovered'!
addRefCharacteristicList: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) refCharacteristic.
    (self) addNamedObject: (recoveredValue0) in: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200aab3c; bytecode file offset 0x9a7438"
!ASAP2Function methodsFor: 'recovered'!
removeFrom: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super removeFrom: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200ab1bc; bytecode file offset 0x9a7a98"
!ASAP2Function methodsFor: 'recovered'!
removeDeviceLink: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) comments.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) removeLabel: (self) for: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ada28; bytecode file offset 0x9aa3b4"
!ASAP2Function methodsFor: 'recovered'!
addToHardwareModule: recoveredArg1 hardwareObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) function.
    (recoveredValue0) addObject: (recoveredValue1) in: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ada68; bytecode file offset 0x9aa3b4"
!ASAP2Function methodsFor: 'recovered'!
addToCommentModule: recoveredArg1 commentObject: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) function.
    (recoveredValue0) addObject: (recoveredValue1) in: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200ae458; bytecode file offset 0x9ab034"
!ASAP2Function methodsFor: 'recovered'!
labelFor: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) comments.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) labelFor: (recoveredValue1) in: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bb1d0; bytecode file offset 0x9b7b94"
!ASAP2Function methodsFor: 'recovered'!
addToCommentModule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getCommentObject.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) function.
    (recoveredValue0) addObject: (recoveredValue1) in: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200bb25c; bytecode file offset 0x9b7b94"
!ASAP2Function methodsFor: 'recovered'!
addToHardwareModule: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getHardwareObject.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) function.
    (recoveredValue0) addObject: (recoveredValue1) in: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200d4f08; bytecode file offset 0x9d17d4"
!ASAP2Function methodsFor: 'recovered'!
restoreInstVars
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSubFunction.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) clearSubFunction.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200d64a0; bytecode file offset 0x9d3134"
!ASAP2Function methodsFor: 'recovered'!
initializeDefault
    super initializeDefault.
    (self) clearSubFunction.
    ^self
! !

"ASDBase.ic method 0x200d6b94; bytecode file offset 0x9d3600"
!ASAP2Function methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) putNameIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putLongNameIn: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200dc4cc; bytecode file offset 0x9d8e58"
!ASAP2Function methodsFor: 'recovered'!
putIn: recoveredArg1 defCharacteristic: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) defCharacteristic.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) measureList: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc4fc; bytecode file offset 0x9d8e58"
!ASAP2Function methodsFor: 'recovered'!
putIn: recoveredArg1 subFunction: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) subFunction.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) measureList: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc55c; bytecode file offset 0x9d8e58"
!ASAP2Function methodsFor: 'recovered'!
putIn: recoveredArg1 refCharacteristic: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) refCharacteristic.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) measureList: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc56c; bytecode file offset 0x9d8e58"
!ASAP2Function methodsFor: 'recovered'!
putIn: recoveredArg1 outMeasurement: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) outMeasurement.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) measureList: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc57c; bytecode file offset 0x9d8e58"
!ASAP2Function methodsFor: 'recovered'!
putIn: recoveredArg1 inMeasurement: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) inMeasurement.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) measureList: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200dc59c; bytecode file offset 0x9d8e58"
!ASAP2Function methodsFor: 'recovered'!
putIn: recoveredArg1 locMeasurement: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) locMeasurement.
    recoveredValue2 := recoveredArg2.
    (self) putIn: (recoveredValue0) measureList: (recoveredValue1) keyWord: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010deac; bytecode file offset 0xa0a768"
!ASAP2Function methodsFor: 'recovered'!
referencesFunction: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) subFunction.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012602c; bytecode file offset 0xa22bf0"
!ASAP2Function methodsFor: 'recovered'!
getSubFunction: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2SubFunction.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addSubFunction: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201260ec; bytecode file offset 0xa22bf0"
!ASAP2Function methodsFor: 'recovered'!
getInMeasurement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2InMeasurement.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addInMeasurementList: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201261ac; bytecode file offset 0xa22bf0"
!ASAP2Function methodsFor: 'recovered'!
getDefCharacteristic: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2DefCharacteristic.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addDefCharacteristicList: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20126254; bytecode file offset 0xa22bf0"
!ASAP2Function methodsFor: 'recovered'!
getOutMeasurement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2OutMeasurement.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addOutMeasurementList: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201262e4; bytecode file offset 0xa22bf0"
!ASAP2Function methodsFor: 'recovered'!
getLocMeasurement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2LocMeasurement.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addLocMeasurementList: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20126314; bytecode file offset 0xa22bf0"
!ASAP2Function methodsFor: 'recovered'!
getRefCharacteristic: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2RefCharacteristic.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) addRefCharacteristicList: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20133b14; bytecode file offset 0xa30420"
!ASAP2Function methodsFor: 'recovered'!
setDeviceLink: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 12.
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
            (recoveredStack0) addLabel: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20137068; bytecode file offset 0xa33920"
!ASAP2Function methodsFor: 'recovered'!
isSubFunction
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201610ac; bytecode file offset 0xa5d9bc"
!ASAP2Function methodsFor: 'recovered'!
removeFromProject
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isInteger.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) removeFunction: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20163cc0; bytecode file offset 0xa605cc"
!ASAP2Function methodsFor: 'recovered'!
getFrom: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) getShortBegin: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) getName: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) getLongName: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) parse: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20168ddc; bytecode file offset 0xa656b0"
!ASAP2Function methodsFor: 'recovered'!
replaceCharacteristic: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) defCharacteristic.
    (self) replaceLabel: (recoveredValue0) with: (recoveredValue1) in: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) refCharacteristic.
    (self) replaceLabel: (recoveredValue3) with: (recoveredValue4) in: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20180bec; bytecode file offset 0xa7d4b0"
!ASAP2Function methodsFor: 'recovered'!
removeInvalidFunctionEntries
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) subFunction.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := recoveredBlock6Arg1.
    recoveredBlock6Value1 := (recoveredBlock6Value0) class.
    recoveredBlock6Value2 := (self) class.
    recoveredBlock6Value3 := (recoveredBlock6Value1) = (recoveredBlock6Value2).
    recoveredBlock6Value3
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    (self) subFunction: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x201863dc; bytecode file offset 0xa82cf8"
!ASAP2Function methodsFor: 'recovered'!
removeSubFunction: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subFunction.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 21] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) subFunction.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) subFunction: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) subFunction.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20189348; bytecode file offset 0xa85c14"
!ASAP2Function methodsFor: 'recovered'!
allCalibrationLabels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) defCharacteristic.
    (recoveredValue3) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) refCharacteristic.
    (recoveredValue5) addAll: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x201a2cf0; bytecode file offset 0xa9f5bc"
!ASAP2Function methodsFor: 'recovered'!
noOfLabels
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) defCharacteristic.
    recoveredValue1 := (recoveredValue0) size.
    recoveredValue2 := (self) refCharacteristic.
    recoveredValue3 := (recoveredValue2) size.
    recoveredValue4 := (recoveredValue1) + (recoveredValue3).
    recoveredValue5 := (self) locMeasurement.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) + (recoveredValue6).
    recoveredValue8 := (self) inMeasurement.
    recoveredValue9 := (recoveredValue8) size.
    recoveredValue10 := (recoveredValue7) + (recoveredValue9).
    recoveredValue11 := (self) outMeasurement.
    recoveredValue12 := (recoveredValue11) size.
    recoveredValue13 := (recoveredValue10) + (recoveredValue12).
    ^recoveredValue13
! !

"ASDBase.ic method 0x201d940c; bytecode file offset 0xad5cf4"
!ASAP2Function methodsFor: 'recovered'!
referencesCharacteristic: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) defCharacteristic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) refCharacteristic.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201d9434; bytecode file offset 0xad5cf4"
!ASAP2Function methodsFor: 'recovered'!
referencesAxisPoint: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) defCharacteristic.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) refCharacteristic.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201dee64; bytecode file offset 0xadb788"
!ASAP2Function methodsFor: 'recovered'!
updateSpecificationModule: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) functionNamed: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) addFunction: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredPC := 27.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) replaceFunction: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201e9c74; bytecode file offset 0xae6830"
!ASAP2Function methodsFor: 'recovered'!
putIn: recoveredArg1 functionVersion: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) functionVersion.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) putNewLineIn: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) putIn: (recoveredStack2) string: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) putSeparatorIn: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := (recoveredStack2) functionVersion.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1) quotedString: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201eb338; bytecode file offset 0xae7c08"
!ASAP2Function methodsFor: 'recovered'!
allMeasurementLabels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) locMeasurement.
    (recoveredValue3) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) inMeasurement.
    (recoveredValue5) addAll: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) outMeasurement.
    (recoveredValue7) addAll: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    ^recoveredValue9
! !

"ASDBase.ic method 0x201ec5f0; bytecode file offset 0xae8eb4"
!ASAP2Function methodsFor: 'recovered'!
emMutate
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := super emMutate.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 == recoveredStack1) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) clearSubFunction.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) isSubFunction.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 27] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) clearSubFunction.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201fdef8; bytecode file offset 0xafa7bc"
!ASAP2Function methodsFor: 'recovered'!
checkFunctionList
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) subFunction.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) notEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) subFunction.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 |
    recoveredBlock15Value0 := recoveredBlock15Arg1.
    recoveredBlock15Value1 := (recoveredBlock15Value0) class.
    recoveredBlock15Value2 := (self) class.
    recoveredBlock15Value3 := (recoveredBlock15Value1) = (recoveredBlock15Value2).
    recoveredBlock15Value4 := (recoveredBlock15Value3) not.
    recoveredBlock15Value4
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) conform: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20210594; bytecode file offset 0xb0ce50"
!ASAP2Function methodsFor: 'recovered'!
referenceToLabelNamed: recoveredArg1 in: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includesIdent: (recoveredBlock7Stack3).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 27].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := true.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^false
! !

"ASDBase.ic method 0x2021c2e4; bytecode file offset 0xb18c30"
!ASAP2Function methodsFor: 'recovered'!
addRefCharacteristic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) refCharacteristic.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addFunction: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021c304; bytecode file offset 0xb18c30"
!ASAP2Function methodsFor: 'recovered'!
addInMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) inMeasurement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addFunction: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021c324; bytecode file offset 0xb18c30"
!ASAP2Function methodsFor: 'recovered'!
addOutMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) outMeasurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) outMeasurement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) outMeasurement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addFunction: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021c344; bytecode file offset 0xb18c30"
!ASAP2Function methodsFor: 'recovered'!
addDefCharacteristic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) defCharacteristic.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addFunction: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021c364; bytecode file offset 0xb18c30"
!ASAP2Function methodsFor: 'recovered'!
addLocMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) locMeasurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) locMeasurement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) locMeasurement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addFunction: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2021c3a8; bytecode file offset 0xb18c74"
!ASAP2Function methodsFor: 'recovered'!
addSubFunction: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) subFunction.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) subFunction: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) subFunction.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) subFunction: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) subFunction.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) isSubFunction: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20221454; bytecode file offset 0xb1dd20"
!ASAP2Function methodsFor: 'recovered'!
getAllLabelProxiesForProjectNode: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getAllLabelsForProjectNode: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) labelList.
    recoveredValue4 := (recoveredValue3) values.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Value0 recoveredBlock16Value1 recoveredBlock16Value2 recoveredBlock16Value3 |
    recoveredBlock16Value0 := recoveredLocal1.
    recoveredBlock16Value1 := recoveredBlock16Arg1.
    recoveredBlock16Value2 := (recoveredBlock16Value1) label.
    recoveredBlock16Value3 := (recoveredBlock16Value0) includes: (recoveredBlock16Value2).
    recoveredBlock16Value3
].
    recoveredValue6 := (recoveredValue4) select: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20257268; bytecode file offset 0xb53c94"
!ASAP2Function methodsFor: 'recovered'!
updateHardwareObject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getHardwareModule.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := recoveredBlock19Arg1.
    recoveredBlock19Value3 := (recoveredBlock19Value2) function.
    recoveredBlock19Value4 := (recoveredBlock19Value0) addObject: (recoveredBlock19Value1) in: (recoveredBlock19Value3).
    recoveredBlock19Value4
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifNoError: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20257388; bytecode file offset 0xb53c94"
!ASAP2Function methodsFor: 'recovered'!
updateCommentObject: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 37] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) name.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) name: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) getCommentModule.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := recoveredBlock19Arg1.
    recoveredBlock19Value3 := (recoveredBlock19Value2) function.
    recoveredBlock19Value4 := (recoveredBlock19Value0) addObject: (recoveredBlock19Value1) in: (recoveredBlock19Value3).
    recoveredBlock19Value4
].
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifNoError: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026c4ac; bytecode file offset 0xb68d70"
!ASAP2Function methodsFor: 'recovered'!
referencesMeasurement: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) inMeasurement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) locMeasurement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) outMeasurement.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026e730; bytecode file offset 0xb6aff4"
!ASAP2Function methodsFor: 'recovered'!
addNamedObject: recoveredArg1 to: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7Stack4 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := nil.
            recoveredBlock7PC := 15.
        ].
        recoveredBlock7Step = 15 ifTrue: [
            recoveredBlock7Stack2 := recoveredBlock7Arg1.
            recoveredBlock7PC := 16.
        ].
        recoveredBlock7Step = 16 ifTrue: [
            recoveredBlock7Stack3 := recoveredArg1.
            recoveredBlock7PC := 19.
        ].
        recoveredBlock7Step = 19 ifTrue: [
            recoveredBlock7Stack2 := (recoveredBlock7Stack2) includesIdent: (recoveredBlock7Stack3).
            recoveredBlock7PC := 20.
        ].
        recoveredBlock7Step = 20 ifTrue: [
            (recoveredBlock7Stack2) ifTrue: [recoveredBlock7PC := 24] ifFalse: [recoveredBlock7PC := 27].
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 26.
        ].
        recoveredBlock7Step = 26 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 27 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack1.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) last.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) addIdent: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20279108; bytecode file offset 0xb759e0"
!ASAP2Function methodsFor: 'recovered'!
allLabels
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (self) defCharacteristic.
    (recoveredValue3) addAll: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (self) refCharacteristic.
    (recoveredValue5) addAll: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (self) locMeasurement.
    (recoveredValue7) addAll: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (self) inMeasurement.
    (recoveredValue9) addAll: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (self) outMeasurement.
    (recoveredValue11) addAll: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20284d84; bytecode file offset 0xb81680"
!ASAP2Function methodsFor: 'recovered'!
addToRefCharacteristic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ASAP2RefCharacteristic.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addRefCharacteristicList: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := ASAP2RefCharacteristic.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addRefCharacteristicList: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) refCharacteristic.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) addNamedObject: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20284dac; bytecode file offset 0xb81680"
!ASAP2Function methodsFor: 'recovered'!
addToInMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := ASAP2InMeasurement.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) addInMeasurementList: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := ASAP2InMeasurement.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) addInMeasurementList: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) inMeasurement.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) addNamedObject: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028dc90; bytecode file offset 0xb8a56c"
!ASAP2Function methodsFor: 'recovered'!
sorted: recoveredArg1
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
            recoveredStack2 := 'Call_84978'.
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
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := 'CT_Function'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) longName.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 'ASCET generated function list for CT'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) withAll: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := super sorted: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028e588; bytecode file offset 0xb8ae68"
!ASAP2Function methodsFor: 'recovered'!
changeToLookupTable: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) inMeasurement.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    (self) inMeasurement: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) locMeasurement.
    recoveredValue5 := (recoveredValue3) value: (recoveredValue4).
    (self) locMeasurement: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (self) outMeasurement.
    recoveredValue8 := (recoveredValue6) value: (recoveredValue7).
    (self) outMeasurement: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := (self) defCharacteristic.
    recoveredValue11 := (recoveredValue9) value: (recoveredValue10).
    (self) defCharacteristic: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := (self) refCharacteristic.
    recoveredValue14 := (recoveredValue12) value: (recoveredValue13).
    (self) refCharacteristic: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x2028fa48; bytecode file offset 0xb8c3a8"
!ASAP2Function methodsFor: 'recovered'!
removeRefCharacteristic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) refCharacteristic.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := [].
    recoveredBlock24Value3 := (recoveredBlock24Value0) remove: (recoveredBlock24Value1) ifAbsent: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028fa6c; bytecode file offset 0xb8c3a8"
!ASAP2Function methodsFor: 'recovered'!
removeInMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) inMeasurement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := [].
    recoveredBlock24Value3 := (recoveredBlock24Value0) remove: (recoveredBlock24Value1) ifAbsent: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028fa90; bytecode file offset 0xb8c3a8"
!ASAP2Function methodsFor: 'recovered'!
removeOutMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) outMeasurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) outMeasurement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) outMeasurement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := [].
    recoveredBlock24Value3 := (recoveredBlock24Value0) remove: (recoveredBlock24Value1) ifAbsent: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028fab4; bytecode file offset 0xb8c3a8"
!ASAP2Function methodsFor: 'recovered'!
removeLocMeasurement: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) locMeasurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) locMeasurement.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) locMeasurement.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := [].
    recoveredBlock24Value3 := (recoveredBlock24Value0) remove: (recoveredBlock24Value1) ifAbsent: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028fad8; bytecode file offset 0xb8c3a8"
!ASAP2Function methodsFor: 'recovered'!
removeDefCharacteristic: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) createCollection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) defCharacteristic.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := [].
    recoveredBlock24Value3 := (recoveredBlock24Value0) remove: (recoveredBlock24Value1) ifAbsent: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a03c0; bytecode file offset 0xb9ccfc"
!ASAP2Function methodsFor: 'recovered'!
removeCommentAndHardware
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) getCommentModule.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 recoveredBlock5Value3 recoveredBlock5Value4 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) getCommentObject.
    recoveredBlock5Value2 := recoveredBlock5Arg1.
    recoveredBlock5Value3 := (recoveredBlock5Value2) function.
    recoveredBlock5Value4 := (recoveredBlock5Value0) removeObject: (recoveredBlock5Value1) in: (recoveredBlock5Value3).
    recoveredBlock5Value4
].
    (recoveredValue0) ifNoError: (recoveredValue1).
    recoveredValue2 := (self) getHardwareModule.
    recoveredValue3 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 recoveredBlock25Value4 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := (self) getHardwareObject.
    recoveredBlock25Value2 := recoveredBlock25Arg1.
    recoveredBlock25Value3 := (recoveredBlock25Value2) function.
    recoveredBlock25Value4 := (recoveredBlock25Value0) removeObject: (recoveredBlock25Value1) in: (recoveredBlock25Value3).
    recoveredBlock25Value4
].
    (recoveredValue2) ifNoError: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x202b56dc; bytecode file offset 0xbb1fa8"
!ASAP2Function methodsFor: 'recovered'!
replaceLabel: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) inMeasurement.
    (self) replaceLabel: (recoveredValue0) with: (recoveredValue1) in: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (self) locMeasurement.
    (self) replaceLabel: (recoveredValue3) with: (recoveredValue4) in: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (self) outMeasurement.
    (self) replaceLabel: (recoveredValue6) with: (recoveredValue7) in: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (self) defCharacteristic.
    (self) replaceLabel: (recoveredValue9) with: (recoveredValue10) in: (recoveredValue11).
    recoveredValue12 := recoveredArg1.
    recoveredValue13 := recoveredArg2.
    recoveredValue14 := (self) refCharacteristic.
    (self) replaceLabel: (recoveredValue12) with: (recoveredValue13) in: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x202c88f4; bytecode file offset 0xbc51d4"
!ASAP2Function methodsFor: 'recovered'!
initializeCollections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    super initializeCollections.
    recoveredValue0 := OrderedCollection.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := (recoveredValue1) new.
    (self) annotation: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) new.
    (self) defCharacteristic: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) new.
    (self) refCharacteristic: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) new.
    (self) inMeasurement: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) new.
    (self) outMeasurement: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    recoveredValue12 := (recoveredValue11) new.
    (self) locMeasurement: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) new.
    (self) subFunction: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x202d96e8; bytecode file offset 0xbd5fc0"
!ASAP2Function methodsFor: 'recovered'!
mergeWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 |
    recoveredValue0 := (self) defCharacteristic.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) defCharacteristic.
    (recoveredValue0) addAll: (recoveredValue2).
    recoveredValue3 := (self) refCharacteristic.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) refCharacteristic.
    (recoveredValue3) addAll: (recoveredValue5).
    recoveredValue6 := (self) inMeasurement.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := (recoveredValue7) inMeasurement.
    (recoveredValue6) addAll: (recoveredValue8).
    recoveredValue9 := (self) outMeasurement.
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) outMeasurement.
    (recoveredValue9) addAll: (recoveredValue11).
    recoveredValue12 := (self) locMeasurement.
    recoveredValue13 := recoveredArg1.
    recoveredValue14 := (recoveredValue13) locMeasurement.
    (recoveredValue12) addAll: (recoveredValue14).
    recoveredValue15 := (self) subFunction.
    recoveredValue16 := recoveredArg1.
    recoveredValue17 := (recoveredValue16) subFunction.
    recoveredValue18 := (recoveredValue15) , (recoveredValue17).
    (self) subFunction: (recoveredValue18).
    ^self
! !

"ASDBase.ic method 0x202ee2f0; bytecode file offset 0xbeabe0"
!ASAP2Function methodsFor: 'recovered'!
asap2Copy
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := super asap2Copy.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) inMeasurement.
    recoveredValue2 := (recoveredValue1) copy.
    (self) inMeasurement: (recoveredValue2).
    recoveredValue3 := (self) locMeasurement.
    recoveredValue4 := (recoveredValue3) copy.
    (self) locMeasurement: (recoveredValue4).
    recoveredValue5 := (self) outMeasurement.
    recoveredValue6 := (recoveredValue5) copy.
    (self) outMeasurement: (recoveredValue6).
    recoveredValue7 := (self) defCharacteristic.
    recoveredValue8 := (recoveredValue7) copy.
    (self) defCharacteristic: (recoveredValue8).
    recoveredValue9 := (self) refCharacteristic.
    recoveredValue10 := (recoveredValue9) copy.
    (self) refCharacteristic: (recoveredValue10).
    recoveredValue11 := (self) subFunction.
    recoveredValue12 := (recoveredValue11) copy.
    (self) subFunction: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x2034abd8; bytecode file offset 0xc474c4"
!ASAP2Function methodsFor: 'recovered'!
referenceToLabel: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) inMeasurement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) locMeasurement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) outMeasurement.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) defCharacteristic.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) refCharacteristic.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabel: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034abf8; bytecode file offset 0xc474c4"
!ASAP2Function methodsFor: 'recovered'!
referenceToLabelNamed: recoveredArg1
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
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) inMeasurement.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabelNamed: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := (recoveredStack2) locMeasurement.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabelNamed: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) outMeasurement.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabelNamed: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) defCharacteristic.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabelNamed: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) refCharacteristic.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) referenceToLabelNamed: (recoveredStack1) in: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20352c68; bytecode file offset 0xc4f55c"
!ASAP2Function methodsFor: 'recovered'!
doWithAllCollectionsSelectorAndAssign: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) value: ('defCharacteristic') value: ('calibrationNamed:').
    (self) defCharacteristic: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) value: ('refCharacteristic') value: ('calibrationNamed:').
    (self) refCharacteristic: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) value: ('inMeasurement') value: ('measurementNamed:').
    (self) inMeasurement: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := (recoveredValue6) value: ('outMeasurement') value: ('measurementNamed:').
    (self) outMeasurement: (recoveredValue7).
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue8) value: ('locMeasurement') value: ('measurementNamed:').
    (self) locMeasurement: (recoveredValue9).
    recoveredValue10 := recoveredArg1.
    recoveredValue11 := (recoveredValue10) value: ('subFunction') value: ('functionNamed:').
    (self) subFunction: (recoveredValue11).
    ^self
! !

"ASDBase.ic method 0x2035b6cc; bytecode file offset 0xc57f9c"
!ASAP2Function methodsFor: 'recovered'!
updateA2lFrom: recoveredArg1 in: recoveredArg2
    | recoveredValue0 |
    recoveredValue0 := [:recoveredBlock4Arg1 :recoveredBlock4Arg2 | 
    | recoveredBlock4Local1 recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 recoveredBlock4Value4 recoveredBlock4Value5 recoveredBlock4Value6 recoveredBlock4Value7 recoveredBlock4Value8 |
    recoveredBlock4Value0 := recoveredBlock4Arg1.
    recoveredBlock4Value1 := (self) perform: (recoveredBlock4Value0).
    recoveredBlock4Value2 := (recoveredBlock4Value1) class.
    recoveredBlock4Value3 := (recoveredBlock4Value2) new.
    recoveredBlock4Local1 := recoveredBlock4Value3.
    recoveredBlock4Value4 := recoveredArg1.
    recoveredBlock4Value5 := recoveredBlock4Arg1.
    recoveredBlock4Value6 := (recoveredBlock4Value4) perform: (recoveredBlock4Value5).
    recoveredBlock4Value7 := [:recoveredBlock4Block26Arg1 | 
    | recoveredBlock4Block26Local1 recoveredBlock4Block26Stack0 recoveredBlock4Block26Stack1 recoveredBlock4Block26Stack2 recoveredBlock4Block26Stack3 recoveredBlock4Block26Stack4 recoveredBlock4Block26Stack5 recoveredBlock4Block26PC recoveredBlock4Block26Step recoveredBlock4Block26Done recoveredBlock4Block26Result |
    recoveredBlock4Block26Stack0 := nil.
    recoveredBlock4Block26PC := 32.
    recoveredBlock4Block26Done := false.
    [recoveredBlock4Block26Done not] whileTrue: [
        recoveredBlock4Block26Step := recoveredBlock4Block26PC.
        recoveredBlock4Block26Step = 32 ifTrue: [
            recoveredBlock4Block26Stack1 := nil.
            recoveredBlock4Block26PC := 33.
        ].
        recoveredBlock4Block26Step = 33 ifTrue: [
            recoveredBlock4Block26Stack2 := recoveredArg2.
            recoveredBlock4Block26PC := 36.
        ].
        recoveredBlock4Block26Step = 36 ifTrue: [
            recoveredBlock4Block26Stack3 := recoveredBlock4Arg2.
            recoveredBlock4Block26PC := 39.
        ].
        recoveredBlock4Block26Step = 39 ifTrue: [
            recoveredBlock4Block26Stack4 := recoveredBlock4Block26Arg1.
            recoveredBlock4Block26PC := 40.
        ].
        recoveredBlock4Block26Step = 40 ifTrue: [
            recoveredBlock4Block26Stack2 := (recoveredBlock4Block26Stack2) perform: (recoveredBlock4Block26Stack3) with: (recoveredBlock4Block26Stack4).
            recoveredBlock4Block26PC := 42.
        ].
        recoveredBlock4Block26Step = 42 ifTrue: [
            recoveredBlock4Block26Stack3 := recoveredBlock4Block26Stack2.
            recoveredBlock4Block26PC := 43.
        ].
        recoveredBlock4Block26Step = 43 ifTrue: [
            recoveredBlock4Block26Local1 := recoveredBlock4Block26Stack3.
            recoveredBlock4Block26PC := 44.
        ].
        recoveredBlock4Block26Step = 44 ifTrue: [
            (recoveredBlock4Block26Stack2 == nil) ifTrue: [recoveredBlock4Block26PC := 55] ifFalse: [recoveredBlock4Block26PC := 48].
        ].
        recoveredBlock4Block26Step = 48 ifTrue: [
            recoveredBlock4Block26PC := 49.
        ].
        recoveredBlock4Block26Step = 49 ifTrue: [
            recoveredBlock4Block26Stack1 := recoveredBlock4Local1.
            recoveredBlock4Block26PC := 52.
        ].
        recoveredBlock4Block26Step = 52 ifTrue: [
            recoveredBlock4Block26Stack2 := recoveredBlock4Block26Local1.
            recoveredBlock4Block26PC := 53.
        ].
        recoveredBlock4Block26Step = 53 ifTrue: [
            recoveredBlock4Block26Stack1 := (recoveredBlock4Block26Stack1) add: (recoveredBlock4Block26Stack2).
            recoveredBlock4Block26PC := 55.
        ].
        recoveredBlock4Block26Step = 55 ifTrue: [
            recoveredBlock4Block26Result := recoveredBlock4Block26Stack1.
            recoveredBlock4Block26Done := true.
        ].
    ].
    recoveredBlock4Block26Result
].
    (recoveredBlock4Value6) do: (recoveredBlock4Value7).
    recoveredBlock4Value8 := recoveredBlock4Local1.
    recoveredBlock4Value8
].
    (self) doWithAllCollectionsSelectorAndAssign: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2036681c; bytecode file offset 0xc630ec"
!ASAP2Function methodsFor: 'recovered'!
setCommentsLink: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 |
    recoveredBlock5Value0 := (self) comments: (nil).
    recoveredBlock5Value0
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifInteger: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) setCommentsLink: (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 42] ifFalse: [recoveredLocal1 := nil. recoveredPC := 64]] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b738c; bytecode file offset 0xcb3c6c"
!ASAP2Function methodsFor: 'recovered'!
createASAP2ObjectCReferencesIn: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) list.
    recoveredBlock13Value2 := [:recoveredBlock13Block22Arg1 | 
    | recoveredBlock13Block22Local1 recoveredBlock13Block22Stack0 recoveredBlock13Block22Stack1 recoveredBlock13Block22Stack2 recoveredBlock13Block22Stack3 recoveredBlock13Block22Stack4 recoveredBlock13Block22PC recoveredBlock13Block22Step recoveredBlock13Block22Done recoveredBlock13Block22Result |
    recoveredBlock13Block22Stack0 := self.
    recoveredBlock13Block22PC := 28.
    recoveredBlock13Block22Done := false.
    [recoveredBlock13Block22Done not] whileTrue: [
        recoveredBlock13Block22Step := recoveredBlock13Block22PC.
        recoveredBlock13Block22Step = 28 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredArg2.
            recoveredBlock13Block22PC := 31.
        ].
        recoveredBlock13Block22Step = 31 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 32.
        ].
        recoveredBlock13Block22Step = 32 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) characteristicNamed: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 33.
        ].
        recoveredBlock13Block22Step = 33 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Stack1.
            recoveredBlock13Block22PC := 34.
        ].
        recoveredBlock13Block22Step = 34 ifTrue: [
            recoveredBlock13Block22Local1 := recoveredBlock13Block22Stack2.
            recoveredBlock13Block22PC := 35.
        ].
        recoveredBlock13Block22Step = 35 ifTrue: [
            (recoveredBlock13Block22Stack1 ~~ nil) ifTrue: [recoveredBlock13Block22PC := 45] ifFalse: [recoveredBlock13Block22PC := 38].
        ].
        recoveredBlock13Block22Step = 38 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredArg2.
            recoveredBlock13Block22PC := 41.
        ].
        recoveredBlock13Block22Step = 41 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 42.
        ].
        recoveredBlock13Block22Step = 42 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) axisPointNamed: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 44.
        ].
        recoveredBlock13Block22Step = 44 ifTrue: [
            recoveredBlock13Block22Local1 := recoveredBlock13Block22Stack1.
            recoveredBlock13Block22PC := 45.
        ].
        recoveredBlock13Block22Step = 45 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredBlock13Block22Local1.
            recoveredBlock13Block22PC := 46.
        ].
        recoveredBlock13Block22Step = 46 ifTrue: [
            (recoveredBlock13Block22Stack1 ~~ nil) ifTrue: [recoveredBlock13Block22PC := 62] ifFalse: [recoveredBlock13Block22PC := 50].
        ].
        recoveredBlock13Block22Step = 50 ifTrue: [
            recoveredBlock13Block22Stack1 := self.
            recoveredBlock13Block22PC := 51.
        ].
        recoveredBlock13Block22Step = 51 ifTrue: [
            recoveredBlock13Block22Stack2 := SCASAP2DBMissingLabel.
            recoveredBlock13Block22PC := 53.
        ].
        recoveredBlock13Block22Step = 53 ifTrue: [
            recoveredBlock13Block22Stack3 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 54.
        ].
        recoveredBlock13Block22Step = 54 ifTrue: [
            recoveredBlock13Block22Stack2 := (recoveredBlock13Block22Stack2) , (recoveredBlock13Block22Stack3).
            recoveredBlock13Block22PC := 56.
        ].
        recoveredBlock13Block22Step = 56 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) monitorWarning: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 58.
        ].
        recoveredBlock13Block22Step = 58 ifTrue: [
            recoveredBlock13Block22PC := 68.
        ].
        recoveredBlock13Block22Step = 62 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredLocal1.
            recoveredBlock13Block22PC := 65.
        ].
        recoveredBlock13Block22Step = 65 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Local1.
            recoveredBlock13Block22PC := 66.
        ].
        recoveredBlock13Block22Step = 66 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) add: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 68.
        ].
        recoveredBlock13Block22Step = 68 ifTrue: [
            recoveredBlock13Block22Result := recoveredBlock13Block22Stack1.
            recoveredBlock13Block22Done := true.
        ].
    ].
    recoveredBlock13Block22Result
].
    recoveredBlock13Value3 := (recoveredBlock13Value1) do: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203bf4f0; bytecode file offset 0xcbbdc0"
!ASAP2Function methodsFor: 'recovered'!
createFunctionListReference
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) outMeasurement.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) addFunction: (self).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) inMeasurement.
    recoveredValue3 := [:recoveredBlock20Arg1 | 
    | recoveredBlock20Value0 recoveredBlock20Value1 |
    recoveredBlock20Value0 := recoveredBlock20Arg1.
    recoveredBlock20Value1 := (recoveredBlock20Value0) addFunction: (self).
    recoveredBlock20Value1
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) locMeasurement.
    recoveredValue5 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := (recoveredBlock35Value0) addFunction: (self).
    recoveredBlock35Value1
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) defCharacteristic.
    recoveredValue7 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Value0 recoveredBlock51Value1 |
    recoveredBlock51Value0 := recoveredBlock51Arg1.
    recoveredBlock51Value1 := (recoveredBlock51Value0) addFunction: (self).
    recoveredBlock51Value1
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := (self) refCharacteristic.
    recoveredValue9 := [:recoveredBlock67Arg1 | 
    | recoveredBlock67Value0 recoveredBlock67Value1 |
    recoveredBlock67Value0 := recoveredBlock67Arg1.
    recoveredBlock67Value1 := (recoveredBlock67Value0) addFunction: (self).
    recoveredBlock67Value1
].
    (recoveredValue8) do: (recoveredValue9).
    ^self
! !

"ASDBase.ic method 0x203c7658; bytecode file offset 0xcc3f38"
!ASAP2Function methodsFor: 'recovered'!
createASAP2ObjectMReferencesIn: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := (recoveredBlock13Value0) list.
    recoveredBlock13Value2 := [:recoveredBlock13Block22Arg1 | 
    | recoveredBlock13Block22Local1 recoveredBlock13Block22Stack0 recoveredBlock13Block22Stack1 recoveredBlock13Block22Stack2 recoveredBlock13Block22Stack3 recoveredBlock13Block22Stack4 recoveredBlock13Block22PC recoveredBlock13Block22Step recoveredBlock13Block22Done recoveredBlock13Block22Result |
    recoveredBlock13Block22Stack0 := self.
    recoveredBlock13Block22PC := 28.
    recoveredBlock13Block22Done := false.
    [recoveredBlock13Block22Done not] whileTrue: [
        recoveredBlock13Block22Step := recoveredBlock13Block22PC.
        recoveredBlock13Block22Step = 28 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredArg2.
            recoveredBlock13Block22PC := 31.
        ].
        recoveredBlock13Block22Step = 31 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 32.
        ].
        recoveredBlock13Block22Step = 32 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) measurementNamed: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 33.
        ].
        recoveredBlock13Block22Step = 33 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Stack1.
            recoveredBlock13Block22PC := 34.
        ].
        recoveredBlock13Block22Step = 34 ifTrue: [
            recoveredBlock13Block22Local1 := recoveredBlock13Block22Stack2.
            recoveredBlock13Block22PC := 35.
        ].
        recoveredBlock13Block22Step = 35 ifTrue: [
            (recoveredBlock13Block22Stack1 ~~ nil) ifTrue: [recoveredBlock13Block22PC := 58] ifFalse: [recoveredBlock13Block22PC := 38].
        ].
        recoveredBlock13Block22Step = 38 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredArg2.
            recoveredBlock13Block22PC := 41.
        ].
        recoveredBlock13Block22Step = 41 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 42.
        ].
        recoveredBlock13Block22Step = 42 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) frameNamed: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 44.
        ].
        recoveredBlock13Block22Step = 44 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Stack1.
            recoveredBlock13Block22PC := 45.
        ].
        recoveredBlock13Block22Step = 45 ifTrue: [
            recoveredBlock13Block22Local1 := recoveredBlock13Block22Stack2.
            recoveredBlock13Block22PC := 46.
        ].
        recoveredBlock13Block22Step = 46 ifTrue: [
            (recoveredBlock13Block22Stack1 ~~ nil) ifTrue: [recoveredBlock13Block22PC := 58] ifFalse: [recoveredBlock13Block22PC := 50].
        ].
        recoveredBlock13Block22Step = 50 ifTrue: [
            recoveredBlock13Block22Stack1 := self.
            recoveredBlock13Block22PC := 51.
        ].
        recoveredBlock13Block22Step = 51 ifTrue: [
            recoveredBlock13Block22Stack2 := SCASAP2DBMissingMeasurement.
            recoveredBlock13Block22PC := 53.
        ].
        recoveredBlock13Block22Step = 53 ifTrue: [
            recoveredBlock13Block22Stack3 := recoveredBlock13Block22Arg1.
            recoveredBlock13Block22PC := 54.
        ].
        recoveredBlock13Block22Step = 54 ifTrue: [
            recoveredBlock13Block22Stack2 := (recoveredBlock13Block22Stack2) , (recoveredBlock13Block22Stack3).
            recoveredBlock13Block22PC := 56.
        ].
        recoveredBlock13Block22Step = 56 ifTrue: [
            (recoveredBlock13Block22Stack1) monitorWarning: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 58.
        ].
        recoveredBlock13Block22Step = 58 ifTrue: [
            recoveredBlock13Block22Stack1 := nil.
            recoveredBlock13Block22PC := 59.
        ].
        recoveredBlock13Block22Step = 59 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Local1.
            recoveredBlock13Block22PC := 60.
        ].
        recoveredBlock13Block22Step = 60 ifTrue: [
            (recoveredBlock13Block22Stack2 == nil) ifTrue: [recoveredBlock13Block22PC := 71] ifFalse: [recoveredBlock13Block22PC := 64].
        ].
        recoveredBlock13Block22Step = 64 ifTrue: [
            recoveredBlock13Block22PC := 65.
        ].
        recoveredBlock13Block22Step = 65 ifTrue: [
            recoveredBlock13Block22Stack1 := recoveredLocal1.
            recoveredBlock13Block22PC := 68.
        ].
        recoveredBlock13Block22Step = 68 ifTrue: [
            recoveredBlock13Block22Stack2 := recoveredBlock13Block22Local1.
            recoveredBlock13Block22PC := 69.
        ].
        recoveredBlock13Block22Step = 69 ifTrue: [
            recoveredBlock13Block22Stack1 := (recoveredBlock13Block22Stack1) add: (recoveredBlock13Block22Stack2).
            recoveredBlock13Block22PC := 71.
        ].
        recoveredBlock13Block22Step = 71 ifTrue: [
            recoveredBlock13Block22Result := recoveredBlock13Block22Stack1.
            recoveredBlock13Block22Done := true.
        ].
    ].
    recoveredBlock13Block22Result
].
    recoveredBlock13Value3 := (recoveredBlock13Value1) do: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (recoveredValue4) asArray.
    ^recoveredValue5
! !

"ASDBase.ic method 0x203cb728; bytecode file offset 0xcc8004"
!ASAP2Function methodsFor: 'recovered'!
putIn: recoveredArg1 measureList: recoveredArg2 keyWord: recoveredArg3
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Stack0 recoveredBlock7Stack1 recoveredBlock7Stack2 recoveredBlock7Stack3 recoveredBlock7PC recoveredBlock7Step recoveredBlock7Done recoveredBlock7Result |
    recoveredBlock7Stack0 := self.
    recoveredBlock7PC := 14.
    recoveredBlock7Done := false.
    [recoveredBlock7Done not] whileTrue: [
        recoveredBlock7Step := recoveredBlock7PC.
        recoveredBlock7Step = 14 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg2.
            recoveredBlock7PC := 17.
        ].
        recoveredBlock7Step = 17 ifTrue: [
            recoveredBlock7Stack1 := (recoveredBlock7Stack1) isEmpty.
            recoveredBlock7PC := 18.
        ].
        recoveredBlock7Step = 18 ifTrue: [
            (recoveredBlock7Stack1) ifTrue: [recoveredBlock7PC := 22] ifFalse: [recoveredBlock7PC := 24].
        ].
        recoveredBlock7Step = 22 ifTrue: [
            recoveredBlock7Stack1 := self.
            recoveredBlock7PC := 23.
        ].
        recoveredBlock7Step = 23 ifTrue: [
            ^recoveredBlock7Stack1
        ].
        recoveredBlock7Step = 24 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 25.
        ].
        recoveredBlock7Step = 25 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 28.
        ].
        recoveredBlock7Step = 28 ifTrue: [
            (recoveredBlock7Stack1) putBeginIn: (recoveredBlock7Stack2).
            recoveredBlock7PC := 30.
        ].
        recoveredBlock7Step = 30 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 33.
        ].
        recoveredBlock7Step = 33 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg3.
            recoveredBlock7PC := 36.
        ].
        recoveredBlock7Step = 36 ifTrue: [
            (recoveredBlock7Stack0) putIn: (recoveredBlock7Stack1) string: (recoveredBlock7Stack2).
            recoveredBlock7PC := 38.
        ].
        recoveredBlock7Step = 38 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 39.
        ].
        recoveredBlock7Step = 39 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Arg1.
            recoveredBlock7PC := 40.
        ].
        recoveredBlock7Step = 40 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) sorted: (recoveredBlock7Stack1).
            recoveredBlock7PC := 41.
        ].
        recoveredBlock7Step = 41 ifTrue: [
            recoveredBlock7Stack1 := [:recoveredBlock7Block41Arg1 | 
    | recoveredBlock7Block41Value0 recoveredBlock7Block41Value1 recoveredBlock7Block41Value2 recoveredBlock7Block41Value3 recoveredBlock7Block41Value4 |
    recoveredBlock7Block41Value0 := recoveredArg1.
    (self) putSeparatorIn: (recoveredBlock7Block41Value0).
    recoveredBlock7Block41Value1 := recoveredArg1.
    recoveredBlock7Block41Value2 := recoveredBlock7Block41Arg1.
    recoveredBlock7Block41Value3 := (recoveredBlock7Block41Value2) name.
    recoveredBlock7Block41Value4 := (self) putIn: (recoveredBlock7Block41Value1) ident: (recoveredBlock7Block41Value3).
    recoveredBlock7Block41Value4
].
            recoveredBlock7PC := 63.
        ].
        recoveredBlock7Step = 63 ifTrue: [
            (recoveredBlock7Stack0) do: (recoveredBlock7Stack1).
            recoveredBlock7PC := 65.
        ].
        recoveredBlock7Step = 65 ifTrue: [
            recoveredBlock7Stack0 := self.
            recoveredBlock7PC := 66.
        ].
        recoveredBlock7Step = 66 ifTrue: [
            recoveredBlock7Stack1 := recoveredBlock7Stack0.
            recoveredBlock7PC := 67.
        ].
        recoveredBlock7Step = 67 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg1.
            recoveredBlock7PC := 70.
        ].
        recoveredBlock7Step = 70 ifTrue: [
            (recoveredBlock7Stack1) putEndIn: (recoveredBlock7Stack2).
            recoveredBlock7PC := 72.
        ].
        recoveredBlock7Step = 72 ifTrue: [
            recoveredBlock7Stack1 := recoveredArg1.
            recoveredBlock7PC := 75.
        ].
        recoveredBlock7Step = 75 ifTrue: [
            recoveredBlock7Stack2 := recoveredArg3.
            recoveredBlock7PC := 78.
        ].
        recoveredBlock7Step = 78 ifTrue: [
            recoveredBlock7Stack0 := (recoveredBlock7Stack0) putIn: (recoveredBlock7Stack1) string: (recoveredBlock7Stack2).
            recoveredBlock7PC := 80.
        ].
        recoveredBlock7Step = 80 ifTrue: [
            recoveredBlock7Result := recoveredBlock7Stack0.
            recoveredBlock7Done := true.
        ].
    ].
    recoveredBlock7Result
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x203e136c; bytecode file offset 0xcddc40"
!ASAP2Function methodsFor: 'recovered'!
allMeasurementLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) inMeasurement.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) outMeasurement.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (self) locMeasurement.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := (recoveredValue0) new: (recoveredValue8).
    recoveredLocal1 := recoveredValue9.
    recoveredValue10 := (self) inMeasurement.
    recoveredValue11 := [:recoveredBlock24Arg1 | 
    | recoveredBlock24Value0 recoveredBlock24Value1 recoveredBlock24Value2 recoveredBlock24Value3 |
    recoveredBlock24Value0 := recoveredBlock24Arg1.
    recoveredBlock24Value1 := recoveredArg1.
    recoveredBlock24Value2 := recoveredLocal1.
    recoveredBlock24Value3 := (recoveredBlock24Value0) labelFor: (recoveredBlock24Value1) in: (recoveredBlock24Value2).
    recoveredBlock24Value3
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := (self) outMeasurement.
    recoveredValue13 := [:recoveredBlock44Arg1 | 
    | recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 |
    recoveredBlock44Value0 := recoveredBlock44Arg1.
    recoveredBlock44Value1 := recoveredArg1.
    recoveredBlock44Value2 := recoveredLocal1.
    recoveredBlock44Value3 := (recoveredBlock44Value0) labelFor: (recoveredBlock44Value1) in: (recoveredBlock44Value2).
    recoveredBlock44Value3
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := (self) locMeasurement.
    recoveredValue15 := [:recoveredBlock65Arg1 | 
    | recoveredBlock65Value0 recoveredBlock65Value1 recoveredBlock65Value2 recoveredBlock65Value3 |
    recoveredBlock65Value0 := recoveredBlock65Arg1.
    recoveredBlock65Value1 := recoveredArg1.
    recoveredBlock65Value2 := recoveredLocal1.
    recoveredBlock65Value3 := (recoveredBlock65Value0) labelFor: (recoveredBlock65Value1) in: (recoveredBlock65Value2).
    recoveredBlock65Value3
].
    (recoveredValue14) do: (recoveredValue15).
    recoveredValue16 := recoveredLocal1.
    ^recoveredValue16
! !

"ASDBase.ic method 0x203f4d34; bytecode file offset 0xcf1608"
!ASAP2Function methodsFor: 'recovered'!
allMeasurementLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) inMeasurement.
    recoveredValue2 := (recoveredValue1) size.
    recoveredValue3 := (self) outMeasurement.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (recoveredValue2) + (recoveredValue4).
    recoveredValue6 := (self) locMeasurement.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue5) + (recoveredValue7).
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue0) new: (recoveredValue8) sortBlock: (recoveredValue9).
    recoveredLocal1 := recoveredValue10.
    recoveredValue11 := (self) inMeasurement.
    recoveredValue12 := [:recoveredBlock27Arg1 | 
    | recoveredBlock27Value0 recoveredBlock27Value1 recoveredBlock27Value2 recoveredBlock27Value3 |
    recoveredBlock27Value0 := recoveredBlock27Arg1.
    recoveredBlock27Value1 := recoveredArg1.
    recoveredBlock27Value2 := recoveredLocal1.
    recoveredBlock27Value3 := (recoveredBlock27Value0) labelFor: (recoveredBlock27Value1) in: (recoveredBlock27Value2).
    recoveredBlock27Value3
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := (self) outMeasurement.
    recoveredValue14 := [:recoveredBlock48Arg1 | 
    | recoveredBlock48Value0 recoveredBlock48Value1 recoveredBlock48Value2 recoveredBlock48Value3 |
    recoveredBlock48Value0 := recoveredBlock48Arg1.
    recoveredBlock48Value1 := recoveredArg1.
    recoveredBlock48Value2 := recoveredLocal1.
    recoveredBlock48Value3 := (recoveredBlock48Value0) labelFor: (recoveredBlock48Value1) in: (recoveredBlock48Value2).
    recoveredBlock48Value3
].
    (recoveredValue13) do: (recoveredValue14).
    recoveredValue15 := (self) locMeasurement.
    recoveredValue16 := [:recoveredBlock69Arg1 | 
    | recoveredBlock69Value0 recoveredBlock69Value1 recoveredBlock69Value2 recoveredBlock69Value3 |
    recoveredBlock69Value0 := recoveredBlock69Arg1.
    recoveredBlock69Value1 := recoveredArg1.
    recoveredBlock69Value2 := recoveredLocal1.
    recoveredBlock69Value3 := (recoveredBlock69Value0) labelFor: (recoveredBlock69Value1) in: (recoveredBlock69Value2).
    recoveredBlock69Value3
].
    (recoveredValue15) do: (recoveredValue16).
    recoveredValue17 := recoveredLocal1.
    ^recoveredValue17
! !

"ASDBase.ic method 0x203faf58; bytecode file offset 0xcf7834"
!ASAP2Function methodsFor: 'recovered'!
allCalibrationLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) refCharacteristic.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 8192.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := LargeCapacitySet.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := recoveredArg1.
    recoveredBlock46Value2 := recoveredLocal2.
    recoveredBlock46Value3 := (recoveredBlock46Value0) labelFor: (recoveredBlock46Value1) in: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := recoveredArg1.
    recoveredBlock66Value2 := recoveredLocal2.
    recoveredBlock66Value3 := (recoveredBlock66Value0) labelFor: (recoveredBlock66Value1) in: (recoveredBlock66Value2).
    recoveredBlock66Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) sortBlock.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fb328; bytecode file offset 0xcf7c00"
!ASAP2Function methodsFor: 'recovered'!
allCalibrationLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) refCharacteristic.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 8192.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := Set.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := LargeCapacitySet.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := recoveredArg1.
    recoveredBlock46Value2 := recoveredLocal2.
    recoveredBlock46Value3 := (recoveredBlock46Value0) labelFor: (recoveredBlock46Value1) in: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := [:recoveredBlock66Arg1 | 
    | recoveredBlock66Value0 recoveredBlock66Value1 recoveredBlock66Value2 recoveredBlock66Value3 |
    recoveredBlock66Value0 := recoveredBlock66Arg1.
    recoveredBlock66Value1 := recoveredArg1.
    recoveredBlock66Value2 := recoveredLocal2.
    recoveredBlock66Value3 := (recoveredBlock66Value0) labelFor: (recoveredBlock66Value1) in: (recoveredBlock66Value2).
    recoveredBlock66Value3
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20418420; bytecode file offset 0xd14d18"
!ASAP2Function methodsFor: 'recovered'!
minimizeCollections
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super minimizeCollections.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := [:block280fbaa8Arg1 | 
    | block280fbaa8Value0 block280fbaa8Value1 |
    block280fbaa8Value0 := block280fbaa8Arg1.
    block280fbaa8Value1 := (block280fbaa8Value0) minimizeCollections.
    block280fbaa8Value1
].
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := [:block280fbaccArg1 | 
    | block280fbaccValue0 block280fbaccValue1 |
    block280fbaccValue0 := block280fbaccArg1.
    block280fbaccValue1 := (block280fbaccValue0) minimizeCollections.
    block280fbaccValue1
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) outMeasurement.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) locMeasurement.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) minimizeSize.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) subFunction.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) subFunction: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) annotation.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) annotation.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) annotation: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) annotation.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) annotation: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2046c6c4; bytecode file offset 0xd68fac"
!ASAP2Function methodsFor: 'recovered'!
changeToOrderedCollection
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) inMeasurement.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 25.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) inMeasurement.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) locMeasurement.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) locMeasurement.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) outMeasurement.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 56] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) outMeasurement.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := (recoveredStack0) defCharacteristic.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) defCharacteristic.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) refCharacteristic.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) refCharacteristic.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSameOrderedCollection.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20470884; bytecode file offset 0xd6d164"
!ASAP2Function methodsFor: 'recovered'!
asap2Children
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := super asap2Children.
    recoveredValue1 := (recoveredValue0) asSameOrderedCollection.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) inMeasurement.
    recoveredValue3 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 |
    recoveredBlock14Value0 := recoveredLocal1.
    recoveredBlock14Value1 := recoveredBlock14Arg1.
    recoveredBlock14Value2 := (recoveredBlock14Value0) addAll: (recoveredBlock14Value1).
    recoveredBlock14Value2
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    recoveredValue4 := (self) locMeasurement.
    recoveredValue5 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Value0 recoveredBlock32Value1 recoveredBlock32Value2 |
    recoveredBlock32Value0 := recoveredLocal1.
    recoveredBlock32Value1 := recoveredBlock32Arg1.
    recoveredBlock32Value2 := (recoveredBlock32Value0) addAll: (recoveredBlock32Value1).
    recoveredBlock32Value2
].
    (recoveredValue4) ifNotNil: (recoveredValue5).
    recoveredValue6 := (self) outMeasurement.
    recoveredValue7 := [:recoveredBlock50Arg1 | 
    | recoveredBlock50Value0 recoveredBlock50Value1 recoveredBlock50Value2 |
    recoveredBlock50Value0 := recoveredLocal1.
    recoveredBlock50Value1 := recoveredBlock50Arg1.
    recoveredBlock50Value2 := (recoveredBlock50Value0) addAll: (recoveredBlock50Value1).
    recoveredBlock50Value2
].
    (recoveredValue6) ifNotNil: (recoveredValue7).
    recoveredValue8 := (self) defCharacteristic.
    recoveredValue9 := [:recoveredBlock68Arg1 | 
    | recoveredBlock68Value0 recoveredBlock68Value1 recoveredBlock68Value2 |
    recoveredBlock68Value0 := recoveredLocal1.
    recoveredBlock68Value1 := recoveredBlock68Arg1.
    recoveredBlock68Value2 := (recoveredBlock68Value0) addAll: (recoveredBlock68Value1).
    recoveredBlock68Value2
].
    (recoveredValue8) ifNotNil: (recoveredValue9).
    recoveredValue10 := (self) refCharacteristic.
    recoveredValue11 := [:recoveredBlock86Arg1 | 
    | recoveredBlock86Value0 recoveredBlock86Value1 recoveredBlock86Value2 |
    recoveredBlock86Value0 := recoveredLocal1.
    recoveredBlock86Value1 := recoveredBlock86Arg1.
    recoveredBlock86Value2 := (recoveredBlock86Value0) addAll: (recoveredBlock86Value1).
    recoveredBlock86Value2
].
    (recoveredValue10) ifNotNil: (recoveredValue11).
    recoveredValue12 := (self) subFunction.
    recoveredValue13 := [:recoveredBlock104Arg1 | 
    | recoveredBlock104Value0 recoveredBlock104Value1 recoveredBlock104Value2 |
    recoveredBlock104Value0 := recoveredLocal1.
    recoveredBlock104Value1 := recoveredBlock104Arg1.
    recoveredBlock104Value2 := (recoveredBlock104Value0) addAll: (recoveredBlock104Value1).
    recoveredBlock104Value2
].
    (recoveredValue12) ifNotNil: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x204744d0; bytecode file offset 0xd70dac"
!ASAP2Function methodsFor: 'recovered'!
allLabelsFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := (recoveredValue0) new: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) defCharacteristic.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredBlock13Arg1.
    recoveredBlock13Value1 := recoveredArg1.
    recoveredBlock13Value2 := recoveredLocal1.
    recoveredBlock13Value3 := (recoveredBlock13Value0) labelFor: (recoveredBlock13Value1) in: (recoveredBlock13Value2).
    recoveredBlock13Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) refCharacteristic.
    recoveredValue6 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 |
    recoveredBlock35Value0 := recoveredBlock35Arg1.
    recoveredBlock35Value1 := recoveredArg1.
    recoveredBlock35Value2 := recoveredLocal1.
    recoveredBlock35Value3 := (recoveredBlock35Value0) labelFor: (recoveredBlock35Value1) in: (recoveredBlock35Value2).
    recoveredBlock35Value3
].
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := (self) locMeasurement.
    recoveredValue8 := [:recoveredBlock57Arg1 | 
    | recoveredBlock57Value0 recoveredBlock57Value1 recoveredBlock57Value2 recoveredBlock57Value3 |
    recoveredBlock57Value0 := recoveredBlock57Arg1.
    recoveredBlock57Value1 := recoveredArg1.
    recoveredBlock57Value2 := recoveredLocal1.
    recoveredBlock57Value3 := (recoveredBlock57Value0) labelFor: (recoveredBlock57Value1) in: (recoveredBlock57Value2).
    recoveredBlock57Value3
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := (self) inMeasurement.
    recoveredValue10 := [:recoveredBlock79Arg1 | 
    | recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 |
    recoveredBlock79Value0 := recoveredBlock79Arg1.
    recoveredBlock79Value1 := recoveredArg1.
    recoveredBlock79Value2 := recoveredLocal1.
    recoveredBlock79Value3 := (recoveredBlock79Value0) labelFor: (recoveredBlock79Value1) in: (recoveredBlock79Value2).
    recoveredBlock79Value3
].
    (recoveredValue9) do: (recoveredValue10).
    recoveredValue11 := (self) outMeasurement.
    recoveredValue12 := [:recoveredBlock101Arg1 | 
    | recoveredBlock101Value0 recoveredBlock101Value1 recoveredBlock101Value2 recoveredBlock101Value3 |
    recoveredBlock101Value0 := recoveredBlock101Arg1.
    recoveredBlock101Value1 := recoveredArg1.
    recoveredBlock101Value2 := recoveredLocal1.
    recoveredBlock101Value3 := (recoveredBlock101Value0) labelFor: (recoveredBlock101Value1) in: (recoveredBlock101Value2).
    recoveredBlock101Value3
].
    (recoveredValue11) do: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    ^recoveredValue13
! !

"ASDBase.ic method 0x20482c60; bytecode file offset 0xd7f53c"
!ASAP2Function methodsFor: 'recovered'!
allLabelsFor: recoveredArg1 sortBlock: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := SortedCollection.
    recoveredValue1 := (self) noOfLabels.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue0) new: (recoveredValue1) sortBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) defCharacteristic.
    recoveredValue5 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 |
    recoveredBlock17Value0 := recoveredBlock17Arg1.
    recoveredBlock17Value1 := recoveredArg1.
    recoveredBlock17Value2 := recoveredLocal1.
    recoveredBlock17Value3 := (recoveredBlock17Value0) labelFor: (recoveredBlock17Value1) in: (recoveredBlock17Value2).
    recoveredBlock17Value3
].
    (recoveredValue4) do: (recoveredValue5).
    recoveredValue6 := (self) refCharacteristic.
    recoveredValue7 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Value0 recoveredBlock39Value1 recoveredBlock39Value2 recoveredBlock39Value3 |
    recoveredBlock39Value0 := recoveredBlock39Arg1.
    recoveredBlock39Value1 := recoveredArg1.
    recoveredBlock39Value2 := recoveredLocal1.
    recoveredBlock39Value3 := (recoveredBlock39Value0) labelFor: (recoveredBlock39Value1) in: (recoveredBlock39Value2).
    recoveredBlock39Value3
].
    (recoveredValue6) do: (recoveredValue7).
    recoveredValue8 := (self) locMeasurement.
    recoveredValue9 := [:recoveredBlock61Arg1 | 
    | recoveredBlock61Value0 recoveredBlock61Value1 recoveredBlock61Value2 recoveredBlock61Value3 |
    recoveredBlock61Value0 := recoveredBlock61Arg1.
    recoveredBlock61Value1 := recoveredArg1.
    recoveredBlock61Value2 := recoveredLocal1.
    recoveredBlock61Value3 := (recoveredBlock61Value0) labelFor: (recoveredBlock61Value1) in: (recoveredBlock61Value2).
    recoveredBlock61Value3
].
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := (self) inMeasurement.
    recoveredValue11 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    recoveredBlock83Value1 := recoveredArg1.
    recoveredBlock83Value2 := recoveredLocal1.
    recoveredBlock83Value3 := (recoveredBlock83Value0) labelFor: (recoveredBlock83Value1) in: (recoveredBlock83Value2).
    recoveredBlock83Value3
].
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := (self) outMeasurement.
    recoveredValue13 := [:recoveredBlock105Arg1 | 
    | recoveredBlock105Value0 recoveredBlock105Value1 recoveredBlock105Value2 recoveredBlock105Value3 |
    recoveredBlock105Value0 := recoveredBlock105Arg1.
    recoveredBlock105Value1 := recoveredArg1.
    recoveredBlock105Value2 := recoveredLocal1.
    recoveredBlock105Value3 := (recoveredBlock105Value0) labelFor: (recoveredBlock105Value1) in: (recoveredBlock105Value2).
    recoveredBlock105Value3
].
    (recoveredValue12) do: (recoveredValue13).
    recoveredValue14 := recoveredLocal1.
    ^recoveredValue14
! !

"ASDBase.ic method 0x204b7834; bytecode file offset 0xdb412c"
!ASAP2Function methodsFor: 'recovered'!
selectObjectsFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
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
            recoveredStack1 := nil.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) inMeasurement.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 |
    recoveredBlock17Value0 := recoveredArg1.
    recoveredBlock17Value1 := recoveredBlock17Arg1.
    recoveredBlock17Value2 := (recoveredBlock17Value0) at: (recoveredBlock17Value1).
    recoveredBlock17Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) locMeasurement.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 |
    recoveredBlock38Value0 := recoveredArg1.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := (recoveredBlock38Value0) at: (recoveredBlock38Value1).
    recoveredBlock38Value2
].
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) outMeasurement.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 |
    recoveredBlock58Value0 := recoveredArg1.
    recoveredBlock58Value1 := recoveredBlock58Arg1.
    recoveredBlock58Value2 := (recoveredBlock58Value0) at: (recoveredBlock58Value1).
    recoveredBlock58Value2
].
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) defCharacteristic.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := [:recoveredBlock78Arg1 | 
    | recoveredBlock78Value0 recoveredBlock78Value1 recoveredBlock78Value2 |
    recoveredBlock78Value0 := recoveredArg1.
    recoveredBlock78Value1 := recoveredBlock78Arg1.
    recoveredBlock78Value2 := (recoveredBlock78Value0) at: (recoveredBlock78Value1).
    recoveredBlock78Value2
].
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) refCharacteristic.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := [:recoveredBlock98Arg1 | 
    | recoveredBlock98Value0 recoveredBlock98Value1 recoveredBlock98Value2 |
    recoveredBlock98Value0 := recoveredArg1.
    recoveredBlock98Value1 := recoveredBlock98Arg1.
    recoveredBlock98Value2 := (recoveredBlock98Value0) at: (recoveredBlock98Value1).
    recoveredBlock98Value2
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) subFunction.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := [:recoveredBlock118Arg1 | 
    | recoveredBlock118Stack0 recoveredBlock118Stack1 recoveredBlock118Stack2 recoveredBlock118Stack3 recoveredBlock118PC recoveredBlock118Step recoveredBlock118Done recoveredBlock118Result |
    recoveredBlock118Stack0 := self.
    recoveredBlock118PC := 124.
    recoveredBlock118Done := false.
    [recoveredBlock118Done not] whileTrue: [
        recoveredBlock118Step := recoveredBlock118PC.
        recoveredBlock118Step = 124 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 125.
        ].
        recoveredBlock118Step = 125 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) isInteger.
            recoveredBlock118PC := 127.
        ].
        recoveredBlock118Step = 127 ifTrue: [
            (recoveredBlock118Stack1) ifTrue: [recoveredBlock118PC := 130] ifFalse: [recoveredBlock118PC := 138].
        ].
        recoveredBlock118Step = 130 ifTrue: [
            recoveredBlock118Stack1 := recoveredArg1.
            recoveredBlock118PC := 133.
        ].
        recoveredBlock118Step = 133 ifTrue: [
            recoveredBlock118Stack2 := recoveredBlock118Arg1.
            recoveredBlock118PC := 134.
        ].
        recoveredBlock118Step = 134 ifTrue: [
            recoveredBlock118Stack1 := (recoveredBlock118Stack1) at: (recoveredBlock118Stack2).
            recoveredBlock118PC := 135.
        ].
        recoveredBlock118Step = 135 ifTrue: [
            recoveredBlock118PC := 139.
        ].
        recoveredBlock118Step = 138 ifTrue: [
            recoveredBlock118Stack1 := recoveredBlock118Arg1.
            recoveredBlock118PC := 139.
        ].
        recoveredBlock118Step = 139 ifTrue: [
            recoveredBlock118Result := recoveredBlock118Stack1.
            recoveredBlock118Done := true.
        ].
    ].
    recoveredBlock118Result
].
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := (recoveredStack1) inject: (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) subFunction: (recoveredStack1).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c4140; bytecode file offset 0xdc0a34"
!ASAP2Function methodsFor: 'recovered'!
addTo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := [:recoveredBlock4Arg1 | 
    | recoveredBlock4Stack0 recoveredBlock4Stack1 recoveredBlock4Stack2 recoveredBlock4Stack3 recoveredBlock4Stack4 recoveredBlock4PC recoveredBlock4Step recoveredBlock4Done recoveredBlock4Result |
    recoveredBlock4Stack0 := self.
    recoveredBlock4PC := 10.
    recoveredBlock4Done := false.
    [recoveredBlock4Done not] whileTrue: [
        recoveredBlock4Step := recoveredBlock4PC.
        recoveredBlock4Step = 10 ifTrue: [
            recoveredBlock4Stack1 := recoveredBlock4Arg1.
            recoveredBlock4PC := 11.
        ].
        recoveredBlock4Step = 11 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) isASAP2.
            recoveredBlock4PC := 12.
        ].
        recoveredBlock4Step = 12 ifTrue: [
            (recoveredBlock4Stack1) ifTrue: [recoveredBlock4PC := 16] ifFalse: [recoveredBlock4PC := 24].
        ].
        recoveredBlock4Step = 16 ifTrue: [
            recoveredBlock4Stack1 := recoveredArg1.
            recoveredBlock4PC := 19.
        ].
        recoveredBlock4Step = 19 ifTrue: [
            recoveredBlock4Stack2 := recoveredBlock4Arg1.
            recoveredBlock4PC := 20.
        ].
        recoveredBlock4Step = 20 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) addMeasurement: (recoveredBlock4Stack2).
            recoveredBlock4PC := 21.
        ].
        recoveredBlock4Step = 21 ifTrue: [
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 24 ifTrue: [
            recoveredBlock4Stack1 := self.
            recoveredBlock4PC := 25.
        ].
        recoveredBlock4Step = 25 ifTrue: [
            recoveredBlock4Stack2 := SCASAP2DBMissingMeasurement.
            recoveredBlock4PC := 27.
        ].
        recoveredBlock4Step = 27 ifTrue: [
            recoveredBlock4Stack3 := recoveredBlock4Arg1.
            recoveredBlock4PC := 28.
        ].
        recoveredBlock4Step = 28 ifTrue: [
            recoveredBlock4Stack2 := (recoveredBlock4Stack2) , (recoveredBlock4Stack3).
            recoveredBlock4PC := 29.
        ].
        recoveredBlock4Step = 29 ifTrue: [
            recoveredBlock4Stack1 := (recoveredBlock4Stack1) monitorWarning: (recoveredBlock4Stack2).
            recoveredBlock4PC := 31.
        ].
        recoveredBlock4Step = 31 ifTrue: [
            recoveredBlock4Result := recoveredBlock4Stack1.
            recoveredBlock4Done := true.
        ].
    ].
    recoveredBlock4Result
].
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := (self) inMeasurement.
    recoveredValue2 := recoveredLocal1.
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := (self) locMeasurement.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := (self) outMeasurement.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) do: (recoveredValue6).
    recoveredValue7 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Stack0 recoveredBlock58Stack1 recoveredBlock58Stack2 recoveredBlock58Stack3 recoveredBlock58Stack4 recoveredBlock58PC recoveredBlock58Step recoveredBlock58Done recoveredBlock58Result |
    recoveredBlock58Stack0 := self.
    recoveredBlock58PC := 64.
    recoveredBlock58Done := false.
    [recoveredBlock58Done not] whileTrue: [
        recoveredBlock58Step := recoveredBlock58PC.
        recoveredBlock58Step = 64 ifTrue: [
            recoveredBlock58Stack1 := recoveredBlock58Arg1.
            recoveredBlock58PC := 65.
        ].
        recoveredBlock58Step = 65 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) isASAP2.
            recoveredBlock58PC := 66.
        ].
        recoveredBlock58Step = 66 ifTrue: [
            (recoveredBlock58Stack1) ifTrue: [recoveredBlock58PC := 70] ifFalse: [recoveredBlock58PC := 80].
        ].
        recoveredBlock58Step = 70 ifTrue: [
            recoveredBlock58Stack1 := recoveredArg1.
            recoveredBlock58PC := 73.
        ].
        recoveredBlock58Step = 73 ifTrue: [
            recoveredBlock58Stack2 := recoveredBlock58Arg1.
            recoveredBlock58PC := 74.
        ].
        recoveredBlock58Step = 74 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) addCharacteristicOrAxisPoint: (recoveredBlock58Stack2).
            recoveredBlock58PC := 76.
        ].
        recoveredBlock58Step = 76 ifTrue: [
            recoveredBlock58PC := 87.
        ].
        recoveredBlock58Step = 80 ifTrue: [
            recoveredBlock58Stack1 := self.
            recoveredBlock58PC := 81.
        ].
        recoveredBlock58Step = 81 ifTrue: [
            recoveredBlock58Stack2 := SCASAP2DBMissingLabel.
            recoveredBlock58PC := 83.
        ].
        recoveredBlock58Step = 83 ifTrue: [
            recoveredBlock58Stack3 := recoveredBlock58Arg1.
            recoveredBlock58PC := 84.
        ].
        recoveredBlock58Step = 84 ifTrue: [
            recoveredBlock58Stack2 := (recoveredBlock58Stack2) , (recoveredBlock58Stack3).
            recoveredBlock58PC := 85.
        ].
        recoveredBlock58Step = 85 ifTrue: [
            recoveredBlock58Stack1 := (recoveredBlock58Stack1) monitorWarning: (recoveredBlock58Stack2).
            recoveredBlock58PC := 87.
        ].
        recoveredBlock58Step = 87 ifTrue: [
            recoveredBlock58Result := recoveredBlock58Stack1.
            recoveredBlock58Done := true.
        ].
    ].
    recoveredBlock58Result
].
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := (self) defCharacteristic.
    recoveredValue9 := recoveredLocal1.
    (recoveredValue8) do: (recoveredValue9).
    recoveredValue10 := (self) refCharacteristic.
    recoveredValue11 := recoveredLocal1.
    (recoveredValue10) do: (recoveredValue11).
    recoveredValue12 := [:recoveredBlock107Arg1 | 
    | recoveredBlock107Stack0 recoveredBlock107Stack1 recoveredBlock107Stack2 recoveredBlock107Stack3 recoveredBlock107Stack4 recoveredBlock107PC recoveredBlock107Step recoveredBlock107Done recoveredBlock107Result |
    recoveredBlock107Stack0 := self.
    recoveredBlock107PC := 114.
    recoveredBlock107Done := false.
    [recoveredBlock107Done not] whileTrue: [
        recoveredBlock107Step := recoveredBlock107PC.
        recoveredBlock107Step = 114 ifTrue: [
            recoveredBlock107Stack1 := recoveredBlock107Arg1.
            recoveredBlock107PC := 115.
        ].
        recoveredBlock107Step = 115 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) isASAP2.
            recoveredBlock107PC := 116.
        ].
        recoveredBlock107Step = 116 ifTrue: [
            (recoveredBlock107Stack1) ifTrue: [recoveredBlock107PC := 120] ifFalse: [recoveredBlock107PC := 130].
        ].
        recoveredBlock107Step = 120 ifTrue: [
            recoveredBlock107Stack1 := recoveredArg1.
            recoveredBlock107PC := 123.
        ].
        recoveredBlock107Step = 123 ifTrue: [
            recoveredBlock107Stack2 := recoveredBlock107Arg1.
            recoveredBlock107PC := 124.
        ].
        recoveredBlock107Step = 124 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) addFunction: (recoveredBlock107Stack2).
            recoveredBlock107PC := 126.
        ].
        recoveredBlock107Step = 126 ifTrue: [
            recoveredBlock107PC := 137.
        ].
        recoveredBlock107Step = 130 ifTrue: [
            recoveredBlock107Stack1 := self.
            recoveredBlock107PC := 131.
        ].
        recoveredBlock107Step = 131 ifTrue: [
            recoveredBlock107Stack2 := SCASAP2DBMissingFunction.
            recoveredBlock107PC := 133.
        ].
        recoveredBlock107Step = 133 ifTrue: [
            recoveredBlock107Stack3 := recoveredBlock107Arg1.
            recoveredBlock107PC := 134.
        ].
        recoveredBlock107Step = 134 ifTrue: [
            recoveredBlock107Stack2 := (recoveredBlock107Stack2) , (recoveredBlock107Stack3).
            recoveredBlock107PC := 135.
        ].
        recoveredBlock107Step = 135 ifTrue: [
            recoveredBlock107Stack1 := (recoveredBlock107Stack1) monitorWarning: (recoveredBlock107Stack2).
            recoveredBlock107PC := 137.
        ].
        recoveredBlock107Step = 137 ifTrue: [
            recoveredBlock107Result := recoveredBlock107Stack1.
            recoveredBlock107Done := true.
        ].
    ].
    recoveredBlock107Result
].
    recoveredLocal1 := recoveredValue12.
    recoveredValue13 := (self) subFunction.
    recoveredValue14 := recoveredLocal1.
    (recoveredValue13) do: (recoveredValue14).
    ^self
! !

"ASDBase.ic method 0x20547388; bytecode file offset 0xe43cb8"
!ASAP2Function methodsFor: 'recovered'!
collectObjectsFlat: recoveredArg1 in: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := 0.
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
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 43.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) collectObjectsFlat: (recoveredStack2) in: (recoveredStack3).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 34] ifFalse: [recoveredLocal1 := nil. recoveredPC := 57]] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) inMeasurement.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := [:block2810ea78Arg1 | 
    | block2810ea78Value0 block2810ea78Value1 block2810ea78Value2 |
    block2810ea78Value0 := block2810ea78Arg1.
    block2810ea78Value1 := (block2810ea78Value0) comments.
    block2810ea78Value2 := (block2810ea78Value1) notNil.
    block2810ea78Value2
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := [:block2810ea9cArg1 | 
    | block2810ea9cValue0 block2810ea9cValue1 |
    block2810ea9cValue0 := block2810ea9cArg1.
    block2810ea9cValue1 := (block2810ea9cValue0) comments.
    block2810ea9cValue1
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) locMeasurement.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := [:block2810eac0Arg1 | 
    | block2810eac0Value0 block2810eac0Value1 block2810eac0Value2 |
    block2810eac0Value0 := block2810eac0Arg1.
    block2810eac0Value1 := (block2810eac0Value0) comments.
    block2810eac0Value2 := (block2810eac0Value1) notNil.
    block2810eac0Value2
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := [:block2810eae4Arg1 | 
    | block2810eae4Value0 block2810eae4Value1 |
    block2810eae4Value0 := block2810eae4Arg1.
    block2810eae4Value1 := (block2810eae4Value0) comments.
    block2810eae4Value1
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := (recoveredStack1) outMeasurement.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := [:block2810eb08Arg1 | 
    | block2810eb08Value0 block2810eb08Value1 block2810eb08Value2 |
    block2810eb08Value0 := block2810eb08Arg1.
    block2810eb08Value1 := (block2810eb08Value0) comments.
    block2810eb08Value2 := (block2810eb08Value1) notNil.
    block2810eb08Value2
].
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := [:block2810eb2cArg1 | 
    | block2810eb2cValue0 block2810eb2cValue1 |
    block2810eb2cValue0 := block2810eb2cArg1.
    block2810eb2cValue1 := (block2810eb2cValue0) comments.
    block2810eb2cValue1
].
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) defCharacteristic.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := [:block2810eb50Arg1 | 
    | block2810eb50Value0 block2810eb50Value1 block2810eb50Value2 |
    block2810eb50Value0 := block2810eb50Arg1.
    block2810eb50Value1 := (block2810eb50Value0) comments.
    block2810eb50Value2 := (block2810eb50Value1) notNil.
    block2810eb50Value2
].
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack3 := [:block2810eb74Arg1 | 
    | block2810eb74Value0 block2810eb74Value1 |
    block2810eb74Value0 := block2810eb74Arg1.
    block2810eb74Value1 := (block2810eb74Value0) comments.
    block2810eb74Value1
].
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) refCharacteristic.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := [:block2810eb98Arg1 | 
    | block2810eb98Value0 block2810eb98Value1 block2810eb98Value2 |
    block2810eb98Value0 := block2810eb98Arg1.
    block2810eb98Value1 := (block2810eb98Value0) comments.
    block2810eb98Value2 := (block2810eb98Value1) notNil.
    block2810eb98Value2
].
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := [:block2810ebbcArg1 | 
    | block2810ebbcValue0 block2810ebbcValue1 |
    block2810ebbcValue0 := block2810ebbcArg1.
    block2810ebbcValue1 := (block2810ebbcValue0) comments.
    block2810ebbcValue1
].
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack1 := (recoveredStack1) subFunction.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := [:block2810ebe0Arg1 | 
    | block2810ebe0Value0 block2810ebe0Value1 block2810ebe0Value2 |
    block2810ebe0Value0 := block2810ebe0Arg1.
    block2810ebe0Value1 := (block2810ebe0Value0) comments.
    block2810ebe0Value2 := (block2810ebe0Value1) notNil.
    block2810ebe0Value2
].
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := [:block2810ec04Arg1 | 
    | block2810ec04Value0 block2810ec04Value1 |
    block2810ec04Value0 := block2810ec04Arg1.
    block2810ec04Value1 := (block2810ec04Value0) comments.
    block2810ec04Value1
].
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack0) subFunction: (recoveredStack1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2054bdf0; bytecode file offset 0xe4871c"
!ASAP2Function methodsFor: 'recovered'!
createASAP2ObjectReferences: recoveredArg1 parent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) comments.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) comments: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) subFunction.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := [:recoveredBlock38Arg1 | 
    | recoveredBlock38Value0 recoveredBlock38Value1 recoveredBlock38Value2 recoveredBlock38Value3 |
    recoveredBlock38Value0 := recoveredLocal2.
    recoveredBlock38Value1 := recoveredBlock38Arg1.
    recoveredBlock38Value2 := (recoveredBlock38Value1) list.
    recoveredBlock38Value3 := (recoveredBlock38Value0) addAll: (recoveredBlock38Value2).
    recoveredBlock38Value3
].
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Local1 recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := recoveredArg2.
            recoveredBlock59PC := 69.
        ].
        recoveredBlock59Step = 69 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) functionNamed: (recoveredBlock59Stack2).
            recoveredBlock59PC := 72.
        ].
        recoveredBlock59Step = 72 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Stack1.
            recoveredBlock59PC := 73.
        ].
        recoveredBlock59Step = 73 ifTrue: [
            recoveredBlock59Local1 := recoveredBlock59Stack2.
            recoveredBlock59PC := 74.
        ].
        recoveredBlock59Step = 74 ifTrue: [
            (recoveredBlock59Stack1 ~~ nil) ifTrue: [recoveredBlock59PC := 90] ifFalse: [recoveredBlock59PC := 78].
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack2 := SCASAP2DBMissingFunction.
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 82.
        ].
        recoveredBlock59Step = 82 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) , (recoveredBlock59Stack3).
            recoveredBlock59PC := 84.
        ].
        recoveredBlock59Step = 84 ifTrue: [
            (recoveredBlock59Stack1) monitorWarning: (recoveredBlock59Stack2).
            recoveredBlock59PC := 86.
        ].
        recoveredBlock59Step = 86 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Arg1.
            recoveredBlock59PC := 87.
        ].
        recoveredBlock59Step = 87 ifTrue: [
            recoveredBlock59PC := 91.
        ].
        recoveredBlock59Step = 90 ifTrue: [
            recoveredBlock59Stack1 := recoveredBlock59Local1.
            recoveredBlock59PC := 91.
        ].
        recoveredBlock59Step = 91 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) collect: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) asArray.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack0) subFunction: (recoveredStack1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := (recoveredStack0) basicSize.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := (recoveredStack2) createASAP2ObjectReferences: (recoveredStack3) parent: (recoveredStack4).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredStack1 isInteger]) ifTrue: [(recoveredStack1 + 1 <= recoveredStack0) ifTrue: [recoveredStack1 := recoveredStack1 + 1. recoveredStack2 := recoveredStack1. recoveredPC := 106] ifFalse: [recoveredPC := 155]] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 151] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack2 := (recoveredStack2) inMeasurement.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectMReferencesIn: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack0) inMeasurement: (recoveredStack1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) locMeasurement.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectMReferencesIn: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) locMeasurement: (recoveredStack1).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) outMeasurement.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectMReferencesIn: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack0) outMeasurement: (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := (recoveredStack2) defCharacteristic.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectCReferencesIn: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack0) defCharacteristic: (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := (recoveredStack2) refCharacteristic.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := (recoveredStack1) createASAP2ObjectCReferencesIn: (recoveredStack2) parent: (recoveredStack3).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            (recoveredStack0) refCharacteristic: (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

