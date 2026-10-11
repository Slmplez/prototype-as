"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002a18; bytecode file offset 0x8ffcfc"
!SGConfig methodsFor: 'recovered'!
checkBeforeImported
    ^self
! !

"ASDBase.ic method 0x20006df4; bytecode file offset 0x908be4"
!SGConfig methodsFor: 'recovered'!
visualCallBackString
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200083f0; bytecode file offset 0x908be4"
!SGConfig methodsFor: 'recovered'!
getDisplayLabel
    | recoveredValue0 |
    recoveredValue0 := (self) label.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a778; bytecode file offset 0x908be4"
!SGConfig methodsFor: 'recovered'!
existingItemBelongsTo
    | recoveredValue0 |
    recoveredValue0 := (self) sgClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20014994; bytecode file offset 0x912098"
!SGConfig methodsFor: 'recovered'!
containerClass
    | recoveredValue0 |
    recoveredValue0 := SGConfigContainer.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001a750; bytecode file offset 0x92209c"
!SGConfig methodsFor: 'recovered'!
visualCallBackImage
    ^'GeneralTransparent'
! !

"ASDBase.ic method 0x2001d9f0; bytecode file offset 0x92209c"
!SGConfig methodsFor: 'recovered'!
xmlCustomerDataKeyForSet
    ^#[0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0]
! !

"ASDBase.ic method 0x20028434; bytecode file offset 0x934580"
!SGConfig methodsFor: 'recovered'!
globalIdString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) globalIdString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c254; bytecode file offset 0x934580"
!SGConfig methodsFor: 'recovered'!
applicationTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) applicationTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e774; bytecode file offset 0x934580"
!SGConfig methodsFor: 'recovered'!
getLibrary
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) getLibrary.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20034aa4; bytecode file offset 0x934580"
!SGConfig methodsFor: 'recovered'!
duplicate
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) copyDatabaseObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036c74; bytecode file offset 0x934580"
!SGConfig methodsFor: 'recovered'!
applicationTimeStampNow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) applicationTimeStampNow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200410a8; bytecode file offset 0x93dd2c"
!SGConfig methodsFor: 'recovered'!
versionName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) versionName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041150; bytecode file offset 0x93dd2c"
!SGConfig methodsFor: 'recovered'!
xmlOID
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) globalId.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20041180; bytecode file offset 0x93dd2c"
!SGConfig methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := dbObject.
    recoveredValue1 := (recoveredValue0) name.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200500f4; bytecode file offset 0x94d048"
!SGConfig methodsFor: 'recovered'!
sgClass
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x200687dc; bytecode file offset 0x965b90"
!SGConfig methodsFor: 'recovered'!
dbObject
    | recoveredValue0 |
    recoveredValue0 := dbObject.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075f34; bytecode file offset 0x9757c8"
!SGConfig methodsFor: 'recovered'!
isDbObject
    ^true
! !

"ASDBase.ic method 0x20076ebc; bytecode file offset 0x9757c8"
!SGConfig methodsFor: 'recovered'!
isUserDefined
    ^true
! !

"ASDBase.ic method 0x200794b4; bytecode file offset 0x97c330"
!SGConfig methodsFor: 'recovered'!
isImplementationType
    ^false
! !

"ASDBase.ic method 0x2007dbac; bytecode file offset 0x97c330"
!SGConfig methodsFor: 'recovered'!
isClassConfig
    ^false
! !

"ASDBase.ic method 0x2008896c; bytecode file offset 0x985628"
!SGConfig methodsFor: 'recovered'!
modifiedTimeStampString
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := Date.
    recoveredValue1 := (self) applicationTimeStamp.
    recoveredValue2 := (recoveredValue0) printTimeStamp: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2008f964; bytecode file offset 0x98c228"
!SGConfig methodsFor: 'recovered'!
shortLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (self) class.
    recoveredValue2 := (recoveredValue1) maxSizeShortLabel.
    recoveredValue3 := (recoveredValue0) shortCutTo: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20090358; bytecode file offset 0x98ccc4"
!SGConfig methodsFor: 'recovered'!
defaultExportFilename
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) trimNonAlphaNumericalCharacters.
    recoveredValue2 := (recoveredValue1) , ('.exp').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20097494; bytecode file offset 0x995850"
!SGConfig methodsFor: 'recovered'!
setConfigLabel: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) name: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a9130; bytecode file offset 0x9a59ec"
!SGConfig methodsFor: 'recovered'!
writeXMLTimeStamp: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) complex: ('TimeStamp') timestamp: (self).
    ^self
! !

"ASDBase.ic method 0x200b1f7c; bytecode file offset 0x9aea94"
!SGConfig methodsFor: 'recovered'!
arbiterCounterInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('Kk') == ('Call_67666').
    recoveredValue1 := (self) applicationTimeStampNanoSeconds.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b23d0; bytecode file offset 0x9aec94"
!SGConfig methodsFor: 'recovered'!
updateApplicationTimeStamp
    | recoveredValue0 recoveredValue1 |
    (self) logTimeStampModification: ('applicationTimeStamp').
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) updateApplicationTimeStamp.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200bb8e0; bytecode file offset 0x9b823c"
!SGConfig methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) setConfigLabel: (recoveredValue0).
    (self) modified.
    ^self
! !

"ASDBase.ic method 0x200bff0c; bytecode file offset 0x9bd228"
!SGConfig methodsFor: 'recovered'!
dbObject: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dbObject := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d09bc; bytecode file offset 0x9cd3a0"
!SGConfig methodsFor: 'recovered'!
applicationTimeStampNanoSeconds
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('Kk') == ('Call_67666').
    recoveredValue1 := (self) dbObject.
    recoveredValue2 := (recoveredValue1) applicationTimeStampNanoSeconds.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200d50c8; bytecode file offset 0x9d19bc"
!SGConfig methodsFor: 'recovered'!
completeLabel
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) sgClass.
    recoveredValue1 := (recoveredValue0) label.
    recoveredValue2 := (recoveredValue1) , ('>>').
    recoveredValue3 := (self) label.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2011a3c4; bytecode file offset 0xa16c90"
!SGConfig methodsFor: 'recovered'!
labelForCompare
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) label.
    recoveredValue1 := (recoveredValue0) , (' (').
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) typeLabel.
    recoveredValue4 := (recoveredValue1) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (')').
    ^recoveredValue5
! !

"ASDBase.ic method 0x2013c3d0; bytecode file offset 0xa38c94"
!SGConfig methodsFor: 'recovered'!
getImplType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    false
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'should NOT be called'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) runtimeAssert: (recoveredStack1) additionalInfo: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) label.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

