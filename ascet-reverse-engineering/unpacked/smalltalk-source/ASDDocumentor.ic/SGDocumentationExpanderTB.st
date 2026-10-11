"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDDocumentor.ic method 0x200000e8; bytecode file offset 0x2cd1c"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
fullFigureDir
    | recoveredValue0 |
    recoveredValue0 := (self) workingDirectory.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200000f4; bytecode file offset 0x2cd1c"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
resultFile
    | recoveredValue0 |
    recoveredValue0 := (self) subclassResponsibility.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200001e0; bytecode file offset 0x2cf3c"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
titleForView
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) titleForView.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x200002a0; bytecode file offset 0x2cf3c"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
category
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) category.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x200002f0; bytecode file offset 0x2cf3c"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
workingDirectory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) workingDirectory.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x200006c4; bytecode file offset 0x2d2ec"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
tabWithNColumnsSep: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    (self) subclassResponsibility.
    ^self
! !

"ASDDocumentor.ic method 0x20000840; bytecode file offset 0x2d46c"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
manager
    | recoveredValue0 |
    recoveredValue0 := manager.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000864; bytecode file offset 0x2d4a8"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
textStream
    | recoveredValue0 |
    recoveredValue0 := textStream.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200008b0; bytecode file offset 0x2d4d4"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
lang
    | recoveredValue0 |
    recoveredValue0 := lang.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200008d4; bytecode file offset 0x2d500"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
docuFile
    | recoveredValue0 |
    recoveredValue0 := docuFile.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000b4c; bytecode file offset 0x2d7b0"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
putESDLCodeListing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) textVerbatim: (recoveredValue0).
    ^self
! !

"ASDDocumentor.ic method 0x20000b58; bytecode file offset 0x2d7b0"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
putCCodeListing: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) textVerbatim: (recoveredValue0).
    ^self
! !

"ASDDocumentor.ic method 0x20000bbc; bytecode file offset 0x2d850"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
docuAuthor
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DocumentationConstants.
    recoveredValue1 := (recoveredValue0) at: ('DocuAuthor').
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x20000bd0; bytecode file offset 0x2d850"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
docuTitle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DocumentationConstants.
    recoveredValue1 := (recoveredValue0) at: ('DocuTitle').
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x20000be4; bytecode file offset 0x2d850"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
docuLanguage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DocumentationConstants.
    recoveredValue1 := (recoveredValue0) at: ('DocuLanguage').
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x20000bf8; bytecode file offset 0x2d850"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
docuView
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := DocumentationConstants.
    recoveredValue1 := (recoveredValue0) at: ('DocuView').
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x20001780; bytecode file offset 0x2e3cc"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
askForWorkingDirectory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := (recoveredValue0) message: ('Please check your documentation path settings. You have not specified a working directory. ').
    (recoveredValue1) prompt.
    ^self
! !

"ASDDocumentor.ic method 0x20001868; bytecode file offset 0x2e4a4"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
manager: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    manager := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x200018b4; bytecode file offset 0x2e4e0"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
textStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    textStream := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x200018d0; bytecode file offset 0x2e50c"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
lang: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    lang := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x200018fc; bytecode file offset 0x2e530"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
docuFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    docuFile := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x2000231c; bytecode file offset 0x2ef68"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
print
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000d2cArg1 | 
    | block28000d2cValue0 block28000d2cValue1 block28000d2cValue2 |
    block28000d2cValue0 := OSHinstance.
    block28000d2cValue1 := block28000d2cArg1.
    block28000d2cValue2 := (block28000d2cValue0) print: (block28000d2cValue1).
    block28000d2cValue2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) osAction: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20002334; bytecode file offset 0x2ef68"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
preview
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [:block28000d50Arg1 | 
    | block28000d50Value0 block28000d50Value1 block28000d50Value2 |
    block28000d50Value0 := OSHinstance.
    block28000d50Value1 := block28000d50Arg1.
    block28000d50Value2 := (block28000d50Value0) defaultAction: (block28000d50Value1).
    block28000d50Value2
].
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) osAction: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20002b04; bytecode file offset 0x2f734"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
textVerbatim: recoveredArg1
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003278; bytecode file offset 0x2feb0"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
page
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) docuLanguage.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'German'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 15].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := 'Seite'.
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
            recoveredStack0 := (recoveredStack0) docuLanguage.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := 'English'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := 'Page'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
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

"ASDDocumentor.ic method 0x200032b4; bytecode file offset 0x2fef4"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
checkFile: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'File '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := ' does not exist'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200036cc; bytecode file offset 0x30304"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
fileExists: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReg.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x200037d4; bytecode file offset 0x30408"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
dirIsRoot: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ':'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003810; bytecode file offset 0x30444"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
dirIsRootWithSep: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := ':\'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) includesSubstring: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003b7c; bytecode file offset 0x307b0"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
limitStringSize: recoveredArg1 string: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg2.
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := '..'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20004b20; bytecode file offset 0x31764"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
directoryExists: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
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
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20006598; bytecode file offset 0x331e8"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
osAction: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) resultFile.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 29] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'File '.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := ' does not exist'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 55].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := 'Error starting default application for\'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20008358; bytecode file offset 0x34fa4"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
withCrLfs1: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := $$.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) = (recoveredBlock15Stack2).
            recoveredBlock15PC := 27.
        ].
        recoveredBlock15Step = 27 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 30] ifFalse: [recoveredBlock15PC := 48].
        ].
        recoveredBlock15Step = 30 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            recoveredBlock15Stack2 := Cr.
            recoveredBlock15PC := 35.
        ].
        recoveredBlock15Step = 35 ifTrue: [
            (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack2 := Lf.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 44.
        ].
        recoveredBlock15Step = 44 ifTrue: [
            recoveredBlock15PC := 72.
        ].
        recoveredBlock15Step = 48 ifTrue: [
            recoveredBlock15Stack1 := recoveredBlock15Arg1.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) isDoubleByte.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            (recoveredBlock15Stack1) ifTrue: [recoveredBlock15PC := 54] ifFalse: [recoveredBlock15PC := 66].
        ].
        recoveredBlock15Step = 54 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 57.
        ].
        recoveredBlock15Step = 57 ifTrue: [
            recoveredBlock15Stack2 := $_.
            recoveredBlock15PC := 60.
        ].
        recoveredBlock15Step = 60 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 62.
        ].
        recoveredBlock15Step = 62 ifTrue: [
            recoveredBlock15PC := 72.
        ].
        recoveredBlock15Step = 66 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 69.
        ].
        recoveredBlock15Step = 69 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 70.
        ].
        recoveredBlock15Step = 70 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 72.
        ].
        recoveredBlock15Step = 72 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) close.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) contents.
    ^recoveredValue6
! !

"ASDDocumentor.ic method 0x2000ac60; bytecode file offset 0x378c0"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
date
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) lang.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'German'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := Date.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) today.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) dayOfMonth.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := '. '.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := Date.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) today.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) monthName.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) germanMonth: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := Date.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) today.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) year.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) lang.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'English'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := Date.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) today.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) monthName.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := Date.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) today.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) dayOfMonth.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := ', '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := Date.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := (recoveredStack1) today.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) year.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000c958; bytecode file offset 0x395d0"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
germanMonth: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 'January'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 'Januar'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := 'February'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 'Februar'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'March'.
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
            recoveredStack1 := (String new: 4) at: 1 put: (Character value: 77); at: 2 put: (Character value: 228); at: 3 put: (Character value: 114); at: 4 put: (Character value: 122); yourself.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := 'April'.
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
            recoveredStack1 := 'April'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := 'May'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := 'Mai'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'June'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 'Juni'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'July'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Juli'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'August'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 87].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := 'August'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := 'September'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 97].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := 'September'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'October'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := 'Oktober'.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := 'November'.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 117].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := 'November'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := 'December'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 124] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := 'Dezember'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000da50; bytecode file offset 0x3a68c"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
splitTab: recoveredArg1 max: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack5 := recoveredLocal7.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack5 := recoveredLocal7.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 127.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack5 := recoveredLocal7.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 74] ifFalse: [recoveredLocal1 := nil. recoveredPC := 141]] ifFalse: [recoveredPC := 131].
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 139] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20013078; bytecode file offset 0x3fcb8"
!SGDocumentationExpanderTB methodsFor: 'recovered'!
splitTabImpls: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 40.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 59].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredPC := 299.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 136] ifFalse: [recoveredPC := 188].
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 185] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack5 := 3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (recoveredStack3).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredPC := 245.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredPC := 269.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredPC := 290.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (recoveredStack4).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack2) tabWithNColumnsSep: (recoveredStack3) header: (recoveredStack4) header2: (recoveredStack5).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 72] ifFalse: [recoveredLocal1 := nil. recoveredPC := 316]] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 314] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

