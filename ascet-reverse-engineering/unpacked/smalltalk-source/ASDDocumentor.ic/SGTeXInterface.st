"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDDocumentor.ic method 0x20000134; bytecode file offset 0x2cd5c"
!SGTeXInterface methodsFor: 'recovered'!
fatalEx
    | recoveredValue0 |
    recoveredValue0 := ExSGTeXFatal.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000148; bytecode file offset 0x2cdf4"
!SGTeXInterface methodsFor: 'recovered'!
psExtension
    ^'.ps'
! !

"ASDDocumentor.ic method 0x20000160; bytecode file offset 0x2cdf4"
!SGTeXInterface methodsFor: 'recovered'!
figureDir
    ^'figure'
! !

"ASDDocumentor.ic method 0x20000178; bytecode file offset 0x2cdf4"
!SGTeXInterface methodsFor: 'recovered'!
pdfExtension
    ^'.pdf'
! !

"ASDDocumentor.ic method 0x20000184; bytecode file offset 0x2cdf4"
!SGTeXInterface methodsFor: 'recovered'!
batchFile
    ^'__bat.bat'
! !

"ASDDocumentor.ic method 0x2000019c; bytecode file offset 0x2cdf4"
!SGTeXInterface methodsFor: 'recovered'!
teXExtension
    ^'.tex'
! !

"ASDDocumentor.ic method 0x200001a8; bytecode file offset 0x2cdf4"
!SGTeXInterface methodsFor: 'recovered'!
makefileName
    ^'Makefile'
! !

"ASDDocumentor.ic method 0x200001b4; bytecode file offset 0x2cdf4"
!SGTeXInterface methodsFor: 'recovered'!
mainFile
    ^'docmain'
! !

"ASDDocumentor.ic method 0x20000380; bytecode file offset 0x2cfac"
!SGTeXInterface methodsFor: 'recovered'!
docGenMakefilePath
    | recoveredValue0 |
    recoveredValue0 := ('%ASCET%\reports\docugen.mk') asFilename.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000830; bytecode file offset 0x2d46c"
!SGTeXInterface methodsFor: 'recovered'!
texDir
    | recoveredValue0 |
    recoveredValue0 := texDir.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000884; bytecode file offset 0x2d4a8"
!SGTeXInterface methodsFor: 'recovered'!
workingDirectory
    | recoveredValue0 |
    recoveredValue0 := workingDir.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200008a0; bytecode file offset 0x2d4d4"
!SGTeXInterface methodsFor: 'recovered'!
docStyle
    | recoveredValue0 |
    recoveredValue0 := docStyle.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200008c4; bytecode file offset 0x2d500"
!SGTeXInterface methodsFor: 'recovered'!
language
    | recoveredValue0 |
    recoveredValue0 := language.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000b88; bytecode file offset 0x2d7b0"
!SGTeXInterface methodsFor: 'recovered'!
setWorkingDir: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) workingDir: (recoveredValue0).
    ^self
! !

"ASDDocumentor.ic method 0x20000c5c; bytecode file offset 0x2d898"
!SGTeXInterface methodsFor: 'recovered'!
pdfFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := docFile.
    recoveredValue1 := (self) pdfExtension.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDDocumentor.ic method 0x20000c6c; bytecode file offset 0x2d898"
!SGTeXInterface methodsFor: 'recovered'!
psFile
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := docFile.
    recoveredValue1 := (self) psExtension.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDDocumentor.ic method 0x20000c9c; bytecode file offset 0x2d8d0"
!SGTeXInterface methodsFor: 'recovered'!
teXBinDir
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) texDir.
    recoveredValue1 := (recoveredValue0) asPathname.
    recoveredValue2 := (recoveredValue1) , ('bin').
    ^recoveredValue2
! !

"ASDDocumentor.ic method 0x20000cc0; bytecode file offset 0x2d90c"
!SGTeXInterface methodsFor: 'recovered'!
fullFigureDir
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) workingDirectory.
    recoveredValue1 := (recoveredValue0) asPathname.
    recoveredValue2 := (self) figureDir.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDDocumentor.ic method 0x20000cd8; bytecode file offset 0x2d90c"
!SGTeXInterface methodsFor: 'recovered'!
batchFilePath
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) workingDirectory.
    recoveredValue1 := (recoveredValue0) asPathname.
    recoveredValue2 := (self) batchFile.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    ^recoveredValue3
! !

"ASDDocumentor.ic method 0x20000cfc; bytecode file offset 0x2d92c"
!SGTeXInterface methodsFor: 'recovered'!
asTeXInputName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := CfsPath.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) named: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) fileName.
    ^recoveredValue3
! !

"ASDDocumentor.ic method 0x2000180c; bytecode file offset 0x2e434"
!SGTeXInterface methodsFor: 'recovered'!
language: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    language := recoveredValue0.
    recoveredValue1 := (self) defaultDocStyle.
    docStyle := recoveredValue1.
    ^self
! !

"ASDDocumentor.ic method 0x20001880; bytecode file offset 0x2e4a4"
!SGTeXInterface methodsFor: 'recovered'!
texDir: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    texDir := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x2000189c; bytecode file offset 0x2e4e0"
!SGTeXInterface methodsFor: 'recovered'!
workingDir: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    workingDir := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x200018e8; bytecode file offset 0x2e50c"
!SGTeXInterface methodsFor: 'recovered'!
docStyle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    docStyle := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001938; bytecode file offset 0x2e574"
!SGTeXInterface methodsFor: 'recovered'!
docFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    docFile := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001940; bytecode file offset 0x2e574"
!SGTeXInterface methodsFor: 'recovered'!
psFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    docFile := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001bdc; bytecode file offset 0x2e828"
!SGTeXInterface methodsFor: 'recovered'!
fullPdfFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) workingDirectory.
    recoveredValue1 := (recoveredValue0) asPathname.
    recoveredValue2 := docFile.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (self) pdfExtension.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDDocumentor.ic method 0x20001bf4; bytecode file offset 0x2e828"
!SGTeXInterface methodsFor: 'recovered'!
fullPsFile
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) workingDirectory.
    recoveredValue1 := (recoveredValue0) asPathname.
    recoveredValue2 := docFile.
    recoveredValue3 := (recoveredValue1) , (recoveredValue2).
    recoveredValue4 := (self) psExtension.
    recoveredValue5 := (recoveredValue3) , (recoveredValue4).
    ^recoveredValue5
! !

"ASDDocumentor.ic method 0x2000258c; bytecode file offset 0x2f1f0"
!SGTeXInterface methodsFor: 'recovered'!
dirExists: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isDir.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x200025bc; bytecode file offset 0x2f1f0"
!SGTeXInterface methodsFor: 'recovered'!
fileExists: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) stat: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isReg.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000298c; bytecode file offset 0x2f5c4"
!SGTeXInterface methodsFor: 'recovered'!
initializeForWorkingDir: recoveredArg1 texDir: recoveredArg2 language: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg2.
    (self) texDir: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) workingDir: (recoveredValue1).
    recoveredValue2 := recoveredArg3.
    (self) language: (recoveredValue2).
    recoveredValue3 := (self) defaultDocStyle.
    (self) docStyle: (recoveredValue3).
    ^self
! !

"ASDDocumentor.ic method 0x20002c20; bytecode file offset 0x2f858"
!SGTeXInterface methodsFor: 'recovered'!
convToUnixStyle: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) trimBlanks.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathNameBlanksAvoided.
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
            recoveredStack1 := (recoveredStack1) isEmpty.
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
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := $\.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := '/'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) replace: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20002f54; bytecode file offset 0x2fb94"
!SGTeXInterface methodsFor: 'recovered'!
checkFile: recoveredArg1
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
            recoveredStack1 := 'Missing file: %1'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) prompt.
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

"ASDDocumentor.ic method 0x200033f8; bytecode file offset 0x30030"
!SGTeXInterface methodsFor: 'recovered'!
defaultDocStyle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) language.
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
            recoveredStack0 := 'ngerman'.
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
            recoveredStack0 := (recoveredStack0) language.
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
            recoveredStack0 := 'english'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := 'english'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200038e4; bytecode file offset 0x30528"
!SGTeXInterface methodsFor: 'recovered'!
compile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 recoveredBlock4Value2 |
    recoveredBlock4Value0 := recoveredArg1.
    (self) genMainFileFor: (recoveredBlock4Value0).
    (self) genMakefile.
    (self) genBatchfile.
    recoveredBlock4Value1 := (self) batchFilePath.
    (self) executeOnDOS: (recoveredBlock4Value1) info: ('Processing LaTeX files').
    recoveredBlock4Value2 := (self) checkTeXLog.
    ^recoveredBlock4Value2
].
    recoveredValue1 := (self) handleFatals: (recoveredValue0).
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x200043fc; bytecode file offset 0x3103c"
!SGTeXInterface methodsFor: 'recovered'!
checkTeXLog
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
            recoveredStack1 := (recoveredStack1) mainFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '.log'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) getFileString: (recoveredStack1).
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
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := 'LaTeX Error:'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := 'Output written on'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) includesSubstring: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20004c7c; bytecode file offset 0x318d0"
!SGTeXInterface methodsFor: 'recovered'!
handleFatals: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := [
    | recoveredBlock4Value0 recoveredBlock4Value1 |
    recoveredBlock4Value0 := recoveredArg1.
    recoveredBlock4Value1 := (recoveredBlock4Value0) value.
    recoveredBlock4Value1
].
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := ExSGTeXFatal.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := [:block28000e04Arg1 | 
    | block28000e04Value0 block28000e04Value1 block28000e04Value2 block28000e04Value3 block28000e04Value4 block28000e04Value5 block28000e04Value6 block28000e04Value7 block28000e04Value8 block28000e04Value9 |
    block28000e04Value0 := System.
    block28000e04Value1 := block28000e04Arg1.
    block28000e04Value2 := (block28000e04Value1) description.
    block28000e04Value3 := (block28000e04Value2) , ('\').
    block28000e04Value4 := block28000e04Arg1.
    block28000e04Value5 := (block28000e04Value4) argument.
    block28000e04Value6 := (block28000e04Value3) , (block28000e04Value5).
    block28000e04Value7 := (block28000e04Value6) withCrLfs.
    (block28000e04Value0) message: (block28000e04Value7).
    block28000e04Value8 := block28000e04Arg1.
    block28000e04Value9 := (block28000e04Value8) exitWith: (nil).
    block28000e04Value9
].
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) when: (recoveredStack2) do: (recoveredStack3).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20004f10; bytecode file offset 0x31b6c"
!SGTeXInterface methodsFor: 'recovered'!
getFileString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingDirectory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := CfsFileStream.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := ORDONLY.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 39].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := 'Serious: No File <'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := '>!!'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000682c; bytecode file offset 0x3349c"
!SGTeXInterface methodsFor: 'recovered'!
writeString: recoveredArg1 toFile: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingDirectory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := CfsFileStream.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := OWRONLY.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := OCREAT.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := OTRUNC.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) bitOr: (recoveredStack3).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) open: (recoveredStack1) oflag: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) message.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := ': '.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := (recoveredStack0) fatalEx.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) signal.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000a8a0; bytecode file offset 0x37504"
!SGTeXInterface methodsFor: 'recovered'!
executeOnDOS: recoveredArg1 info: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OSCall.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := OSProcessInformation.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultValues.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := OSStartupinfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack2) defaultValues.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) wShowWindow: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) dwFlags: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack6 := false.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack7 := PlatformConstants.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack8 := 'NormalPriorityClass'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack9 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack9 := (recoveredStack9) workingDirectory.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack10 := recoveredLocal4.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack11 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) createProcess: (recoveredStack2) lpszCommandLine: (recoveredStack3) lpsaProcess: (recoveredStack4) lpsaThread: (recoveredStack5) fInheritHandles: (recoveredStack6) fdwCreate: (recoveredStack7) lpvEnvironment: (recoveredStack8) lpszCurDir: (recoveredStack9) lpsiStartInfo: (recoveredStack10) lppiProcInfo: (recoveredStack11).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 67] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) getLastError.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInteger.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 97.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) waitUntilTerminates: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) free.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000d950; bytecode file offset 0x3a5dc"
!SGTeXInterface methodsFor: 'recovered'!
genMainFileFor: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('% LaTeX main file generated by SGTeXInterface').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue4.
    recoveredValue8 := (self) docStyle.
    recoveredValue9 := ('\documentclass[a4paper,') , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , (']{article}').
    (recoveredValue7) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredValue4.
    (recoveredValue11) cr.
    recoveredValue12 := recoveredValue4.
    (recoveredValue12) nextPutAll: ('\usepackage{babel}').
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredValue4.
    (recoveredValue14) nextPutAll: ('\usepackage{parskip}').
    recoveredValue15 := recoveredValue4.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue4.
    (recoveredValue16) nextPutAll: ('\usepackage{color}').
    recoveredValue17 := recoveredValue4.
    (recoveredValue17) cr.
    recoveredValue18 := recoveredValue4.
    (recoveredValue18) nextPutAll: ('\usepackage{ascetdoc} % style provided by ASCET, can be customized by user').
    recoveredValue19 := recoveredValue4.
    (recoveredValue19) cr.
    recoveredValue20 := recoveredValue4.
    (recoveredValue20) nextPutAll: ('\begin{document}').
    (recoveredValue4) cr.
    recoveredValue21 := recoveredArg1.
    recoveredValue22 := [:recoveredBlock83Arg1 | 
    | recoveredBlock83Value0 recoveredBlock83Value1 recoveredBlock83Value2 recoveredBlock83Value3 recoveredBlock83Value4 recoveredBlock83Value5 recoveredBlock83Value6 |
    recoveredBlock83Value0 := recoveredBlock83Arg1.
    (self) checkFile: (recoveredBlock83Value0).
    recoveredBlock83Value1 := recoveredLocal1.
    recoveredBlock83Value2 := recoveredBlock83Value1.
    recoveredBlock83Value3 := recoveredBlock83Arg1.
    recoveredBlock83Value4 := (self) asTeXInputName: (recoveredBlock83Value3).
    recoveredBlock83Value5 := ('\input ') , (recoveredBlock83Value4).
    (recoveredBlock83Value2) nextPutAll: (recoveredBlock83Value5).
    recoveredBlock83Value6 := (recoveredBlock83Value1) cr.
    recoveredBlock83Value6
].
    (recoveredValue21) do: (recoveredValue22).
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := recoveredValue23.
    (recoveredValue24) nextPutAll: ('\end{document}').
    (recoveredValue23) cr.
    recoveredValue25 := recoveredLocal1.
    recoveredValue26 := (recoveredValue25) contents.
    recoveredValue27 := (self) mainFile.
    recoveredValue28 := (self) teXExtension.
    recoveredValue29 := (recoveredValue27) , (recoveredValue28).
    (self) writeString: (recoveredValue26) toFile: (recoveredValue29).
    recoveredValue30 := recoveredLocal1.
    (recoveredValue30) close.
    ^self
! !

"ASDDocumentor.ic method 0x2000e9dc; bytecode file offset 0x3b684"
!SGTeXInterface methodsFor: 'recovered'!
genBatchfile
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := ASDExternalToolsOptions.
    recoveredValue5 := (recoveredValue4) instance.
    recoveredValue6 := (recoveredValue5) optionExternalToolPathForKey: ('GMAKE').
    recoveredValue7 := (recoveredValue6) pathName.
    recoveredValue8 := (recoveredValue7) asPathNameBlanksAvoided.
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal2.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) nextPutAll: ('@echo off').
    recoveredValue11 := recoveredValue9.
    (recoveredValue11) cr.
    recoveredValue12 := recoveredValue9.
    (recoveredValue12) nextPutAll: ('REM generated batch file for genration of documentation').
    recoveredValue13 := recoveredValue9.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredValue9.
    (recoveredValue14) nextPutAll: ('if exist Makelog.txt del Makelog.txt').
    recoveredValue15 := recoveredValue9.
    (recoveredValue15) cr.
    recoveredValue16 := recoveredValue9.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := ('set PATH=') , (recoveredValue17).
    recoveredValue19 := (recoveredValue18) , (';%PATH%').
    (recoveredValue16) nextPutAll: (recoveredValue19).
    recoveredValue20 := recoveredValue9.
    (recoveredValue20) cr.
    recoveredValue21 := recoveredValue9.
    (recoveredValue21) nextPutAll: ('set PERL5LIB=').
    recoveredValue22 := recoveredValue9.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue9.
    (recoveredValue23) cr.
    recoveredValue24 := recoveredValue9.
    (recoveredValue24) nextPutAll: ('setlocal').
    recoveredValue25 := recoveredValue9.
    (recoveredValue25) cr.
    recoveredValue26 := recoveredValue9.
    (recoveredValue26) nextPutAll: ('redir.com gmake.exe --no-builtin-rules -k --jobs=8 clean >> Makelog.txt').
    recoveredValue27 := recoveredValue9.
    (recoveredValue27) cr.
    recoveredValue28 := recoveredValue9.
    (recoveredValue28) nextPutAll: ('redir.com gmake.exe --no-builtin-rules -k --jobs=8 all >> Makelog.txt').
    recoveredValue29 := recoveredValue9.
    (recoveredValue29) cr.
    recoveredValue30 := recoveredValue9.
    (recoveredValue30) nextPutAll: ('REM check for errors').
    recoveredValue31 := recoveredValue9.
    (recoveredValue31) cr.
    recoveredValue32 := recoveredValue9.
    (recoveredValue32) nextPutAll: ('if errorlevel 1 goto errorEnd').
    recoveredValue33 := recoveredValue9.
    (recoveredValue33) cr.
    recoveredValue34 := recoveredValue9.
    (recoveredValue34) nextPutAll: ('goto end').
    recoveredValue35 := recoveredValue9.
    (recoveredValue35) cr.
    recoveredValue36 := recoveredValue9.
    (recoveredValue36) nextPutAll: (':errorEnd').
    recoveredValue37 := recoveredValue9.
    (recoveredValue37) cr.
    recoveredValue38 := recoveredValue9.
    (recoveredValue38) nextPutAll: ('echo *** Error during make >> Makelog.txt').
    recoveredValue39 := recoveredValue9.
    (recoveredValue39) cr.
    recoveredValue40 := recoveredValue9.
    (recoveredValue40) nextPutAll: (':end').
    recoveredValue41 := recoveredValue9.
    (recoveredValue41) cr.
    recoveredValue42 := recoveredValue9.
    (recoveredValue42) nextPutAll: ('endlocal').
    (recoveredValue9) cr.
    recoveredValue43 := recoveredLocal2.
    recoveredValue44 := (recoveredValue43) contents.
    recoveredValue45 := (self) batchFile.
    (self) writeString: (recoveredValue44) toFile: (recoveredValue45).
    recoveredValue46 := recoveredLocal2.
    (recoveredValue46) close.
    ^self
! !

"ASDDocumentor.ic method 0x20012108; bytecode file offset 0x3edf0"
!SGTeXInterface methodsFor: 'recovered'!
genMakefile
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) nextPutAll: ('# Makefile generated by ASCET-Docu Toolbox').
    recoveredValue6 := recoveredValue4.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue4.
    (recoveredValue7) nextPutAll: ('# Path definitions').
    recoveredValue8 := recoveredValue4.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue4.
    recoveredValue10 := ('%ASCET%\tools') asFilename.
    recoveredValue11 := (self) convToUnixStyle: (recoveredValue10).
    recoveredValue12 := ('P_TOOLS = ') , (recoveredValue11).
    (recoveredValue9) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredValue4.
    (recoveredValue13) cr.
    recoveredValue14 := recoveredValue4.
    recoveredValue15 := ASDPathOptions.
    recoveredValue16 := (recoveredValue15) instance.
    recoveredValue17 := (recoveredValue16) optionDocuWorkingPath.
    recoveredValue18 := (recoveredValue17) asPathname.
    recoveredValue19 := (self) convToUnixStyle: (recoveredValue18).
    recoveredValue20 := ('P_DOCGEN = ') , (recoveredValue19).
    (recoveredValue14) nextPutAll: (recoveredValue20).
    recoveredValue21 := recoveredValue4.
    (recoveredValue21) cr.
    recoveredValue22 := recoveredValue4.
    (recoveredValue22) cr.
    recoveredValue23 := recoveredValue4.
    (recoveredValue23) nextPutAll: ('# Tool definitions').
    recoveredValue24 := recoveredValue4.
    (recoveredValue24) cr.
    recoveredValue25 := recoveredValue4.
    recoveredValue26 := ASDExternalToolsOptions.
    recoveredValue27 := (recoveredValue26) instance.
    recoveredValue28 := (recoveredValue27) optionExternalToolPathForKey: ('PERL').
    recoveredValue29 := (self) convToUnixStyle: (recoveredValue28).
    recoveredValue30 := ('PERL = ') , (recoveredValue29).
    (recoveredValue25) nextPutAll: (recoveredValue30).
    recoveredValue31 := recoveredValue4.
    (recoveredValue31) cr.
    recoveredValue32 := recoveredValue4.
    recoveredValue33 := (self) teXBinDir.
    recoveredValue34 := (self) convToUnixStyle: (recoveredValue33).
    recoveredValue35 := ('TEXBIN = ') , (recoveredValue34).
    (recoveredValue32) nextPutAll: (recoveredValue35).
    recoveredValue36 := recoveredValue4.
    (recoveredValue36) cr.
    recoveredValue37 := recoveredValue4.
    (recoveredValue37) cr.
    recoveredValue38 := recoveredValue4.
    (recoveredValue38) nextPutAll: ('# DOCGEN specific settings').
    recoveredValue39 := recoveredValue4.
    (recoveredValue39) cr.
    recoveredValue40 := recoveredValue4.
    (recoveredValue40) nextPutAll: ('# The main latex file').
    recoveredValue41 := recoveredValue4.
    (recoveredValue41) cr.
    recoveredValue42 := recoveredValue4.
    recoveredValue43 := (self) mainFile.
    recoveredValue44 := ('LATEXINPUT=') , (recoveredValue43).
    (recoveredValue42) nextPutAll: (recoveredValue44).
    recoveredValue45 := recoveredValue4.
    (recoveredValue45) cr.
    recoveredValue46 := recoveredValue4.
    (recoveredValue46) nextPutAll: ('# Directory, where *.eps figures can be found').
    recoveredValue47 := recoveredValue4.
    (recoveredValue47) cr.
    recoveredValue48 := recoveredValue4.
    recoveredValue49 := (self) figureDir.
    recoveredValue50 := ('P_FIG_INPUT=$(P_DOCGEN)/') , (recoveredValue49).
    (recoveredValue48) nextPutAll: (recoveredValue50).
    recoveredValue51 := recoveredValue4.
    (recoveredValue51) cr.
    recoveredValue52 := recoveredValue4.
    (recoveredValue52) nextPutAll: ('# Include directory, where ASCET documentation style file can be found').
    recoveredValue53 := recoveredValue4.
    (recoveredValue53) cr.
    recoveredValue54 := recoveredValue4.
    recoveredValue55 := ('%ASCET%/reports/latex.sty') asFilename.
    recoveredValue56 := (self) convToUnixStyle: (recoveredValue55).
    recoveredValue57 := ('P_INCLUDE_STY=') , (recoveredValue56).
    (recoveredValue54) nextPutAll: (recoveredValue57).
    recoveredValue58 := recoveredValue4.
    (recoveredValue58) cr.
    recoveredValue59 := recoveredValue4.
    (recoveredValue59) nextPutAll: ('# The resulting document file').
    recoveredValue60 := recoveredValue4.
    (recoveredValue60) cr.
    recoveredValue61 := recoveredValue4.
    recoveredValue62 := (self) mainFile.
    recoveredValue63 := ('RESULTFILE=$(P_DOCGEN)/') , (recoveredValue62).
    (recoveredValue61) nextPutAll: (recoveredValue63).
    recoveredValue64 := recoveredValue4.
    (recoveredValue64) cr.
    recoveredValue65 := recoveredValue4.
    (recoveredValue65) nextPutAll: ('# The target PostScript file').
    recoveredValue66 := recoveredValue4.
    (recoveredValue66) cr.
    recoveredValue67 := recoveredValue4.
    recoveredValue68 := (self) psFile.
    recoveredValue69 := ('PSFILE=') , (recoveredValue68).
    (recoveredValue67) nextPutAll: (recoveredValue69).
    recoveredValue70 := recoveredValue4.
    (recoveredValue70) cr.
    recoveredValue71 := recoveredValue4.
    (recoveredValue71) nextPutAll: ('# The target pdf file').
    recoveredValue72 := recoveredValue4.
    (recoveredValue72) cr.
    recoveredValue73 := recoveredValue4.
    recoveredValue74 := (self) pdfFile.
    recoveredValue75 := ('PDFFILE=') , (recoveredValue74).
    (recoveredValue73) nextPutAll: (recoveredValue75).
    recoveredValue76 := recoveredValue4.
    (recoveredValue76) cr.
    recoveredValue77 := recoveredValue4.
    (recoveredValue77) cr.
    recoveredValue78 := recoveredValue4.
    recoveredValue79 := (self) docGenMakefilePath.
    recoveredValue80 := (self) convToUnixStyle: (recoveredValue79).
    recoveredValue81 := ('include ') , (recoveredValue80).
    (recoveredValue78) nextPutAll: (recoveredValue81).
    (recoveredValue4) cr.
    recoveredValue82 := recoveredLocal1.
    recoveredValue83 := (recoveredValue82) contents.
    recoveredValue84 := (self) makefileName.
    (self) writeString: (recoveredValue83) toFile: (recoveredValue84).
    recoveredValue85 := recoveredLocal1.
    (recoveredValue85) close.
    ^self
! !

