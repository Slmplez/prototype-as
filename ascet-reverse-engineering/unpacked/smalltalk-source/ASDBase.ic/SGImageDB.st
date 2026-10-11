"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013590; bytecode file offset 0x912098"
!SGImageDB methodsFor: 'recovered'!
apiClass
    | recoveredValue0 |
    recoveredValue0 := EtasAPIIcon.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200158fc; bytecode file offset 0x92209c"
!SGImageDB methodsFor: 'recovered'!
getComponentTag
    ^'Image'
! !

"ASDBase.ic method 0x200171f8; bytecode file offset 0x92209c"
!SGImageDB methodsFor: 'recovered'!
iconName
    ^'ComponentsIcon'
! !

"ASDBase.ic method 0x200197d8; bytecode file offset 0x92209c"
!SGImageDB methodsFor: 'recovered'!
sourceModel
    ^'icon'
! !

"ASDBase.ic method 0x2001bc38; bytecode file offset 0x92209c"
!SGImageDB methodsFor: 'recovered'!
getComponentType
    ^'ASCET_Image'
! !

"ASDBase.ic method 0x2001d8a0; bytecode file offset 0x92209c"
!SGImageDB methodsFor: 'recovered'!
itemType
    ^'Icon'
! !

"ASDBase.ic method 0x200279a8; bytecode file offset 0x924260"
!SGImageDB methodsFor: 'recovered'!
hasImage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) image.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20036854; bytecode file offset 0x934580"
!SGImageDB methodsFor: 'recovered'!
extent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) image.
    recoveredValue1 := (recoveredValue0) extent.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200422b0; bytecode file offset 0x93eb8c"
!SGImageDB methodsFor: 'recovered'!
image
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := image.
    recoveredValue1 := (recoveredValue0) getObject.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006f0d8; bytecode file offset 0x96bc1c"
!SGImageDB methodsFor: 'recovered'!
fileName
    | recoveredValue0 |
    recoveredValue0 := fileName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f4f8; bytecode file offset 0x96bf7c"
!SGImageDB methodsFor: 'recovered'!
formatClassName
    | recoveredValue0 |
    recoveredValue0 := formatClassName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077afc; bytecode file offset 0x9757c8"
!SGImageDB methodsFor: 'recovered'!
isImage
    ^true
! !

"ASDBase.ic method 0x2007c39c; bytecode file offset 0x97c330"
!SGImageDB methodsFor: 'recovered'!
isDIFFComparable
    ^false
! !

"ASDBase.ic method 0x200837bc; bytecode file offset 0x980230"
!SGImageDB methodsFor: 'recovered'!
editPrompt: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) editPrompt: (recoveredValue0) parent: (nil).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20085630; bytecode file offset 0x981ee8"
!SGImageDB methodsFor: 'recovered'!
formatClass: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) printString.
    formatClassName := recoveredValue1.
    ^self
! !

"ASDBase.ic method 0x2009919c; bytecode file offset 0x995a5c"
!SGImageDB methodsFor: 'recovered'!
editPrompt: recoveredArg1 parent: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGImageDialog.
    recoveredValue1 := (recoveredValue0) createForImage: (self).
    recoveredValue2 := (recoveredValue1) promptAtCurrentMousePosition.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a8c70; bytecode file offset 0x9a5528"
!SGImageDB methodsFor: 'recovered'!
image: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    image := recoveredValue0.
    (self) modifiedWithoutTimeStamp.
    ^self
! !

"ASDBase.ic method 0x200b9890; bytecode file offset 0x9b63d0"
!SGImageDB methodsFor: 'recovered'!
extent: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) image.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) scaledTo: (recoveredValue1).
    (self) image: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c594c; bytecode file offset 0x9c22c8"
!SGImageDB methodsFor: 'recovered'!
fileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    fileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20103d60; bytecode file offset 0xa00624"
!SGImageDB methodsFor: 'recovered'!
exportImageClass: recoveredArg1 intoFile: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := (recoveredValue1) initialize.
    recoveredValue3 := (self) image.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := (recoveredValue2) unload: (recoveredValue3) intoFile: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x201790c4; bytecode file offset 0xa7598c"
!SGImageDB methodsFor: 'recovered'!
writeXMLToFiles: recoveredArg1 baseName: recoveredArg2 xmlExt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := CgWinBMPFileFormat.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) , ('.bmp').
    (self) exportImageClass: (recoveredValue0) intoFile: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    recoveredValue5 := recoveredArg3.
    (self) writeXMLMainToFiles: (recoveredValue3) baseName: (recoveredValue4) xmlExt: (recoveredValue5) cryptNode: (nil).
    ^self
! !

"ASDBase.ic method 0x201988d4; bytecode file offset 0xa951a0"
!SGImageDB methodsFor: 'recovered'!
graphicObject
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := SGImageGO.
    recoveredValue1 := DefaultGraphObjectPositionBlock.
    recoveredValue2 := (recoveredValue1) value.
    recoveredValue3 := (recoveredValue0) createAt: (recoveredValue2) manager: (nil).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    recoveredValue6 := image.
    (recoveredValue5) image: (recoveredValue6).
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) visible: (true).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201f3148; bytecode file offset 0xaefa18"
!SGImageDB methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := CgDeviceIndependentImage.
    recoveredValue1 := CgIndexedPalette.
    recoveredValue2 := (recoveredValue1) grayRamp: (1).
    recoveredValue3 := (recoveredValue0) width: (10) height: (10) depth: (1) palette: (recoveredValue2).
    (self) image: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20239a08; bytecode file offset 0xb36340"
!SGImageDB methodsFor: 'recovered'!
createInfoWidget: recoveredArg1 parent: recoveredArg2 owner: recoveredArg3
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [:recoveredBlock10Arg1 | 
    | recoveredBlock10Value0 recoveredBlock10Value1 recoveredBlock10Value2 recoveredBlock10Value3 |
    recoveredBlock10Value0 := recoveredBlock10Arg1.
    recoveredBlock10Value1 := recoveredBlock10Value0.
    recoveredBlock10Value2 := recoveredArg3.
    (recoveredBlock10Value1) owner: (recoveredBlock10Value2).
    recoveredBlock10Value3 := (recoveredBlock10Value0) item: (self).
    recoveredBlock10Value3
].
    recoveredValue3 := (recoveredValue0) createEtasClassWidget: (recoveredValue1) argBlock: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x202438f0; bytecode file offset 0xb401d0"
!SGImageDB methodsFor: 'recovered'!
writeXMLComponentBody: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) openComplex: ('File').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) attr: ('type') nmToken: ('GRAPHIC').
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) path.
    recoveredValue4 := (recoveredValue3) fileNameOnly.
    recoveredValue5 := (recoveredValue4) fileNameOnly.
    recoveredValue6 := (recoveredValue5) , ('.bmp').
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := recoveredLocal1.
    (recoveredValue7) pcData: (recoveredValue8).
    recoveredValue9 := recoveredArg1.
    (recoveredValue9) closeComplex.
    ^self
! !

"ASDBase.ic method 0x203975a0; bytecode file offset 0xc93e84"
!SGImageDB methodsFor: 'recovered'!
xmlInit: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := CgImageFileFormat.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) allFormats.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) formatMatchesFile: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := [
    ^nil
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) detect: (recoveredStack2) ifNone: (recoveredStack3).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Die'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := 'Call_96418'.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := Util.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := (recoveredStack2) checkFileName: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromFile: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            image := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) formatClass: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20398a38; bytecode file offset 0xc95318"
!SGImageDB methodsFor: 'recovered'!
initForFileName: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            fileName := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'ImageDB'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) initializeRBDBObjectName: (recoveredStack1).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := CgImageFileFormat.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) allFormats.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 |
    recoveredBlock18Value0 := recoveredBlock18Arg1.
    recoveredBlock18Value1 := recoveredArg1.
    recoveredBlock18Value2 := (recoveredBlock18Value0) formatMatchesFile: (recoveredBlock18Value1).
    recoveredBlock18Value2
].
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) loadFromFile: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) formatClass: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b84c0; bytecode file offset 0xcb4d9c"
!SGImageDB methodsFor: 'recovered'!
replaceSelectedIconWith: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0) fileName: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := CgImageFileFormat.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allFormats.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := [:recoveredBlock12Arg1 | 
    | recoveredBlock12Value0 recoveredBlock12Value1 recoveredBlock12Value2 |
    recoveredBlock12Value0 := recoveredBlock12Arg1.
    recoveredBlock12Value1 := recoveredArg1.
    recoveredBlock12Value2 := (recoveredBlock12Value0) formatMatchesFile: (recoveredBlock12Value1).
    recoveredBlock12Value2
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := [
    ^nil
].
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
            recoveredLocal2 := recoveredStack1.
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
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) initialize.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) loadFromFile: (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) image: (recoveredStack1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) formatClass: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

