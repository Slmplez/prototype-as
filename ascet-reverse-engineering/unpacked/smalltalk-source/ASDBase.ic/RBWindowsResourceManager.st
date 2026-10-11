"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004360; bytecode file offset 0x90206c"
!RBWindowsResourceManager methodsFor: 'recovered'!
defineCursor: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2001accc; bytecode file offset 0x92209c"
!RBWindowsResourceManager methodsFor: 'recovered'!
overlayedString
    ^'_OVLW_'
! !

"ASDBase.ic method 0x20038574; bytecode file offset 0x935c54"
!RBWindowsResourceManager methodsFor: 'recovered'!
isResourceAnIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) isEtasCgIcon.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003b6b4; bytecode file offset 0x938608"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnImageWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) imageAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004943c; bytecode file offset 0x947128"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnDefaultIcon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) defaultString.
    recoveredValue1 := (self) returnIconWithName: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006739c; bytecode file offset 0x9646f8"
!RBWindowsResourceManager methodsFor: 'recovered'!
path
    | recoveredValue0 |
    recoveredValue0 := path.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200682bc; bytecode file offset 0x965b90"
!RBWindowsResourceManager methodsFor: 'recovered'!
cachedResources
    | recoveredValue0 |
    recoveredValue0 := cachedResources.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20084234; bytecode file offset 0x981ca4"
!RBWindowsResourceManager methodsFor: 'recovered'!
removeResourceDLLWithName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) removeDLLWithName: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20084a74; bytecode file offset 0x981ca4"
!RBWindowsResourceManager methodsFor: 'recovered'!
addAdditionalResourceDLLWithName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) addDLLWithName: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20094568; bytecode file offset 0x991174"
!RBWindowsResourceManager methodsFor: 'recovered'!
iconAtIfAbsentNil: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) iconAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200945b8; bytecode file offset 0x991174"
!RBWindowsResourceManager methodsFor: 'recovered'!
fontCursorAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [].
    recoveredValue2 := (self) fontCursorAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20095be8; bytecode file offset 0x9924a4"
!RBWindowsResourceManager methodsFor: 'recovered'!
isResourceAnImage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := CgDeviceIndependentImage.
    recoveredValue3 := (recoveredValue1) = (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2009c8e0; bytecode file offset 0x999628"
!RBWindowsResourceManager methodsFor: 'recovered'!
initializeCachedResources
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    (self) cachedResources: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009dd70; bytecode file offset 0x99a630"
!RBWindowsResourceManager methodsFor: 'recovered'!
defaultString
    (self) etasDevHaltFor: ('bfr9fe').
    ^'DEFAULT'
! !

"ASDBase.ic method 0x200b8898; bytecode file offset 0x9b5164"
!RBWindowsResourceManager methodsFor: 'recovered'!
removeDLLWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := resourceDLLs.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [].
    (recoveredValue0) remove: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bd4ac; bytecode file offset 0x9b9d70"
!RBWindowsResourceManager methodsFor: 'recovered'!
cachedIconAtIfAbsentNil: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) cachedResources.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredValue3 := [].
    recoveredValue4 := (recoveredValue0) at: (recoveredValue2) ifAbsent: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200bedb0; bytecode file offset 0x9bc0b4"
!RBWindowsResourceManager methodsFor: 'recovered'!
path: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    path := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c087c; bytecode file offset 0x9bd228"
!RBWindowsResourceManager methodsFor: 'recovered'!
cachedResources: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cachedResources := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ebd98; bytecode file offset 0x9e865c"
!RBWindowsResourceManager methodsFor: 'recovered'!
getOverlayedNameFor: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredValue3 := (self) overlayedString.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) asUppercase.
    recoveredValue7 := (recoveredValue4) , (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201006fc; bytecode file offset 0x9fcfc4"
!RBWindowsResourceManager methodsFor: 'recovered'!
getColoredNameOf: recoveredArg1 color: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asOSRGB.
    recoveredValue2 := (recoveredValue1) asString.
    recoveredValue3 := (recoveredValue2) , ('_').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asUppercase.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20115430; bytecode file offset 0xa11cfc"
!RBWindowsResourceManager methodsFor: 'recovered'!
initializePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CfsDirectoryDescriptor.
    recoveredValue1 := (recoveredValue0) startUpDirectory.
    recoveredValue2 := (recoveredValue1) asPathname.
    recoveredValue3 := (recoveredValue2) , ('EtasRes').
    recoveredValue4 := (recoveredValue3) asPathname.
    (self) path: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2011ff9c; bytecode file offset 0xa1c858"
!RBWindowsResourceManager methodsFor: 'recovered'!
fileNotAccessable: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := CfsError.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20121ee0; bytecode file offset 0xa1e7a8"
!RBWindowsResourceManager methodsFor: 'recovered'!
getIconIndexedNameOf: recoveredArg1 executable: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredValue2 := ('EXE:') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , ('_').
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asString.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2012eac4; bytecode file offset 0xa2b478"
!RBWindowsResourceManager methodsFor: 'recovered'!
checkBoxIconDontCareSetDisabled
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) IsAppThemed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'CheckBoxDontCareSetDisabledXP'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'CheckBoxDontCareSetDisabled'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012eadc; bytecode file offset 0xa2b478"
!RBWindowsResourceManager methodsFor: 'recovered'!
checkBoxIconSetDisabled
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) IsAppThemed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'CheckBoxSetDisabledXP'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'CheckBoxSetDisabled'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012eb24; bytecode file offset 0xa2b478"
!RBWindowsResourceManager methodsFor: 'recovered'!
checkBoxIconDontCareSet
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) IsAppThemed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'CheckBoxDontCareSetXP'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'CheckBoxDontCareSet'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012eb3c; bytecode file offset 0xa2b478"
!RBWindowsResourceManager methodsFor: 'recovered'!
checkBoxIconNotSet
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) IsAppThemed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'CheckBoxNotSetXP'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'CheckBoxNotSet'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012eb6c; bytecode file offset 0xa2b478"
!RBWindowsResourceManager methodsFor: 'recovered'!
checkBoxIconSet
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) IsAppThemed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'CheckBoxSetXP'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'CheckBoxSet'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012eb9c; bytecode file offset 0xa2b478"
!RBWindowsResourceManager methodsFor: 'recovered'!
checkBoxIconNotSetDisabled
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) IsAppThemed.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 'CheckBoxNotSetDisabledXP'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := 'CheckBoxNotSetDisabled'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2013f9f0; bytecode file offset 0xa3c2ec"
!RBWindowsResourceManager methodsFor: 'recovered'!
releaseCachedResources
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cachedResources.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (self) freeElement: (recoveredBlock5Value0).
    recoveredBlock5Value1
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2014b3d4; bytecode file offset 0xa47cb0"
!RBWindowsResourceManager methodsFor: 'recovered'!
buildImageNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) determineBitmapFromResource: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2014b3e4; bytecode file offset 0xa47cb0"
!RBWindowsResourceManager methodsFor: 'recovered'!
buildIconNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) determineIconFromResource: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20165134; bytecode file offset 0xa619f4"
!RBWindowsResourceManager methodsFor: 'recovered'!
isResourceAnCursor: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := CgFontCursor.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) class.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := CgCursor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201730d0; bytecode file offset 0xa6f99c"
!RBWindowsResourceManager methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) initializeCachedResources.
    (self) initializePath.
    recoveredValue0 := OrderedCollection.
    recoveredValue1 := (recoveredValue0) new.
    resourceDLLs := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x20187488; bytecode file offset 0xa83d54"
!RBWindowsResourceManager methodsFor: 'recovered'!
buildFontCursorNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgConstants.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) value.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) default.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) createFontCursor: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20198a14; bytecode file offset 0xa952e0"
!RBWindowsResourceManager methodsFor: 'recovered'!
platform
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CG'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsystemType: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #('WIN' 'WIN32s' 'WIN-NT').
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'WIN'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201acb60; bytecode file offset 0xaa9420"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconFromIconFile: recoveredArg1 withName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) returnIconsFromIconFile: (recoveredValue0) withName: (recoveredValue1).
    recoveredValue3 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := (recoveredBlock12Value0) someElement.
    ^recoveredBlock12Value1
].
    (recoveredValue2) ifNotNil: (recoveredValue3).
    ^nil
! !

"ASDBase.ic method 0x201d9c60; bytecode file offset 0xad6524"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconWithName: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
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
            recoveredStack1 := (recoveredStack1) iconAt: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAtom.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconAt: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconAt: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20202538; bytecode file offset 0xafee00"
!RBWindowsResourceManager methodsFor: 'recovered'!
freeElement: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) isResourceAnIcon: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) freeIcon.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResourceAnImage: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) isResourceAnCursor: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 29].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) freeCursor.
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

"ASDBase.ic method 0x2023f620; bytecode file offset 0xb3bedc"
!RBWindowsResourceManager methodsFor: 'recovered'!
addDLLWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := resourceDLLs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 25].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := resourceDLLs.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20250938; bytecode file offset 0xb4d1f4"
!RBWindowsResourceManager methodsFor: 'recovered'!
getOverlayedNameFor: recoveredArg1 withArray: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (self) getOverlayedNameFor: (recoveredBlock13Value0) with: (recoveredBlock13Value1).
    recoveredBlock13Value3 := recoveredBlock13Value2.
    recoveredLocal1 := recoveredBlock13Value3.
    recoveredBlock13Value2
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x2025dc9c; bytecode file offset 0xb5a564"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconFromIconFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) fileNameOnly.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := (self) returnIconFromIconFile: (recoveredValue3) withName: (recoveredValue4).
    recoveredValue6 := recoveredValue5.
    recoveredLocal2 := recoveredValue6.
    recoveredValue7 := [
    | recoveredBlock24Value0 |
    recoveredBlock24Value0 := (self) defaultIcon.
    ^recoveredBlock24Value0
].
    (recoveredValue5) ifNil: (recoveredValue7).
    recoveredValue8 := recoveredLocal2.
    ^recoveredValue8
! !

"ASDBase.ic method 0x2026d6d8; bytecode file offset 0xb69f9c"
!RBWindowsResourceManager methodsFor: 'recovered'!
addAsFirstDLLWithName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := resourceDLLs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 13.
        ].
        recoveredBlock6Step = 13 ifTrue: [
            recoveredBlock6Stack2 := recoveredBlock6Arg1.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 25].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6PC := 23.
        ].
        recoveredBlock6Step = 23 ifTrue: [
            recoveredBlock6Stack1 := nil.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            ^recoveredBlock6Stack1
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := OrderedCollection.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := resourceDLLs.
    recoveredValue6 := (recoveredValue4) , (recoveredValue5).
    resourceDLLs := recoveredValue6.
    ^self
! !

"ASDBase.ic method 0x202717b0; bytecode file offset 0xb6e078"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnOverlayedIconForArray: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock9Value0 |
    recoveredBlock9Value0 := (self) returnDefaultIcon.
    ^recoveredBlock9Value0
].
    recoveredValue2 := (recoveredValue0) at: (1) ifAbsent: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) size.
    recoveredValue7 := (recoveredValue4) copyFrom: (2) to: (recoveredValue6).
    recoveredValue8 := (self) returnIcon: (recoveredValue3) overlayedWithIconArray: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20285380; bytecode file offset 0xb81c54"
!RBWindowsResourceManager methodsFor: 'recovered'!
loadIconFromIconFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) loadIconsFromIconFile: (recoveredValue0).
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
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
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) removeFirst.
            recoveredBlock8PC := 16.
        ].
        recoveredBlock8Step = 16 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := [:block280e1948Arg1 | 
    | block280e1948Value0 block280e1948Value1 |
    block280e1948Value0 := block280e1948Arg1.
    block280e1948Value1 := (block280e1948Value0) free.
    block280e1948Value1
].
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8PC := 27.
        ].
        recoveredBlock8Step = 27 ifTrue: [
            (recoveredBlock8Stack1) do: (recoveredBlock8Stack2).
            recoveredBlock8PC := 29.
        ].
        recoveredBlock8Step = 29 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local1.
            recoveredBlock8PC := 30.
        ].
        recoveredBlock8Step = 30 ifTrue: [
            recoveredBlock8Stack2 := recoveredArg1.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack2 := (recoveredBlock8Stack2) fileName.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) asEtasCgIconNamed: (recoveredBlock8Stack2).
            recoveredBlock8PC := 37.
        ].
        recoveredBlock8Step = 37 ifTrue: [
            ^recoveredBlock8Stack1
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) ifNotNil: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x202c7ae8; bytecode file offset 0xbc43f4"
!RBWindowsResourceManager methodsFor: 'recovered'!
definePlatformCursors
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'CG'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) subsystemType: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := #('WIN' 'WIN32s' 'WIN-NT').
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) defineWINCursors.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'X'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) defineXCursors.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'PM'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) definePMCursors.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d43a0; bytecode file offset 0xbd0c6c"
!RBWindowsResourceManager methodsFor: 'recovered'!
iconAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asUppercase.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) cachedResources.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock15Value0 recoveredBlock15Value1 recoveredBlock15Value2 recoveredBlock15Value3 recoveredBlock15Value4 recoveredBlock15Value5 |
    recoveredBlock15Value0 := (self) cachedResources.
    recoveredBlock15Value1 := recoveredLocal1.
    recoveredBlock15Value2 := recoveredLocal1.
    recoveredBlock15Value3 := [
    | recoveredBlock15Block30Value0 recoveredBlock15Block30Value1 |
    recoveredBlock15Block30Value0 := recoveredArg2.
    recoveredBlock15Block30Value1 := (recoveredBlock15Block30Value0) value.
    ^recoveredBlock15Block30Value1
].
    recoveredBlock15Value4 := (self) buildIconNamed: (recoveredBlock15Value2) ifAbsent: (recoveredBlock15Value3).
    recoveredBlock15Value5 := (recoveredBlock15Value0) at: (recoveredBlock15Value1) put: (recoveredBlock15Value4).
    recoveredBlock15Value5
].
    recoveredValue5 := (recoveredValue2) at: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x202e5aac; bytecode file offset 0xbe2384"
!RBWindowsResourceManager methodsFor: 'recovered'!
defaultIcon
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) defaultString.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := recoveredLocal1.
    recoveredValue2 := [
    | recoveredBlock12Local1 recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 recoveredBlock12Value3 recoveredBlock12Value4 recoveredBlock12Value5 recoveredBlock12Value6 recoveredBlock12Value7 recoveredBlock12Value8 recoveredBlock12Value9 recoveredBlock12Value10 |
    recoveredBlock12Value0 := EtasIcon.
    recoveredBlock12Value1 := IdiQuestion.
    recoveredBlock12Value2 := (recoveredBlock12Value0) fromSystem: (recoveredBlock12Value1).
    recoveredBlock12Value3 := (16) @ (16).
    recoveredBlock12Value4 := (recoveredBlock12Value2) scaledTo: (recoveredBlock12Value3).
    recoveredBlock12Local1 := recoveredBlock12Value4.
    recoveredBlock12Value5 := recoveredBlock12Local1.
    recoveredBlock12Value6 := recoveredLocal1.
    (recoveredBlock12Value5) name: (recoveredBlock12Value6).
    recoveredBlock12Value7 := cachedResources.
    recoveredBlock12Value8 := recoveredLocal1.
    recoveredBlock12Value9 := recoveredBlock12Local1.
    (recoveredBlock12Value7) at: (recoveredBlock12Value8) put: (recoveredBlock12Value9).
    recoveredBlock12Value10 := recoveredBlock12Local1.
    ^recoveredBlock12Value10
].
    recoveredValue3 := (self) iconAt: (recoveredValue1) ifAbsent: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20301174; bytecode file offset 0xbfda48"
!RBWindowsResourceManager methodsFor: 'recovered'!
fontCursorAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := Array.
    recoveredValue1 := CgFontCursor.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := (self) cachedResources.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 |
    recoveredBlock20Value0 := (self) cachedResources.
    recoveredBlock20Value1 := recoveredLocal1.
    recoveredBlock20Value2 := recoveredArg1.
    recoveredBlock20Value3 := [
    | recoveredBlock20Block34Value0 recoveredBlock20Block34Value1 |
    recoveredBlock20Block34Value0 := recoveredArg2.
    recoveredBlock20Block34Value1 := (recoveredBlock20Block34Value0) value.
    ^recoveredBlock20Block34Value1
].
    recoveredBlock20Value4 := (self) buildFontCursorNamed: (recoveredBlock20Value2) ifAbsent: (recoveredBlock20Value3).
    recoveredBlock20Value5 := (recoveredBlock20Value0) at: (recoveredBlock20Value1) put: (recoveredBlock20Value4).
    recoveredBlock20Value5
].
    recoveredValue7 := (recoveredValue4) at: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x20309154; bytecode file offset 0xc05a24"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconIndex: recoveredArg1 fromExecutable: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (self) getIconIndexedNameOf: (recoveredValue0) executable: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 recoveredBlock19Value6 recoveredBlock19Value7 recoveredBlock19Value8 recoveredBlock19Value9 |
    recoveredBlock19Value0 := EtasIcon.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := recoveredArg2.
    recoveredBlock19Value3 := (recoveredBlock19Value0) fromResource: (recoveredBlock19Value1) fileName: (recoveredBlock19Value2).
    recoveredBlock19Local1 := recoveredBlock19Value3.
    recoveredBlock19Value4 := recoveredBlock19Local1.
    recoveredBlock19Value5 := recoveredLocal1.
    (recoveredBlock19Value4) name: (recoveredBlock19Value5).
    recoveredBlock19Value6 := (self) cachedResources.
    recoveredBlock19Value7 := recoveredLocal1.
    recoveredBlock19Value8 := recoveredBlock19Local1.
    recoveredBlock19Value9 := (recoveredBlock19Value6) at: (recoveredBlock19Value7) put: (recoveredBlock19Value8).
    recoveredBlock19Value9
].
    recoveredValue5 := (self) iconAt: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20316624; bytecode file offset 0xc12f6c"
!RBWindowsResourceManager methodsFor: 'recovered'!
defineXCursors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) mapFontCursor: ('GFTopLeftCorner') platformCursor: (nil).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) mapFontCursor: ('GFTopRightCorner') platformCursor: (nil).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) mapFontCursor: ('GFTopSide') platformCursor: (nil).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) mapFontCursor: ('GFLeftSide') platformCursor: (nil).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) mapFontCursor: ('GFRightSide') platformCursor: (nil).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) mapFontCursor: ('GFBottomLeftCorner') platformCursor: (nil).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) mapFontCursor: ('GFBottomRightCorner') platformCursor: (nil).
    (recoveredValue2) mapFontCursor: ('GFBottomSide') platformCursor: (nil).
    ^self
! !

"ASDBase.ic method 0x20316658; bytecode file offset 0xc12f6c"
!RBWindowsResourceManager methodsFor: 'recovered'!
definePMCursors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) mapFontCursor: ('GFTopLeftCorner') platformCursor: (nil).
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) mapFontCursor: ('GFTopRightCorner') platformCursor: (nil).
    recoveredValue5 := recoveredValue2.
    (recoveredValue5) mapFontCursor: ('GFTopSide') platformCursor: (nil).
    recoveredValue6 := recoveredValue2.
    (recoveredValue6) mapFontCursor: ('GFLeftSide') platformCursor: (nil).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) mapFontCursor: ('GFRightSide') platformCursor: (nil).
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) mapFontCursor: ('GFBottomLeftCorner') platformCursor: (nil).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) mapFontCursor: ('GFBottomRightCorner') platformCursor: (nil).
    (recoveredValue2) mapFontCursor: ('GFBottomSide') platformCursor: (nil).
    ^self
! !

"ASDBase.ic method 0x2031fa94; bytecode file offset 0xc1c374"
!RBWindowsResourceManager methodsFor: 'recovered'!
defaultIconScaledTo: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) defaultString.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) printString.
    recoveredValue3 := (recoveredValue0) , (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [
    | recoveredBlock17Local1 recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 recoveredBlock17Value6 recoveredBlock17Value7 recoveredBlock17Value8 recoveredBlock17Value9 recoveredBlock17Value10 |
    recoveredBlock17Value0 := EtasIcon.
    recoveredBlock17Value1 := IdiQuestion.
    recoveredBlock17Value2 := (recoveredBlock17Value0) fromSystem: (recoveredBlock17Value1).
    recoveredBlock17Value3 := (16) @ (16).
    recoveredBlock17Value4 := (recoveredBlock17Value2) scaledTo: (recoveredBlock17Value3).
    recoveredBlock17Local1 := recoveredBlock17Value4.
    recoveredBlock17Value5 := recoveredBlock17Local1.
    recoveredBlock17Value6 := recoveredLocal1.
    (recoveredBlock17Value5) name: (recoveredBlock17Value6).
    recoveredBlock17Value7 := cachedResources.
    recoveredBlock17Value8 := recoveredLocal1.
    recoveredBlock17Value9 := recoveredBlock17Local1.
    (recoveredBlock17Value7) at: (recoveredBlock17Value8) put: (recoveredBlock17Value9).
    recoveredBlock17Value10 := recoveredBlock17Local1.
    ^recoveredBlock17Value10
].
    recoveredValue6 := (self) iconAt: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20351080; bytecode file offset 0xc4d95c"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconWithName: recoveredArg1 scaleTo: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := (recoveredStack2) printString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedIconAtIfAbsentNil: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconAtIfAbsentNil: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 35] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultIconScaledTo: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) printString.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) scaledTo: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := cachedResources.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2035416c; bytecode file offset 0xc50aa0"
!RBWindowsResourceManager methodsFor: 'recovered'!
defineWINCursors
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 |
    recoveredValue0 := CgDisplay.
    recoveredValue1 := (recoveredValue0) default.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := IdcSizenwse.
    (recoveredValue3) mapFontCursor: ('GFTopLeftCorner') platformCursor: (recoveredValue4).
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := IdcSizenesw.
    (recoveredValue5) mapFontCursor: ('GFTopRightCorner') platformCursor: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := IdcSizens.
    (recoveredValue7) mapFontCursor: ('GFTopSide') platformCursor: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    recoveredValue10 := IdcSizewe.
    (recoveredValue9) mapFontCursor: ('GFLeftSide') platformCursor: (recoveredValue10).
    recoveredValue11 := recoveredValue2.
    recoveredValue12 := IdcSizewe.
    (recoveredValue11) mapFontCursor: ('GFRightSide') platformCursor: (recoveredValue12).
    recoveredValue13 := recoveredValue2.
    recoveredValue14 := IdcSizenesw.
    (recoveredValue13) mapFontCursor: ('GFBottomLeftCorner') platformCursor: (recoveredValue14).
    recoveredValue15 := recoveredValue2.
    recoveredValue16 := IdcSizenwse.
    (recoveredValue15) mapFontCursor: ('GFBottomRightCorner') platformCursor: (recoveredValue16).
    recoveredValue17 := IdcSizens.
    (recoveredValue2) mapFontCursor: ('GFBottomSide') platformCursor: (recoveredValue17).
    ^self
! !

"ASDBase.ic method 0x20364c50; bytecode file offset 0xc61530"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnGrayedIconWithName: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('Grayed_') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) returnIconWithName: (recoveredBlock17Stack1).
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack0.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local2.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) copy.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) getGrayedIcon.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            (recoveredBlock17Stack0 ~~ nil) ifTrue: [recoveredBlock17PC := 48] ifFalse: [recoveredBlock17PC := 40].
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) defaultIcon.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack0.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack0 := recoveredBlock17Local1.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            (recoveredBlock17Stack0) name: (recoveredBlock17Stack1).
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack0 := self.
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) cachedResources.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack1 := recoveredLocal1.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local1.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack0 := (recoveredBlock17Stack0) at: (recoveredBlock17Stack1) put: (recoveredBlock17Stack2).
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Result := recoveredBlock17Stack0.
            recoveredBlock17Done := true.
        ].
    ].
    recoveredBlock17Result
].
    recoveredValue5 := (self) iconAt: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20373180; bytecode file offset 0xc6fa58"
!RBWindowsResourceManager methodsFor: 'recovered'!
imageAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ('hw') == ('wb_sifting').
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asUppercase.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (self) cachedResources.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [
    | recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 |
    recoveredBlock21Value0 := (self) cachedResources.
    recoveredBlock21Value1 := recoveredLocal1.
    recoveredBlock21Value2 := recoveredArg1.
    recoveredBlock21Value3 := [
    | recoveredBlock21Block36Value0 recoveredBlock21Block36Value1 recoveredBlock21Block36Value2 |
    recoveredBlock21Block36Value0 := recoveredArg1.
    recoveredBlock21Block36Value1 := [
    | recoveredBlock21Block36Block45Value0 recoveredBlock21Block36Block45Value1 |
    recoveredBlock21Block36Block45Value0 := recoveredArg2.
    recoveredBlock21Block36Block45Value1 := (recoveredBlock21Block36Block45Value0) value.
    ^recoveredBlock21Block36Block45Value1
].
    recoveredBlock21Block36Value2 := (self) buildImageFromFileNamed: (recoveredBlock21Block36Value0) ifAbsent: (recoveredBlock21Block36Value1).
    recoveredBlock21Block36Value2
].
    recoveredBlock21Value4 := (self) buildImageNamed: (recoveredBlock21Value2) ifAbsent: (recoveredBlock21Value3).
    recoveredBlock21Value5 := (recoveredBlock21Value0) at: (recoveredBlock21Value1) put: (recoveredBlock21Value4).
    recoveredBlock21Value5
].
    recoveredValue6 := (recoveredValue3) at: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2037f07c; bytecode file offset 0xc7b95c"
!RBWindowsResourceManager methodsFor: 'recovered'!
determineIconFromResource: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := resourceDLLs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := EtasIcon.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := self.
            recoveredBlock6PC := 15.
        ].
        recoveredBlock6Step = 15 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) platform.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack3 := 'WIN'.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) = (recoveredBlock6Stack3).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            (recoveredBlock6Stack2) ifTrue: [recoveredBlock6PC := 22] ifFalse: [recoveredBlock6PC := 28].
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack2 := recoveredArg1.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) asNumber.
            recoveredBlock6PC := 32.
        ].
        recoveredBlock6Step = 32 ifTrue: [
            recoveredBlock6Stack3 := EtasGeneralDllApi.
            recoveredBlock6PC := 34.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) getAppProgramPath.
            recoveredBlock6PC := 36.
        ].
        recoveredBlock6Step = 36 ifTrue: [
            recoveredBlock6Stack4 := recoveredBlock6Arg1.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) , (recoveredBlock6Stack4).
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) fromResource: (recoveredBlock6Stack2) fileName: (recoveredBlock6Stack3).
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block47Arg1 | 
    | recoveredBlock6Block47Value0 recoveredBlock6Block47Value1 recoveredBlock6Block47Value2 |
    recoveredBlock6Block47Value0 := recoveredLocal1.
    recoveredBlock6Block47Value1 := recoveredArg1.
    (recoveredBlock6Block47Value0) name: (recoveredBlock6Block47Value1).
    recoveredBlock6Block47Value2 := recoveredBlock6Block47Arg1.
    ^recoveredBlock6Block47Value2
].
            recoveredBlock6PC := 64.
        ].
        recoveredBlock6Step = 64 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) ifNotNil: (recoveredBlock6Stack2).
            recoveredBlock6PC := 66.
        ].
        recoveredBlock6Step = 66 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x203901c4; bytecode file offset 0xc8cac4"
!RBWindowsResourceManager methodsFor: 'recovered'!
resetResources
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRuntime.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) cachedResources.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) keys.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := [:block280f3900Arg1 | 
    | block280f3900Value0 block280f3900Value1 block280f3900Value2 |
    block280f3900Value0 := block280f3900Arg1.
    block280f3900Value1 := (block280f3900Value0) isString.
    block280f3900Value2 := (block280f3900Value1) not.
    block280f3900Value2
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 65].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := Transcript.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'Invalid keys in resource manager chached resources...'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) show: (recoveredStack3).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := [:block280f3924Arg1 | 
    | block280f3924Value0 block280f3924Value1 block280f3924Value2 block280f3924Value3 block280f3924Value4 block280f3924Value5 |
    block280f3924Value0 := Transcript.
    block280f3924Value1 := block280f3924Value0.
    block280f3924Value2 := block280f3924Arg1.
    block280f3924Value3 := (block280f3924Value2) printString.
    block280f3924Value4 := ('  - ') , (block280f3924Value3).
    (block280f3924Value1) show: (block280f3924Value4).
    block280f3924Value5 := (block280f3924Value0) cr.
    block280f3924Value5
].
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) releaseCachedResources.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) initializeCachedResources.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039e418; bytecode file offset 0xc9acf4"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnColoredIcon: recoveredArg1 withName: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) getColoredNameOf: (recoveredValue1) color: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [
    | recoveredBlock20Local1 recoveredBlock20Local2 recoveredBlock20Value0 recoveredBlock20Value1 recoveredBlock20Value2 recoveredBlock20Value3 recoveredBlock20Value4 recoveredBlock20Value5 recoveredBlock20Value6 recoveredBlock20Value7 recoveredBlock20Value8 recoveredBlock20Value9 recoveredBlock20Value10 recoveredBlock20Value11 |
    recoveredBlock20Value0 := recoveredArg2.
    recoveredBlock20Value1 := (self) returnIconWithName: (recoveredBlock20Value0).
    recoveredBlock20Local2 := recoveredBlock20Value1.
    recoveredBlock20Value2 := recoveredBlock20Local2.
    recoveredBlock20Value3 := (recoveredBlock20Value2) copy.
    recoveredBlock20Value4 := recoveredArg1.
    recoveredBlock20Value5 := (recoveredBlock20Value3) getColoredIcon: (recoveredBlock20Value4).
    recoveredBlock20Value6 := recoveredBlock20Value5.
    recoveredBlock20Local1 := recoveredBlock20Value6.
    recoveredBlock20Value7 := [
    | recoveredBlock20Block46Value0 recoveredBlock20Block46Value1 |
    recoveredBlock20Block46Value0 := (self) defaultIcon.
    recoveredBlock20Block46Value1 := recoveredBlock20Block46Value0.
    recoveredBlock20Local1 := recoveredBlock20Block46Value1.
    recoveredBlock20Block46Value0
].
    (recoveredBlock20Value5) ifNil: (recoveredBlock20Value7).
    recoveredBlock20Value8 := (self) cachedResources.
    recoveredBlock20Value9 := recoveredLocal1.
    recoveredBlock20Value10 := recoveredBlock20Local1.
    recoveredBlock20Value11 := (recoveredBlock20Value8) at: (recoveredBlock20Value9) put: (recoveredBlock20Value10).
    recoveredBlock20Value11
].
    recoveredValue6 := (self) iconAt: (recoveredValue4) ifAbsent: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x203a92b4; bytecode file offset 0xca5b9c"
!RBWindowsResourceManager methodsFor: 'recovered'!
imageAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Local1 recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 recoveredBlock7Value5 recoveredBlock7Value6 recoveredBlock7Value7 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := ('Image ') , (recoveredBlock7Value0).
    recoveredBlock7Value2 := (recoveredBlock7Value1) , (' can not be found').
    (self) runtimeAssert: (false) additionalInfo: (recoveredBlock7Value2).
    recoveredBlock7Value3 := (self) defaultString.
    recoveredBlock7Value4 := [
    | recoveredBlock7Block30Value0 recoveredBlock7Block30Value1 recoveredBlock7Block30Value2 recoveredBlock7Block30Value3 recoveredBlock7Block30Value4 recoveredBlock7Block30Value5 recoveredBlock7Block30Value6 recoveredBlock7Block30Value7 recoveredBlock7Block30Value8 |
    recoveredBlock7Block30Value0 := EtasIcon.
    recoveredBlock7Block30Value1 := IdiError.
    recoveredBlock7Block30Value2 := (recoveredBlock7Block30Value0) fromSystem: (recoveredBlock7Block30Value1).
    recoveredBlock7Block30Value3 := (16) @ (16).
    recoveredBlock7Block30Value4 := (recoveredBlock7Block30Value2) scaledTo: (recoveredBlock7Block30Value3).
    recoveredBlock7Local1 := recoveredBlock7Block30Value4.
    recoveredBlock7Block30Value5 := cachedResources.
    recoveredBlock7Block30Value6 := (self) defaultString.
    recoveredBlock7Block30Value7 := recoveredBlock7Local1.
    recoveredBlock7Block30Value8 := (recoveredBlock7Block30Value5) at: (recoveredBlock7Block30Value6) put: (recoveredBlock7Block30Value7).
    recoveredBlock7Block30Value8
].
    recoveredBlock7Value5 := (self) imageAt: (recoveredBlock7Value3) ifAbsent: (recoveredBlock7Value4).
    recoveredBlock7Local1 := recoveredBlock7Value5.
    recoveredBlock7Value6 := recoveredBlock7Local1.
    recoveredBlock7Value7 := (recoveredBlock7Value6) shapeImage.
    ^recoveredBlock7Value7
].
    recoveredValue2 := (self) imageAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x203bc894; bytecode file offset 0xcb9174"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIcon: recoveredArg1 overlayedWith: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := (self) getOverlayedNameFor: (recoveredValue1) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock21Local1 recoveredBlock21Local2 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := (self) returnIconWithName: (recoveredBlock21Value0).
    recoveredBlock21Local2 := recoveredBlock21Value1.
    recoveredBlock21Value2 := recoveredBlock21Local2.
    recoveredBlock21Value3 := (recoveredBlock21Value2) copy.
    recoveredBlock21Value4 := recoveredArg2.
    recoveredBlock21Value5 := (recoveredBlock21Value4) asString.
    recoveredBlock21Value6 := (self) iconAt: (recoveredBlock21Value5).
    recoveredBlock21Value7 := (recoveredBlock21Value3) getOverlayedIconWith: (recoveredBlock21Value6).
    recoveredBlock21Value8 := [
    | recoveredBlock21Block48Value0 recoveredBlock21Block48Value1 |
    recoveredBlock21Block48Value0 := (self) defaultIcon.
    recoveredBlock21Block48Value1 := recoveredBlock21Block48Value0.
    recoveredBlock21Local1 := recoveredBlock21Block48Value1.
    recoveredBlock21Block48Value0
].
    recoveredBlock21Value9 := (recoveredBlock21Value7) ifNil: (recoveredBlock21Value8).
    recoveredBlock21Local1 := recoveredBlock21Value9.
    recoveredBlock21Value10 := (self) cachedResources.
    recoveredBlock21Value11 := recoveredLocal1.
    recoveredBlock21Value12 := recoveredBlock21Local1.
    recoveredBlock21Value13 := (recoveredBlock21Value10) at: (recoveredBlock21Value11) put: (recoveredBlock21Value12).
    recoveredBlock21Value13
].
    recoveredValue7 := (self) iconAt: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x203cafd8; bytecode file offset 0xcc78b8"
!RBWindowsResourceManager methodsFor: 'recovered'!
iconAt: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isAtom.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock23Local1 recoveredBlock23Value0 recoveredBlock23Value1 recoveredBlock23Value2 recoveredBlock23Value3 |
    recoveredBlock23Value0 := (self) defaultString.
    recoveredBlock23Value1 := [
    | recoveredBlock23Block32Value0 recoveredBlock23Block32Value1 recoveredBlock23Block32Value2 recoveredBlock23Block32Value3 recoveredBlock23Block32Value4 recoveredBlock23Block32Value5 recoveredBlock23Block32Value6 recoveredBlock23Block32Value7 recoveredBlock23Block32Value8 recoveredBlock23Block32Value9 recoveredBlock23Block32Value10 |
    recoveredBlock23Block32Value0 := EtasIcon.
    recoveredBlock23Block32Value1 := IdiQuestion.
    recoveredBlock23Block32Value2 := (recoveredBlock23Block32Value0) fromSystem: (recoveredBlock23Block32Value1).
    recoveredBlock23Block32Value3 := (16) @ (16).
    recoveredBlock23Block32Value4 := (recoveredBlock23Block32Value2) scaledTo: (recoveredBlock23Block32Value3).
    recoveredBlock23Local1 := recoveredBlock23Block32Value4.
    recoveredBlock23Block32Value5 := recoveredBlock23Local1.
    recoveredBlock23Block32Value6 := (self) defaultString.
    (recoveredBlock23Block32Value5) name: (recoveredBlock23Block32Value6).
    recoveredBlock23Block32Value7 := cachedResources.
    recoveredBlock23Block32Value8 := (self) defaultString.
    recoveredBlock23Block32Value9 := recoveredBlock23Local1.
    recoveredBlock23Block32Value10 := (recoveredBlock23Block32Value7) at: (recoveredBlock23Block32Value8) put: (recoveredBlock23Block32Value9).
    recoveredBlock23Block32Value10
].
    recoveredBlock23Value2 := (self) iconAt: (recoveredBlock23Value0) ifAbsent: (recoveredBlock23Value1).
    recoveredBlock23Local1 := recoveredBlock23Value2.
    recoveredBlock23Value3 := recoveredBlock23Local1.
    ^recoveredBlock23Value3
].
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203d20a4; bytecode file offset 0xcce9a0"
!RBWindowsResourceManager methodsFor: 'recovered'!
determineBitmapFromResource: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 |
    recoveredValue0 := resourceDLLs.
    recoveredValue1 := [:recoveredBlock6Arg1 | 
    | recoveredBlock6Stack0 recoveredBlock6Stack1 recoveredBlock6Stack2 recoveredBlock6Stack3 recoveredBlock6Stack4 recoveredBlock6Stack5 recoveredBlock6PC recoveredBlock6Step recoveredBlock6Done recoveredBlock6Result |
    recoveredBlock6Stack0 := self.
    recoveredBlock6PC := 12.
    recoveredBlock6Done := false.
    [recoveredBlock6Done not] whileTrue: [
        recoveredBlock6Step := recoveredBlock6PC.
        recoveredBlock6Step = 12 ifTrue: [
            recoveredBlock6Stack1 := CgPixmap.
            recoveredBlock6PC := 14.
        ].
        recoveredBlock6Step = 14 ifTrue: [
            recoveredBlock6Stack2 := EtasGeneralDllApi.
            recoveredBlock6PC := 16.
        ].
        recoveredBlock6Step = 16 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) getAppProgramPath.
            recoveredBlock6PC := 17.
        ].
        recoveredBlock6Step = 17 ifTrue: [
            recoveredBlock6Stack3 := recoveredBlock6Arg1.
            recoveredBlock6PC := 18.
        ].
        recoveredBlock6Step = 18 ifTrue: [
            recoveredBlock6Stack2 := (recoveredBlock6Stack2) , (recoveredBlock6Stack3).
            recoveredBlock6PC := 19.
        ].
        recoveredBlock6Step = 19 ifTrue: [
            recoveredBlock6Stack3 := self.
            recoveredBlock6PC := 20.
        ].
        recoveredBlock6Step = 20 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) platform.
            recoveredBlock6PC := 22.
        ].
        recoveredBlock6Step = 22 ifTrue: [
            recoveredBlock6Stack4 := 'WIN'.
            recoveredBlock6PC := 24.
        ].
        recoveredBlock6Step = 24 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) = (recoveredBlock6Stack4).
            recoveredBlock6PC := 25.
        ].
        recoveredBlock6Step = 25 ifTrue: [
            (recoveredBlock6Stack3) ifTrue: [recoveredBlock6PC := 28] ifFalse: [recoveredBlock6PC := 34].
        ].
        recoveredBlock6Step = 28 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 31.
        ].
        recoveredBlock6Step = 31 ifTrue: [
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 34 ifTrue: [
            recoveredBlock6Stack3 := recoveredArg1.
            recoveredBlock6PC := 37.
        ].
        recoveredBlock6Step = 37 ifTrue: [
            recoveredBlock6Stack3 := (recoveredBlock6Stack3) asNumber.
            recoveredBlock6PC := 39.
        ].
        recoveredBlock6Step = 39 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) fromModule: (recoveredBlock6Stack2) id: (recoveredBlock6Stack3).
            recoveredBlock6PC := 41.
        ].
        recoveredBlock6Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock6Stack1.
            recoveredBlock6PC := 44.
        ].
        recoveredBlock6Step = 44 ifTrue: [
            recoveredBlock6Stack1 := recoveredLocal1.
            recoveredBlock6PC := 47.
        ].
        recoveredBlock6Step = 47 ifTrue: [
            recoveredBlock6Stack2 := [:recoveredBlock6Block47Arg1 | 
    | recoveredBlock6Block47Value0 recoveredBlock6Block47Value1 recoveredBlock6Block47Value2 recoveredBlock6Block47Value3 recoveredBlock6Block47Value4 recoveredBlock6Block47Value5 recoveredBlock6Block47Value6 recoveredBlock6Block47Value7 recoveredBlock6Block47Value8 recoveredBlock6Block47Value9 recoveredBlock6Block47Value10 recoveredBlock6Block47Value11 recoveredBlock6Block47Value12 recoveredBlock6Block47Value13 |
    recoveredBlock6Block47Value0 := recoveredBlock6Block47Arg1.
    recoveredBlock6Block47Value1 := Rectangle.
    recoveredBlock6Block47Value2 := recoveredBlock6Block47Arg1.
    recoveredBlock6Block47Value3 := (recoveredBlock6Block47Value2) x.
    recoveredBlock6Block47Value4 := recoveredBlock6Block47Arg1.
    recoveredBlock6Block47Value5 := (recoveredBlock6Block47Value4) y.
    recoveredBlock6Block47Value6 := (recoveredBlock6Block47Value3) @ (recoveredBlock6Block47Value5).
    recoveredBlock6Block47Value7 := recoveredBlock6Block47Arg1.
    recoveredBlock6Block47Value8 := (recoveredBlock6Block47Value7) width.
    recoveredBlock6Block47Value9 := recoveredBlock6Block47Arg1.
    recoveredBlock6Block47Value10 := (recoveredBlock6Block47Value9) height.
    recoveredBlock6Block47Value11 := (recoveredBlock6Block47Value8) @ (recoveredBlock6Block47Value10).
    recoveredBlock6Block47Value12 := (recoveredBlock6Block47Value1) origin: (recoveredBlock6Block47Value6) corner: (recoveredBlock6Block47Value11).
    recoveredBlock6Block47Value13 := (recoveredBlock6Block47Value0) osGetDeviceIndependentImage: (recoveredBlock6Block47Value12).
    ^recoveredBlock6Block47Value13
].
            recoveredBlock6PC := 78.
        ].
        recoveredBlock6Step = 78 ifTrue: [
            recoveredBlock6Stack1 := (recoveredBlock6Stack1) ifNotNil: (recoveredBlock6Stack2).
            recoveredBlock6PC := 80.
        ].
        recoveredBlock6Step = 80 ifTrue: [
            recoveredBlock6Result := recoveredBlock6Stack1.
            recoveredBlock6Done := true.
        ].
    ].
    recoveredBlock6Result
].
    (recoveredValue0) do: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x203dca74; bytecode file offset 0xcd9344"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIcon: recoveredArg1 overlayedWithIconArray: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIconWithName: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) getOverlayedNameFor: (recoveredStack2) withArray: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock34Local1 recoveredBlock34Local2 recoveredBlock34Value0 recoveredBlock34Value1 recoveredBlock34Value2 recoveredBlock34Value3 |
    recoveredBlock34Value0 := recoveredArg1.
    recoveredBlock34Local2 := recoveredBlock34Value0.
    recoveredBlock34Value1 := recoveredArg2.
    recoveredBlock34Value2 := [:recoveredBlock34Block49Arg1 | 
    | recoveredBlock34Block49Value0 recoveredBlock34Block49Value1 recoveredBlock34Block49Value2 recoveredBlock34Block49Value3 recoveredBlock34Block49Value4 recoveredBlock34Block49Value5 recoveredBlock34Block49Value6 |
    recoveredBlock34Block49Value0 := recoveredBlock34Local2.
    recoveredBlock34Block49Value1 := recoveredBlock34Block49Arg1.
    recoveredBlock34Block49Value2 := (self) returnIcon: (recoveredBlock34Block49Value0) overlayedWith: (recoveredBlock34Block49Value1).
    recoveredBlock34Local1 := recoveredBlock34Block49Value2.
    recoveredBlock34Block49Value3 := recoveredBlock34Local2.
    recoveredBlock34Block49Value4 := recoveredBlock34Block49Arg1.
    recoveredBlock34Block49Value5 := (self) getOverlayedNameFor: (recoveredBlock34Block49Value3) with: (recoveredBlock34Block49Value4).
    recoveredBlock34Block49Value6 := recoveredBlock34Block49Value5.
    recoveredBlock34Local2 := recoveredBlock34Block49Value6.
    recoveredBlock34Block49Value5
].
    (recoveredBlock34Value1) do: (recoveredBlock34Value2).
    recoveredBlock34Value3 := recoveredBlock34Local1.
    ^recoveredBlock34Value3
].
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) iconAt: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203ed6d8; bytecode file offset 0xce9fbc"
!RBWindowsResourceManager methodsFor: 'recovered'!
allCachedIconAtIfAbsentNil: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedResources.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := [].
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) with: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizes.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := [:recoveredBlock43Arg1 | 
    | recoveredBlock43Stack0 recoveredBlock43Stack1 recoveredBlock43Stack2 recoveredBlock43Stack3 recoveredBlock43PC recoveredBlock43Step recoveredBlock43Done recoveredBlock43Result |
    recoveredBlock43Stack0 := self.
    recoveredBlock43PC := 50.
    recoveredBlock43Done := false.
    [recoveredBlock43Done not] whileTrue: [
        recoveredBlock43Step := recoveredBlock43PC.
        recoveredBlock43Step = 50 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) cachedResources.
            recoveredBlock43PC := 51.
        ].
        recoveredBlock43Step = 51 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal3.
            recoveredBlock43PC := 54.
        ].
        recoveredBlock43Step = 54 ifTrue: [
            recoveredBlock43Stack2 := recoveredBlock43Arg1.
            recoveredBlock43PC := 55.
        ].
        recoveredBlock43Step = 55 ifTrue: [
            recoveredBlock43Stack2 := (recoveredBlock43Stack2) asString.
            recoveredBlock43PC := 57.
        ].
        recoveredBlock43Step = 57 ifTrue: [
            recoveredBlock43Stack1 := (recoveredBlock43Stack1) , (recoveredBlock43Stack2).
            recoveredBlock43PC := 59.
        ].
        recoveredBlock43Step = 59 ifTrue: [
            recoveredBlock43Stack2 := [].
            recoveredBlock43PC := 61.
        ].
        recoveredBlock43Step = 61 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) at: (recoveredBlock43Stack1) ifAbsent: (recoveredBlock43Stack2).
            recoveredBlock43PC := 63.
        ].
        recoveredBlock43Step = 63 ifTrue: [
            recoveredLocal1 := recoveredBlock43Stack0.
            recoveredBlock43PC := 66.
        ].
        recoveredBlock43Step = 66 ifTrue: [
            recoveredBlock43Stack0 := nil.
            recoveredBlock43PC := 67.
        ].
        recoveredBlock43Step = 67 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 70.
        ].
        recoveredBlock43Step = 70 ifTrue: [
            (recoveredBlock43Stack1 == nil) ifTrue: [recoveredBlock43PC := 83] ifFalse: [recoveredBlock43PC := 74].
        ].
        recoveredBlock43Step = 74 ifTrue: [
            recoveredBlock43PC := 75.
        ].
        recoveredBlock43Step = 75 ifTrue: [
            recoveredBlock43Stack0 := recoveredLocal2.
            recoveredBlock43PC := 78.
        ].
        recoveredBlock43Step = 78 ifTrue: [
            recoveredBlock43Stack1 := recoveredLocal1.
            recoveredBlock43PC := 81.
        ].
        recoveredBlock43Step = 81 ifTrue: [
            recoveredBlock43Stack0 := (recoveredBlock43Stack0) add: (recoveredBlock43Stack1).
            recoveredBlock43PC := 83.
        ].
        recoveredBlock43Step = 83 ifTrue: [
            recoveredBlock43Result := recoveredBlock43Stack0.
            recoveredBlock43Done := true.
        ].
    ].
    recoveredBlock43Result
].
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203fd65c; bytecode file offset 0xcf9f24"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnNameOfImageOrIcon: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) cachedResources.
    recoveredValue1 := [:recoveredBlock5Arg1 :recoveredBlock5Arg2 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) isString.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            (recoveredBlock5Stack1) ifTrue: [recoveredBlock5PC := 20] ifFalse: [recoveredBlock5PC := 40].
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg2.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 37].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 36.
        ].
        recoveredBlock5Step = 36 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 37 ifTrue: [
            recoveredBlock5PC := 89.
        ].
        recoveredBlock5Step = 40 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 43.
        ].
        recoveredBlock5Step = 43 ifTrue: [
            recoveredBlock5Stack2 := 1.
            recoveredBlock5PC := 45.
        ].
        recoveredBlock5Step = 45 ifTrue: [
            recoveredBlock5Stack3 := [].
            recoveredBlock5PC := 47.
        ].
        recoveredBlock5Step = 47 ifTrue: [
            recoveredBlock5Stack4 := [:recoveredBlock5Block47Arg1 | 
    | recoveredBlock5Block47Stack0 recoveredBlock5Block47Stack1 recoveredBlock5Block47Stack2 recoveredBlock5Block47Stack3 recoveredBlock5Block47Stack4 recoveredBlock5Block47Stack5 recoveredBlock5Block47PC recoveredBlock5Block47Step recoveredBlock5Block47Done recoveredBlock5Block47Result |
    recoveredBlock5Block47Stack0 := self.
    recoveredBlock5Block47PC := 54.
    recoveredBlock5Block47Done := false.
    [recoveredBlock5Block47Done not] whileTrue: [
        recoveredBlock5Block47Step := recoveredBlock5Block47PC.
        recoveredBlock5Block47Step = 54 ifTrue: [
            recoveredBlock5Block47Stack1 := nil.
            recoveredBlock5Block47PC := 55.
        ].
        recoveredBlock5Block47Step = 55 ifTrue: [
            recoveredBlock5Block47Stack2 := recoveredBlock5Arg2.
            recoveredBlock5Block47PC := 58.
        ].
        recoveredBlock5Block47Step = 58 ifTrue: [
            recoveredBlock5Block47Stack3 := recoveredArg1.
            recoveredBlock5Block47PC := 61.
        ].
        recoveredBlock5Block47Step = 61 ifTrue: [
            recoveredBlock5Block47Stack2 := (recoveredBlock5Block47Stack2) = (recoveredBlock5Block47Stack3).
            recoveredBlock5Block47PC := 62.
        ].
        recoveredBlock5Block47Step = 62 ifTrue: [
            (recoveredBlock5Block47Stack2) ifTrue: [recoveredBlock5Block47PC := 66] ifFalse: [recoveredBlock5Block47PC := 85].
        ].
        recoveredBlock5Block47Step = 66 ifTrue: [
            recoveredBlock5Block47PC := 67.
        ].
        recoveredBlock5Block47Step = 67 ifTrue: [
            recoveredBlock5Block47Stack1 := recoveredBlock5Arg1.
            recoveredBlock5Block47PC := 70.
        ].
        recoveredBlock5Block47Step = 70 ifTrue: [
            recoveredBlock5Block47Stack2 := 2.
            recoveredBlock5Block47PC := 72.
        ].
        recoveredBlock5Block47Step = 72 ifTrue: [
            recoveredBlock5Block47Stack3 := [].
            recoveredBlock5Block47PC := 74.
        ].
        recoveredBlock5Block47Step = 74 ifTrue: [
            recoveredBlock5Block47Stack4 := [:recoveredBlock5Block47Block74Arg1 | 
    | recoveredBlock5Block47Block74Value0 |
    recoveredBlock5Block47Block74Value0 := recoveredBlock5Block47Block74Arg1.
    ^recoveredBlock5Block47Block74Value0
].
            recoveredBlock5Block47PC := 82.
        ].
        recoveredBlock5Block47Step = 82 ifTrue: [
            recoveredBlock5Block47Stack1 := (recoveredBlock5Block47Stack1) at: (recoveredBlock5Block47Stack2) ifAbsent: (recoveredBlock5Block47Stack3) ifPresent: (recoveredBlock5Block47Stack4).
            recoveredBlock5Block47PC := 85.
        ].
        recoveredBlock5Block47Step = 85 ifTrue: [
            recoveredBlock5Block47Result := recoveredBlock5Block47Stack1.
            recoveredBlock5Block47Done := true.
        ].
    ].
    recoveredBlock5Block47Result
].
            recoveredBlock5PC := 86.
        ].
        recoveredBlock5Step = 86 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) at: (recoveredBlock5Stack2) ifAbsent: (recoveredBlock5Stack3) ifPresent: (recoveredBlock5Stack4).
            recoveredBlock5PC := 89.
        ].
        recoveredBlock5Step = 89 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) keysAndValuesDo: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20408770; bytecode file offset 0xd0505c"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIcon16: recoveredArg1 overlayedWith: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) asString.
    recoveredValue4 := (self) getOverlayedNameFor: (recoveredValue1) with: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := [
    | recoveredBlock21Local1 recoveredBlock21Local2 recoveredBlock21Value0 recoveredBlock21Value1 recoveredBlock21Value2 recoveredBlock21Value3 recoveredBlock21Value4 recoveredBlock21Value5 recoveredBlock21Value6 recoveredBlock21Value7 recoveredBlock21Value8 recoveredBlock21Value9 recoveredBlock21Value10 recoveredBlock21Value11 recoveredBlock21Value12 recoveredBlock21Value13 recoveredBlock21Value14 recoveredBlock21Value15 |
    recoveredBlock21Value0 := recoveredArg1.
    recoveredBlock21Value1 := (self) returnIcon16WithName: (recoveredBlock21Value0).
    recoveredBlock21Local2 := recoveredBlock21Value1.
    recoveredBlock21Value2 := recoveredBlock21Local2.
    recoveredBlock21Value3 := (recoveredBlock21Value2) copy.
    recoveredBlock21Value4 := recoveredArg2.
    recoveredBlock21Value5 := (self) iconAt: (recoveredBlock21Value4).
    recoveredBlock21Value6 := (recoveredBlock21Value3) getOverlayedIconWith: (recoveredBlock21Value5).
    recoveredBlock21Value7 := recoveredBlock21Value6.
    recoveredBlock21Local1 := recoveredBlock21Value7.
    recoveredBlock21Value8 := [
    | recoveredBlock21Block51Value0 recoveredBlock21Block51Value1 |
    recoveredBlock21Block51Value0 := (self) defaultIcon.
    recoveredBlock21Block51Value1 := recoveredBlock21Block51Value0.
    recoveredBlock21Local1 := recoveredBlock21Block51Value1.
    recoveredBlock21Block51Value0
].
    (recoveredBlock21Value6) ifNil: (recoveredBlock21Value8).
    recoveredBlock21Value9 := ('Kk') == ('Call_56336').
    recoveredBlock21Value10 := recoveredBlock21Local1.
    recoveredBlock21Value11 := recoveredLocal1.
    (recoveredBlock21Value10) name: (recoveredBlock21Value11).
    recoveredBlock21Value12 := (self) cachedResources.
    recoveredBlock21Value13 := recoveredLocal1.
    recoveredBlock21Value14 := recoveredBlock21Local1.
    recoveredBlock21Value15 := (recoveredBlock21Value12) at: (recoveredBlock21Value13) put: (recoveredBlock21Value14).
    recoveredBlock21Value15
].
    recoveredValue7 := (self) iconAt: (recoveredValue5) ifAbsent: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x2044acb8; bytecode file offset 0xd475a0"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIcon16: recoveredArg1 overlayedWithIconArray: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) returnIcon16WithName: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [:block280ff028Arg1 | 
    | block280ff028Value0 block280ff028Value1 |
    block280ff028Value0 := block280ff028Arg1.
    block280ff028Value1 := (block280ff028Value0) asString.
    block280ff028Value1
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) collect: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) getOverlayedNameFor: (recoveredStack1) withArray: (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock44Local1 recoveredBlock44Local2 recoveredBlock44Value0 recoveredBlock44Value1 recoveredBlock44Value2 recoveredBlock44Value3 recoveredBlock44Value4 recoveredBlock44Value5 recoveredBlock44Value6 |
    recoveredBlock44Value0 := recoveredArg1.
    recoveredBlock44Local2 := recoveredBlock44Value0.
    recoveredBlock44Value1 := recoveredArg2.
    recoveredBlock44Value2 := [:recoveredBlock44Block59Arg1 | 
    | recoveredBlock44Block59Value0 recoveredBlock44Block59Value1 recoveredBlock44Block59Value2 recoveredBlock44Block59Value3 recoveredBlock44Block59Value4 recoveredBlock44Block59Value5 recoveredBlock44Block59Value6 recoveredBlock44Block59Value7 recoveredBlock44Block59Value8 |
    recoveredBlock44Block59Value0 := recoveredBlock44Local2.
    recoveredBlock44Block59Value1 := recoveredBlock44Block59Arg1.
    recoveredBlock44Block59Value2 := (recoveredBlock44Block59Value1) asString.
    recoveredBlock44Block59Value3 := (self) returnIcon16: (recoveredBlock44Block59Value0) overlayedWith: (recoveredBlock44Block59Value2).
    recoveredBlock44Local1 := recoveredBlock44Block59Value3.
    recoveredBlock44Block59Value4 := recoveredBlock44Local2.
    recoveredBlock44Block59Value5 := recoveredBlock44Block59Arg1.
    recoveredBlock44Block59Value6 := (recoveredBlock44Block59Value5) asString.
    recoveredBlock44Block59Value7 := (self) getOverlayedNameFor: (recoveredBlock44Block59Value4) with: (recoveredBlock44Block59Value6).
    recoveredBlock44Block59Value8 := recoveredBlock44Block59Value7.
    recoveredBlock44Local2 := recoveredBlock44Block59Value8.
    recoveredBlock44Block59Value7
].
    (recoveredBlock44Value1) do: (recoveredBlock44Value2).
    recoveredBlock44Value3 := ('Kk') == ('Call_56336').
    recoveredBlock44Value4 := recoveredBlock44Local1.
    recoveredBlock44Value5 := recoveredBlock44Local2.
    (recoveredBlock44Value4) name: (recoveredBlock44Value5).
    recoveredBlock44Value6 := recoveredBlock44Local1.
    ^recoveredBlock44Value6
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20453890; bytecode file offset 0xd50178"
!RBWindowsResourceManager methodsFor: 'recovered'!
buildImageFromFileAt: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Muzaffar'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EHI_84703'.
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
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := CfsFileDescriptor.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := ORDONLY.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2) oflag: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNotAccessable: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := CgImageFileFormat.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredLocal1.
    (recoveredBlock51Value0) close.
    recoveredBlock51Value1 := recoveredArg2.
    recoveredBlock51Value2 := (recoveredBlock51Value1) value.
    ^recoveredBlock51Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatMatchingFileHandle: (recoveredStack1) atOffset: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFromFileHandle: (recoveredStack1) atOffset: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20453940; bytecode file offset 0xd5022c"
!RBWindowsResourceManager methodsFor: 'recovered'!
buildImageFromFileNamed: recoveredArg1 ifAbsent: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) path.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := '.bmp'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) asUppercase.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ORDONLY.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileNotAccessable: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 44].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := CgImageFileFormat.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := [
    | recoveredBlock51Value0 recoveredBlock51Value1 recoveredBlock51Value2 |
    recoveredBlock51Value0 := recoveredLocal1.
    (recoveredBlock51Value0) close.
    recoveredBlock51Value1 := recoveredArg2.
    recoveredBlock51Value2 := (recoveredBlock51Value1) value.
    ^recoveredBlock51Value2
].
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) formatMatchingFileHandle: (recoveredStack1) atOffset: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFromFileHandle: (recoveredStack1) atOffset: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20468f58; bytecode file offset 0xd65848"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIcon16WithName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAtom.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) asUppercase.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := '16'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) cachedIconAtIfAbsentNil: (recoveredStack1).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconAtIfAbsentNil: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultIconScaledTo: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) width.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 70] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) height.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := cachedResources.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := 16.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 16.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) @ (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) scaledTo: (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) name: (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := cachedResources.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20482700; bytecode file offset 0xd7f000"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconGrayed: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) , ('_GRAYED').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Local3 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) shapeImage.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 29.
        ].
        recoveredBlock17Step = 29 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) depth.
            recoveredBlock17PC := 32.
        ].
        recoveredBlock17Step = 32 ifTrue: [
            recoveredBlock17Stack2 := 24.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) < (recoveredBlock17Stack2).
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 38] ifFalse: [recoveredBlock17PC := 94].
        ].
        recoveredBlock17Step = 38 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) depth.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack2 := 8.
            recoveredBlock17PC := 43.
        ].
        recoveredBlock17Step = 43 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) >= (recoveredBlock17Stack2).
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            (recoveredBlock17Stack1) ifTrue: [recoveredBlock17PC := 48] ifFalse: [recoveredBlock17PC := 66].
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 49.
        ].
        recoveredBlock17Step = 49 ifTrue: [
            recoveredBlock17Stack2 := CgIndexedPalette.
            recoveredBlock17PC := 51.
        ].
        recoveredBlock17Step = 51 ifTrue: [
            recoveredBlock17Stack3 := 256.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack4 := #[102 102 102 102 102 102 230 63].
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack5 := #[92 143 194 245 40 92 239 63].
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) grayRamp: (recoveredBlock17Stack3) fromPercent: (recoveredBlock17Stack4) toPercent: (recoveredBlock17Stack5).
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            (recoveredBlock17Stack1) palette: (recoveredBlock17Stack2).
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local2.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack2 := CgIndexedPalette.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack3 := 16.
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Stack4 := #[51 51 51 51 51 51 227 63].
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack5 := #[92 143 194 245 40 92 239 63].
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) grayRamp: (recoveredBlock17Stack3) fromPercent: (recoveredBlock17Stack4) toPercent: (recoveredBlock17Stack5).
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            (recoveredBlock17Stack1) palette: (recoveredBlock17Stack2).
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            recoveredBlock17Stack1 := EtasIcon.
            recoveredBlock17PC := 82.
        ].
        recoveredBlock17Step = 82 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) maskImage.
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) fromImage: (recoveredBlock17Stack2) maskImage: (recoveredBlock17Stack3).
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 91.
        ].
        recoveredBlock17Step = 91 ifTrue: [
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 94 ifTrue: [
            recoveredBlock17Stack1 := EtasIcon.
            recoveredBlock17PC := 96.
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 97.
        ].
        recoveredBlock17Step = 97 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) deepCopy.
            recoveredBlock17PC := 99.
        ].
        recoveredBlock17Step = 99 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) transformToGrey.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 104.
        ].
        recoveredBlock17Step = 104 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) maskImage.
            recoveredBlock17PC := 106.
        ].
        recoveredBlock17Step = 106 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) fromImage: (recoveredBlock17Stack2) maskImage: (recoveredBlock17Stack3).
            recoveredBlock17PC := 108.
        ].
        recoveredBlock17Step = 108 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local3.
            recoveredBlock17PC := 110.
        ].
        recoveredBlock17Step = 110 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 113.
        ].
        recoveredBlock17Step = 113 ifTrue: [
            (recoveredBlock17Stack1) name: (recoveredBlock17Stack2).
            recoveredBlock17PC := 115.
        ].
        recoveredBlock17Step = 115 ifTrue: [
            recoveredBlock17Stack1 := cachedResources.
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 120.
        ].
        recoveredBlock17Step = 120 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local3.
            recoveredBlock17PC := 121.
        ].
        recoveredBlock17Step = 121 ifTrue: [
            (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 123.
        ].
        recoveredBlock17Step = 123 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local3.
            recoveredBlock17PC := 124.
        ].
        recoveredBlock17Step = 124 ifTrue: [
            ^recoveredBlock17Stack1
        ].
    ].
    recoveredBlock17Result
].
    recoveredValue5 := (self) iconAt: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x2049148c; bytecode file offset 0xd8dd84"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconShaped: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) , ('_SHAPED').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Local3 recoveredBlock17Local4 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := Array.
            recoveredBlock17PC := 26.
        ].
        recoveredBlock17Step = 26 ifTrue: [
            recoveredBlock17Stack2 := 16.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) new: (recoveredBlock17Stack2).
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 31.
        ].
        recoveredBlock17Step = 31 ifTrue: [
            recoveredBlock17Stack1 := 0.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 34.
        ].
        recoveredBlock17Step = 34 ifTrue: [
            recoveredBlock17Stack1 := 14.
            recoveredBlock17PC := 36.
        ].
        recoveredBlock17Step = 36 ifTrue: [
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 41.
        ].
        recoveredBlock17Step = 41 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack4 := CgRGBColor.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) darkGray.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            (recoveredBlock17Stack2) at: (recoveredBlock17Stack3) put: (recoveredBlock17Stack4).
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            (recoveredBlock17Stack1 isInteger and: [recoveredBlock17Local1 isInteger]) ifTrue: [(recoveredBlock17Local1 + 1 <= recoveredBlock17Stack1) ifTrue: [recoveredBlock17Local1 := recoveredBlock17Local1 + 1. recoveredBlock17PC := 40] ifFalse: [recoveredBlock17Local1 := nil. recoveredBlock17PC := 62]] ifFalse: [recoveredBlock17PC := 52].
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 53.
        ].
        recoveredBlock17Step = 53 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) + (1).
            recoveredBlock17PC := 55.
        ].
        recoveredBlock17Step = 55 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Stack3.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack4.
            recoveredBlock17PC := 57.
        ].
        recoveredBlock17Step = 57 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) < (recoveredBlock17Stack3).
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 60] ifFalse: [recoveredBlock17PC := 40].
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack2 := nil.
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 62.
        ].
        recoveredBlock17Step = 62 ifTrue: [
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Stack1 := 14.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 66.
        ].
        recoveredBlock17Step = 66 ifTrue: [
            recoveredBlock17Stack1 := 16.
            recoveredBlock17PC := 68.
        ].
        recoveredBlock17Step = 68 ifTrue: [
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 72 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 74.
        ].
        recoveredBlock17Step = 74 ifTrue: [
            recoveredBlock17Stack4 := CgRGBColor.
            recoveredBlock17PC := 76.
        ].
        recoveredBlock17Step = 76 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) lightGray.
            recoveredBlock17PC := 78.
        ].
        recoveredBlock17Step = 78 ifTrue: [
            (recoveredBlock17Stack2) at: (recoveredBlock17Stack3) put: (recoveredBlock17Stack4).
            recoveredBlock17PC := 80.
        ].
        recoveredBlock17Step = 80 ifTrue: [
            (recoveredBlock17Stack1 isInteger and: [recoveredBlock17Local1 isInteger]) ifTrue: [(recoveredBlock17Local1 + 1 <= recoveredBlock17Stack1) ifTrue: [recoveredBlock17Local1 := recoveredBlock17Local1 + 1. recoveredBlock17PC := 72] ifFalse: [recoveredBlock17Local1 := nil. recoveredBlock17PC := 94]] ifFalse: [recoveredBlock17PC := 84].
        ].
        recoveredBlock17Step = 84 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 86.
        ].
        recoveredBlock17Step = 86 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) + (1).
            recoveredBlock17PC := 87.
        ].
        recoveredBlock17Step = 87 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Stack3.
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack4.
            recoveredBlock17PC := 89.
        ].
        recoveredBlock17Step = 89 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) < (recoveredBlock17Stack3).
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 92] ifFalse: [recoveredBlock17PC := 72].
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Stack2 := nil.
            recoveredBlock17PC := 93.
        ].
        recoveredBlock17Step = 93 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 94.
        ].
        recoveredBlock17Step = 94 ifTrue: [
            recoveredBlock17PC := 95.
        ].
        recoveredBlock17Step = 95 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 98.
        ].
        recoveredBlock17Step = 98 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) shapeImage.
            recoveredBlock17PC := 100.
        ].
        recoveredBlock17Step = 100 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 101.
        ].
        recoveredBlock17Step = 101 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local3.
            recoveredBlock17PC := 102.
        ].
        recoveredBlock17Step = 102 ifTrue: [
            recoveredBlock17Stack2 := CgIndexedPalette.
            recoveredBlock17PC := 104.
        ].
        recoveredBlock17Step = 104 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local2.
            recoveredBlock17PC := 105.
        ].
        recoveredBlock17Step = 105 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) colors: (recoveredBlock17Stack3).
            recoveredBlock17PC := 107.
        ].
        recoveredBlock17Step = 107 ifTrue: [
            (recoveredBlock17Stack1) palette: (recoveredBlock17Stack2).
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            recoveredBlock17Stack1 := EtasIcon.
            recoveredBlock17PC := 111.
        ].
        recoveredBlock17Step = 111 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local3.
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 112 ifTrue: [
            recoveredBlock17Stack3 := recoveredArg1.
            recoveredBlock17PC := 115.
        ].
        recoveredBlock17Step = 115 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) maskImage.
            recoveredBlock17PC := 117.
        ].
        recoveredBlock17Step = 117 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) fromImage: (recoveredBlock17Stack2) maskImage: (recoveredBlock17Stack3).
            recoveredBlock17PC := 119.
        ].
        recoveredBlock17Step = 119 ifTrue: [
            recoveredBlock17Local4 := recoveredBlock17Stack1.
            recoveredBlock17PC := 120.
        ].
        recoveredBlock17Step = 120 ifTrue: [
            recoveredBlock17Stack1 := cachedResources.
            recoveredBlock17PC := 122.
        ].
        recoveredBlock17Step = 122 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 125.
        ].
        recoveredBlock17Step = 125 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local4.
            recoveredBlock17PC := 126.
        ].
        recoveredBlock17Step = 126 ifTrue: [
            (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 128.
        ].
        recoveredBlock17Step = 128 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local4.
            recoveredBlock17PC := 129.
        ].
        recoveredBlock17Step = 129 ifTrue: [
            ^recoveredBlock17Stack1
        ].
    ].
    recoveredBlock17Result
].
    recoveredValue5 := (self) iconAt: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x204c2b38; bytecode file offset 0xdbf434"
!RBWindowsResourceManager methodsFor: 'recovered'!
loadIconsFromIconFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CgWinICOFileFormat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAbsolutePath.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := '.ico'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) endsWith: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := '.ico'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromFile: (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := 'Bugfix'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) hasErrorOccurred.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := [:recoveredBlock111Arg1 :recoveredBlock111Arg2 | 
    | recoveredBlock111Value0 recoveredBlock111Value1 recoveredBlock111Value2 recoveredBlock111Value3 recoveredBlock111Value4 recoveredBlock111Value5 recoveredBlock111Value6 recoveredBlock111Value7 recoveredBlock111Value8 recoveredBlock111Value9 |
    recoveredBlock111Value0 := recoveredLocal1.
    recoveredBlock111Value1 := recoveredBlock111Arg1.
    recoveredBlock111Value2 := recoveredArg1.
    recoveredBlock111Value3 := (recoveredBlock111Value2) fileName.
    recoveredBlock111Value4 := (recoveredBlock111Value3) , ('_').
    recoveredBlock111Value5 := recoveredBlock111Arg2.
    recoveredBlock111Value6 := (recoveredBlock111Value5) asString.
    recoveredBlock111Value7 := (recoveredBlock111Value4) , (recoveredBlock111Value6).
    recoveredBlock111Value8 := (recoveredBlock111Value1) asEtasCgIconNamed: (recoveredBlock111Value7).
    recoveredBlock111Value9 := (recoveredBlock111Value0) add: (recoveredBlock111Value8).
    recoveredBlock111Value9
].
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := (recoveredStack1) doWithIndex: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20565724; bytecode file offset 0xe6204c"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIcons16WithNames: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := [:recoveredBlock17Arg1 | 
    | recoveredBlock17Value0 recoveredBlock17Value1 recoveredBlock17Value2 recoveredBlock17Value3 recoveredBlock17Value4 recoveredBlock17Value5 |
    recoveredBlock17Value0 := (self) cachedResources.
    recoveredBlock17Value1 := (recoveredBlock17Value0) keys.
    recoveredBlock17Value2 := recoveredBlock17Arg1.
    recoveredBlock17Value3 := (recoveredBlock17Value2) , ('16').
    recoveredBlock17Value4 := (recoveredBlock17Value1) includes: (recoveredBlock17Value3).
    recoveredBlock17Value5 := (recoveredBlock17Value4) not.
    recoveredBlock17Value5
].
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := resourceDLLs.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) copy.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := EtasIcon.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := (recoveredStack3) first.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) fromResources: (recoveredStack2) fileName: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := [:recoveredBlock75Arg1 | 
    | recoveredBlock75Local1 recoveredBlock75Local2 recoveredBlock75Stack0 recoveredBlock75Stack1 recoveredBlock75Stack2 recoveredBlock75Stack3 recoveredBlock75Stack4 recoveredBlock75PC recoveredBlock75Step recoveredBlock75Done recoveredBlock75Result |
    recoveredBlock75Stack0 := self.
    recoveredBlock75PC := 82.
    recoveredBlock75Done := false.
    [recoveredBlock75Done not] whileTrue: [
        recoveredBlock75Step := recoveredBlock75PC.
        recoveredBlock75Step = 82 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 83.
        ].
        recoveredBlock75Step = 83 ifTrue: [
            (recoveredBlock75Stack1 == nil) ifTrue: [recoveredBlock75PC := 123] ifFalse: [recoveredBlock75PC := 86].
        ].
        recoveredBlock75Step = 86 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal5.
            recoveredBlock75PC := 89.
        ].
        recoveredBlock75Step = 89 ifTrue: [
            recoveredBlock75Stack2 := recoveredLocal4.
            recoveredBlock75PC := 92.
        ].
        recoveredBlock75Step = 92 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) at: (recoveredBlock75Stack2).
            recoveredBlock75PC := 94.
        ].
        recoveredBlock75Step = 94 ifTrue: [
            recoveredBlock75Stack2 := '16'.
            recoveredBlock75PC := 96.
        ].
        recoveredBlock75Step = 96 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) , (recoveredBlock75Stack2).
            recoveredBlock75PC := 98.
        ].
        recoveredBlock75Step = 98 ifTrue: [
            recoveredBlock75Local2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 99.
        ].
        recoveredBlock75Step = 99 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Arg1.
            recoveredBlock75PC := 100.
        ].
        recoveredBlock75Step = 100 ifTrue: [
            recoveredBlock75Stack2 := 16.
            recoveredBlock75PC := 102.
        ].
        recoveredBlock75Step = 102 ifTrue: [
            recoveredBlock75Stack3 := 16.
            recoveredBlock75PC := 104.
        ].
        recoveredBlock75Step = 104 ifTrue: [
            recoveredBlock75Stack2 := (recoveredBlock75Stack2) @ (recoveredBlock75Stack3).
            recoveredBlock75PC := 106.
        ].
        recoveredBlock75Step = 106 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) scaledTo: (recoveredBlock75Stack2).
            recoveredBlock75PC := 108.
        ].
        recoveredBlock75Step = 108 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack1.
            recoveredBlock75PC := 109.
        ].
        recoveredBlock75Step = 109 ifTrue: [
            recoveredBlock75Stack1 := recoveredBlock75Local1.
            recoveredBlock75PC := 110.
        ].
        recoveredBlock75Step = 110 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local2.
            recoveredBlock75PC := 111.
        ].
        recoveredBlock75Step = 111 ifTrue: [
            (recoveredBlock75Stack1) name: (recoveredBlock75Stack2).
            recoveredBlock75PC := 113.
        ].
        recoveredBlock75Step = 113 ifTrue: [
            recoveredBlock75Stack1 := self.
            recoveredBlock75PC := 114.
        ].
        recoveredBlock75Step = 114 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) cachedResources.
            recoveredBlock75PC := 115.
        ].
        recoveredBlock75Step = 115 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Local2.
            recoveredBlock75PC := 116.
        ].
        recoveredBlock75Step = 116 ifTrue: [
            recoveredBlock75Stack3 := recoveredBlock75Local1.
            recoveredBlock75PC := 117.
        ].
        recoveredBlock75Step = 117 ifTrue: [
            (recoveredBlock75Stack1) at: (recoveredBlock75Stack2) put: (recoveredBlock75Stack3).
            recoveredBlock75PC := 119.
        ].
        recoveredBlock75Step = 119 ifTrue: [
            recoveredBlock75Stack1 := nil.
            recoveredBlock75PC := 120.
        ].
        recoveredBlock75Step = 120 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 121.
        ].
        recoveredBlock75Step = 121 ifTrue: [
            recoveredBlock75Local2 := recoveredBlock75Stack2.
            recoveredBlock75PC := 122.
        ].
        recoveredBlock75Step = 122 ifTrue: [
            recoveredBlock75Local1 := recoveredBlock75Stack1.
            recoveredBlock75PC := 123.
        ].
        recoveredBlock75Step = 123 ifTrue: [
            recoveredBlock75Stack1 := recoveredLocal4.
            recoveredBlock75PC := 126.
        ].
        recoveredBlock75Step = 126 ifTrue: [
            recoveredBlock75Stack1 := (recoveredBlock75Stack1) + (1).
            recoveredBlock75PC := 127.
        ].
        recoveredBlock75Step = 127 ifTrue: [
            recoveredBlock75Stack2 := recoveredBlock75Stack1.
            recoveredBlock75PC := 128.
        ].
        recoveredBlock75Step = 128 ifTrue: [
            recoveredLocal4 := recoveredBlock75Stack2.
            recoveredBlock75PC := 131.
        ].
        recoveredBlock75Step = 131 ifTrue: [
            recoveredBlock75Result := recoveredBlock75Stack1.
            recoveredBlock75Done := true.
        ].
    ].
    recoveredBlock75Result
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) removeFirst.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := 'Shikhar'.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'EHI65204'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 173] ifFalse: [recoveredPC := 152].
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack2 := [:block28111148Arg1 | 
    | block28111148Stack0 block28111148Stack1 block28111148Stack2 block28111148Stack3 block28111148PC block28111148Step block28111148Done block28111148Result |
    block28111148Stack0 := self.
    block28111148PC := 4.
    block28111148Done := false.
    [block28111148Done not] whileTrue: [
        block28111148Step := block28111148PC.
        block28111148Step = 4 ifTrue: [
            block28111148Stack1 := nil.
            block28111148PC := 5.
        ].
        block28111148Step = 5 ifTrue: [
            block28111148Stack2 := block28111148Arg1.
            block28111148PC := 6.
        ].
        block28111148Step = 6 ifTrue: [
            (block28111148Stack2 == nil) ifTrue: [block28111148PC := 14] ifFalse: [block28111148PC := 10].
        ].
        block28111148Step = 10 ifTrue: [
            block28111148PC := 11.
        ].
        block28111148Step = 11 ifTrue: [
            block28111148Stack1 := block28111148Arg1.
            block28111148PC := 12.
        ].
        block28111148Step = 12 ifTrue: [
            block28111148Stack1 := (block28111148Stack1) freeIcon.
            block28111148PC := 14.
        ].
        block28111148Step = 14 ifTrue: [
            block28111148Result := block28111148Stack1.
            block28111148Done := true.
        ].
    ].
    block28111148Result
].
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 190] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack2 := [:recoveredBlock193Arg1 | 
    | recoveredBlock193Value0 recoveredBlock193Value1 recoveredBlock193Value2 recoveredBlock193Value3 recoveredBlock193Value4 recoveredBlock193Value5 recoveredBlock193Value6 recoveredBlock193Value7 |
    recoveredBlock193Value0 := recoveredLocal3.
    recoveredBlock193Value1 := (self) cachedResources.
    recoveredBlock193Value2 := recoveredBlock193Arg1.
    recoveredBlock193Value3 := (recoveredBlock193Value2) name.
    recoveredBlock193Value4 := (recoveredBlock193Value3) , ('16').
    recoveredBlock193Value5 := [
    | recoveredBlock193Block212Value0 recoveredBlock193Block212Value1 |
    recoveredBlock193Block212Value0 := (16) @ (16).
    recoveredBlock193Block212Value1 := (self) defaultIconScaledTo: (recoveredBlock193Block212Value0).
    recoveredBlock193Block212Value1
].
    recoveredBlock193Value6 := (recoveredBlock193Value1) at: (recoveredBlock193Value4) ifAbsent: (recoveredBlock193Value5).
    recoveredBlock193Value7 := (recoveredBlock193Value0) addLast: (recoveredBlock193Value6).
    recoveredBlock193Value7
].
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2058b4c0; bytecode file offset 0xe87dd0"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconColored: recoveredArg1 color: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) red.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) green.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) blue.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := '_'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock86Local1 recoveredBlock86Local2 recoveredBlock86Local3 recoveredBlock86Local4 recoveredBlock86Stack0 recoveredBlock86Stack1 recoveredBlock86Stack2 recoveredBlock86Stack3 recoveredBlock86Stack4 recoveredBlock86Stack5 recoveredBlock86PC recoveredBlock86Step recoveredBlock86Done recoveredBlock86Result |
    recoveredBlock86Stack0 := self.
    recoveredBlock86PC := 92.
    recoveredBlock86Done := false.
    [recoveredBlock86Done not] whileTrue: [
        recoveredBlock86Step := recoveredBlock86PC.
        recoveredBlock86Step = 92 ifTrue: [
            recoveredBlock86Stack1 := recoveredArg1.
            recoveredBlock86PC := 95.
        ].
        recoveredBlock86Step = 95 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) shapeImage.
            recoveredBlock86PC := 97.
        ].
        recoveredBlock86Step = 97 ifTrue: [
            recoveredBlock86Local3 := recoveredBlock86Stack1.
            recoveredBlock86PC := 98.
        ].
        recoveredBlock86Step = 98 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Local3.
            recoveredBlock86PC := 99.
        ].
        recoveredBlock86Step = 99 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) depth.
            recoveredBlock86PC := 101.
        ].
        recoveredBlock86Step = 101 ifTrue: [
            recoveredBlock86Stack2 := 24.
            recoveredBlock86PC := 103.
        ].
        recoveredBlock86Step = 103 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) < (recoveredBlock86Stack2).
            recoveredBlock86PC := 104.
        ].
        recoveredBlock86Step = 104 ifTrue: [
            (recoveredBlock86Stack1) ifTrue: [recoveredBlock86PC := 108] ifFalse: [recoveredBlock86PC := 240].
        ].
        recoveredBlock86Step = 108 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Local3.
            recoveredBlock86PC := 109.
        ].
        recoveredBlock86Step = 109 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) depth.
            recoveredBlock86PC := 111.
        ].
        recoveredBlock86Step = 111 ifTrue: [
            recoveredBlock86Stack2 := 8.
            recoveredBlock86PC := 113.
        ].
        recoveredBlock86Step = 113 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) >= (recoveredBlock86Stack2).
            recoveredBlock86PC := 114.
        ].
        recoveredBlock86Step = 114 ifTrue: [
            (recoveredBlock86Stack1) ifTrue: [recoveredBlock86PC := 118] ifFalse: [recoveredBlock86PC := 172].
        ].
        recoveredBlock86Step = 118 ifTrue: [
            recoveredBlock86Stack1 := Array.
            recoveredBlock86PC := 120.
        ].
        recoveredBlock86Step = 120 ifTrue: [
            recoveredBlock86Stack2 := 256.
            recoveredBlock86PC := 124.
        ].
        recoveredBlock86Step = 124 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) new: (recoveredBlock86Stack2).
            recoveredBlock86PC := 126.
        ].
        recoveredBlock86Step = 126 ifTrue: [
            recoveredBlock86Local2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 127.
        ].
        recoveredBlock86Step = 127 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Local2.
            recoveredBlock86PC := 128.
        ].
        recoveredBlock86Step = 128 ifTrue: [
            recoveredBlock86Stack2 := 1.
            recoveredBlock86PC := 130.
        ].
        recoveredBlock86Step = 130 ifTrue: [
            recoveredBlock86Stack3 := CgRGBColor.
            recoveredBlock86PC := 132.
        ].
        recoveredBlock86Step = 132 ifTrue: [
            recoveredBlock86Stack3 := (recoveredBlock86Stack3) white.
            recoveredBlock86PC := 134.
        ].
        recoveredBlock86Step = 134 ifTrue: [
            (recoveredBlock86Stack1) at: (recoveredBlock86Stack2) put: (recoveredBlock86Stack3).
            recoveredBlock86PC := 136.
        ].
        recoveredBlock86Step = 136 ifTrue: [
            recoveredBlock86Stack1 := 1.
            recoveredBlock86PC := 138.
        ].
        recoveredBlock86Step = 138 ifTrue: [
            recoveredBlock86Local1 := recoveredBlock86Stack1.
            recoveredBlock86PC := 139.
        ].
        recoveredBlock86Step = 139 ifTrue: [
            recoveredBlock86Stack1 := 256.
            recoveredBlock86PC := 142.
        ].
        recoveredBlock86Step = 142 ifTrue: [
            recoveredBlock86PC := 153.
        ].
        recoveredBlock86Step = 146 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Local2.
            recoveredBlock86PC := 147.
        ].
        recoveredBlock86Step = 147 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Local1.
            recoveredBlock86PC := 148.
        ].
        recoveredBlock86Step = 148 ifTrue: [
            recoveredBlock86Stack4 := recoveredArg2.
            recoveredBlock86PC := 151.
        ].
        recoveredBlock86Step = 151 ifTrue: [
            (recoveredBlock86Stack2) at: (recoveredBlock86Stack3) put: (recoveredBlock86Stack4).
            recoveredBlock86PC := 153.
        ].
        recoveredBlock86Step = 153 ifTrue: [
            (recoveredBlock86Stack1 isInteger and: [recoveredBlock86Local1 isInteger]) ifTrue: [(recoveredBlock86Local1 + 1 <= recoveredBlock86Stack1) ifTrue: [recoveredBlock86Local1 := recoveredBlock86Local1 + 1. recoveredBlock86PC := 146] ifFalse: [recoveredBlock86Local1 := nil. recoveredBlock86PC := 167]] ifFalse: [recoveredBlock86PC := 157].
        ].
        recoveredBlock86Step = 157 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 158.
        ].
        recoveredBlock86Step = 158 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Local1.
            recoveredBlock86PC := 159.
        ].
        recoveredBlock86Step = 159 ifTrue: [
            recoveredBlock86Stack3 := (recoveredBlock86Stack3) + (1).
            recoveredBlock86PC := 160.
        ].
        recoveredBlock86Step = 160 ifTrue: [
            recoveredBlock86Stack4 := recoveredBlock86Stack3.
            recoveredBlock86PC := 161.
        ].
        recoveredBlock86Step = 161 ifTrue: [
            recoveredBlock86Local1 := recoveredBlock86Stack4.
            recoveredBlock86PC := 162.
        ].
        recoveredBlock86Step = 162 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) < (recoveredBlock86Stack3).
            recoveredBlock86PC := 163.
        ].
        recoveredBlock86Step = 163 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 165] ifFalse: [recoveredBlock86PC := 146].
        ].
        recoveredBlock86Step = 165 ifTrue: [
            recoveredBlock86Stack2 := nil.
            recoveredBlock86PC := 166.
        ].
        recoveredBlock86Step = 166 ifTrue: [
            recoveredBlock86Local1 := recoveredBlock86Stack2.
            recoveredBlock86PC := 167.
        ].
        recoveredBlock86Step = 167 ifTrue: [
            recoveredBlock86PC := 168.
        ].
        recoveredBlock86Step = 168 ifTrue: [
            recoveredBlock86PC := 218.
        ].
        recoveredBlock86Step = 172 ifTrue: [
            recoveredBlock86Stack1 := Array.
            recoveredBlock86PC := 174.
        ].
        recoveredBlock86Step = 174 ifTrue: [
            recoveredBlock86Stack2 := 16.
            recoveredBlock86PC := 176.
        ].
        recoveredBlock86Step = 176 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) new: (recoveredBlock86Stack2).
            recoveredBlock86PC := 178.
        ].
        recoveredBlock86Step = 178 ifTrue: [
            recoveredBlock86Local2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 179.
        ].
        recoveredBlock86Step = 179 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Local2.
            recoveredBlock86PC := 180.
        ].
        recoveredBlock86Step = 180 ifTrue: [
            recoveredBlock86Stack2 := 1.
            recoveredBlock86PC := 182.
        ].
        recoveredBlock86Step = 182 ifTrue: [
            recoveredBlock86Stack3 := CgRGBColor.
            recoveredBlock86PC := 184.
        ].
        recoveredBlock86Step = 184 ifTrue: [
            recoveredBlock86Stack3 := (recoveredBlock86Stack3) white.
            recoveredBlock86PC := 186.
        ].
        recoveredBlock86Step = 186 ifTrue: [
            (recoveredBlock86Stack1) at: (recoveredBlock86Stack2) put: (recoveredBlock86Stack3).
            recoveredBlock86PC := 188.
        ].
        recoveredBlock86Step = 188 ifTrue: [
            recoveredBlock86Stack1 := 1.
            recoveredBlock86PC := 190.
        ].
        recoveredBlock86Step = 190 ifTrue: [
            recoveredBlock86Local1 := recoveredBlock86Stack1.
            recoveredBlock86PC := 191.
        ].
        recoveredBlock86Step = 191 ifTrue: [
            recoveredBlock86Stack1 := 16.
            recoveredBlock86PC := 193.
        ].
        recoveredBlock86Step = 193 ifTrue: [
            recoveredBlock86PC := 203.
        ].
        recoveredBlock86Step = 196 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Local2.
            recoveredBlock86PC := 197.
        ].
        recoveredBlock86Step = 197 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Local1.
            recoveredBlock86PC := 198.
        ].
        recoveredBlock86Step = 198 ifTrue: [
            recoveredBlock86Stack4 := recoveredArg2.
            recoveredBlock86PC := 201.
        ].
        recoveredBlock86Step = 201 ifTrue: [
            (recoveredBlock86Stack2) at: (recoveredBlock86Stack3) put: (recoveredBlock86Stack4).
            recoveredBlock86PC := 203.
        ].
        recoveredBlock86Step = 203 ifTrue: [
            (recoveredBlock86Stack1 isInteger and: [recoveredBlock86Local1 isInteger]) ifTrue: [(recoveredBlock86Local1 + 1 <= recoveredBlock86Stack1) ifTrue: [recoveredBlock86Local1 := recoveredBlock86Local1 + 1. recoveredBlock86PC := 196] ifFalse: [recoveredBlock86Local1 := nil. recoveredBlock86PC := 217]] ifFalse: [recoveredBlock86PC := 207].
        ].
        recoveredBlock86Step = 207 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Stack1.
            recoveredBlock86PC := 208.
        ].
        recoveredBlock86Step = 208 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Local1.
            recoveredBlock86PC := 209.
        ].
        recoveredBlock86Step = 209 ifTrue: [
            recoveredBlock86Stack3 := (recoveredBlock86Stack3) + (1).
            recoveredBlock86PC := 210.
        ].
        recoveredBlock86Step = 210 ifTrue: [
            recoveredBlock86Stack4 := recoveredBlock86Stack3.
            recoveredBlock86PC := 211.
        ].
        recoveredBlock86Step = 211 ifTrue: [
            recoveredBlock86Local1 := recoveredBlock86Stack4.
            recoveredBlock86PC := 212.
        ].
        recoveredBlock86Step = 212 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) < (recoveredBlock86Stack3).
            recoveredBlock86PC := 213.
        ].
        recoveredBlock86Step = 213 ifTrue: [
            (recoveredBlock86Stack2) ifTrue: [recoveredBlock86PC := 215] ifFalse: [recoveredBlock86PC := 196].
        ].
        recoveredBlock86Step = 215 ifTrue: [
            recoveredBlock86Stack2 := nil.
            recoveredBlock86PC := 216.
        ].
        recoveredBlock86Step = 216 ifTrue: [
            recoveredBlock86Local1 := recoveredBlock86Stack2.
            recoveredBlock86PC := 217.
        ].
        recoveredBlock86Step = 217 ifTrue: [
            recoveredBlock86PC := 218.
        ].
        recoveredBlock86Step = 218 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Local3.
            recoveredBlock86PC := 219.
        ].
        recoveredBlock86Step = 219 ifTrue: [
            recoveredBlock86Stack2 := CgIndexedPalette.
            recoveredBlock86PC := 221.
        ].
        recoveredBlock86Step = 221 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Local2.
            recoveredBlock86PC := 222.
        ].
        recoveredBlock86Step = 222 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) colors: (recoveredBlock86Stack3).
            recoveredBlock86PC := 224.
        ].
        recoveredBlock86Step = 224 ifTrue: [
            (recoveredBlock86Stack1) palette: (recoveredBlock86Stack2).
            recoveredBlock86PC := 226.
        ].
        recoveredBlock86Step = 226 ifTrue: [
            recoveredBlock86Stack1 := EtasIcon.
            recoveredBlock86PC := 228.
        ].
        recoveredBlock86Step = 228 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Local3.
            recoveredBlock86PC := 229.
        ].
        recoveredBlock86Step = 229 ifTrue: [
            recoveredBlock86Stack3 := recoveredArg1.
            recoveredBlock86PC := 232.
        ].
        recoveredBlock86Step = 232 ifTrue: [
            recoveredBlock86Stack3 := (recoveredBlock86Stack3) maskImage.
            recoveredBlock86PC := 234.
        ].
        recoveredBlock86Step = 234 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) fromImage: (recoveredBlock86Stack2) maskImage: (recoveredBlock86Stack3).
            recoveredBlock86PC := 236.
        ].
        recoveredBlock86Step = 236 ifTrue: [
            recoveredBlock86Local4 := recoveredBlock86Stack1.
            recoveredBlock86PC := 237.
        ].
        recoveredBlock86Step = 237 ifTrue: [
            recoveredBlock86PC := 258.
        ].
        recoveredBlock86Step = 240 ifTrue: [
            recoveredBlock86Stack1 := EtasIcon.
            recoveredBlock86PC := 242.
        ].
        recoveredBlock86Step = 242 ifTrue: [
            recoveredBlock86Stack2 := recoveredBlock86Local3.
            recoveredBlock86PC := 243.
        ].
        recoveredBlock86Step = 243 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) deepCopy.
            recoveredBlock86PC := 245.
        ].
        recoveredBlock86Step = 245 ifTrue: [
            recoveredBlock86Stack3 := recoveredArg2.
            recoveredBlock86PC := 248.
        ].
        recoveredBlock86Step = 248 ifTrue: [
            recoveredBlock86Stack2 := (recoveredBlock86Stack2) transformToColor: (recoveredBlock86Stack3).
            recoveredBlock86PC := 250.
        ].
        recoveredBlock86Step = 250 ifTrue: [
            recoveredBlock86Stack3 := recoveredArg1.
            recoveredBlock86PC := 253.
        ].
        recoveredBlock86Step = 253 ifTrue: [
            recoveredBlock86Stack3 := (recoveredBlock86Stack3) maskImage.
            recoveredBlock86PC := 255.
        ].
        recoveredBlock86Step = 255 ifTrue: [
            recoveredBlock86Stack1 := (recoveredBlock86Stack1) fromImage: (recoveredBlock86Stack2) maskImage: (recoveredBlock86Stack3).
            recoveredBlock86PC := 257.
        ].
        recoveredBlock86Step = 257 ifTrue: [
            recoveredBlock86Local4 := recoveredBlock86Stack1.
            recoveredBlock86PC := 258.
        ].
        recoveredBlock86Step = 258 ifTrue: [
            recoveredBlock86Stack1 := cachedResources.
            recoveredBlock86PC := 260.
        ].
        recoveredBlock86Step = 260 ifTrue: [
            recoveredBlock86Stack2 := recoveredLocal4.
            recoveredBlock86PC := 263.
        ].
        recoveredBlock86Step = 263 ifTrue: [
            recoveredBlock86Stack3 := recoveredBlock86Local4.
            recoveredBlock86PC := 264.
        ].
        recoveredBlock86Step = 264 ifTrue: [
            (recoveredBlock86Stack1) at: (recoveredBlock86Stack2) put: (recoveredBlock86Stack3).
            recoveredBlock86PC := 266.
        ].
        recoveredBlock86Step = 266 ifTrue: [
            recoveredBlock86Stack1 := recoveredBlock86Local4.
            recoveredBlock86PC := 267.
        ].
        recoveredBlock86Step = 267 ifTrue: [
            ^recoveredBlock86Stack1
        ].
    ].
    recoveredBlock86Result
].
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack0 := (recoveredStack0) iconAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205e6380; bytecode file offset 0xee2ccc"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconsFromIconFile: recoveredArg1 withName: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'Rnz'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'WHAT3687'.
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
            recoveredStack1 := recoveredArg2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) allCachedIconAtIfAbsentNil: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := 'shikhar'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := 'EHI65204'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadIconsFromIconFile: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 |
    recoveredBlock46Value0 := Set.
    recoveredBlock46Value1 := (self) defaultIcon.
    recoveredBlock46Value2 := (recoveredBlock46Value0) with: (recoveredBlock46Value1).
    ^recoveredBlock46Value2
].
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:recoveredBlock80Arg1 | 
    | recoveredBlock80Local1 recoveredBlock80Stack0 recoveredBlock80Stack1 recoveredBlock80Stack2 recoveredBlock80Stack3 recoveredBlock80PC recoveredBlock80Step recoveredBlock80Done recoveredBlock80Result |
    recoveredBlock80Stack0 := self.
    recoveredBlock80PC := 86.
    recoveredBlock80Done := false.
    [recoveredBlock80Done not] whileTrue: [
        recoveredBlock80Step := recoveredBlock80PC.
        recoveredBlock80Step = 86 ifTrue: [
            recoveredBlock80Stack0 := (recoveredBlock80Stack0) class.
            recoveredBlock80PC := 88.
        ].
        recoveredBlock80Step = 88 ifTrue: [
            recoveredBlock80Stack0 := (recoveredBlock80Stack0) sizes.
            recoveredBlock80PC := 90.
        ].
        recoveredBlock80Step = 90 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Arg1.
            recoveredBlock80PC := 93.
        ].
        recoveredBlock80Step = 93 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) width.
            recoveredBlock80PC := 95.
        ].
        recoveredBlock80Step = 95 ifTrue: [
            recoveredBlock80Stack0 := (recoveredBlock80Stack0) includes: (recoveredBlock80Stack1).
            recoveredBlock80PC := 97.
        ].
        recoveredBlock80Step = 97 ifTrue: [
            (recoveredBlock80Stack0) ifTrue: [recoveredBlock80PC := 100] ifFalse: [recoveredBlock80PC := 155].
        ].
        recoveredBlock80Step = 100 ifTrue: [
            recoveredBlock80Stack0 := recoveredLocal2.
            recoveredBlock80PC := 103.
        ].
        recoveredBlock80Step = 103 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Arg1.
            recoveredBlock80PC := 106.
        ].
        recoveredBlock80Step = 106 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) width.
            recoveredBlock80PC := 108.
        ].
        recoveredBlock80Step = 108 ifTrue: [
            recoveredBlock80Stack2 := [
    | recoveredBlock80Block108Value0 |
    recoveredBlock80Block108Value0 := recoveredBlock80Arg1.
    recoveredBlock80Block108Value0
].
            recoveredBlock80PC := 118.
        ].
        recoveredBlock80Step = 118 ifTrue: [
            recoveredBlock80Stack0 := (recoveredBlock80Stack0) at: (recoveredBlock80Stack1) ifAbsent: (recoveredBlock80Stack2).
            recoveredBlock80PC := 120.
        ].
        recoveredBlock80Step = 120 ifTrue: [
            recoveredBlock80Local1 := recoveredBlock80Stack0.
            recoveredBlock80PC := 123.
        ].
        recoveredBlock80Step = 123 ifTrue: [
            recoveredBlock80Stack0 := recoveredBlock80Arg1.
            recoveredBlock80PC := 126.
        ].
        recoveredBlock80Step = 126 ifTrue: [
            recoveredBlock80Stack0 := (recoveredBlock80Stack0) depth.
            recoveredBlock80PC := 128.
        ].
        recoveredBlock80Step = 128 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Local1.
            recoveredBlock80PC := 131.
        ].
        recoveredBlock80Step = 131 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) depth.
            recoveredBlock80PC := 133.
        ].
        recoveredBlock80Step = 133 ifTrue: [
            recoveredBlock80Stack0 := (recoveredBlock80Stack0) >= (recoveredBlock80Stack1).
            recoveredBlock80PC := 134.
        ].
        recoveredBlock80Step = 134 ifTrue: [
            (recoveredBlock80Stack0) ifTrue: [recoveredBlock80PC := 138] ifFalse: [recoveredBlock80PC := 151].
        ].
        recoveredBlock80Step = 138 ifTrue: [
            recoveredBlock80Stack0 := recoveredLocal2.
            recoveredBlock80PC := 141.
        ].
        recoveredBlock80Step = 141 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Arg1.
            recoveredBlock80PC := 144.
        ].
        recoveredBlock80Step = 144 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) width.
            recoveredBlock80PC := 146.
        ].
        recoveredBlock80Step = 146 ifTrue: [
            recoveredBlock80Stack2 := recoveredBlock80Arg1.
            recoveredBlock80PC := 149.
        ].
        recoveredBlock80Step = 149 ifTrue: [
            (recoveredBlock80Stack0) at: (recoveredBlock80Stack1) put: (recoveredBlock80Stack2).
            recoveredBlock80PC := 151.
        ].
        recoveredBlock80Step = 151 ifTrue: [
            recoveredBlock80Stack0 := nil.
            recoveredBlock80PC := 152.
        ].
        recoveredBlock80Step = 152 ifTrue: [
            recoveredBlock80Local1 := recoveredBlock80Stack0.
            recoveredBlock80PC := 155.
        ].
        recoveredBlock80Step = 155 ifTrue: [
            recoveredBlock80Stack0 := nil.
            recoveredBlock80PC := 156.
        ].
        recoveredBlock80Step = 156 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Arg1.
            recoveredBlock80PC := 159.
        ].
        recoveredBlock80Step = 159 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) width.
            recoveredBlock80PC := 161.
        ].
        recoveredBlock80Step = 161 ifTrue: [
            recoveredBlock80Stack2 := recoveredLocal4.
            recoveredBlock80PC := 164.
        ].
        recoveredBlock80Step = 164 ifTrue: [
            recoveredBlock80Stack2 := (recoveredBlock80Stack2) width.
            recoveredBlock80PC := 166.
        ].
        recoveredBlock80Step = 166 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) >= (recoveredBlock80Stack2).
            recoveredBlock80PC := 167.
        ].
        recoveredBlock80Step = 167 ifTrue: [
            (recoveredBlock80Stack1) ifTrue: [recoveredBlock80PC := 184] ifFalse: [recoveredBlock80PC := 170].
        ].
        recoveredBlock80Step = 170 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Arg1.
            recoveredBlock80PC := 173.
        ].
        recoveredBlock80Step = 173 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) depth.
            recoveredBlock80PC := 175.
        ].
        recoveredBlock80Step = 175 ifTrue: [
            recoveredBlock80Stack2 := recoveredLocal4.
            recoveredBlock80PC := 178.
        ].
        recoveredBlock80Step = 178 ifTrue: [
            recoveredBlock80Stack2 := (recoveredBlock80Stack2) depth.
            recoveredBlock80PC := 180.
        ].
        recoveredBlock80Step = 180 ifTrue: [
            recoveredBlock80Stack1 := (recoveredBlock80Stack1) > (recoveredBlock80Stack2).
            recoveredBlock80PC := 181.
        ].
        recoveredBlock80Step = 181 ifTrue: [
            (recoveredBlock80Stack1) ifTrue: [recoveredBlock80PC := 184] ifFalse: [recoveredBlock80PC := 192].
        ].
        recoveredBlock80Step = 184 ifTrue: [
            recoveredBlock80PC := 185.
        ].
        recoveredBlock80Step = 185 ifTrue: [
            recoveredBlock80Stack0 := recoveredBlock80Arg1.
            recoveredBlock80PC := 188.
        ].
        recoveredBlock80Step = 188 ifTrue: [
            recoveredBlock80Stack1 := recoveredBlock80Stack0.
            recoveredBlock80PC := 189.
        ].
        recoveredBlock80Step = 189 ifTrue: [
            recoveredLocal4 := recoveredBlock80Stack1.
            recoveredBlock80PC := 192.
        ].
        recoveredBlock80Step = 192 ifTrue: [
            recoveredBlock80Result := recoveredBlock80Stack0.
            recoveredBlock80Done := true.
        ].
    ].
    recoveredBlock80Result
].
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack1 := [:recoveredBlock198Arg1 | 
    | recoveredBlock198Stack0 recoveredBlock198Stack1 recoveredBlock198Stack2 recoveredBlock198Stack3 recoveredBlock198Stack4 recoveredBlock198PC recoveredBlock198Step recoveredBlock198Done recoveredBlock198Result |
    recoveredBlock198Stack0 := self.
    recoveredBlock198PC := 204.
    recoveredBlock198Done := false.
    [recoveredBlock198Done not] whileTrue: [
        recoveredBlock198Step := recoveredBlock198PC.
        recoveredBlock198Step = 204 ifTrue: [
            recoveredBlock198Stack1 := nil.
            recoveredBlock198PC := 205.
        ].
        recoveredBlock198Step = 205 ifTrue: [
            recoveredBlock198Stack2 := recoveredBlock198Arg1.
            recoveredBlock198PC := 206.
        ].
        recoveredBlock198Step = 206 ifTrue: [
            recoveredBlock198Stack3 := recoveredLocal4.
            recoveredBlock198PC := 209.
        ].
        recoveredBlock198Step = 209 ifTrue: [
            recoveredBlock198Stack2 := (recoveredBlock198Stack2) ~= (recoveredBlock198Stack3).
            recoveredBlock198PC := 210.
        ].
        recoveredBlock198Step = 210 ifTrue: [
            (recoveredBlock198Stack2) ifTrue: [recoveredBlock198PC := 214] ifFalse: [recoveredBlock198PC := 228].
        ].
        recoveredBlock198Step = 214 ifTrue: [
            recoveredBlock198Stack2 := recoveredLocal2.
            recoveredBlock198PC := 217.
        ].
        recoveredBlock198Step = 217 ifTrue: [
            recoveredBlock198Stack3 := recoveredBlock198Arg1.
            recoveredBlock198PC := 218.
        ].
        recoveredBlock198Step = 218 ifTrue: [
            recoveredBlock198Stack2 := (recoveredBlock198Stack2) includes: (recoveredBlock198Stack3).
            recoveredBlock198PC := 220.
        ].
        recoveredBlock198Step = 220 ifTrue: [
            (recoveredBlock198Stack2) ifTrue: [recoveredBlock198PC := 228] ifFalse: [recoveredBlock198PC := 224].
        ].
        recoveredBlock198Step = 224 ifTrue: [
            recoveredBlock198PC := 225.
        ].
        recoveredBlock198Step = 225 ifTrue: [
            recoveredBlock198Stack1 := recoveredBlock198Arg1.
            recoveredBlock198PC := 226.
        ].
        recoveredBlock198Step = 226 ifTrue: [
            recoveredBlock198Stack1 := (recoveredBlock198Stack1) free.
            recoveredBlock198PC := 228.
        ].
        recoveredBlock198Step = 228 ifTrue: [
            recoveredBlock198Result := recoveredBlock198Stack1.
            recoveredBlock198Done := true.
        ].
    ].
    recoveredBlock198Result
].
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) class.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack0 := (recoveredStack0) sizes.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack1 := [:recoveredBlock236Arg1 | 
    | recoveredBlock236Stack0 recoveredBlock236Stack1 recoveredBlock236Stack2 recoveredBlock236Stack3 recoveredBlock236Stack4 recoveredBlock236Stack5 recoveredBlock236Stack6 recoveredBlock236PC recoveredBlock236Step recoveredBlock236Done recoveredBlock236Result |
    recoveredBlock236Stack0 := self.
    recoveredBlock236PC := 242.
    recoveredBlock236Done := false.
    [recoveredBlock236Done not] whileTrue: [
        recoveredBlock236Step := recoveredBlock236PC.
        recoveredBlock236Step = 242 ifTrue: [
            recoveredBlock236Stack1 := nil.
            recoveredBlock236PC := 243.
        ].
        recoveredBlock236Step = 243 ifTrue: [
            recoveredBlock236Stack2 := recoveredLocal2.
            recoveredBlock236PC := 246.
        ].
        recoveredBlock236Step = 246 ifTrue: [
            recoveredBlock236Stack3 := recoveredBlock236Arg1.
            recoveredBlock236PC := 247.
        ].
        recoveredBlock236Step = 247 ifTrue: [
            recoveredBlock236Stack2 := (recoveredBlock236Stack2) includesKey: (recoveredBlock236Stack3).
            recoveredBlock236PC := 249.
        ].
        recoveredBlock236Step = 249 ifTrue: [
            (recoveredBlock236Stack2) ifTrue: [recoveredBlock236PC := 268] ifFalse: [recoveredBlock236PC := 252].
        ].
        recoveredBlock236Step = 252 ifTrue: [
            recoveredBlock236PC := 253.
        ].
        recoveredBlock236Step = 253 ifTrue: [
            recoveredBlock236Stack1 := recoveredLocal2.
            recoveredBlock236PC := 256.
        ].
        recoveredBlock236Step = 256 ifTrue: [
            recoveredBlock236Stack2 := recoveredBlock236Arg1.
            recoveredBlock236PC := 257.
        ].
        recoveredBlock236Step = 257 ifTrue: [
            recoveredBlock236Stack3 := recoveredLocal4.
            recoveredBlock236PC := 260.
        ].
        recoveredBlock236Step = 260 ifTrue: [
            recoveredBlock236Stack4 := recoveredBlock236Arg1.
            recoveredBlock236PC := 261.
        ].
        recoveredBlock236Step = 261 ifTrue: [
            recoveredBlock236Stack5 := recoveredBlock236Arg1.
            recoveredBlock236PC := 262.
        ].
        recoveredBlock236Step = 262 ifTrue: [
            recoveredBlock236Stack4 := (recoveredBlock236Stack4) @ (recoveredBlock236Stack5).
            recoveredBlock236PC := 264.
        ].
        recoveredBlock236Step = 264 ifTrue: [
            recoveredBlock236Stack3 := (recoveredBlock236Stack3) scaledTo: (recoveredBlock236Stack4).
            recoveredBlock236PC := 266.
        ].
        recoveredBlock236Step = 266 ifTrue: [
            recoveredBlock236Stack1 := (recoveredBlock236Stack1) at: (recoveredBlock236Stack2) put: (recoveredBlock236Stack3).
            recoveredBlock236PC := 268.
        ].
        recoveredBlock236Step = 268 ifTrue: [
            recoveredBlock236Result := recoveredBlock236Stack1.
            recoveredBlock236Done := true.
        ].
    ].
    recoveredBlock236Result
].
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := [:recoveredBlock274Arg1 | 
    | recoveredBlock274Local1 recoveredBlock274Stack0 recoveredBlock274Stack1 recoveredBlock274Stack2 recoveredBlock274Stack3 recoveredBlock274Stack4 recoveredBlock274Stack5 recoveredBlock274PC recoveredBlock274Step recoveredBlock274Done recoveredBlock274Result |
    recoveredBlock274Stack0 := self.
    recoveredBlock274PC := 280.
    recoveredBlock274Done := false.
    [recoveredBlock274Done not] whileTrue: [
        recoveredBlock274Step := recoveredBlock274PC.
        recoveredBlock274Step = 280 ifTrue: [
            recoveredBlock274Stack1 := recoveredBlock274Arg1.
            recoveredBlock274PC := 281.
        ].
        recoveredBlock274Step = 281 ifTrue: [
            recoveredBlock274Stack2 := self.
            recoveredBlock274PC := 282.
        ].
        recoveredBlock274Step = 282 ifTrue: [
            recoveredBlock274Stack2 := (recoveredBlock274Stack2) class.
            recoveredBlock274PC := 284.
        ].
        recoveredBlock274Step = 284 ifTrue: [
            recoveredBlock274Stack2 := (recoveredBlock274Stack2) defaultSize.
            recoveredBlock274PC := 286.
        ].
        recoveredBlock274Step = 286 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) = (recoveredBlock274Stack2).
            recoveredBlock274PC := 287.
        ].
        recoveredBlock274Step = 287 ifTrue: [
            (recoveredBlock274Stack1) ifTrue: [recoveredBlock274PC := 290] ifFalse: [recoveredBlock274PC := 306].
        ].
        recoveredBlock274Step = 290 ifTrue: [
            recoveredBlock274Stack1 := recoveredArg2.
            recoveredBlock274PC := 293.
        ].
        recoveredBlock274Step = 293 ifTrue: [
            recoveredBlock274Local1 := recoveredBlock274Stack1.
            recoveredBlock274PC := 294.
        ].
        recoveredBlock274Step = 294 ifTrue: [
            recoveredBlock274Stack1 := recoveredLocal2.
            recoveredBlock274PC := 297.
        ].
        recoveredBlock274Step = 297 ifTrue: [
            recoveredBlock274Stack2 := recoveredBlock274Arg1.
            recoveredBlock274PC := 298.
        ].
        recoveredBlock274Step = 298 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) at: (recoveredBlock274Stack2).
            recoveredBlock274PC := 300.
        ].
        recoveredBlock274Step = 300 ifTrue: [
            recoveredLocal4 := recoveredBlock274Stack1.
            recoveredBlock274PC := 303.
        ].
        recoveredBlock274Step = 303 ifTrue: [
            recoveredBlock274PC := 315.
        ].
        recoveredBlock274Step = 306 ifTrue: [
            recoveredBlock274Stack1 := recoveredArg2.
            recoveredBlock274PC := 309.
        ].
        recoveredBlock274Step = 309 ifTrue: [
            recoveredBlock274Stack2 := recoveredBlock274Arg1.
            recoveredBlock274PC := 310.
        ].
        recoveredBlock274Step = 310 ifTrue: [
            recoveredBlock274Stack2 := (recoveredBlock274Stack2) asString.
            recoveredBlock274PC := 312.
        ].
        recoveredBlock274Step = 312 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) , (recoveredBlock274Stack2).
            recoveredBlock274PC := 314.
        ].
        recoveredBlock274Step = 314 ifTrue: [
            recoveredBlock274Local1 := recoveredBlock274Stack1.
            recoveredBlock274PC := 315.
        ].
        recoveredBlock274Step = 315 ifTrue: [
            recoveredBlock274Stack1 := recoveredLocal2.
            recoveredBlock274PC := 318.
        ].
        recoveredBlock274Step = 318 ifTrue: [
            recoveredBlock274Stack2 := recoveredBlock274Arg1.
            recoveredBlock274PC := 319.
        ].
        recoveredBlock274Step = 319 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) at: (recoveredBlock274Stack2).
            recoveredBlock274PC := 321.
        ].
        recoveredBlock274Step = 321 ifTrue: [
            recoveredBlock274Stack2 := recoveredBlock274Local1.
            recoveredBlock274PC := 322.
        ].
        recoveredBlock274Step = 322 ifTrue: [
            (recoveredBlock274Stack1) name: (recoveredBlock274Stack2).
            recoveredBlock274PC := 324.
        ].
        recoveredBlock274Step = 324 ifTrue: [
            recoveredBlock274Stack1 := 'Kli'.
            recoveredBlock274PC := 326.
        ].
        recoveredBlock274Step = 326 ifTrue: [
            recoveredBlock274Stack2 := 'Call_65204'.
            recoveredBlock274PC := 328.
        ].
        recoveredBlock274Step = 328 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) == (recoveredBlock274Stack2).
            recoveredBlock274PC := 329.
        ].
        recoveredBlock274Step = 329 ifTrue: [
            recoveredBlock274PC := 330.
        ].
        recoveredBlock274Step = 330 ifTrue: [
            recoveredBlock274Stack1 := cachedResources.
            recoveredBlock274PC := 332.
        ].
        recoveredBlock274Step = 332 ifTrue: [
            recoveredBlock274Stack2 := recoveredBlock274Local1.
            recoveredBlock274PC := 333.
        ].
        recoveredBlock274Step = 333 ifTrue: [
            recoveredBlock274Stack2 := (recoveredBlock274Stack2) asUppercase.
            recoveredBlock274PC := 335.
        ].
        recoveredBlock274Step = 335 ifTrue: [
            recoveredBlock274Stack3 := recoveredLocal2.
            recoveredBlock274PC := 338.
        ].
        recoveredBlock274Step = 338 ifTrue: [
            recoveredBlock274Stack4 := recoveredBlock274Arg1.
            recoveredBlock274PC := 339.
        ].
        recoveredBlock274Step = 339 ifTrue: [
            recoveredBlock274Stack3 := (recoveredBlock274Stack3) at: (recoveredBlock274Stack4).
            recoveredBlock274PC := 341.
        ].
        recoveredBlock274Step = 341 ifTrue: [
            recoveredBlock274Stack1 := (recoveredBlock274Stack1) at: (recoveredBlock274Stack2) put: (recoveredBlock274Stack3).
            recoveredBlock274PC := 343.
        ].
        recoveredBlock274Step = 343 ifTrue: [
            recoveredBlock274Result := recoveredBlock274Stack1.
            recoveredBlock274Done := true.
        ].
    ].
    recoveredBlock274Result
].
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack0) keysDo: (recoveredStack1).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack2 := [:recoveredBlock367Arg1 | 
    | recoveredBlock367Value0 recoveredBlock367Value1 recoveredBlock367Value2 |
    recoveredBlock367Value0 := recoveredBlock367Arg1.
    recoveredBlock367Value1 := recoveredLocal4.
    recoveredBlock367Value2 := (recoveredBlock367Value0) = (recoveredBlock367Value1).
    recoveredBlock367Value2
].
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack1 := (recoveredStack1) reject: (recoveredStack2).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack0) addAll: (recoveredStack1).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2061afe4; bytecode file offset 0xf1796c"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnDisabledIcon: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) , ('_DISABLED').
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := [
    | recoveredBlock17Local1 recoveredBlock17Local2 recoveredBlock17Local3 recoveredBlock17Local4 recoveredBlock17Local5 recoveredBlock17Local6 recoveredBlock17Local7 recoveredBlock17Local8 recoveredBlock17Local9 recoveredBlock17Local10 recoveredBlock17Local11 recoveredBlock17Local12 recoveredBlock17Local13 recoveredBlock17Local14 recoveredBlock17Local15 recoveredBlock17Local16 recoveredBlock17Local17 recoveredBlock17Stack0 recoveredBlock17Stack1 recoveredBlock17Stack2 recoveredBlock17Stack3 recoveredBlock17Stack4 recoveredBlock17Stack5 recoveredBlock17Stack6 recoveredBlock17Stack7 recoveredBlock17Stack8 recoveredBlock17Stack9 recoveredBlock17Stack10 recoveredBlock17PC recoveredBlock17Step recoveredBlock17Done recoveredBlock17Result |
    recoveredBlock17Stack0 := self.
    recoveredBlock17PC := 24.
    recoveredBlock17Done := false.
    [recoveredBlock17Done not] whileTrue: [
        recoveredBlock17Step := recoveredBlock17PC.
        recoveredBlock17Step = 24 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 27.
        ].
        recoveredBlock17Step = 27 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) width.
            recoveredBlock17PC := 28.
        ].
        recoveredBlock17Step = 28 ifTrue: [
            recoveredBlock17Local16 := recoveredBlock17Stack1.
            recoveredBlock17PC := 30.
        ].
        recoveredBlock17Step = 30 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 33.
        ].
        recoveredBlock17Step = 33 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) height.
            recoveredBlock17PC := 35.
        ].
        recoveredBlock17Step = 35 ifTrue: [
            recoveredBlock17Local15 := recoveredBlock17Stack1.
            recoveredBlock17PC := 37.
        ].
        recoveredBlock17Step = 37 ifTrue: [
            recoveredBlock17Stack1 := 24.
            recoveredBlock17PC := 39.
        ].
        recoveredBlock17Step = 39 ifTrue: [
            recoveredBlock17Local2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 40.
        ].
        recoveredBlock17Step = 40 ifTrue: [
            recoveredBlock17Stack1 := CgServer.
            recoveredBlock17PC := 42.
        ].
        recoveredBlock17Step = 42 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) default.
            recoveredBlock17PC := 44.
        ].
        recoveredBlock17Step = 44 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) hdcMem.
            recoveredBlock17PC := 46.
        ].
        recoveredBlock17Step = 46 ifTrue: [
            recoveredBlock17Local14 := recoveredBlock17Stack1.
            recoveredBlock17PC := 48.
        ].
        recoveredBlock17Step = 48 ifTrue: [
            recoveredBlock17Stack1 := CgServer.
            recoveredBlock17PC := 50.
        ].
        recoveredBlock17Step = 50 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) default.
            recoveredBlock17PC := 52.
        ].
        recoveredBlock17Step = 52 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) deviceContext.
            recoveredBlock17PC := 54.
        ].
        recoveredBlock17Step = 54 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local16.
            recoveredBlock17PC := 56.
        ].
        recoveredBlock17Step = 56 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 58.
        ].
        recoveredBlock17Step = 58 ifTrue: [
            recoveredBlock17Stack4 := 2.
            recoveredBlock17PC := 60.
        ].
        recoveredBlock17Step = 60 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) * (recoveredBlock17Stack4).
            recoveredBlock17PC := 61.
        ].
        recoveredBlock17Step = 61 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) createCompatibleBitmap: (recoveredBlock17Stack2) nHeight: (recoveredBlock17Stack3).
            recoveredBlock17PC := 63.
        ].
        recoveredBlock17Step = 63 ifTrue: [
            recoveredBlock17Local13 := recoveredBlock17Stack1.
            recoveredBlock17PC := 65.
        ].
        recoveredBlock17Step = 65 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 67.
        ].
        recoveredBlock17Step = 67 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local13.
            recoveredBlock17PC := 69.
        ].
        recoveredBlock17Step = 69 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) selectObject: (recoveredBlock17Stack2).
            recoveredBlock17PC := 71.
        ].
        recoveredBlock17Step = 71 ifTrue: [
            recoveredBlock17Local12 := recoveredBlock17Stack1.
            recoveredBlock17PC := 73.
        ].
        recoveredBlock17Step = 73 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 75.
        ].
        recoveredBlock17Step = 75 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 77.
        ].
        recoveredBlock17Step = 77 ifTrue: [
            recoveredBlock17Stack3 := 0.
            recoveredBlock17PC := 79.
        ].
        recoveredBlock17Step = 79 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local16.
            recoveredBlock17PC := 81.
        ].
        recoveredBlock17Step = 81 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local15.
            recoveredBlock17PC := 83.
        ].
        recoveredBlock17Step = 83 ifTrue: [
            recoveredBlock17Stack6 := Blackness.
            recoveredBlock17PC := 85.
        ].
        recoveredBlock17Step = 85 ifTrue: [
            (recoveredBlock17Stack1) patBlt: (recoveredBlock17Stack2) nTopRect: (recoveredBlock17Stack3) nwidth: (recoveredBlock17Stack4) nheight: (recoveredBlock17Stack5) fdwRop: (recoveredBlock17Stack6).
            recoveredBlock17PC := 88.
        ].
        recoveredBlock17Step = 88 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 90.
        ].
        recoveredBlock17Step = 90 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 92.
        ].
        recoveredBlock17Step = 92 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 94.
        ].
        recoveredBlock17Step = 94 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local16.
            recoveredBlock17PC := 96.
        ].
        recoveredBlock17Step = 96 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local15.
            recoveredBlock17PC := 98.
        ].
        recoveredBlock17Step = 98 ifTrue: [
            recoveredBlock17Stack6 := Whiteness.
            recoveredBlock17PC := 100.
        ].
        recoveredBlock17Step = 100 ifTrue: [
            (recoveredBlock17Stack1) patBlt: (recoveredBlock17Stack2) nTopRect: (recoveredBlock17Stack3) nwidth: (recoveredBlock17Stack4) nheight: (recoveredBlock17Stack5) fdwRop: (recoveredBlock17Stack6).
            recoveredBlock17PC := 103.
        ].
        recoveredBlock17Step = 103 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 105.
        ].
        recoveredBlock17Step = 105 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 107.
        ].
        recoveredBlock17Step = 107 ifTrue: [
            recoveredBlock17Stack3 := 0.
            recoveredBlock17PC := 109.
        ].
        recoveredBlock17Step = 109 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg1.
            recoveredBlock17PC := 112.
        ].
        recoveredBlock17Step = 112 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) handle.
            recoveredBlock17PC := 114.
        ].
        recoveredBlock17Step = 114 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local16.
            recoveredBlock17PC := 116.
        ].
        recoveredBlock17Step = 116 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local15.
            recoveredBlock17PC := 118.
        ].
        recoveredBlock17Step = 118 ifTrue: [
            recoveredBlock17Stack7 := 0.
            recoveredBlock17PC := 120.
        ].
        recoveredBlock17Step = 120 ifTrue: [
            recoveredBlock17Stack8 := nil.
            recoveredBlock17PC := 121.
        ].
        recoveredBlock17Step = 121 ifTrue: [
            recoveredBlock17Stack9 := DiNormal.
            recoveredBlock17PC := 123.
        ].
        recoveredBlock17Step = 123 ifTrue: [
            (recoveredBlock17Stack1) drawIconEx: (recoveredBlock17Stack2) yTop: (recoveredBlock17Stack3) hIcon: (recoveredBlock17Stack4) cxWidth: (recoveredBlock17Stack5) cyWidth: (recoveredBlock17Stack6) istepIfAniCur: (recoveredBlock17Stack7) hbrFlickerFreeDraw: (recoveredBlock17Stack8) diFlags: (recoveredBlock17Stack9).
            recoveredBlock17PC := 126.
        ].
        recoveredBlock17Step = 126 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 128.
        ].
        recoveredBlock17Step = 128 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 130.
        ].
        recoveredBlock17Step = 130 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 132.
        ].
        recoveredBlock17Step = 132 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg1.
            recoveredBlock17PC := 135.
        ].
        recoveredBlock17Step = 135 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) handle.
            recoveredBlock17PC := 137.
        ].
        recoveredBlock17Step = 137 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local16.
            recoveredBlock17PC := 139.
        ].
        recoveredBlock17Step = 139 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local15.
            recoveredBlock17PC := 141.
        ].
        recoveredBlock17Step = 141 ifTrue: [
            recoveredBlock17Stack7 := 0.
            recoveredBlock17PC := 143.
        ].
        recoveredBlock17Step = 143 ifTrue: [
            recoveredBlock17Stack8 := nil.
            recoveredBlock17PC := 144.
        ].
        recoveredBlock17Step = 144 ifTrue: [
            recoveredBlock17Stack9 := DiNormal.
            recoveredBlock17PC := 146.
        ].
        recoveredBlock17Step = 146 ifTrue: [
            (recoveredBlock17Stack1) drawIconEx: (recoveredBlock17Stack2) yTop: (recoveredBlock17Stack3) hIcon: (recoveredBlock17Stack4) cxWidth: (recoveredBlock17Stack5) cyWidth: (recoveredBlock17Stack6) istepIfAniCur: (recoveredBlock17Stack7) hbrFlickerFreeDraw: (recoveredBlock17Stack8) diFlags: (recoveredBlock17Stack9).
            recoveredBlock17PC := 149.
        ].
        recoveredBlock17Step = 149 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 151.
        ].
        recoveredBlock17Step = 151 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 153.
        ].
        recoveredBlock17Step = 153 ifTrue: [
            recoveredBlock17Stack3 := 0.
            recoveredBlock17PC := 155.
        ].
        recoveredBlock17Step = 155 ifTrue: [
            recoveredBlock17Stack4 := recoveredArg1.
            recoveredBlock17PC := 158.
        ].
        recoveredBlock17Step = 158 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) width.
            recoveredBlock17PC := 159.
        ].
        recoveredBlock17Step = 159 ifTrue: [
            recoveredBlock17Stack5 := recoveredArg1.
            recoveredBlock17PC := 162.
        ].
        recoveredBlock17Step = 162 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) height.
            recoveredBlock17PC := 164.
        ].
        recoveredBlock17Step = 164 ifTrue: [
            recoveredBlock17Stack6 := recoveredArg1.
            recoveredBlock17PC := 167.
        ].
        recoveredBlock17Step = 167 ifTrue: [
            recoveredBlock17Stack6 := (recoveredBlock17Stack6) handle.
            recoveredBlock17PC := 169.
        ].
        recoveredBlock17Step = 169 ifTrue: [
            recoveredBlock17Stack7 := 0.
            recoveredBlock17PC := 171.
        ].
        recoveredBlock17Step = 171 ifTrue: [
            recoveredBlock17Stack8 := 0.
            recoveredBlock17PC := 173.
        ].
        recoveredBlock17Step = 173 ifTrue: [
            (recoveredBlock17Stack1) ditherBlt: (recoveredBlock17Stack2) nYDest: (recoveredBlock17Stack3) nWidth: (recoveredBlock17Stack4) nHeight: (recoveredBlock17Stack5) hIcon: (recoveredBlock17Stack6) nXSrc: (recoveredBlock17Stack7) nYSrc: (recoveredBlock17Stack8).
            recoveredBlock17PC := 176.
        ].
        recoveredBlock17Step = 176 ifTrue: [
            recoveredBlock17Stack1 := OSBitmapinfo.
            recoveredBlock17PC := 178.
        ].
        recoveredBlock17Step = 178 ifTrue: [
            recoveredBlock17Stack2 := 16.
            recoveredBlock17PC := 180.
        ].
        recoveredBlock17Step = 180 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) newVariable: (recoveredBlock17Stack2).
            recoveredBlock17PC := 182.
        ].
        recoveredBlock17Step = 182 ifTrue: [
            recoveredBlock17Stack2 := OSBitmapinfoheader.
            recoveredBlock17PC := 184.
        ].
        recoveredBlock17Step = 184 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) new.
            recoveredBlock17PC := 186.
        ].
        recoveredBlock17Step = 186 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 187.
        ].
        recoveredBlock17Step = 187 ifTrue: [
            recoveredBlock17Stack4 := OSBitmapinfoheader.
            recoveredBlock17PC := 189.
        ].
        recoveredBlock17Step = 189 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) fixedSize.
            recoveredBlock17PC := 191.
        ].
        recoveredBlock17Step = 191 ifTrue: [
            (recoveredBlock17Stack3) biSize: (recoveredBlock17Stack4).
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 194.
        ].
        recoveredBlock17Step = 194 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local16.
            recoveredBlock17PC := 196.
        ].
        recoveredBlock17Step = 196 ifTrue: [
            (recoveredBlock17Stack3) biWidth: (recoveredBlock17Stack4).
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 199.
        ].
        recoveredBlock17Step = 199 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local15.
            recoveredBlock17PC := 201.
        ].
        recoveredBlock17Step = 201 ifTrue: [
            (recoveredBlock17Stack3) biHeight: (recoveredBlock17Stack4).
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 204.
        ].
        recoveredBlock17Step = 204 ifTrue: [
            recoveredBlock17Stack4 := 1.
            recoveredBlock17PC := 206.
        ].
        recoveredBlock17Step = 206 ifTrue: [
            (recoveredBlock17Stack3) biPlanes: (recoveredBlock17Stack4).
            recoveredBlock17PC := 208.
        ].
        recoveredBlock17Step = 208 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local2.
            recoveredBlock17PC := 209.
        ].
        recoveredBlock17Step = 209 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) biBitCount: (recoveredBlock17Stack3).
            recoveredBlock17PC := 211.
        ].
        recoveredBlock17Step = 211 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) bmiHeader: (recoveredBlock17Stack2).
            recoveredBlock17PC := 213.
        ].
        recoveredBlock17Step = 213 ifTrue: [
            recoveredBlock17Local11 := recoveredBlock17Stack1.
            recoveredBlock17PC := 215.
        ].
        recoveredBlock17Step = 215 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local16.
            recoveredBlock17PC := 217.
        ].
        recoveredBlock17Step = 217 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local2.
            recoveredBlock17PC := 218.
        ].
        recoveredBlock17Step = 218 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) * (recoveredBlock17Stack2).
            recoveredBlock17PC := 219.
        ].
        recoveredBlock17Step = 219 ifTrue: [
            recoveredBlock17Stack2 := 31.
            recoveredBlock17PC := 221.
        ].
        recoveredBlock17Step = 221 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) + (recoveredBlock17Stack2).
            recoveredBlock17PC := 222.
        ].
        recoveredBlock17Step = 222 ifTrue: [
            recoveredBlock17Stack2 := 32.
            recoveredBlock17PC := 224.
        ].
        recoveredBlock17Step = 224 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) // (recoveredBlock17Stack2).
            recoveredBlock17PC := 225.
        ].
        recoveredBlock17Step = 225 ifTrue: [
            recoveredBlock17Stack2 := 4.
            recoveredBlock17PC := 227.
        ].
        recoveredBlock17Step = 227 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) * (recoveredBlock17Stack2).
            recoveredBlock17PC := 228.
        ].
        recoveredBlock17Step = 228 ifTrue: [
            recoveredBlock17Local10 := recoveredBlock17Stack1.
            recoveredBlock17PC := 230.
        ].
        recoveredBlock17Step = 230 ifTrue: [
            recoveredBlock17Stack1 := ByteArray.
            recoveredBlock17PC := 232.
        ].
        recoveredBlock17Step = 232 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local10.
            recoveredBlock17PC := 234.
        ].
        recoveredBlock17Step = 234 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 236.
        ].
        recoveredBlock17Step = 236 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) * (recoveredBlock17Stack3).
            recoveredBlock17PC := 237.
        ].
        recoveredBlock17Step = 237 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) new: (recoveredBlock17Stack2).
            recoveredBlock17PC := 239.
        ].
        recoveredBlock17Step = 239 ifTrue: [
            recoveredBlock17Local9 := recoveredBlock17Stack1.
            recoveredBlock17PC := 241.
        ].
        recoveredBlock17Step = 241 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 243.
        ].
        recoveredBlock17Step = 243 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local13.
            recoveredBlock17PC := 245.
        ].
        recoveredBlock17Step = 245 ifTrue: [
            recoveredBlock17Stack3 := 0.
            recoveredBlock17PC := 247.
        ].
        recoveredBlock17Step = 247 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local15.
            recoveredBlock17PC := 249.
        ].
        recoveredBlock17Step = 249 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local9.
            recoveredBlock17PC := 251.
        ].
        recoveredBlock17Step = 251 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local11.
            recoveredBlock17PC := 253.
        ].
        recoveredBlock17Step = 253 ifTrue: [
            recoveredBlock17Stack7 := DibRgbColors.
            recoveredBlock17PC := 255.
        ].
        recoveredBlock17Step = 255 ifTrue: [
            (recoveredBlock17Stack1) getDIBits: (recoveredBlock17Stack2) nStartScan: (recoveredBlock17Stack3) cScanLines: (recoveredBlock17Stack4) lpvBits: (recoveredBlock17Stack5) lpbmi: (recoveredBlock17Stack6) fuColorUse: (recoveredBlock17Stack7).
            recoveredBlock17PC := 258.
        ].
        recoveredBlock17Step = 258 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 261.
        ].
        recoveredBlock17Step = 261 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local9.
            recoveredBlock17PC := 263.
        ].
        recoveredBlock17Step = 263 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 265.
        ].
        recoveredBlock17Step = 265 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local10.
            recoveredBlock17PC := 267.
        ].
        recoveredBlock17Step = 267 ifTrue: [
            (recoveredBlock17Stack1) flipScanlines: (recoveredBlock17Stack2) height: (recoveredBlock17Stack3) stride: (recoveredBlock17Stack4).
            recoveredBlock17PC := 270.
        ].
        recoveredBlock17Step = 270 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 272.
        ].
        recoveredBlock17Step = 272 ifTrue: [
            recoveredBlock17Stack2 := 0.
            recoveredBlock17PC := 274.
        ].
        recoveredBlock17Step = 274 ifTrue: [
            recoveredBlock17Stack3 := 0.
            recoveredBlock17PC := 276.
        ].
        recoveredBlock17Step = 276 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local16.
            recoveredBlock17PC := 278.
        ].
        recoveredBlock17Step = 278 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local15.
            recoveredBlock17PC := 280.
        ].
        recoveredBlock17Step = 280 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local14.
            recoveredBlock17PC := 282.
        ].
        recoveredBlock17Step = 282 ifTrue: [
            recoveredBlock17Stack7 := 0.
            recoveredBlock17PC := 284.
        ].
        recoveredBlock17Step = 284 ifTrue: [
            recoveredBlock17Stack8 := recoveredBlock17Local15.
            recoveredBlock17PC := 286.
        ].
        recoveredBlock17Step = 286 ifTrue: [
            recoveredBlock17Stack9 := Srcinvert.
            recoveredBlock17PC := 288.
        ].
        recoveredBlock17Step = 288 ifTrue: [
            (recoveredBlock17Stack1) bitBlt: (recoveredBlock17Stack2) nYDest: (recoveredBlock17Stack3) nWidth: (recoveredBlock17Stack4) nHeight: (recoveredBlock17Stack5) hdcSrc: (recoveredBlock17Stack6) nXSrc: (recoveredBlock17Stack7) nYSrc: (recoveredBlock17Stack8) dwRop: (recoveredBlock17Stack9).
            recoveredBlock17PC := 291.
        ].
        recoveredBlock17Step = 291 ifTrue: [
            recoveredBlock17Stack1 := OSBitmapinfo.
            recoveredBlock17PC := 293.
        ].
        recoveredBlock17Step = 293 ifTrue: [
            recoveredBlock17Stack2 := 2.
            recoveredBlock17PC := 295.
        ].
        recoveredBlock17Step = 295 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) newVariable: (recoveredBlock17Stack2).
            recoveredBlock17PC := 297.
        ].
        recoveredBlock17Step = 297 ifTrue: [
            recoveredBlock17Stack2 := OSBitmapinfoheader.
            recoveredBlock17PC := 299.
        ].
        recoveredBlock17Step = 299 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) new.
            recoveredBlock17PC := 301.
        ].
        recoveredBlock17Step = 301 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 302.
        ].
        recoveredBlock17Step = 302 ifTrue: [
            recoveredBlock17Stack4 := OSBitmapinfoheader.
            recoveredBlock17PC := 304.
        ].
        recoveredBlock17Step = 304 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) fixedSize.
            recoveredBlock17PC := 306.
        ].
        recoveredBlock17Step = 306 ifTrue: [
            (recoveredBlock17Stack3) biSize: (recoveredBlock17Stack4).
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 309.
        ].
        recoveredBlock17Step = 309 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local16.
            recoveredBlock17PC := 311.
        ].
        recoveredBlock17Step = 311 ifTrue: [
            (recoveredBlock17Stack3) biWidth: (recoveredBlock17Stack4).
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 314.
        ].
        recoveredBlock17Step = 314 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local15.
            recoveredBlock17PC := 316.
        ].
        recoveredBlock17Step = 316 ifTrue: [
            (recoveredBlock17Stack3) biHeight: (recoveredBlock17Stack4).
            recoveredBlock17Stack3 := recoveredBlock17Stack2.
            recoveredBlock17PC := 319.
        ].
        recoveredBlock17Step = 319 ifTrue: [
            recoveredBlock17Stack4 := 1.
            recoveredBlock17PC := 321.
        ].
        recoveredBlock17Step = 321 ifTrue: [
            (recoveredBlock17Stack3) biPlanes: (recoveredBlock17Stack4).
            recoveredBlock17PC := 323.
        ].
        recoveredBlock17Step = 323 ifTrue: [
            recoveredBlock17Stack3 := 1.
            recoveredBlock17PC := 325.
        ].
        recoveredBlock17Step = 325 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) biBitCount: (recoveredBlock17Stack3).
            recoveredBlock17PC := 327.
        ].
        recoveredBlock17Step = 327 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) bmiHeader: (recoveredBlock17Stack2).
            recoveredBlock17PC := 329.
        ].
        recoveredBlock17Step = 329 ifTrue: [
            recoveredBlock17Local8 := recoveredBlock17Stack1.
            recoveredBlock17PC := 331.
        ].
        recoveredBlock17Step = 331 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local16.
            recoveredBlock17PC := 333.
        ].
        recoveredBlock17Step = 333 ifTrue: [
            recoveredBlock17Stack2 := 31.
            recoveredBlock17PC := 335.
        ].
        recoveredBlock17Step = 335 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) + (recoveredBlock17Stack2).
            recoveredBlock17PC := 336.
        ].
        recoveredBlock17Step = 336 ifTrue: [
            recoveredBlock17Stack2 := 32.
            recoveredBlock17PC := 338.
        ].
        recoveredBlock17Step = 338 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) // (recoveredBlock17Stack2).
            recoveredBlock17PC := 339.
        ].
        recoveredBlock17Step = 339 ifTrue: [
            recoveredBlock17Stack2 := 4.
            recoveredBlock17PC := 341.
        ].
        recoveredBlock17Step = 341 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) * (recoveredBlock17Stack2).
            recoveredBlock17PC := 342.
        ].
        recoveredBlock17Step = 342 ifTrue: [
            recoveredBlock17Local10 := recoveredBlock17Stack1.
            recoveredBlock17PC := 344.
        ].
        recoveredBlock17Step = 344 ifTrue: [
            recoveredBlock17Stack1 := ByteArray.
            recoveredBlock17PC := 346.
        ].
        recoveredBlock17Step = 346 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local10.
            recoveredBlock17PC := 348.
        ].
        recoveredBlock17Step = 348 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 350.
        ].
        recoveredBlock17Step = 350 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) * (recoveredBlock17Stack3).
            recoveredBlock17PC := 351.
        ].
        recoveredBlock17Step = 351 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) new: (recoveredBlock17Stack2).
            recoveredBlock17PC := 353.
        ].
        recoveredBlock17Step = 353 ifTrue: [
            recoveredBlock17Local7 := recoveredBlock17Stack1.
            recoveredBlock17PC := 355.
        ].
        recoveredBlock17Step = 355 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 357.
        ].
        recoveredBlock17Step = 357 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local13.
            recoveredBlock17PC := 359.
        ].
        recoveredBlock17Step = 359 ifTrue: [
            recoveredBlock17Stack3 := 0.
            recoveredBlock17PC := 361.
        ].
        recoveredBlock17Step = 361 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local15.
            recoveredBlock17PC := 363.
        ].
        recoveredBlock17Step = 363 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local7.
            recoveredBlock17PC := 365.
        ].
        recoveredBlock17Step = 365 ifTrue: [
            recoveredBlock17Stack6 := recoveredBlock17Local8.
            recoveredBlock17PC := 367.
        ].
        recoveredBlock17Step = 367 ifTrue: [
            recoveredBlock17Stack7 := DibRgbColors.
            recoveredBlock17PC := 369.
        ].
        recoveredBlock17Step = 369 ifTrue: [
            (recoveredBlock17Stack1) getDIBits: (recoveredBlock17Stack2) nStartScan: (recoveredBlock17Stack3) cScanLines: (recoveredBlock17Stack4) lpvBits: (recoveredBlock17Stack5) lpbmi: (recoveredBlock17Stack6) fuColorUse: (recoveredBlock17Stack7).
            recoveredBlock17PC := 372.
        ].
        recoveredBlock17Step = 372 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 375.
        ].
        recoveredBlock17Step = 375 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local7.
            recoveredBlock17PC := 377.
        ].
        recoveredBlock17Step = 377 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 379.
        ].
        recoveredBlock17Step = 379 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local10.
            recoveredBlock17PC := 381.
        ].
        recoveredBlock17Step = 381 ifTrue: [
            (recoveredBlock17Stack1) flipScanlines: (recoveredBlock17Stack2) height: (recoveredBlock17Stack3) stride: (recoveredBlock17Stack4).
            recoveredBlock17PC := 384.
        ].
        recoveredBlock17Step = 384 ifTrue: [
            recoveredBlock17Stack1 := 0.
            recoveredBlock17PC := 386.
        ].
        recoveredBlock17Step = 386 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack1.
            recoveredBlock17PC := 387.
        ].
        recoveredBlock17Step = 387 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local7.
            recoveredBlock17PC := 389.
        ].
        recoveredBlock17Step = 389 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) size.
            recoveredBlock17PC := 391.
        ].
        recoveredBlock17Step = 391 ifTrue: [
            recoveredBlock17PC := 410.
        ].
        recoveredBlock17Step = 394 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local7.
            recoveredBlock17PC := 396.
        ].
        recoveredBlock17Step = 396 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 397.
        ].
        recoveredBlock17Step = 397 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local7.
            recoveredBlock17PC := 399.
        ].
        recoveredBlock17Step = 399 ifTrue: [
            recoveredBlock17Stack5 := recoveredBlock17Local1.
            recoveredBlock17PC := 400.
        ].
        recoveredBlock17Step = 400 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) at: (recoveredBlock17Stack5).
            recoveredBlock17PC := 402.
        ].
        recoveredBlock17Step = 402 ifTrue: [
            recoveredBlock17Stack5 := 255.
            recoveredBlock17PC := 406.
        ].
        recoveredBlock17Step = 406 ifTrue: [
            recoveredBlock17Stack4 := (recoveredBlock17Stack4) bitXor: (recoveredBlock17Stack5).
            recoveredBlock17PC := 408.
        ].
        recoveredBlock17Step = 408 ifTrue: [
            (recoveredBlock17Stack2) at: (recoveredBlock17Stack3) put: (recoveredBlock17Stack4).
            recoveredBlock17PC := 410.
        ].
        recoveredBlock17Step = 410 ifTrue: [
            (recoveredBlock17Stack1 isInteger and: [recoveredBlock17Local1 isInteger]) ifTrue: [(recoveredBlock17Local1 + 1 <= recoveredBlock17Stack1) ifTrue: [recoveredBlock17Local1 := recoveredBlock17Local1 + 1. recoveredBlock17PC := 394] ifFalse: [recoveredBlock17Local1 := nil. recoveredBlock17PC := 424]] ifFalse: [recoveredBlock17PC := 414].
        ].
        recoveredBlock17Step = 414 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Stack1.
            recoveredBlock17PC := 415.
        ].
        recoveredBlock17Step = 415 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local1.
            recoveredBlock17PC := 416.
        ].
        recoveredBlock17Step = 416 ifTrue: [
            recoveredBlock17Stack3 := (recoveredBlock17Stack3) + (1).
            recoveredBlock17PC := 417.
        ].
        recoveredBlock17Step = 417 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Stack3.
            recoveredBlock17PC := 418.
        ].
        recoveredBlock17Step = 418 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack4.
            recoveredBlock17PC := 419.
        ].
        recoveredBlock17Step = 419 ifTrue: [
            recoveredBlock17Stack2 := (recoveredBlock17Stack2) < (recoveredBlock17Stack3).
            recoveredBlock17PC := 420.
        ].
        recoveredBlock17Step = 420 ifTrue: [
            (recoveredBlock17Stack2) ifTrue: [recoveredBlock17PC := 422] ifFalse: [recoveredBlock17PC := 394].
        ].
        recoveredBlock17Step = 422 ifTrue: [
            recoveredBlock17Stack2 := nil.
            recoveredBlock17PC := 423.
        ].
        recoveredBlock17Step = 423 ifTrue: [
            recoveredBlock17Local1 := recoveredBlock17Stack2.
            recoveredBlock17PC := 424.
        ].
        recoveredBlock17Step = 424 ifTrue: [
            recoveredBlock17PC := 425.
        ].
        recoveredBlock17Step = 425 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local14.
            recoveredBlock17PC := 427.
        ].
        recoveredBlock17Step = 427 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local12.
            recoveredBlock17PC := 429.
        ].
        recoveredBlock17Step = 429 ifTrue: [
            (recoveredBlock17Stack1) selectObject: (recoveredBlock17Stack2).
            recoveredBlock17PC := 431.
        ].
        recoveredBlock17Step = 431 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local13.
            recoveredBlock17PC := 433.
        ].
        recoveredBlock17Step = 433 ifTrue: [
            (recoveredBlock17Stack1) deleteObject.
            recoveredBlock17PC := 435.
        ].
        recoveredBlock17Step = 435 ifTrue: [
            recoveredBlock17Stack1 := CgDeviceIndependentImage.
            recoveredBlock17PC := 437.
        ].
        recoveredBlock17Step = 437 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local16.
            recoveredBlock17PC := 439.
        ].
        recoveredBlock17Step = 439 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 441.
        ].
        recoveredBlock17Step = 441 ifTrue: [
            recoveredBlock17Stack4 := recoveredBlock17Local2.
            recoveredBlock17PC := 442.
        ].
        recoveredBlock17Step = 442 ifTrue: [
            recoveredBlock17Stack5 := CgDirectPalette.
            recoveredBlock17PC := 444.
        ].
        recoveredBlock17Step = 444 ifTrue: [
            recoveredBlock17Stack6 := 31.
            recoveredBlock17PC := 446.
        ].
        recoveredBlock17Step = 446 ifTrue: [
            recoveredBlock17Stack7 := 2016.
            recoveredBlock17PC := 450.
        ].
        recoveredBlock17Step = 450 ifTrue: [
            recoveredBlock17Stack8 := 63488.
            recoveredBlock17PC := 452.
        ].
        recoveredBlock17Step = 452 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) redMask: (recoveredBlock17Stack6) greenMask: (recoveredBlock17Stack7) blueMask: (recoveredBlock17Stack8).
            recoveredBlock17PC := 455.
        ].
        recoveredBlock17Step = 455 ifTrue: [
            recoveredBlock17Stack6 := 4.
            recoveredBlock17PC := 457.
        ].
        recoveredBlock17Step = 457 ifTrue: [
            recoveredBlock17Stack7 := recoveredBlock17Local9.
            recoveredBlock17PC := 459.
        ].
        recoveredBlock17Step = 459 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) width: (recoveredBlock17Stack2) height: (recoveredBlock17Stack3) depth: (recoveredBlock17Stack4) palette: (recoveredBlock17Stack5) scanlinePad: (recoveredBlock17Stack6) data: (recoveredBlock17Stack7).
            recoveredBlock17PC := 462.
        ].
        recoveredBlock17Step = 462 ifTrue: [
            recoveredBlock17Local4 := recoveredBlock17Stack1.
            recoveredBlock17PC := 463.
        ].
        recoveredBlock17Step = 463 ifTrue: [
            recoveredBlock17Stack1 := CgDeviceIndependentImage.
            recoveredBlock17PC := 465.
        ].
        recoveredBlock17Step = 465 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local16.
            recoveredBlock17PC := 467.
        ].
        recoveredBlock17Step = 467 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local15.
            recoveredBlock17PC := 469.
        ].
        recoveredBlock17Step = 469 ifTrue: [
            recoveredBlock17Stack4 := 1.
            recoveredBlock17PC := 471.
        ].
        recoveredBlock17Step = 471 ifTrue: [
            recoveredBlock17Stack5 := CgIndexedPalette.
            recoveredBlock17PC := 473.
        ].
        recoveredBlock17Step = 473 ifTrue: [
            recoveredBlock17Stack5 := (recoveredBlock17Stack5) blackAndWhite.
            recoveredBlock17PC := 475.
        ].
        recoveredBlock17Step = 475 ifTrue: [
            recoveredBlock17Stack6 := 4.
            recoveredBlock17PC := 477.
        ].
        recoveredBlock17Step = 477 ifTrue: [
            recoveredBlock17Stack7 := recoveredBlock17Local7.
            recoveredBlock17PC := 479.
        ].
        recoveredBlock17Step = 479 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) width: (recoveredBlock17Stack2) height: (recoveredBlock17Stack3) depth: (recoveredBlock17Stack4) palette: (recoveredBlock17Stack5) scanlinePad: (recoveredBlock17Stack6) data: (recoveredBlock17Stack7).
            recoveredBlock17PC := 482.
        ].
        recoveredBlock17Step = 482 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 483.
        ].
        recoveredBlock17Step = 483 ifTrue: [
            recoveredBlock17Stack1 := recoveredArg1.
            recoveredBlock17PC := 486.
        ].
        recoveredBlock17Step = 486 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) maskImage.
            recoveredBlock17PC := 488.
        ].
        recoveredBlock17Step = 488 ifTrue: [
            recoveredBlock17Local3 := recoveredBlock17Stack1.
            recoveredBlock17PC := 489.
        ].
        recoveredBlock17Step = 489 ifTrue: [
            recoveredBlock17Stack1 := EtasIcon.
            recoveredBlock17PC := 491.
        ].
        recoveredBlock17Step = 491 ifTrue: [
            recoveredBlock17Stack2 := recoveredBlock17Local4.
            recoveredBlock17PC := 492.
        ].
        recoveredBlock17Step = 492 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local3.
            recoveredBlock17PC := 493.
        ].
        recoveredBlock17Step = 493 ifTrue: [
            recoveredBlock17Stack1 := (recoveredBlock17Stack1) fromImage: (recoveredBlock17Stack2) maskImage: (recoveredBlock17Stack3).
            recoveredBlock17PC := 495.
        ].
        recoveredBlock17Step = 495 ifTrue: [
            recoveredBlock17Local17 := recoveredBlock17Stack1.
            recoveredBlock17PC := 497.
        ].
        recoveredBlock17Step = 497 ifTrue: [
            recoveredBlock17Stack1 := cachedResources.
            recoveredBlock17PC := 499.
        ].
        recoveredBlock17Step = 499 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 502.
        ].
        recoveredBlock17Step = 502 ifTrue: [
            recoveredBlock17Stack3 := recoveredBlock17Local17.
            recoveredBlock17PC := 504.
        ].
        recoveredBlock17Step = 504 ifTrue: [
            (recoveredBlock17Stack1) at: (recoveredBlock17Stack2) put: (recoveredBlock17Stack3).
            recoveredBlock17PC := 506.
        ].
        recoveredBlock17Step = 506 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local17.
            recoveredBlock17PC := 508.
        ].
        recoveredBlock17Step = 508 ifTrue: [
            recoveredBlock17Stack2 := recoveredLocal1.
            recoveredBlock17PC := 511.
        ].
        recoveredBlock17Step = 511 ifTrue: [
            (recoveredBlock17Stack1) name: (recoveredBlock17Stack2).
            recoveredBlock17PC := 513.
        ].
        recoveredBlock17Step = 513 ifTrue: [
            recoveredBlock17Stack1 := recoveredBlock17Local17.
            recoveredBlock17PC := 515.
        ].
        recoveredBlock17Step = 515 ifTrue: [
            ^recoveredBlock17Stack1
        ].
    ].
    recoveredBlock17Result
].
    recoveredValue5 := (self) iconAt: (recoveredValue3) ifAbsent: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20621bd4; bytecode file offset 0xf1e558"
!RBWindowsResourceManager methodsFor: 'recovered'!
returnIconOverlayed: recoveredArg1 with: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) name.
    recoveredValue2 := (recoveredValue1) , ('_OVERLAY_').
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue3) name.
    recoveredValue5 := (recoveredValue2) , (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := [
    | recoveredBlock22Local1 recoveredBlock22Local2 recoveredBlock22Local3 recoveredBlock22Local4 recoveredBlock22Local5 recoveredBlock22Local6 recoveredBlock22Local7 recoveredBlock22Local8 recoveredBlock22Local9 recoveredBlock22Local10 recoveredBlock22Local11 recoveredBlock22Local12 recoveredBlock22Local13 recoveredBlock22Local14 recoveredBlock22Local15 recoveredBlock22Local16 recoveredBlock22Local17 recoveredBlock22Stack0 recoveredBlock22Stack1 recoveredBlock22Stack2 recoveredBlock22Stack3 recoveredBlock22Stack4 recoveredBlock22Stack5 recoveredBlock22Stack6 recoveredBlock22Stack7 recoveredBlock22Stack8 recoveredBlock22Stack9 recoveredBlock22Stack10 recoveredBlock22PC recoveredBlock22Step recoveredBlock22Done recoveredBlock22Result |
    recoveredBlock22Stack0 := self.
    recoveredBlock22PC := 28.
    recoveredBlock22Done := false.
    [recoveredBlock22Done not] whileTrue: [
        recoveredBlock22Step := recoveredBlock22PC.
        recoveredBlock22Step = 28 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 31.
        ].
        recoveredBlock22Step = 31 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) width.
            recoveredBlock22PC := 32.
        ].
        recoveredBlock22Step = 32 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg2.
            recoveredBlock22PC := 35.
        ].
        recoveredBlock22Step = 35 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) width.
            recoveredBlock22PC := 36.
        ].
        recoveredBlock22Step = 36 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) max: (recoveredBlock22Stack2).
            recoveredBlock22PC := 38.
        ].
        recoveredBlock22Step = 38 ifTrue: [
            recoveredBlock22Local16 := recoveredBlock22Stack1.
            recoveredBlock22PC := 40.
        ].
        recoveredBlock22Step = 40 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 43.
        ].
        recoveredBlock22Step = 43 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) height.
            recoveredBlock22PC := 45.
        ].
        recoveredBlock22Step = 45 ifTrue: [
            recoveredBlock22Stack2 := recoveredArg2.
            recoveredBlock22PC := 48.
        ].
        recoveredBlock22Step = 48 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) height.
            recoveredBlock22PC := 50.
        ].
        recoveredBlock22Step = 50 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) max: (recoveredBlock22Stack2).
            recoveredBlock22PC := 52.
        ].
        recoveredBlock22Step = 52 ifTrue: [
            recoveredBlock22Local15 := recoveredBlock22Stack1.
            recoveredBlock22PC := 54.
        ].
        recoveredBlock22Step = 54 ifTrue: [
            recoveredBlock22Stack1 := 24.
            recoveredBlock22PC := 56.
        ].
        recoveredBlock22Step = 56 ifTrue: [
            recoveredBlock22Local2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 57.
        ].
        recoveredBlock22Step = 57 ifTrue: [
            recoveredBlock22Stack1 := CgServer.
            recoveredBlock22PC := 59.
        ].
        recoveredBlock22Step = 59 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) default.
            recoveredBlock22PC := 61.
        ].
        recoveredBlock22Step = 61 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) hdcMem.
            recoveredBlock22PC := 63.
        ].
        recoveredBlock22Step = 63 ifTrue: [
            recoveredBlock22Local14 := recoveredBlock22Stack1.
            recoveredBlock22PC := 65.
        ].
        recoveredBlock22Step = 65 ifTrue: [
            recoveredBlock22Stack1 := CgServer.
            recoveredBlock22PC := 67.
        ].
        recoveredBlock22Step = 67 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) default.
            recoveredBlock22PC := 69.
        ].
        recoveredBlock22Step = 69 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) deviceContext.
            recoveredBlock22PC := 71.
        ].
        recoveredBlock22Step = 71 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local16.
            recoveredBlock22PC := 73.
        ].
        recoveredBlock22Step = 73 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 75.
        ].
        recoveredBlock22Step = 75 ifTrue: [
            recoveredBlock22Stack4 := 2.
            recoveredBlock22PC := 77.
        ].
        recoveredBlock22Step = 77 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) * (recoveredBlock22Stack4).
            recoveredBlock22PC := 78.
        ].
        recoveredBlock22Step = 78 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) createCompatibleBitmap: (recoveredBlock22Stack2) nHeight: (recoveredBlock22Stack3).
            recoveredBlock22PC := 80.
        ].
        recoveredBlock22Step = 80 ifTrue: [
            recoveredBlock22Local13 := recoveredBlock22Stack1.
            recoveredBlock22PC := 82.
        ].
        recoveredBlock22Step = 82 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 84.
        ].
        recoveredBlock22Step = 84 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local13.
            recoveredBlock22PC := 86.
        ].
        recoveredBlock22Step = 86 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) selectObject: (recoveredBlock22Stack2).
            recoveredBlock22PC := 88.
        ].
        recoveredBlock22Step = 88 ifTrue: [
            recoveredBlock22Local12 := recoveredBlock22Stack1.
            recoveredBlock22PC := 90.
        ].
        recoveredBlock22Step = 90 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 92.
        ].
        recoveredBlock22Step = 92 ifTrue: [
            recoveredBlock22Stack2 := 0.
            recoveredBlock22PC := 94.
        ].
        recoveredBlock22Step = 94 ifTrue: [
            recoveredBlock22Stack3 := 0.
            recoveredBlock22PC := 96.
        ].
        recoveredBlock22Step = 96 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local16.
            recoveredBlock22PC := 98.
        ].
        recoveredBlock22Step = 98 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local15.
            recoveredBlock22PC := 100.
        ].
        recoveredBlock22Step = 100 ifTrue: [
            recoveredBlock22Stack6 := Blackness.
            recoveredBlock22PC := 102.
        ].
        recoveredBlock22Step = 102 ifTrue: [
            (recoveredBlock22Stack1) patBlt: (recoveredBlock22Stack2) nTopRect: (recoveredBlock22Stack3) nwidth: (recoveredBlock22Stack4) nheight: (recoveredBlock22Stack5) fdwRop: (recoveredBlock22Stack6).
            recoveredBlock22PC := 105.
        ].
        recoveredBlock22Step = 105 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 107.
        ].
        recoveredBlock22Step = 107 ifTrue: [
            recoveredBlock22Stack2 := 0.
            recoveredBlock22PC := 109.
        ].
        recoveredBlock22Step = 109 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 111.
        ].
        recoveredBlock22Step = 111 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local16.
            recoveredBlock22PC := 113.
        ].
        recoveredBlock22Step = 113 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local15.
            recoveredBlock22PC := 115.
        ].
        recoveredBlock22Step = 115 ifTrue: [
            recoveredBlock22Stack6 := Whiteness.
            recoveredBlock22PC := 117.
        ].
        recoveredBlock22Step = 117 ifTrue: [
            (recoveredBlock22Stack1) patBlt: (recoveredBlock22Stack2) nTopRect: (recoveredBlock22Stack3) nwidth: (recoveredBlock22Stack4) nheight: (recoveredBlock22Stack5) fdwRop: (recoveredBlock22Stack6).
            recoveredBlock22PC := 120.
        ].
        recoveredBlock22Step = 120 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 122.
        ].
        recoveredBlock22Step = 122 ifTrue: [
            recoveredBlock22Stack2 := 0.
            recoveredBlock22PC := 124.
        ].
        recoveredBlock22Step = 124 ifTrue: [
            recoveredBlock22Stack3 := 0.
            recoveredBlock22PC := 126.
        ].
        recoveredBlock22Step = 126 ifTrue: [
            recoveredBlock22Stack4 := recoveredArg1.
            recoveredBlock22PC := 129.
        ].
        recoveredBlock22Step = 129 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) handle.
            recoveredBlock22PC := 131.
        ].
        recoveredBlock22Step = 131 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local16.
            recoveredBlock22PC := 133.
        ].
        recoveredBlock22Step = 133 ifTrue: [
            recoveredBlock22Stack6 := recoveredBlock22Local15.
            recoveredBlock22PC := 135.
        ].
        recoveredBlock22Step = 135 ifTrue: [
            recoveredBlock22Stack7 := 0.
            recoveredBlock22PC := 137.
        ].
        recoveredBlock22Step = 137 ifTrue: [
            recoveredBlock22Stack8 := nil.
            recoveredBlock22PC := 138.
        ].
        recoveredBlock22Step = 138 ifTrue: [
            recoveredBlock22Stack9 := DiNormal.
            recoveredBlock22PC := 140.
        ].
        recoveredBlock22Step = 140 ifTrue: [
            (recoveredBlock22Stack1) drawIconEx: (recoveredBlock22Stack2) yTop: (recoveredBlock22Stack3) hIcon: (recoveredBlock22Stack4) cxWidth: (recoveredBlock22Stack5) cyWidth: (recoveredBlock22Stack6) istepIfAniCur: (recoveredBlock22Stack7) hbrFlickerFreeDraw: (recoveredBlock22Stack8) diFlags: (recoveredBlock22Stack9).
            recoveredBlock22PC := 143.
        ].
        recoveredBlock22Step = 143 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 145.
        ].
        recoveredBlock22Step = 145 ifTrue: [
            recoveredBlock22Stack2 := 0.
            recoveredBlock22PC := 147.
        ].
        recoveredBlock22Step = 147 ifTrue: [
            recoveredBlock22Stack3 := 0.
            recoveredBlock22PC := 149.
        ].
        recoveredBlock22Step = 149 ifTrue: [
            recoveredBlock22Stack4 := recoveredArg2.
            recoveredBlock22PC := 152.
        ].
        recoveredBlock22Step = 152 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) handle.
            recoveredBlock22PC := 154.
        ].
        recoveredBlock22Step = 154 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local16.
            recoveredBlock22PC := 156.
        ].
        recoveredBlock22Step = 156 ifTrue: [
            recoveredBlock22Stack6 := recoveredBlock22Local15.
            recoveredBlock22PC := 158.
        ].
        recoveredBlock22Step = 158 ifTrue: [
            recoveredBlock22Stack7 := 0.
            recoveredBlock22PC := 160.
        ].
        recoveredBlock22Step = 160 ifTrue: [
            recoveredBlock22Stack8 := nil.
            recoveredBlock22PC := 161.
        ].
        recoveredBlock22Step = 161 ifTrue: [
            recoveredBlock22Stack9 := DiNormal.
            recoveredBlock22PC := 163.
        ].
        recoveredBlock22Step = 163 ifTrue: [
            (recoveredBlock22Stack1) drawIconEx: (recoveredBlock22Stack2) yTop: (recoveredBlock22Stack3) hIcon: (recoveredBlock22Stack4) cxWidth: (recoveredBlock22Stack5) cyWidth: (recoveredBlock22Stack6) istepIfAniCur: (recoveredBlock22Stack7) hbrFlickerFreeDraw: (recoveredBlock22Stack8) diFlags: (recoveredBlock22Stack9).
            recoveredBlock22PC := 166.
        ].
        recoveredBlock22Step = 166 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 168.
        ].
        recoveredBlock22Step = 168 ifTrue: [
            recoveredBlock22Stack2 := 0.
            recoveredBlock22PC := 170.
        ].
        recoveredBlock22Step = 170 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 172.
        ].
        recoveredBlock22Step = 172 ifTrue: [
            recoveredBlock22Stack4 := recoveredArg1.
            recoveredBlock22PC := 175.
        ].
        recoveredBlock22Step = 175 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) handle.
            recoveredBlock22PC := 177.
        ].
        recoveredBlock22Step = 177 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local16.
            recoveredBlock22PC := 179.
        ].
        recoveredBlock22Step = 179 ifTrue: [
            recoveredBlock22Stack6 := recoveredBlock22Local15.
            recoveredBlock22PC := 181.
        ].
        recoveredBlock22Step = 181 ifTrue: [
            recoveredBlock22Stack7 := 0.
            recoveredBlock22PC := 183.
        ].
        recoveredBlock22Step = 183 ifTrue: [
            recoveredBlock22Stack8 := nil.
            recoveredBlock22PC := 184.
        ].
        recoveredBlock22Step = 184 ifTrue: [
            recoveredBlock22Stack9 := DiNormal.
            recoveredBlock22PC := 186.
        ].
        recoveredBlock22Step = 186 ifTrue: [
            (recoveredBlock22Stack1) drawIconEx: (recoveredBlock22Stack2) yTop: (recoveredBlock22Stack3) hIcon: (recoveredBlock22Stack4) cxWidth: (recoveredBlock22Stack5) cyWidth: (recoveredBlock22Stack6) istepIfAniCur: (recoveredBlock22Stack7) hbrFlickerFreeDraw: (recoveredBlock22Stack8) diFlags: (recoveredBlock22Stack9).
            recoveredBlock22PC := 189.
        ].
        recoveredBlock22Step = 189 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 191.
        ].
        recoveredBlock22Step = 191 ifTrue: [
            recoveredBlock22Stack2 := 0.
            recoveredBlock22PC := 193.
        ].
        recoveredBlock22Step = 193 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 195.
        ].
        recoveredBlock22Step = 195 ifTrue: [
            recoveredBlock22Stack4 := recoveredArg2.
            recoveredBlock22PC := 198.
        ].
        recoveredBlock22Step = 198 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) handle.
            recoveredBlock22PC := 200.
        ].
        recoveredBlock22Step = 200 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local16.
            recoveredBlock22PC := 202.
        ].
        recoveredBlock22Step = 202 ifTrue: [
            recoveredBlock22Stack6 := recoveredBlock22Local15.
            recoveredBlock22PC := 204.
        ].
        recoveredBlock22Step = 204 ifTrue: [
            recoveredBlock22Stack7 := 0.
            recoveredBlock22PC := 206.
        ].
        recoveredBlock22Step = 206 ifTrue: [
            recoveredBlock22Stack8 := nil.
            recoveredBlock22PC := 207.
        ].
        recoveredBlock22Step = 207 ifTrue: [
            recoveredBlock22Stack9 := DiNormal.
            recoveredBlock22PC := 209.
        ].
        recoveredBlock22Step = 209 ifTrue: [
            (recoveredBlock22Stack1) drawIconEx: (recoveredBlock22Stack2) yTop: (recoveredBlock22Stack3) hIcon: (recoveredBlock22Stack4) cxWidth: (recoveredBlock22Stack5) cyWidth: (recoveredBlock22Stack6) istepIfAniCur: (recoveredBlock22Stack7) hbrFlickerFreeDraw: (recoveredBlock22Stack8) diFlags: (recoveredBlock22Stack9).
            recoveredBlock22PC := 212.
        ].
        recoveredBlock22Step = 212 ifTrue: [
            recoveredBlock22Stack1 := OSBitmapinfo.
            recoveredBlock22PC := 214.
        ].
        recoveredBlock22Step = 214 ifTrue: [
            recoveredBlock22Stack2 := 16.
            recoveredBlock22PC := 216.
        ].
        recoveredBlock22Step = 216 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) newVariable: (recoveredBlock22Stack2).
            recoveredBlock22PC := 218.
        ].
        recoveredBlock22Step = 218 ifTrue: [
            recoveredBlock22Stack2 := OSBitmapinfoheader.
            recoveredBlock22PC := 220.
        ].
        recoveredBlock22Step = 220 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) new.
            recoveredBlock22PC := 222.
        ].
        recoveredBlock22Step = 222 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 223.
        ].
        recoveredBlock22Step = 223 ifTrue: [
            recoveredBlock22Stack4 := OSBitmapinfoheader.
            recoveredBlock22PC := 225.
        ].
        recoveredBlock22Step = 225 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) fixedSize.
            recoveredBlock22PC := 227.
        ].
        recoveredBlock22Step = 227 ifTrue: [
            (recoveredBlock22Stack3) biSize: (recoveredBlock22Stack4).
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 230.
        ].
        recoveredBlock22Step = 230 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local16.
            recoveredBlock22PC := 232.
        ].
        recoveredBlock22Step = 232 ifTrue: [
            (recoveredBlock22Stack3) biWidth: (recoveredBlock22Stack4).
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 235.
        ].
        recoveredBlock22Step = 235 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local15.
            recoveredBlock22PC := 237.
        ].
        recoveredBlock22Step = 237 ifTrue: [
            (recoveredBlock22Stack3) biHeight: (recoveredBlock22Stack4).
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 240.
        ].
        recoveredBlock22Step = 240 ifTrue: [
            recoveredBlock22Stack4 := 1.
            recoveredBlock22PC := 242.
        ].
        recoveredBlock22Step = 242 ifTrue: [
            (recoveredBlock22Stack3) biPlanes: (recoveredBlock22Stack4).
            recoveredBlock22PC := 244.
        ].
        recoveredBlock22Step = 244 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local2.
            recoveredBlock22PC := 245.
        ].
        recoveredBlock22Step = 245 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) biBitCount: (recoveredBlock22Stack3).
            recoveredBlock22PC := 247.
        ].
        recoveredBlock22Step = 247 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) bmiHeader: (recoveredBlock22Stack2).
            recoveredBlock22PC := 249.
        ].
        recoveredBlock22Step = 249 ifTrue: [
            recoveredBlock22Local11 := recoveredBlock22Stack1.
            recoveredBlock22PC := 251.
        ].
        recoveredBlock22Step = 251 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local16.
            recoveredBlock22PC := 253.
        ].
        recoveredBlock22Step = 253 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local2.
            recoveredBlock22PC := 254.
        ].
        recoveredBlock22Step = 254 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) * (recoveredBlock22Stack2).
            recoveredBlock22PC := 255.
        ].
        recoveredBlock22Step = 255 ifTrue: [
            recoveredBlock22Stack2 := 31.
            recoveredBlock22PC := 257.
        ].
        recoveredBlock22Step = 257 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (recoveredBlock22Stack2).
            recoveredBlock22PC := 258.
        ].
        recoveredBlock22Step = 258 ifTrue: [
            recoveredBlock22Stack2 := 32.
            recoveredBlock22PC := 260.
        ].
        recoveredBlock22Step = 260 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) // (recoveredBlock22Stack2).
            recoveredBlock22PC := 261.
        ].
        recoveredBlock22Step = 261 ifTrue: [
            recoveredBlock22Stack2 := 4.
            recoveredBlock22PC := 263.
        ].
        recoveredBlock22Step = 263 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) * (recoveredBlock22Stack2).
            recoveredBlock22PC := 264.
        ].
        recoveredBlock22Step = 264 ifTrue: [
            recoveredBlock22Local10 := recoveredBlock22Stack1.
            recoveredBlock22PC := 266.
        ].
        recoveredBlock22Step = 266 ifTrue: [
            recoveredBlock22Stack1 := ByteArray.
            recoveredBlock22PC := 268.
        ].
        recoveredBlock22Step = 268 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local10.
            recoveredBlock22PC := 270.
        ].
        recoveredBlock22Step = 270 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 272.
        ].
        recoveredBlock22Step = 272 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) * (recoveredBlock22Stack3).
            recoveredBlock22PC := 273.
        ].
        recoveredBlock22Step = 273 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) new: (recoveredBlock22Stack2).
            recoveredBlock22PC := 275.
        ].
        recoveredBlock22Step = 275 ifTrue: [
            recoveredBlock22Local9 := recoveredBlock22Stack1.
            recoveredBlock22PC := 277.
        ].
        recoveredBlock22Step = 277 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 279.
        ].
        recoveredBlock22Step = 279 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local13.
            recoveredBlock22PC := 281.
        ].
        recoveredBlock22Step = 281 ifTrue: [
            recoveredBlock22Stack3 := 0.
            recoveredBlock22PC := 283.
        ].
        recoveredBlock22Step = 283 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local15.
            recoveredBlock22PC := 285.
        ].
        recoveredBlock22Step = 285 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local9.
            recoveredBlock22PC := 287.
        ].
        recoveredBlock22Step = 287 ifTrue: [
            recoveredBlock22Stack6 := recoveredBlock22Local11.
            recoveredBlock22PC := 289.
        ].
        recoveredBlock22Step = 289 ifTrue: [
            recoveredBlock22Stack7 := DibRgbColors.
            recoveredBlock22PC := 291.
        ].
        recoveredBlock22Step = 291 ifTrue: [
            (recoveredBlock22Stack1) getDIBits: (recoveredBlock22Stack2) nStartScan: (recoveredBlock22Stack3) cScanLines: (recoveredBlock22Stack4) lpvBits: (recoveredBlock22Stack5) lpbmi: (recoveredBlock22Stack6) fuColorUse: (recoveredBlock22Stack7).
            recoveredBlock22PC := 294.
        ].
        recoveredBlock22Step = 294 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 297.
        ].
        recoveredBlock22Step = 297 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local9.
            recoveredBlock22PC := 299.
        ].
        recoveredBlock22Step = 299 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 301.
        ].
        recoveredBlock22Step = 301 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local10.
            recoveredBlock22PC := 303.
        ].
        recoveredBlock22Step = 303 ifTrue: [
            (recoveredBlock22Stack1) flipScanlines: (recoveredBlock22Stack2) height: (recoveredBlock22Stack3) stride: (recoveredBlock22Stack4).
            recoveredBlock22PC := 306.
        ].
        recoveredBlock22Step = 306 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 308.
        ].
        recoveredBlock22Step = 308 ifTrue: [
            recoveredBlock22Stack2 := 0.
            recoveredBlock22PC := 310.
        ].
        recoveredBlock22Step = 310 ifTrue: [
            recoveredBlock22Stack3 := 0.
            recoveredBlock22PC := 312.
        ].
        recoveredBlock22Step = 312 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local16.
            recoveredBlock22PC := 314.
        ].
        recoveredBlock22Step = 314 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local15.
            recoveredBlock22PC := 316.
        ].
        recoveredBlock22Step = 316 ifTrue: [
            recoveredBlock22Stack6 := recoveredBlock22Local14.
            recoveredBlock22PC := 318.
        ].
        recoveredBlock22Step = 318 ifTrue: [
            recoveredBlock22Stack7 := 0.
            recoveredBlock22PC := 320.
        ].
        recoveredBlock22Step = 320 ifTrue: [
            recoveredBlock22Stack8 := recoveredBlock22Local15.
            recoveredBlock22PC := 322.
        ].
        recoveredBlock22Step = 322 ifTrue: [
            recoveredBlock22Stack9 := Srcinvert.
            recoveredBlock22PC := 324.
        ].
        recoveredBlock22Step = 324 ifTrue: [
            (recoveredBlock22Stack1) bitBlt: (recoveredBlock22Stack2) nYDest: (recoveredBlock22Stack3) nWidth: (recoveredBlock22Stack4) nHeight: (recoveredBlock22Stack5) hdcSrc: (recoveredBlock22Stack6) nXSrc: (recoveredBlock22Stack7) nYSrc: (recoveredBlock22Stack8) dwRop: (recoveredBlock22Stack9).
            recoveredBlock22PC := 327.
        ].
        recoveredBlock22Step = 327 ifTrue: [
            recoveredBlock22Stack1 := OSBitmapinfo.
            recoveredBlock22PC := 329.
        ].
        recoveredBlock22Step = 329 ifTrue: [
            recoveredBlock22Stack2 := 2.
            recoveredBlock22PC := 331.
        ].
        recoveredBlock22Step = 331 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) newVariable: (recoveredBlock22Stack2).
            recoveredBlock22PC := 333.
        ].
        recoveredBlock22Step = 333 ifTrue: [
            recoveredBlock22Stack2 := OSBitmapinfoheader.
            recoveredBlock22PC := 335.
        ].
        recoveredBlock22Step = 335 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) new.
            recoveredBlock22PC := 337.
        ].
        recoveredBlock22Step = 337 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 338.
        ].
        recoveredBlock22Step = 338 ifTrue: [
            recoveredBlock22Stack4 := OSBitmapinfoheader.
            recoveredBlock22PC := 340.
        ].
        recoveredBlock22Step = 340 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) fixedSize.
            recoveredBlock22PC := 342.
        ].
        recoveredBlock22Step = 342 ifTrue: [
            (recoveredBlock22Stack3) biSize: (recoveredBlock22Stack4).
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 345.
        ].
        recoveredBlock22Step = 345 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local16.
            recoveredBlock22PC := 347.
        ].
        recoveredBlock22Step = 347 ifTrue: [
            (recoveredBlock22Stack3) biWidth: (recoveredBlock22Stack4).
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 350.
        ].
        recoveredBlock22Step = 350 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local15.
            recoveredBlock22PC := 352.
        ].
        recoveredBlock22Step = 352 ifTrue: [
            (recoveredBlock22Stack3) biHeight: (recoveredBlock22Stack4).
            recoveredBlock22Stack3 := recoveredBlock22Stack2.
            recoveredBlock22PC := 355.
        ].
        recoveredBlock22Step = 355 ifTrue: [
            recoveredBlock22Stack4 := 1.
            recoveredBlock22PC := 357.
        ].
        recoveredBlock22Step = 357 ifTrue: [
            (recoveredBlock22Stack3) biPlanes: (recoveredBlock22Stack4).
            recoveredBlock22PC := 359.
        ].
        recoveredBlock22Step = 359 ifTrue: [
            recoveredBlock22Stack3 := 1.
            recoveredBlock22PC := 361.
        ].
        recoveredBlock22Step = 361 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) biBitCount: (recoveredBlock22Stack3).
            recoveredBlock22PC := 363.
        ].
        recoveredBlock22Step = 363 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) bmiHeader: (recoveredBlock22Stack2).
            recoveredBlock22PC := 365.
        ].
        recoveredBlock22Step = 365 ifTrue: [
            recoveredBlock22Local8 := recoveredBlock22Stack1.
            recoveredBlock22PC := 367.
        ].
        recoveredBlock22Step = 367 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local16.
            recoveredBlock22PC := 369.
        ].
        recoveredBlock22Step = 369 ifTrue: [
            recoveredBlock22Stack2 := 31.
            recoveredBlock22PC := 371.
        ].
        recoveredBlock22Step = 371 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) + (recoveredBlock22Stack2).
            recoveredBlock22PC := 372.
        ].
        recoveredBlock22Step = 372 ifTrue: [
            recoveredBlock22Stack2 := 32.
            recoveredBlock22PC := 374.
        ].
        recoveredBlock22Step = 374 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) // (recoveredBlock22Stack2).
            recoveredBlock22PC := 375.
        ].
        recoveredBlock22Step = 375 ifTrue: [
            recoveredBlock22Stack2 := 4.
            recoveredBlock22PC := 377.
        ].
        recoveredBlock22Step = 377 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) * (recoveredBlock22Stack2).
            recoveredBlock22PC := 378.
        ].
        recoveredBlock22Step = 378 ifTrue: [
            recoveredBlock22Local10 := recoveredBlock22Stack1.
            recoveredBlock22PC := 380.
        ].
        recoveredBlock22Step = 380 ifTrue: [
            recoveredBlock22Stack1 := ByteArray.
            recoveredBlock22PC := 382.
        ].
        recoveredBlock22Step = 382 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local10.
            recoveredBlock22PC := 384.
        ].
        recoveredBlock22Step = 384 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 386.
        ].
        recoveredBlock22Step = 386 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) * (recoveredBlock22Stack3).
            recoveredBlock22PC := 387.
        ].
        recoveredBlock22Step = 387 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) new: (recoveredBlock22Stack2).
            recoveredBlock22PC := 389.
        ].
        recoveredBlock22Step = 389 ifTrue: [
            recoveredBlock22Local7 := recoveredBlock22Stack1.
            recoveredBlock22PC := 391.
        ].
        recoveredBlock22Step = 391 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 393.
        ].
        recoveredBlock22Step = 393 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local13.
            recoveredBlock22PC := 395.
        ].
        recoveredBlock22Step = 395 ifTrue: [
            recoveredBlock22Stack3 := 0.
            recoveredBlock22PC := 397.
        ].
        recoveredBlock22Step = 397 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local15.
            recoveredBlock22PC := 399.
        ].
        recoveredBlock22Step = 399 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local7.
            recoveredBlock22PC := 401.
        ].
        recoveredBlock22Step = 401 ifTrue: [
            recoveredBlock22Stack6 := recoveredBlock22Local8.
            recoveredBlock22PC := 403.
        ].
        recoveredBlock22Step = 403 ifTrue: [
            recoveredBlock22Stack7 := DibRgbColors.
            recoveredBlock22PC := 405.
        ].
        recoveredBlock22Step = 405 ifTrue: [
            (recoveredBlock22Stack1) getDIBits: (recoveredBlock22Stack2) nStartScan: (recoveredBlock22Stack3) cScanLines: (recoveredBlock22Stack4) lpvBits: (recoveredBlock22Stack5) lpbmi: (recoveredBlock22Stack6) fuColorUse: (recoveredBlock22Stack7).
            recoveredBlock22PC := 408.
        ].
        recoveredBlock22Step = 408 ifTrue: [
            recoveredBlock22Stack1 := recoveredArg1.
            recoveredBlock22PC := 411.
        ].
        recoveredBlock22Step = 411 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local7.
            recoveredBlock22PC := 413.
        ].
        recoveredBlock22Step = 413 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 415.
        ].
        recoveredBlock22Step = 415 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local10.
            recoveredBlock22PC := 417.
        ].
        recoveredBlock22Step = 417 ifTrue: [
            (recoveredBlock22Stack1) flipScanlines: (recoveredBlock22Stack2) height: (recoveredBlock22Stack3) stride: (recoveredBlock22Stack4).
            recoveredBlock22PC := 420.
        ].
        recoveredBlock22Step = 420 ifTrue: [
            recoveredBlock22Stack1 := 0.
            recoveredBlock22PC := 422.
        ].
        recoveredBlock22Step = 422 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack1.
            recoveredBlock22PC := 423.
        ].
        recoveredBlock22Step = 423 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local7.
            recoveredBlock22PC := 425.
        ].
        recoveredBlock22Step = 425 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) size.
            recoveredBlock22PC := 427.
        ].
        recoveredBlock22Step = 427 ifTrue: [
            recoveredBlock22PC := 446.
        ].
        recoveredBlock22Step = 430 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local7.
            recoveredBlock22PC := 432.
        ].
        recoveredBlock22Step = 432 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local1.
            recoveredBlock22PC := 433.
        ].
        recoveredBlock22Step = 433 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local7.
            recoveredBlock22PC := 435.
        ].
        recoveredBlock22Step = 435 ifTrue: [
            recoveredBlock22Stack5 := recoveredBlock22Local1.
            recoveredBlock22PC := 436.
        ].
        recoveredBlock22Step = 436 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) at: (recoveredBlock22Stack5).
            recoveredBlock22PC := 438.
        ].
        recoveredBlock22Step = 438 ifTrue: [
            recoveredBlock22Stack5 := 255.
            recoveredBlock22PC := 442.
        ].
        recoveredBlock22Step = 442 ifTrue: [
            recoveredBlock22Stack4 := (recoveredBlock22Stack4) bitXor: (recoveredBlock22Stack5).
            recoveredBlock22PC := 444.
        ].
        recoveredBlock22Step = 444 ifTrue: [
            (recoveredBlock22Stack2) at: (recoveredBlock22Stack3) put: (recoveredBlock22Stack4).
            recoveredBlock22PC := 446.
        ].
        recoveredBlock22Step = 446 ifTrue: [
            (recoveredBlock22Stack1 isInteger and: [recoveredBlock22Local1 isInteger]) ifTrue: [(recoveredBlock22Local1 + 1 <= recoveredBlock22Stack1) ifTrue: [recoveredBlock22Local1 := recoveredBlock22Local1 + 1. recoveredBlock22PC := 430] ifFalse: [recoveredBlock22Local1 := nil. recoveredBlock22PC := 460]] ifFalse: [recoveredBlock22PC := 450].
        ].
        recoveredBlock22Step = 450 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Stack1.
            recoveredBlock22PC := 451.
        ].
        recoveredBlock22Step = 451 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local1.
            recoveredBlock22PC := 452.
        ].
        recoveredBlock22Step = 452 ifTrue: [
            recoveredBlock22Stack3 := (recoveredBlock22Stack3) + (1).
            recoveredBlock22PC := 453.
        ].
        recoveredBlock22Step = 453 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Stack3.
            recoveredBlock22PC := 454.
        ].
        recoveredBlock22Step = 454 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack4.
            recoveredBlock22PC := 455.
        ].
        recoveredBlock22Step = 455 ifTrue: [
            recoveredBlock22Stack2 := (recoveredBlock22Stack2) < (recoveredBlock22Stack3).
            recoveredBlock22PC := 456.
        ].
        recoveredBlock22Step = 456 ifTrue: [
            (recoveredBlock22Stack2) ifTrue: [recoveredBlock22PC := 458] ifFalse: [recoveredBlock22PC := 430].
        ].
        recoveredBlock22Step = 458 ifTrue: [
            recoveredBlock22Stack2 := nil.
            recoveredBlock22PC := 459.
        ].
        recoveredBlock22Step = 459 ifTrue: [
            recoveredBlock22Local1 := recoveredBlock22Stack2.
            recoveredBlock22PC := 460.
        ].
        recoveredBlock22Step = 460 ifTrue: [
            recoveredBlock22PC := 461.
        ].
        recoveredBlock22Step = 461 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local14.
            recoveredBlock22PC := 463.
        ].
        recoveredBlock22Step = 463 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local12.
            recoveredBlock22PC := 465.
        ].
        recoveredBlock22Step = 465 ifTrue: [
            (recoveredBlock22Stack1) selectObject: (recoveredBlock22Stack2).
            recoveredBlock22PC := 467.
        ].
        recoveredBlock22Step = 467 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local13.
            recoveredBlock22PC := 469.
        ].
        recoveredBlock22Step = 469 ifTrue: [
            (recoveredBlock22Stack1) deleteObject.
            recoveredBlock22PC := 471.
        ].
        recoveredBlock22Step = 471 ifTrue: [
            recoveredBlock22Stack1 := CgDeviceIndependentImage.
            recoveredBlock22PC := 473.
        ].
        recoveredBlock22Step = 473 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local16.
            recoveredBlock22PC := 475.
        ].
        recoveredBlock22Step = 475 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 477.
        ].
        recoveredBlock22Step = 477 ifTrue: [
            recoveredBlock22Stack4 := recoveredBlock22Local2.
            recoveredBlock22PC := 478.
        ].
        recoveredBlock22Step = 478 ifTrue: [
            recoveredBlock22Stack5 := CgDirectPalette.
            recoveredBlock22PC := 480.
        ].
        recoveredBlock22Step = 480 ifTrue: [
            recoveredBlock22Stack6 := 31.
            recoveredBlock22PC := 482.
        ].
        recoveredBlock22Step = 482 ifTrue: [
            recoveredBlock22Stack7 := 2016.
            recoveredBlock22PC := 486.
        ].
        recoveredBlock22Step = 486 ifTrue: [
            recoveredBlock22Stack8 := 63488.
            recoveredBlock22PC := 488.
        ].
        recoveredBlock22Step = 488 ifTrue: [
            recoveredBlock22Stack5 := (recoveredBlock22Stack5) redMask: (recoveredBlock22Stack6) greenMask: (recoveredBlock22Stack7) blueMask: (recoveredBlock22Stack8).
            recoveredBlock22PC := 491.
        ].
        recoveredBlock22Step = 491 ifTrue: [
            recoveredBlock22Stack6 := 4.
            recoveredBlock22PC := 493.
        ].
        recoveredBlock22Step = 493 ifTrue: [
            recoveredBlock22Stack7 := recoveredBlock22Local9.
            recoveredBlock22PC := 495.
        ].
        recoveredBlock22Step = 495 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) width: (recoveredBlock22Stack2) height: (recoveredBlock22Stack3) depth: (recoveredBlock22Stack4) palette: (recoveredBlock22Stack5) scanlinePad: (recoveredBlock22Stack6) data: (recoveredBlock22Stack7).
            recoveredBlock22PC := 498.
        ].
        recoveredBlock22Step = 498 ifTrue: [
            recoveredBlock22Local4 := recoveredBlock22Stack1.
            recoveredBlock22PC := 499.
        ].
        recoveredBlock22Step = 499 ifTrue: [
            recoveredBlock22Stack1 := CgDeviceIndependentImage.
            recoveredBlock22PC := 501.
        ].
        recoveredBlock22Step = 501 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local16.
            recoveredBlock22PC := 503.
        ].
        recoveredBlock22Step = 503 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local15.
            recoveredBlock22PC := 505.
        ].
        recoveredBlock22Step = 505 ifTrue: [
            recoveredBlock22Stack4 := 1.
            recoveredBlock22PC := 507.
        ].
        recoveredBlock22Step = 507 ifTrue: [
            recoveredBlock22Stack5 := CgIndexedPalette.
            recoveredBlock22PC := 509.
        ].
        recoveredBlock22Step = 509 ifTrue: [
            recoveredBlock22Stack5 := (recoveredBlock22Stack5) blackAndWhite.
            recoveredBlock22PC := 511.
        ].
        recoveredBlock22Step = 511 ifTrue: [
            recoveredBlock22Stack6 := 4.
            recoveredBlock22PC := 513.
        ].
        recoveredBlock22Step = 513 ifTrue: [
            recoveredBlock22Stack7 := recoveredBlock22Local7.
            recoveredBlock22PC := 515.
        ].
        recoveredBlock22Step = 515 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) width: (recoveredBlock22Stack2) height: (recoveredBlock22Stack3) depth: (recoveredBlock22Stack4) palette: (recoveredBlock22Stack5) scanlinePad: (recoveredBlock22Stack6) data: (recoveredBlock22Stack7).
            recoveredBlock22PC := 518.
        ].
        recoveredBlock22Step = 518 ifTrue: [
            recoveredBlock22Local3 := recoveredBlock22Stack1.
            recoveredBlock22PC := 519.
        ].
        recoveredBlock22Step = 519 ifTrue: [
            recoveredBlock22Stack1 := EtasIcon.
            recoveredBlock22PC := 521.
        ].
        recoveredBlock22Step = 521 ifTrue: [
            recoveredBlock22Stack2 := recoveredBlock22Local4.
            recoveredBlock22PC := 522.
        ].
        recoveredBlock22Step = 522 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local3.
            recoveredBlock22PC := 523.
        ].
        recoveredBlock22Step = 523 ifTrue: [
            recoveredBlock22Stack1 := (recoveredBlock22Stack1) fromImage: (recoveredBlock22Stack2) maskImage: (recoveredBlock22Stack3).
            recoveredBlock22PC := 525.
        ].
        recoveredBlock22Step = 525 ifTrue: [
            recoveredBlock22Local17 := recoveredBlock22Stack1.
            recoveredBlock22PC := 527.
        ].
        recoveredBlock22Step = 527 ifTrue: [
            recoveredBlock22Stack1 := cachedResources.
            recoveredBlock22PC := 529.
        ].
        recoveredBlock22Step = 529 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 532.
        ].
        recoveredBlock22Step = 532 ifTrue: [
            recoveredBlock22Stack3 := recoveredBlock22Local17.
            recoveredBlock22PC := 534.
        ].
        recoveredBlock22Step = 534 ifTrue: [
            (recoveredBlock22Stack1) at: (recoveredBlock22Stack2) put: (recoveredBlock22Stack3).
            recoveredBlock22PC := 536.
        ].
        recoveredBlock22Step = 536 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local17.
            recoveredBlock22PC := 538.
        ].
        recoveredBlock22Step = 538 ifTrue: [
            recoveredBlock22Stack2 := recoveredLocal1.
            recoveredBlock22PC := 541.
        ].
        recoveredBlock22Step = 541 ifTrue: [
            (recoveredBlock22Stack1) name: (recoveredBlock22Stack2).
            recoveredBlock22PC := 543.
        ].
        recoveredBlock22Step = 543 ifTrue: [
            recoveredBlock22Stack1 := recoveredBlock22Local17.
            recoveredBlock22PC := 545.
        ].
        recoveredBlock22Step = 545 ifTrue: [
            ^recoveredBlock22Stack1
        ].
    ].
    recoveredBlock22Result
].
    recoveredValue8 := (self) iconAt: (recoveredValue6) ifAbsent: (recoveredValue7).
    ^recoveredValue8
! !

