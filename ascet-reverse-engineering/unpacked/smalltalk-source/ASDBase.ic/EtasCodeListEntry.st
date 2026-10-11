"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001a5b8; bytecode file offset 0x92209c"
!EtasCodeListEntry methodsFor: 'recovered'!
cCodeExtention
    ^'.c'
! !

"ASDBase.ic method 0x200214ac; bytecode file offset 0x92209c"
!EtasCodeListEntry methodsFor: 'recovered'!
externalSuffix
    ^'_external'
! !

"ASDBase.ic method 0x2002498c; bytecode file offset 0x92209c"
!EtasCodeListEntry methodsFor: 'recovered'!
headerExtention
    ^'.h'
! !

"ASDBase.ic method 0x2002d284; bytecode file offset 0x934580"
!EtasCodeListEntry methodsFor: 'recovered'!
filename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) filenameBlock.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e154; bytecode file offset 0x934580"
!EtasCodeListEntry methodsFor: 'recovered'!
source
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getSourceBlock.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20031d34; bytecode file offset 0x934580"
!EtasCodeListEntry methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) labelBlock.
    recoveredValue1 := (recoveredValue0) value.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048a84; bytecode file offset 0x945358"
!EtasCodeListEntry methodsFor: 'recovered'!
resetFiledOut
    filedOut := false.
    ^self
! !

"ASDBase.ic method 0x2004a9d8; bytecode file offset 0x94729c"
!EtasCodeListEntry methodsFor: 'recovered'!
setFiledOut
    filedOut := true.
    ^self
! !

"ASDBase.ic method 0x20058808; bytecode file offset 0x956284"
!EtasCodeListEntry methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) setSourceBlock.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) value: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062398; bytecode file offset 0x95f8b0"
!EtasCodeListEntry methodsFor: 'recovered'!
pathname
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) path.
    recoveredValue1 := (self) filename.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20066294; bytecode file offset 0x963428"
!EtasCodeListEntry methodsFor: 'recovered'!
path
    | recoveredValue0 |
    recoveredValue0 := path.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066e54; bytecode file offset 0x9646f8"
!EtasCodeListEntry methodsFor: 'recovered'!
getSourceBlock
    | recoveredValue0 |
    recoveredValue0 := getSourceBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20068554; bytecode file offset 0x965b90"
!EtasCodeListEntry methodsFor: 'recovered'!
setSourceBlock
    | recoveredValue0 |
    recoveredValue0 := setSourceBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069af8; bytecode file offset 0x966bdc"
!EtasCodeListEntry methodsFor: 'recovered'!
labelBlock
    | recoveredValue0 |
    recoveredValue0 := labelBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a70c; bytecode file offset 0x967a18"
!EtasCodeListEntry methodsFor: 'recovered'!
filenameBlock
    | recoveredValue0 |
    recoveredValue0 := filenameBlock.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200be58c; bytecode file offset 0x9bb178"
!EtasCodeListEntry methodsFor: 'recovered'!
path: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    path := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed70; bytecode file offset 0x9bc0b4"
!EtasCodeListEntry methodsFor: 'recovered'!
getSourceBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    getSourceBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0364; bytecode file offset 0x9bd228"
!EtasCodeListEntry methodsFor: 'recovered'!
setSourceBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    setSourceBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c0e68; bytecode file offset 0x9bdf14"
!EtasCodeListEntry methodsFor: 'recovered'!
labelBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    labelBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1b2c; bytecode file offset 0x9beac8"
!EtasCodeListEntry methodsFor: 'recovered'!
filenameBlock: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    filenameBlock := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20105f20; bytecode file offset 0xa027d8"
!EtasCodeListEntry methodsFor: 'recovered'!
isFiledOut
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := filedOut.
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
            (recoveredStack1) resetFiledOut.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := filedOut.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20127e1c; bytecode file offset 0xa246ec"
!EtasCodeListEntry methodsFor: 'recovered'!
initializePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := OSCall.
    recoveredValue1 := CfsDirectoryDescriptor.
    recoveredValue2 := (recoveredValue1) getTempPath.
    recoveredValue3 := (recoveredValue0) buildTempDirIn: (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('\').
    (self) path: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2017a8a8; bytecode file offset 0xa77170"
!EtasCodeListEntry methodsFor: 'recovered'!
fileInLeaveOut
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathname.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) openFileStreamFor: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201aa388; bytecode file offset 0xaa6c54"
!EtasCodeListEntry methodsFor: 'recovered'!
fileIn
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathname.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) openFileStreamFor: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) source: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) resetFiledOut.
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

"ASDBase.ic method 0x201aa3c4; bytecode file offset 0xaa6c90"
!EtasCodeListEntry methodsFor: 'recovered'!
fileOut
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathname.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) createFileStreamFor: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 23] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) source.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack0) setFiledOut.
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

"ASDBase.ic method 0x201ad5f4; bytecode file offset 0xaa9ec4"
!EtasCodeListEntry methodsFor: 'recovered'!
removeCallback: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASDMultiFolderWatcher.
    recoveredValue1 := (recoveredValue0) instance.
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredLocal2.
    recoveredValue3 := ASDGenericComponentFolderModifiedCallback.
    recoveredValue4 := recoveredArg1.
    (recoveredValue2) removeCallback: (recoveredValue3) receiver: (recoveredValue4) selector: ('folderModified:clientData:callData:') clientData: (self).
    recoveredValue5 := recoveredLocal2.
    recoveredValue6 := (self) pathname.
    (recoveredValue5) removeWatchDirectoryFor: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2024f3e0; bytecode file offset 0xb4bcdc"
!EtasCodeListEntry methodsFor: 'recovered'!
openFileStreamFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsReadFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) open: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Could not open file '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2024f408; bytecode file offset 0xb4bcdc"
!EtasCodeListEntry methodsFor: 'recovered'!
createFileStreamFor: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Could not create file '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorMessage: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2038cb0c; bytecode file offset 0xc89400"
!EtasCodeListEntry methodsFor: 'recovered'!
editExternWidget: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileOut.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 71] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ASDMultiFolderWatcher.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ASDGenericComponentFolderModifiedCallback.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := 'folderModified:clientData:callData:'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addCallback: (recoveredStack1) receiver: (recoveredStack2) selector: (recoveredStack3) clientData: (recoveredStack4).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) pathname.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) addWatchDirectory: (recoveredStack1) for: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := OSHinstance.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) pathname.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) defaultAction: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := OSHinstance.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := 'notepad'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'open'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) pathname.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack4 := '"'.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) shellExecuteFile: (recoveredStack1) operation: (recoveredStack2) parameters: (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203f33dc; bytecode file offset 0xcefcc8"
!EtasCodeListEntry methodsFor: 'recovered'!
initForClassHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) item.
    recoveredBlock4Value2 := (recoveredBlock4Value1) label.
    recoveredBlock4Value3 := (recoveredBlock4Value2) , (' [Class Header]').
    recoveredBlock4Value3
].
    (self) labelBlock: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) localHeaderSource.
    recoveredBlock22Value1
].
    (self) getSourceBlock: (recoveredValue1).
    recoveredValue2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := recoveredArg1.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) itemIsModifiable.
            recoveredBlock37PC := 50.
        ].
        recoveredBlock37Step = 50 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 54] ifFalse: [recoveredBlock37PC := 61].
        ].
        recoveredBlock37Step = 54 ifTrue: [
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) localHeaderSource: (recoveredBlock37Stack2).
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (self) setSourceBlock: (recoveredValue2).
    recoveredValue3 := ('Kk') == ('Call_48190').
    recoveredValue4 := [
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 |
    recoveredBlock71Value0 := recoveredArg1.
    recoveredBlock71Value1 := (recoveredBlock71Value0) item.
    recoveredBlock71Value2 := (recoveredBlock71Value1) label.
    recoveredBlock71Value3 := (self) headerExtention.
    recoveredBlock71Value4 := (recoveredBlock71Value2) , (recoveredBlock71Value3).
    recoveredBlock71Value4
].
    (self) filenameBlock: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x204070a8; bytecode file offset 0xd039dc"
!EtasCodeListEntry methodsFor: 'recovered'!
initForExternalCCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) item.
    recoveredBlock4Value2 := (recoveredBlock4Value1) label.
    recoveredBlock4Value3 := (recoveredBlock4Value2) , (' [External C Code]').
    recoveredBlock4Value3
].
    (self) labelBlock: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) cSource.
    recoveredBlock22Value1
].
    (self) getSourceBlock: (recoveredValue1).
    recoveredValue2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := recoveredArg1.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) itemIsModifiable.
            recoveredBlock37PC := 50.
        ].
        recoveredBlock37Step = 50 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 54] ifFalse: [recoveredBlock37PC := 61].
        ].
        recoveredBlock37Step = 54 ifTrue: [
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) cSource: (recoveredBlock37Stack2).
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (self) setSourceBlock: (recoveredValue2).
    recoveredValue3 := ('Kk') == ('Call_48190').
    recoveredValue4 := [
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 recoveredBlock71Value5 recoveredBlock71Value6 |
    recoveredBlock71Value0 := recoveredArg1.
    recoveredBlock71Value1 := (recoveredBlock71Value0) item.
    recoveredBlock71Value2 := (recoveredBlock71Value1) label.
    recoveredBlock71Value3 := (self) externalSuffix.
    recoveredBlock71Value4 := (recoveredBlock71Value2) , (recoveredBlock71Value3).
    recoveredBlock71Value5 := (self) cCodeExtention.
    recoveredBlock71Value6 := (recoveredBlock71Value4) , (recoveredBlock71Value5).
    recoveredBlock71Value6
].
    (self) filenameBlock: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x204070ec; bytecode file offset 0xd039dc"
!EtasCodeListEntry methodsFor: 'recovered'!
initForExternalHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 recoveredBlock4Value3 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) item.
    recoveredBlock4Value2 := (recoveredBlock4Value1) label.
    recoveredBlock4Value3 := (recoveredBlock4Value2) , (' [External Header]').
    recoveredBlock4Value3
].
    (self) labelBlock: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock22Value0 recoveredBlock22Value1 |
    recoveredBlock22Value0 := recoveredArg1.
    recoveredBlock22Value1 := (recoveredBlock22Value0) hSource.
    recoveredBlock22Value1
].
    (self) getSourceBlock: (recoveredValue1).
    recoveredValue2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := nil.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := recoveredArg1.
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) itemIsModifiable.
            recoveredBlock37PC := 50.
        ].
        recoveredBlock37Step = 50 ifTrue: [
            (recoveredBlock37Stack2) ifTrue: [recoveredBlock37PC := 54] ifFalse: [recoveredBlock37PC := 61].
        ].
        recoveredBlock37Step = 54 ifTrue: [
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack1 := recoveredArg1.
            recoveredBlock37PC := 58.
        ].
        recoveredBlock37Step = 58 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) hSource: (recoveredBlock37Stack2).
            recoveredBlock37PC := 61.
        ].
        recoveredBlock37Step = 61 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
    (self) setSourceBlock: (recoveredValue2).
    recoveredValue3 := ('Kk') == ('Call_48190').
    recoveredValue4 := [
    | recoveredBlock71Value0 recoveredBlock71Value1 recoveredBlock71Value2 recoveredBlock71Value3 recoveredBlock71Value4 recoveredBlock71Value5 recoveredBlock71Value6 |
    recoveredBlock71Value0 := recoveredArg1.
    recoveredBlock71Value1 := (recoveredBlock71Value0) item.
    recoveredBlock71Value2 := (recoveredBlock71Value1) label.
    recoveredBlock71Value3 := (self) externalSuffix.
    recoveredBlock71Value4 := (recoveredBlock71Value2) , (recoveredBlock71Value3).
    recoveredBlock71Value5 := (self) headerExtention.
    recoveredBlock71Value6 := (recoveredBlock71Value4) , (recoveredBlock71Value5).
    recoveredBlock71Value6
].
    (self) filenameBlock: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x2046ff10; bytecode file offset 0xd6c804"
!EtasCodeListEntry methodsFor: 'recovered'!
initForMethod: recoveredArg1 controller: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) label.
    recoveredBlock4Value1
].
    (self) labelBlock: (recoveredValue0).
    recoveredValue1 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredArg2.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) procedureSourceStringMethod: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
    (self) getSourceBlock: (recoveredValue1).
    recoveredValue2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := recoveredArg2.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) itemIsModifiable.
            recoveredBlock35PC := 48.
        ].
        recoveredBlock35Step = 48 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 52] ifFalse: [recoveredBlock35PC := 79].
        ].
        recoveredBlock35Step = 52 ifTrue: [
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            recoveredBlock35Stack1 := recoveredArg2.
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) item.
            recoveredBlock35PC := 58.
        ].
        recoveredBlock35Step = 58 ifTrue: [
            recoveredBlock35Stack2 := [
    | recoveredBlock35Block58Value0 recoveredBlock35Block58Value1 recoveredBlock35Block58Value2 recoveredBlock35Block58Value3 |
    recoveredBlock35Block58Value0 := recoveredArg2.
    recoveredBlock35Block58Value1 := recoveredBlock35Arg1.
    recoveredBlock35Block58Value2 := recoveredArg1.
    recoveredBlock35Block58Value3 := (recoveredBlock35Block58Value0) saveMethodString: (recoveredBlock35Block58Value1) toMethod: (recoveredBlock35Block58Value2).
    recoveredBlock35Block58Value3
].
            recoveredBlock35PC := 76.
        ].
        recoveredBlock35Step = 76 ifTrue: [
            recoveredBlock35Stack3 := false.
            recoveredBlock35PC := 77.
        ].
        recoveredBlock35Step = 77 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) suspendObserving: (recoveredBlock35Stack2) notify: (recoveredBlock35Stack3).
            recoveredBlock35PC := 79.
        ].
        recoveredBlock35Step = 79 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
    (self) setSourceBlock: (recoveredValue2).
    recoveredValue3 := ('Kk') == ('Call_48190').
    recoveredValue4 := [
    | recoveredBlock89Value0 recoveredBlock89Value1 recoveredBlock89Value2 recoveredBlock89Value3 recoveredBlock89Value4 recoveredBlock89Value5 recoveredBlock89Value6 recoveredBlock89Value7 recoveredBlock89Value8 |
    recoveredBlock89Value0 := recoveredArg2.
    recoveredBlock89Value1 := (recoveredBlock89Value0) item.
    recoveredBlock89Value2 := (recoveredBlock89Value1) label.
    recoveredBlock89Value3 := (recoveredBlock89Value2) , ('_').
    recoveredBlock89Value4 := recoveredArg1.
    recoveredBlock89Value5 := (recoveredBlock89Value4) methodName.
    recoveredBlock89Value6 := (recoveredBlock89Value3) , (recoveredBlock89Value5).
    recoveredBlock89Value7 := (self) cCodeExtention.
    recoveredBlock89Value8 := (recoveredBlock89Value6) , (recoveredBlock89Value7).
    recoveredBlock89Value8
].
    (self) filenameBlock: (recoveredValue4).
    ^self
! !

