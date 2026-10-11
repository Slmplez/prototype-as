"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20027570; bytecode file offset 0x924260"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
isLoaded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stApplication.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066224; bytecode file offset 0x963428"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
descriptionDict
    | recoveredValue0 |
    recoveredValue0 := descriptionDict.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077d54; bytecode file offset 0x9757c8"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
isToolboxDescription
    ^true
! !

"ASDBase.ic method 0x2009cbec; bytecode file offset 0x999628"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    (self) descriptionDict: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200b3a14; bytecode file offset 0x9b0488"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
apiClass
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('apiClass') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3a2c; bytecode file offset 0x9b0488"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
apiCID
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('cid') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3a5c; bytecode file offset 0x9b0488"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
version
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('version') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3b34; bytecode file offset 0x9b0488"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
application
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('application') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3b64; bytecode file offset 0x9b0488"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
apiVersion
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('apiVersion') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b3bac; bytecode file offset 0x9b0488"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
packageName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := [].
    recoveredValue2 := (recoveredValue0) at: ('packageName') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200bbea0; bytecode file offset 0x9b8ddc"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
version: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('version') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc080; bytecode file offset 0x9b8ddc"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
label: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('label') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc0f8; bytecode file offset 0x9b8ddc"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
apiCID: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('cid') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc10c; bytecode file offset 0x9b8ddc"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
apiClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('apiClass') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc148; bytecode file offset 0x9b8ddc"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
packageName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('packageName') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc1c0; bytecode file offset 0x9b8ddc"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
apiVersion: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('apiVersion') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc2d8; bytecode file offset 0x9b8ddc"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
application: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('application') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc300; bytecode file offset 0x9b8ddc"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
toolboxPrerequisites: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) descriptionDict.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('prerequisites') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be414; bytecode file offset 0x9bb178"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
descriptionDict: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    descriptionDict := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2012ce0c; bytecode file offset 0xa29840"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
toolboxPrerequisites
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) descriptionDict.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'prerequisites'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    #()
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ce98; bytecode file offset 0xa29840"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
label
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) descriptionDict.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'label'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013f6d0; bytecode file offset 0xa3bf94"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
stApplication
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) application.
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
            recoveredStack0 := Smalltalk.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) application.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) classAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201a5664; bytecode file offset 0xaa1f38"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) label.
    recoveredValue2 := ('Toolbox: ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' (').
    recoveredValue4 := (self) version.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    recoveredValue7 := (recoveredValue6) , (') ').
    (recoveredValue0) nextPutAll: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x202b0724; bytecode file offset 0xbad010"
!EtasToolboxLoadingDescriptor methodsFor: 'recovered'!
packageVersion
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) packageName.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := '<undefined>'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := EtasGeneralDllApi.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) getPackageVersion: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := '<undefined>'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 35.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := $".
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyWithout: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := $".
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

