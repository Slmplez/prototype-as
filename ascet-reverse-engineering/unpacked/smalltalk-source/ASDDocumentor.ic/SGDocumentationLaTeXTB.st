"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDDocumentor.ic method 0x200000d0; bytecode file offset 0x2cd1c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
resultFile
    | recoveredValue0 |
    recoveredValue0 := (self) docuFile.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200001c0; bytecode file offset 0x2cdf4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
printFormulaIdentity
    ^'f(phys) = phys'
! !

"ASDDocumentor.ic method 0x20000290; bytecode file offset 0x2cf3c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
checkMaxVerbatim
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) checkMaxVerbatim.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x2000036c; bytecode file offset 0x2cf94"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
fullFigureDir
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := interface.
    recoveredValue1 := (recoveredValue0) fullFigureDir.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x20000704; bytecode file offset 0x2d32c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
newLine
    | recoveredValue0 |
    recoveredValue0 := textStream.
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x200007cc; bytecode file offset 0x2d438"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
closeTextStream
    | recoveredValue0 |
    recoveredValue0 := (self) textStream.
    (recoveredValue0) close.
    ^self
! !

"ASDDocumentor.ic method 0x20000908; bytecode file offset 0x2d52c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
interface
    | recoveredValue0 |
    recoveredValue0 := interface.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000944; bytecode file offset 0x2d568"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
texFile
    | recoveredValue0 |
    recoveredValue0 := texFile.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000960; bytecode file offset 0x2d59c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
env
    | recoveredValue0 |
    recoveredValue0 := env.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000acc; bytecode file offset 0x2d6f8"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
maxColumns
    ^8
! !

"ASDDocumentor.ic method 0x20000ae8; bytecode file offset 0x2d70c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
limitLabelsInTab
    ^true
! !

"ASDDocumentor.ic method 0x20000d48; bytecode file offset 0x2da74"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
lang: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) language: (recoveredValue1).
    ^self
! !

"ASDDocumentor.ic method 0x20000db8; bytecode file offset 0x2da74"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
setWorkingDir: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) interface.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) setWorkingDir: (recoveredValue1).
    ^self
! !

"ASDDocumentor.ic method 0x20000df8; bytecode file offset 0x2da74"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
saveEmtexPath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) saveEmtexPath: (recoveredValue1).
    ^self
! !

"ASDDocumentor.ic method 0x20000e70; bytecode file offset 0x2daa4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWith4ColumnsDataImplTab: recoveredArg1 header: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) tabWithNColumnsSep: (recoveredValue0) header: (recoveredValue1).
    ^self
! !

"ASDDocumentor.ic method 0x20001798; bytecode file offset 0x2e3cc"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
promptNoInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := RBUserInfo.
    recoveredValue1 := (recoveredValue0) message: ('Please check your TeX environment and file autoexec.bat (set emtexdir=...).').
    (recoveredValue1) prompt.
    ^self
! !

"ASDDocumentor.ic method 0x200017f0; bytecode file offset 0x2e41c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
asIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) asIdentifierString: (recoveredValue1).
    (recoveredValue0) nextPutAll: (recoveredValue2).
    ^self
! !

"ASDDocumentor.ic method 0x20001930; bytecode file offset 0x2e574"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
interface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    interface := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x2000196c; bytecode file offset 0x2e5a0"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
texFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    texFile := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001998; bytecode file offset 0x2e5bc"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
env: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    env := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001b04; bytecode file offset 0x2e72c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabHeader: recoveredArg1 header: recoveredArg2 sep: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) tabWithNColumns: (recoveredValue0) header: (recoveredValue1) sep: (recoveredValue2).
    ^self
! !

"ASDDocumentor.ic method 0x20001c1c; bytecode file offset 0x2e844"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
docuFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    docuFile := recoveredValue0.
    recoveredValue1 := interface.
    recoveredValue2 := recoveredArg1.
    (recoveredValue1) docFile: (recoveredValue2).
    ^self
! !

"ASDDocumentor.ic method 0x20001d3c; bytecode file offset 0x2e96c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
emptyLine
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('\newline').
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20001ff4; bytecode file offset 0x2ec38"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
mainFile
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) mainFile.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20002008; bytecode file offset 0x2ec38"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
psExtension
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 11] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) psExtension.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000202c; bytecode file offset 0x2ec70"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
text1RowsWithCR: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) asIdentifierString: (recoveredValue2).
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20002298; bytecode file offset 0x2ef04"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
newPage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('\newpage').
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x200022d4; bytecode file offset 0x2ef04"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
noPageBreak
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('\nopagebreak').
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x200027d8; bytecode file offset 0x2f4b4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
text1RowsWithCRBoldUnderline: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) asIdentifierString: (recoveredValue2).
    recoveredValue4 := ('\underline{\bf ') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('}').
    (recoveredValue1) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x200027f8; bytecode file offset 0x2f4b4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
chapterLevel3: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) asIdentifierString: (recoveredValue2).
    recoveredValue4 := ('\subsubsection{') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('}').
    (recoveredValue1) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20002818; bytecode file offset 0x2f4b4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
chapterLevel2: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) asIdentifierString: (recoveredValue2).
    recoveredValue4 := ('\subsection{') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('}').
    (recoveredValue1) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20002838; bytecode file offset 0x2f4b4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
text1RowsWithCRUnderline: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) asIdentifierString: (recoveredValue2).
    recoveredValue4 := ('\underline{') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('}').
    (recoveredValue1) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20002858; bytecode file offset 0x2f4b4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
text1RowsWithCRBold: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) asIdentifierString: (recoveredValue2).
    recoveredValue4 := ('{\bf ') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('}').
    (recoveredValue1) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20002878; bytecode file offset 0x2f4b4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
chapterLevel1: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) asIdentifierString: (recoveredValue2).
    recoveredValue4 := ('\section{') , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , ('}').
    (recoveredValue1) nextPutAll: (recoveredValue5).
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20002fd4; bytecode file offset 0x2fc14"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
checkWorkingDirectory
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingDirectory.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := ASDHostAccess.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := '*.eps'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) fullFigureDir.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) deleteFiles: (recoveredStack1) inDirectory: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryExists: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003100; bytecode file offset 0x2fd2c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
newValuesCollForTwoDY: recoveredArg1 from: recoveredArg2 to: recoveredArg3
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) copyFrom: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003434; bytecode file offset 0x30074"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
getEmtexDir
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBPathDialog.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'c:\'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) firstSelection: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack2) setNewDir.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) prompt.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) path.
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := nil.
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
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003744; bytecode file offset 0x3037c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
textVerbatim: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) breakLines: (recoveredValue0).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := textStream.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) nextPutAll: ('\begin{verbatim}').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) cr.
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredLocal1.
    (recoveredValue5) nextPutAll: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue2.
    (recoveredValue8) nextPutAll: ('\end{verbatim}').
    (recoveredValue2) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20003984; bytecode file offset 0x305e0"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
putCCodeListing: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) escapeForListings: (recoveredValue0).
    recoveredValue2 := (self) breakLines: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := textStream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: ('\begin{DeclCCodeSnippet}').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) nextPutAll: ('\end{DeclCCodeSnippet}').
    (recoveredValue3) cr.
    ^self
! !

"ASDDocumentor.ic method 0x200039a4; bytecode file offset 0x305e0"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
putESDLCodeListing: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) escapeForListings: (recoveredValue0).
    recoveredValue2 := (self) breakLines: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := textStream.
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) nextPutAll: ('\begin{DeclESDLCodeSnippet}').
    recoveredValue5 := recoveredValue3.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := recoveredLocal1.
    (recoveredValue6) nextPutAll: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    (recoveredValue8) cr.
    recoveredValue9 := recoveredValue3.
    (recoveredValue9) nextPutAll: ('\end{DeclESDLCodeSnippet}').
    (recoveredValue3) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20003a70; bytecode file offset 0x3075c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
printFormulaConstant: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := recoveredLocal3.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredLocal2 := recoveredValue2.
    recoveredValue3 := ReadWriteStream.
    recoveredValue4 := String.
    recoveredValue5 := (recoveredValue4) new.
    recoveredValue6 := (recoveredValue3) on: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := recoveredLocal2.
    recoveredValue9 := (recoveredValue8) printString.
    recoveredValue10 := ('f(phys) = ') , (recoveredValue9).
    (recoveredValue7) nextPutAll: (recoveredValue10).
    recoveredValue11 := recoveredLocal1.
    (recoveredValue11) close.
    recoveredValue12 := recoveredLocal1.
    recoveredValue13 := (recoveredValue12) contents.
    ^recoveredValue13
! !

"ASDDocumentor.ic method 0x20004614; bytecode file offset 0x3125c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
setFigure: recoveredArg1 as: recoveredArg2 withNum: recoveredArg3 withTitle: recoveredArg4 ext: recoveredArg5
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) removeIfSuffix: ('.eps').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := textStream.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := ('\setfigure{') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('}{').
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (self) asIdentifierString: (recoveredValue7).
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , ('}{').
    recoveredValue11 := recoveredArg4.
    recoveredValue12 := (self) asIdentifierString: (recoveredValue11).
    recoveredValue13 := (recoveredValue10) , (recoveredValue12).
    recoveredValue14 := (recoveredValue13) , ('}').
    (recoveredValue3) nextPutAll: (recoveredValue14).
    (recoveredValue2) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20004898; bytecode file offset 0x314f0"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
checkDocuInifilePrinter
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAppProgramPath.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := '\DOCU.INI'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) initialize.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'Printer'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'Printing'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEntry: (recoveredStack2) in: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20004ac8; bytecode file offset 0x3170c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
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
            recoveredStack1 := false.
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

"ASDDocumentor.ic method 0x20004d8c; bytecode file offset 0x319c0"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsSep: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
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
            recoveredStack2 := 70.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) splitTabImpls: (recoveredStack2) header: (recoveredStack3) header2: (recoveredStack4).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 47.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) tabWithNColumnsSep1: (recoveredStack2) header: (recoveredStack3) header2: (recoveredStack4).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200063d0; bytecode file offset 0x33028"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
printFormulaLinear: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal4 := recoveredValue0.
    recoveredValue1 := recoveredLocal4.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredLocal3 := recoveredValue2.
    recoveredValue3 := recoveredLocal4.
    recoveredValue4 := (recoveredValue3) at: (2).
    recoveredLocal2 := recoveredValue4.
    recoveredValue5 := ReadWriteStream.
    recoveredValue6 := String.
    recoveredValue7 := (recoveredValue6) new.
    recoveredValue8 := (recoveredValue5) on: (recoveredValue7).
    recoveredLocal1 := recoveredValue8.
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := recoveredLocal3.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := ('f(phys) = ') , (recoveredValue11).
    (recoveredValue9) nextPutAll: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := recoveredLocal2.
    recoveredValue15 := (recoveredValue14) printString.
    recoveredValue16 := (' + ') , (recoveredValue15).
    recoveredValue17 := (recoveredValue16) , (' * phys').
    (recoveredValue13) nextPutAll: (recoveredValue17).
    recoveredValue18 := recoveredLocal1.
    (recoveredValue18) close.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) contents.
    ^recoveredValue20
! !

"ASDDocumentor.ic method 0x20006444; bytecode file offset 0x3308c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
textDocumentation: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isNil.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) or: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := '---'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimNonAlphaNumericalCharacters.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := '\begin{verbatim}'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := '\end{verbatim}'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000651c; bytecode file offset 0x33178"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
endDocument
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingDirectory.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) setWorkingDir: (recoveredStack1).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) texFile.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) compile: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 55] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := '-->See file '.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingDirectory.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 'docmain.log for more information.'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200078bc; bytecode file offset 0x34514"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
osAction: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := false.
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
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) fullPdfFile.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) fullPsFile.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 'File '.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := ' does not exist'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := 32.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) <= (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 73].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 'Error starting default application for\'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200080e0; bytecode file offset 0x34d18"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsSepS1: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 30.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 68].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 30.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitTab: (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := recoveredBlock46Arg1.
    recoveredBlock46Value1 := recoveredArg2.
    recoveredBlock46Value2 := recoveredArg3.
    recoveredBlock46Value3 := (self) tabWithNColumnsSepS2: (recoveredBlock46Value0) header: (recoveredBlock46Value1) header2: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack1) tabWithNColumnsSepS2: (recoveredStack2) header: (recoveredStack3) header2: (recoveredStack4).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20008744; bytecode file offset 0x3537c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsSep: recoveredArg1 header: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 50.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 50.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := (recoveredStack1) splitTab: (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := [:recoveredBlock64Arg1 | 
    | recoveredBlock64Value0 recoveredBlock64Value1 recoveredBlock64Value2 |
    recoveredBlock64Value0 := recoveredBlock64Arg1.
    recoveredBlock64Value1 := recoveredLocal3.
    recoveredBlock64Value2 := (self) tabWithNColumnsSep1: (recoveredBlock64Value0) header: (recoveredBlock64Value1).
    recoveredBlock64Value2
].
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack1) tabWithNColumnsSep1: (recoveredStack2) header: (recoveredStack3).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000a42c; bytecode file offset 0x37090"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
configHeader
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) cr.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) nextPutAll: ('\newcommand{\docpageheader}{').
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) cr.
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) nextPutAll: ('  \begin{tabular}{@{}p{0.99\textwidth}@{}}').
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) cr.
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := (self) docuAuthor.
    recoveredValue8 := (self) asIdentifierString: (recoveredValue7).
    recoveredValue9 := ('    {\large\bf ') , (recoveredValue8).
    recoveredValue10 := (recoveredValue9) , ('} \hfill {\large\bf ').
    recoveredValue11 := (self) docuTitle.
    recoveredValue12 := (self) asIdentifierString: (recoveredValue11).
    recoveredValue13 := (recoveredValue10) , (recoveredValue12).
    recoveredValue14 := (recoveredValue13) , ('} \hfill {\bf ').
    recoveredValue15 := (self) category.
    recoveredValue16 := (self) asIdentifierString: (recoveredValue15).
    recoveredValue17 := (recoveredValue14) , (recoveredValue16).
    recoveredValue18 := (recoveredValue17) , ('} \hfill \today \space(\thepage)\\').
    (recoveredValue6) nextPutAll: (recoveredValue18).
    recoveredValue19 := recoveredValue0.
    (recoveredValue19) cr.
    recoveredValue20 := recoveredValue0.
    (recoveredValue20) nextPutAll: ('    [1em] \hline\\').
    recoveredValue21 := recoveredValue0.
    (recoveredValue21) cr.
    recoveredValue22 := recoveredValue0.
    (recoveredValue22) nextPutAll: ('  \end{tabular}').
    recoveredValue23 := recoveredValue0.
    (recoveredValue23) cr.
    recoveredValue24 := recoveredValue0.
    (recoveredValue24) nextPutAll: ('}').
    recoveredValue25 := recoveredValue0.
    (recoveredValue25) cr.
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x2000ae58; bytecode file offset 0x37ad4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
textNRowsWithCR: recoveredArg1
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
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 99].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
    recoveredBlock29Stack0 := self.
    recoveredBlock29PC := 36.
    recoveredBlock29Done := false.
    [recoveredBlock29Done not] whileTrue: [
        recoveredBlock29Step := recoveredBlock29PC.
        recoveredBlock29Step = 36 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 37.
        ].
        recoveredBlock29Step = 37 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) size.
            recoveredBlock29PC := 38.
        ].
        recoveredBlock29Step = 38 ifTrue: [
            recoveredBlock29Stack2 := 50.
            recoveredBlock29PC := 40.
        ].
        recoveredBlock29Step = 40 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) > (recoveredBlock29Stack2).
            recoveredBlock29PC := 41.
        ].
        recoveredBlock29Step = 41 ifTrue: [
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 44] ifFalse: [recoveredBlock29PC := 76].
        ].
        recoveredBlock29Step = 44 ifTrue: [
            recoveredBlock29Stack1 := recoveredBlock29Arg1.
            recoveredBlock29PC := 45.
        ].
        recoveredBlock29Step = 45 ifTrue: [
            recoveredBlock29Stack2 := 1.
            recoveredBlock29PC := 47.
        ].
        recoveredBlock29Step = 47 ifTrue: [
            recoveredBlock29Stack3 := 50.
            recoveredBlock29PC := 49.
        ].
        recoveredBlock29Step = 49 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) copyFrom: (recoveredBlock29Stack2) to: (recoveredBlock29Stack3).
            recoveredBlock29PC := 51.
        ].
        recoveredBlock29Step = 51 ifTrue: [
            recoveredLocal2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 54.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 55.
        ].
        recoveredBlock29Step = 55 ifTrue: [
            recoveredBlock29Stack2 := recoveredLocal2.
            recoveredBlock29PC := 58.
        ].
        recoveredBlock29Step = 58 ifTrue: [
            recoveredBlock29Stack3 := ' ..'.
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) , (recoveredBlock29Stack3).
            recoveredBlock29PC := 62.
        ].
        recoveredBlock29Step = 62 ifTrue: [
            (recoveredBlock29Stack1) asIdentifier: (recoveredBlock29Stack2).
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29Stack1 := textStream.
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 67.
        ].
        recoveredBlock29Step = 67 ifTrue: [
            recoveredBlock29Stack3 := ' \newline '.
            recoveredBlock29PC := 69.
        ].
        recoveredBlock29Step = 69 ifTrue: [
            (recoveredBlock29Stack2) nextPutAll: (recoveredBlock29Stack3).
            recoveredBlock29PC := 71.
        ].
        recoveredBlock29Step = 71 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) cr.
            recoveredBlock29PC := 73.
        ].
        recoveredBlock29Step = 73 ifTrue: [
            recoveredBlock29PC := 96.
        ].
        recoveredBlock29Step = 76 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 77.
        ].
        recoveredBlock29Step = 77 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 78.
        ].
        recoveredBlock29Step = 78 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) notEmpty.
            recoveredBlock29PC := 79.
        ].
        recoveredBlock29Step = 79 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 82] ifFalse: [recoveredBlock29PC := 96].
        ].
        recoveredBlock29Step = 82 ifTrue: [
            recoveredBlock29PC := 83.
        ].
        recoveredBlock29Step = 83 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 84.
        ].
        recoveredBlock29Step = 84 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 85.
        ].
        recoveredBlock29Step = 85 ifTrue: [
            (recoveredBlock29Stack1) asIdentifier: (recoveredBlock29Stack2).
            recoveredBlock29PC := 87.
        ].
        recoveredBlock29Step = 87 ifTrue: [
            recoveredBlock29Stack1 := textStream.
            recoveredBlock29PC := 89.
        ].
        recoveredBlock29Step = 89 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 90.
        ].
        recoveredBlock29Step = 90 ifTrue: [
            recoveredBlock29Stack3 := ' \newline '.
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            (recoveredBlock29Stack2) nextPutAll: (recoveredBlock29Stack3).
            recoveredBlock29PC := 94.
        ].
        recoveredBlock29Step = 94 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) cr.
            recoveredBlock29PC := 96.
        ].
        recoveredBlock29Step = 96 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000afe0; bytecode file offset 0x37c3c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
deleteAndOp: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := $&.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 |
    recoveredBlock29Value0 := [
    | recoveredBlock29Block36Value0 |
    recoveredBlock29Block36Value0 := recoveredBlock29Arg1.
    recoveredBlock29Block36Value0
].
    recoveredBlock29Value1 := [
    | recoveredBlock29Block50Value0 recoveredBlock29Block50Value1 recoveredBlock29Block50Value2 |
    recoveredBlock29Block50Value0 := recoveredLocal2.
    recoveredBlock29Block50Value1 := (recoveredBlock29Block50Value0) , ('').
    recoveredBlock29Block50Value2 := recoveredBlock29Block50Value1.
    recoveredLocal2 := recoveredBlock29Block50Value2.
    recoveredBlock29Block50Value1
].
    recoveredBlock29Value2 := [
    | recoveredBlock29Block67Value0 recoveredBlock29Block67Value1 recoveredBlock29Block67Value2 recoveredBlock29Block67Value3 recoveredBlock29Block67Value4 |
    recoveredBlock29Block67Value0 := recoveredLocal2.
    recoveredBlock29Block67Value1 := recoveredBlock29Arg1.
    recoveredBlock29Block67Value2 := (recoveredBlock29Block67Value1) asString.
    recoveredBlock29Block67Value3 := (recoveredBlock29Block67Value0) , (recoveredBlock29Block67Value2).
    recoveredBlock29Block67Value4 := recoveredBlock29Block67Value3.
    recoveredLocal2 := recoveredBlock29Block67Value4.
    recoveredBlock29Block67Value3
].
    recoveredBlock29Value3 := (recoveredBlock29Value0) case: ($&) do: (recoveredBlock29Value1) others: (recoveredBlock29Value2).
    recoveredBlock29Value3
].
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000b26c; bytecode file offset 0x37e9c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSepMatrix: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValuesCollForTwoDY: (recoveredStack3) from: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack2) tabWithNColumnsMRowsSepMatrix1: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 92.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 92] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValuesCollForTwoDY: (recoveredStack3) from: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) tabWithNColumnsMRowsSepMatrix1: (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 28] ifFalse: [recoveredLocal1 := nil. recoveredPC := 106]] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000b374; bytecode file offset 0x38018"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
printFormulaMoebius: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal7 := recoveredValue0.
    recoveredValue1 := recoveredLocal7.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredLocal6 := recoveredValue2.
    recoveredValue3 := recoveredLocal7.
    recoveredValue4 := (recoveredValue3) at: (2).
    recoveredLocal5 := recoveredValue4.
    recoveredValue5 := recoveredLocal7.
    recoveredValue6 := (recoveredValue5) at: (3).
    recoveredLocal4 := recoveredValue6.
    recoveredValue7 := recoveredLocal7.
    recoveredValue8 := (recoveredValue7) at: (4).
    recoveredLocal3 := recoveredValue8.
    recoveredValue9 := ReadWriteStream.
    recoveredValue10 := String.
    recoveredValue11 := (recoveredValue10) new.
    recoveredValue12 := (recoveredValue9) on: (recoveredValue11).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := recoveredLocal6.
    recoveredValue14 := (recoveredValue13) printString.
    recoveredValue15 := (recoveredValue14) , ('+').
    recoveredValue16 := recoveredLocal5.
    recoveredValue17 := (recoveredValue16) printString.
    recoveredValue18 := (recoveredValue15) , (recoveredValue17).
    recoveredValue19 := (recoveredValue18) , ('*phys').
    recoveredLocal8 := recoveredValue19.
    recoveredValue20 := recoveredLocal4.
    recoveredValue21 := (recoveredValue20) printString.
    recoveredValue22 := (recoveredValue21) , ('+').
    recoveredValue23 := recoveredLocal3.
    recoveredValue24 := (recoveredValue23) printString.
    recoveredValue25 := (recoveredValue22) , (recoveredValue24).
    recoveredValue26 := (recoveredValue25) , ('*phys').
    recoveredLocal9 := recoveredValue26.
    recoveredValue27 := recoveredLocal2.
    recoveredValue28 := recoveredLocal8.
    recoveredValue29 := ('f(phys) = ((') , (recoveredValue28).
    recoveredValue30 := (recoveredValue29) , (') / (').
    recoveredValue31 := recoveredLocal9.
    recoveredValue32 := (recoveredValue30) , (recoveredValue31).
    recoveredValue33 := (recoveredValue32) , ('))').
    (recoveredValue27) nextPutAll: (recoveredValue33).
    recoveredValue34 := recoveredLocal2.
    (recoveredValue34) close.
    recoveredValue35 := recoveredLocal2.
    recoveredValue36 := (recoveredValue35) contents.
    ^recoveredValue36
! !

"ASDDocumentor.ic method 0x2000b468; bytecode file offset 0x380f8"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
print
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) interface.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) fullPsFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 31] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'File '.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := ' does not exist'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkDocuInifilePrinter.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 101].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'There is no printer specified in file docu.ini. Please select a printer first.'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := CgDisplay.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) allPrinterDisplayNames.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 67].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := System.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := 'There are no printers available!!'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorMessage: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := CwPrinterPrompter.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := CgDisplay.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := (recoveredStack1) defaultPrinterDisplayName.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) displayName: (recoveredStack1).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) prompt.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) displayInfo.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := (recoveredStack1) selectedPosition.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) deviceName.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack0) copy: (recoveredStack1) over: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000bfe8; bytecode file offset 0x38c40"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
escapeForListings: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := String.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 34.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := [:recoveredBlock37Arg1 | 
    | recoveredBlock37Stack0 recoveredBlock37Stack1 recoveredBlock37Stack2 recoveredBlock37Stack3 recoveredBlock37PC recoveredBlock37Step recoveredBlock37Done recoveredBlock37Result |
    recoveredBlock37Stack0 := self.
    recoveredBlock37PC := 44.
    recoveredBlock37Done := false.
    [recoveredBlock37Done not] whileTrue: [
        recoveredBlock37Step := recoveredBlock37PC.
        recoveredBlock37Step = 44 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 45.
        ].
        recoveredBlock37Step = 45 ifTrue: [
            recoveredBlock37Stack2 := (Character value: 181).
            recoveredBlock37PC := 48.
        ].
        recoveredBlock37Step = 48 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) = (recoveredBlock37Stack2).
            recoveredBlock37PC := 49.
        ].
        recoveredBlock37Step = 49 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 52] ifFalse: [recoveredBlock37PC := 62].
        ].
        recoveredBlock37Step = 52 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal2.
            recoveredBlock37PC := 55.
        ].
        recoveredBlock37Step = 55 ifTrue: [
            recoveredBlock37Stack2 := 'm'.
            recoveredBlock37PC := 57.
        ].
        recoveredBlock37Step = 57 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) nextPutAll: (recoveredBlock37Stack2).
            recoveredBlock37PC := 59.
        ].
        recoveredBlock37Step = 59 ifTrue: [
            recoveredBlock37PC := 106.
        ].
        recoveredBlock37Step = 62 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 63.
        ].
        recoveredBlock37Step = 63 ifTrue: [
            recoveredBlock37Stack2 := (Character value: 178).
            recoveredBlock37PC := 66.
        ].
        recoveredBlock37Step = 66 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) = (recoveredBlock37Stack2).
            recoveredBlock37PC := 67.
        ].
        recoveredBlock37Step = 67 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 70] ifFalse: [recoveredBlock37PC := 80].
        ].
        recoveredBlock37Step = 70 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal2.
            recoveredBlock37PC := 73.
        ].
        recoveredBlock37Step = 73 ifTrue: [
            recoveredBlock37Stack2 := '^2'.
            recoveredBlock37PC := 75.
        ].
        recoveredBlock37Step = 75 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) nextPutAll: (recoveredBlock37Stack2).
            recoveredBlock37PC := 77.
        ].
        recoveredBlock37Step = 77 ifTrue: [
            recoveredBlock37PC := 106.
        ].
        recoveredBlock37Step = 80 ifTrue: [
            recoveredBlock37Stack1 := recoveredBlock37Arg1.
            recoveredBlock37PC := 81.
        ].
        recoveredBlock37Step = 81 ifTrue: [
            recoveredBlock37Stack2 := (Character value: 179).
            recoveredBlock37PC := 84.
        ].
        recoveredBlock37Step = 84 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) = (recoveredBlock37Stack2).
            recoveredBlock37PC := 85.
        ].
        recoveredBlock37Step = 85 ifTrue: [
            (recoveredBlock37Stack1) ifTrue: [recoveredBlock37PC := 88] ifFalse: [recoveredBlock37PC := 98].
        ].
        recoveredBlock37Step = 88 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal2.
            recoveredBlock37PC := 91.
        ].
        recoveredBlock37Step = 91 ifTrue: [
            recoveredBlock37Stack2 := '^3'.
            recoveredBlock37PC := 93.
        ].
        recoveredBlock37Step = 93 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) nextPutAll: (recoveredBlock37Stack2).
            recoveredBlock37PC := 95.
        ].
        recoveredBlock37Step = 95 ifTrue: [
            recoveredBlock37PC := 106.
        ].
        recoveredBlock37Step = 98 ifTrue: [
            recoveredBlock37Stack1 := recoveredLocal2.
            recoveredBlock37PC := 101.
        ].
        recoveredBlock37Step = 101 ifTrue: [
            recoveredBlock37Stack2 := recoveredBlock37Arg1.
            recoveredBlock37PC := 102.
        ].
        recoveredBlock37Step = 102 ifTrue: [
            recoveredBlock37Stack2 := (recoveredBlock37Stack2) asString.
            recoveredBlock37PC := 104.
        ].
        recoveredBlock37Step = 104 ifTrue: [
            recoveredBlock37Stack1 := (recoveredBlock37Stack1) nextPutAll: (recoveredBlock37Stack2).
            recoveredBlock37PC := 106.
        ].
        recoveredBlock37Step = 106 ifTrue: [
            recoveredBlock37Result := recoveredBlock37Stack1.
            recoveredBlock37Done := true.
        ].
    ].
    recoveredBlock37Result
].
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000c09c; bytecode file offset 0x38d20"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
initOn: recoveredArg1 env: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := GlobalInfoController.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) isOutputMediumDialogs.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'Please choose the path of your LaTeX installation. Usually this should look like: C:\Program Files\MiKTeX 2.9\miktex'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) getEmtexDir.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 38].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 56.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack0) manager: (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack0) env: (recoveredStack1).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) saveEmtexPath: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingDirectory.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) askForWorkingDirectory.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := '%ASCETDATA%\DOCU.INI'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) asFilename.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := (recoveredStack0) asPathname.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := 'docu.tex'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            texFile := recoveredStack0.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) docuLanguage.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := SGTeXInterface.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := env.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) createForWorkingDir: (recoveredStack1) texDir: (recoveredStack2) language: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            interface := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000d1f0; bytecode file offset 0x39e58"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
printFormula5Param: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal8 := recoveredValue0.
    recoveredValue1 := recoveredLocal8.
    recoveredValue2 := (recoveredValue1) at: (1).
    recoveredLocal7 := recoveredValue2.
    recoveredValue3 := recoveredLocal8.
    recoveredValue4 := (recoveredValue3) at: (2).
    recoveredLocal6 := recoveredValue4.
    recoveredValue5 := recoveredLocal8.
    recoveredValue6 := (recoveredValue5) at: (3).
    recoveredLocal5 := recoveredValue6.
    recoveredValue7 := recoveredLocal8.
    recoveredValue8 := (recoveredValue7) at: (4).
    recoveredLocal4 := recoveredValue8.
    recoveredValue9 := recoveredLocal8.
    recoveredValue10 := (recoveredValue9) at: (5).
    recoveredLocal3 := recoveredValue10.
    recoveredValue11 := recoveredLocal8.
    recoveredValue12 := (recoveredValue11) at: (6).
    recoveredLocal2 := recoveredValue12.
    recoveredValue13 := ReadWriteStream.
    recoveredValue14 := String.
    recoveredValue15 := (recoveredValue14) new.
    recoveredValue16 := (recoveredValue13) on: (recoveredValue15).
    recoveredLocal1 := recoveredValue16.
    recoveredValue17 := recoveredLocal4.
    recoveredValue18 := (recoveredValue17) printString.
    recoveredValue19 := (recoveredValue18) , ('+').
    recoveredValue20 := recoveredLocal5.
    recoveredValue21 := (recoveredValue20) printString.
    recoveredValue22 := (recoveredValue19) , (recoveredValue21).
    recoveredValue23 := (recoveredValue22) , ('*phys').
    recoveredLocal10 := recoveredValue23.
    recoveredValue24 := recoveredLocal6.
    recoveredValue25 := (recoveredValue24) printString.
    recoveredValue26 := (recoveredValue25) , ('+').
    recoveredValue27 := recoveredLocal7.
    recoveredValue28 := (recoveredValue27) printString.
    recoveredValue29 := (recoveredValue26) , (recoveredValue28).
    recoveredValue30 := (recoveredValue29) , ('*phys').
    recoveredLocal9 := recoveredValue30.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := recoveredLocal9.
    recoveredValue33 := ('f(phys) = ((') , (recoveredValue32).
    recoveredValue34 := (recoveredValue33) , (') / (').
    recoveredValue35 := recoveredLocal10.
    recoveredValue36 := (recoveredValue34) , (recoveredValue35).
    recoveredValue37 := (recoveredValue36) , (')) +').
    recoveredValue38 := recoveredLocal3.
    recoveredValue39 := (recoveredValue38) printString.
    recoveredValue40 := (recoveredValue37) , (recoveredValue39).
    recoveredValue41 := (recoveredValue40) , ('[+').
    recoveredValue42 := recoveredLocal2.
    recoveredValue43 := (recoveredValue42) printString.
    recoveredValue44 := (recoveredValue41) , (recoveredValue43).
    recoveredValue45 := (recoveredValue44) , (']').
    (recoveredValue31) nextPutAll: (recoveredValue45).
    recoveredValue46 := recoveredLocal1.
    (recoveredValue46) close.
    recoveredValue47 := recoveredLocal1.
    recoveredValue48 := (recoveredValue47) contents.
    ^recoveredValue48
! !

"ASDDocumentor.ic method 0x2000ed3c; bytecode file offset 0x3b990"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
breakLines: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkMaxVerbatim.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) asNumber.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrs.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArrayOfSubstringsSeparatedBy: (recoveredStack1).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := String.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := [:recoveredBlock45Arg1 | 
    | recoveredBlock45Local1 recoveredBlock45Stack0 recoveredBlock45Stack1 recoveredBlock45Stack2 recoveredBlock45Stack3 recoveredBlock45Stack4 recoveredBlock45Stack5 recoveredBlock45Stack6 recoveredBlock45Stack7 recoveredBlock45PC recoveredBlock45Step recoveredBlock45Done recoveredBlock45Result |
    recoveredBlock45Stack0 := self.
    recoveredBlock45PC := 52.
    recoveredBlock45Done := false.
    [recoveredBlock45Done not] whileTrue: [
        recoveredBlock45Step := recoveredBlock45PC.
        recoveredBlock45Step = 52 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 53.
        ].
        recoveredBlock45Step = 53 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) size.
            recoveredBlock45PC := 54.
        ].
        recoveredBlock45Step = 54 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal3.
            recoveredBlock45PC := 57.
        ].
        recoveredBlock45Step = 57 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) < (recoveredBlock45Stack2).
            recoveredBlock45PC := 58.
        ].
        recoveredBlock45Step = 58 ifTrue: [
            (recoveredBlock45Stack1) ifTrue: [recoveredBlock45PC := 62] ifFalse: [recoveredBlock45PC := 82].
        ].
        recoveredBlock45Step = 62 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 65.
        ].
        recoveredBlock45Step = 65 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 66.
        ].
        recoveredBlock45Step = 66 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) , (recoveredBlock45Stack2).
            recoveredBlock45PC := 68.
        ].
        recoveredBlock45Step = 68 ifTrue: [
            recoveredBlock45Stack2 := '\'.
            recoveredBlock45PC := 70.
        ].
        recoveredBlock45Step = 70 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) withCrs.
            recoveredBlock45PC := 72.
        ].
        recoveredBlock45Step = 72 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) , (recoveredBlock45Stack2).
            recoveredBlock45PC := 74.
        ].
        recoveredBlock45Step = 74 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 75.
        ].
        recoveredBlock45Step = 75 ifTrue: [
            recoveredLocal2 := recoveredBlock45Stack2.
            recoveredBlock45PC := 78.
        ].
        recoveredBlock45Step = 78 ifTrue: [
            recoveredBlock45PC := 169.
        ].
        recoveredBlock45Step = 82 ifTrue: [
            recoveredBlock45Stack1 := 0.
            recoveredBlock45PC := 84.
        ].
        recoveredBlock45Step = 84 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack1.
            recoveredBlock45PC := 85.
        ].
        recoveredBlock45Step = 85 ifTrue: [
            recoveredBlock45Stack1 := recoveredBlock45Arg1.
            recoveredBlock45PC := 86.
        ].
        recoveredBlock45Step = 86 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) size.
            recoveredBlock45PC := 87.
        ].
        recoveredBlock45Step = 87 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal3.
            recoveredBlock45PC := 90.
        ].
        recoveredBlock45Step = 90 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) // (recoveredBlock45Stack2).
            recoveredBlock45PC := 91.
        ].
        recoveredBlock45Step = 91 ifTrue: [
            recoveredBlock45PC := 123.
        ].
        recoveredBlock45Step = 94 ifTrue: [
            recoveredBlock45Stack2 := recoveredLocal2.
            recoveredBlock45PC := 97.
        ].
        recoveredBlock45Step = 97 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Arg1.
            recoveredBlock45PC := 98.
        ].
        recoveredBlock45Step = 98 ifTrue: [
            recoveredBlock45Stack4 := recoveredBlock45Local1.
            recoveredBlock45PC := 99.
        ].
        recoveredBlock45Step = 99 ifTrue: [
            recoveredBlock45Stack4 := (recoveredBlock45Stack4) + (-1).
            recoveredBlock45PC := 100.
        ].
        recoveredBlock45Step = 100 ifTrue: [
            recoveredBlock45Stack5 := recoveredLocal3.
            recoveredBlock45PC := 103.
        ].
        recoveredBlock45Step = 103 ifTrue: [
            recoveredBlock45Stack4 := (recoveredBlock45Stack4) * (recoveredBlock45Stack5).
            recoveredBlock45PC := 104.
        ].
        recoveredBlock45Step = 104 ifTrue: [
            recoveredBlock45Stack4 := (recoveredBlock45Stack4) + (1).
            recoveredBlock45PC := 105.
        ].
        recoveredBlock45Step = 105 ifTrue: [
            recoveredBlock45Stack5 := recoveredBlock45Local1.
            recoveredBlock45PC := 106.
        ].
        recoveredBlock45Step = 106 ifTrue: [
            recoveredBlock45Stack6 := recoveredLocal3.
            recoveredBlock45PC := 109.
        ].
        recoveredBlock45Step = 109 ifTrue: [
            recoveredBlock45Stack5 := (recoveredBlock45Stack5) * (recoveredBlock45Stack6).
            recoveredBlock45PC := 110.
        ].
        recoveredBlock45Step = 110 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) copyFrom: (recoveredBlock45Stack4) to: (recoveredBlock45Stack5).
            recoveredBlock45PC := 112.
        ].
        recoveredBlock45Step = 112 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) , (recoveredBlock45Stack3).
            recoveredBlock45PC := 114.
        ].
        recoveredBlock45Step = 114 ifTrue: [
            recoveredBlock45Stack3 := '\'.
            recoveredBlock45PC := 116.
        ].
        recoveredBlock45Step = 116 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) withCrs.
            recoveredBlock45PC := 118.
        ].
        recoveredBlock45Step = 118 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) , (recoveredBlock45Stack3).
            recoveredBlock45PC := 120.
        ].
        recoveredBlock45Step = 120 ifTrue: [
            recoveredLocal2 := recoveredBlock45Stack2.
            recoveredBlock45PC := 123.
        ].
        recoveredBlock45Step = 123 ifTrue: [
            (recoveredBlock45Stack1 isInteger and: [recoveredBlock45Local1 isInteger]) ifTrue: [(recoveredBlock45Local1 + 1 <= recoveredBlock45Stack1) ifTrue: [recoveredBlock45Local1 := recoveredBlock45Local1 + 1. recoveredBlock45PC := 94] ifFalse: [recoveredBlock45Local1 := nil. recoveredBlock45PC := 137]] ifFalse: [recoveredBlock45PC := 127].
        ].
        recoveredBlock45Step = 127 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 128.
        ].
        recoveredBlock45Step = 128 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Local1.
            recoveredBlock45PC := 129.
        ].
        recoveredBlock45Step = 129 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) + (1).
            recoveredBlock45PC := 130.
        ].
        recoveredBlock45Step = 130 ifTrue: [
            recoveredBlock45Stack4 := recoveredBlock45Stack3.
            recoveredBlock45PC := 131.
        ].
        recoveredBlock45Step = 131 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack4.
            recoveredBlock45PC := 132.
        ].
        recoveredBlock45Step = 132 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) < (recoveredBlock45Stack3).
            recoveredBlock45PC := 133.
        ].
        recoveredBlock45Step = 133 ifTrue: [
            (recoveredBlock45Stack2) ifTrue: [recoveredBlock45PC := 135] ifFalse: [recoveredBlock45PC := 94].
        ].
        recoveredBlock45Step = 135 ifTrue: [
            recoveredBlock45Stack2 := nil.
            recoveredBlock45PC := 136.
        ].
        recoveredBlock45Step = 136 ifTrue: [
            recoveredBlock45Local1 := recoveredBlock45Stack2.
            recoveredBlock45PC := 137.
        ].
        recoveredBlock45Step = 137 ifTrue: [
            recoveredBlock45PC := 138.
        ].
        recoveredBlock45Step = 138 ifTrue: [
            recoveredBlock45Stack1 := recoveredLocal2.
            recoveredBlock45PC := 141.
        ].
        recoveredBlock45Step = 141 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Arg1.
            recoveredBlock45PC := 142.
        ].
        recoveredBlock45Step = 142 ifTrue: [
            recoveredBlock45Stack3 := recoveredBlock45Arg1.
            recoveredBlock45PC := 143.
        ].
        recoveredBlock45Step = 143 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) size.
            recoveredBlock45PC := 144.
        ].
        recoveredBlock45Step = 144 ifTrue: [
            recoveredBlock45Stack4 := recoveredLocal3.
            recoveredBlock45PC := 147.
        ].
        recoveredBlock45Step = 147 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) // (recoveredBlock45Stack4).
            recoveredBlock45PC := 148.
        ].
        recoveredBlock45Step = 148 ifTrue: [
            recoveredBlock45Stack4 := recoveredLocal3.
            recoveredBlock45PC := 151.
        ].
        recoveredBlock45Step = 151 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) * (recoveredBlock45Stack4).
            recoveredBlock45PC := 152.
        ].
        recoveredBlock45Step = 152 ifTrue: [
            recoveredBlock45Stack3 := (recoveredBlock45Stack3) + (1).
            recoveredBlock45PC := 153.
        ].
        recoveredBlock45Step = 153 ifTrue: [
            recoveredBlock45Stack4 := recoveredBlock45Arg1.
            recoveredBlock45PC := 154.
        ].
        recoveredBlock45Step = 154 ifTrue: [
            recoveredBlock45Stack4 := (recoveredBlock45Stack4) size.
            recoveredBlock45PC := 155.
        ].
        recoveredBlock45Step = 155 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) copyFrom: (recoveredBlock45Stack3) to: (recoveredBlock45Stack4).
            recoveredBlock45PC := 157.
        ].
        recoveredBlock45Step = 157 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) , (recoveredBlock45Stack2).
            recoveredBlock45PC := 159.
        ].
        recoveredBlock45Step = 159 ifTrue: [
            recoveredBlock45Stack2 := '\'.
            recoveredBlock45PC := 161.
        ].
        recoveredBlock45Step = 161 ifTrue: [
            recoveredBlock45Stack2 := (recoveredBlock45Stack2) withCrs.
            recoveredBlock45PC := 163.
        ].
        recoveredBlock45Step = 163 ifTrue: [
            recoveredBlock45Stack1 := (recoveredBlock45Stack1) , (recoveredBlock45Stack2).
            recoveredBlock45PC := 165.
        ].
        recoveredBlock45Step = 165 ifTrue: [
            recoveredBlock45Stack2 := recoveredBlock45Stack1.
            recoveredBlock45PC := 166.
        ].
        recoveredBlock45Step = 166 ifTrue: [
            recoveredLocal2 := recoveredBlock45Stack2.
            recoveredBlock45PC := 169.
        ].
        recoveredBlock45Step = 169 ifTrue: [
            recoveredBlock45Result := recoveredBlock45Stack1.
            recoveredBlock45Done := true.
        ].
    ].
    recoveredBlock45Result
].
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) trimBlanksAtEnd.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000f154; bytecode file offset 0x3bdf0"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
beginDocument
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsLeadEncodedReadWriteFileStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) texFile.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) openEmpty: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            textStream := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCfsError.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := (recoveredStack2) message.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) configHeader.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := '\begin{titlepage}'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := '\vspace*{6cm}'.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := '\centerline{\huge '.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack4 := (recoveredStack4) docuTitle.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIdentifierString: (recoveredStack4).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := '}'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := '\vspace{2cm}'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := '\centerline{\large '.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack4 := (recoveredStack4) docuAuthor.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIdentifierString: (recoveredStack4).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := '}'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := '\vspace{2cm}'.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := '\centerline{\today}'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := '\end{titlepage}'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := '\newpage '.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := '\normalsize'.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := '\pagenumbering{roman}'.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := '\tableofcontents'.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := '\newpage'.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := '\pagenumbering{arabic}'.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := '\setlength{\parindent}{0em}'.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20011114; bytecode file offset 0x3dd5c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSep: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := 20.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) \\ (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 148].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValuesCollForTwoDY: (recoveredStack3) from: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack2) tabWithNColumnsMRowsSep1: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredPC := 238.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 156].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) copyFrom: (recoveredStack3) to: (recoveredStack4).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack4 := 3.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack5 := recoveredLocal4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (recoveredStack6).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := (recoveredStack2) newValuesCollForTwoDY: (recoveredStack3) from: (recoveredStack4) to: (recoveredStack5).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack2) tabWithNColumnsMRowsSep1: (recoveredStack3).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 54] ifFalse: [recoveredLocal1 := nil. recoveredPC := 254]] ifFalse: [recoveredPC := 243].
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 252] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2001190c; bytecode file offset 0x3e58c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumns2Rows: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack4 := '|l'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal6 := recoveredStack3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 48] ifFalse: [recoveredPC := 89]] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 85] ifFalse: [recoveredPC := 80].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 51.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := '|'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := '\begin{tabular}{'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack4 := '} \hline '.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := [:recoveredBlock121Arg1 | 
    | recoveredBlock121Local1 recoveredBlock121Stack0 recoveredBlock121Stack1 recoveredBlock121Stack2 recoveredBlock121Stack3 recoveredBlock121Stack4 recoveredBlock121Stack5 recoveredBlock121PC recoveredBlock121Step recoveredBlock121Done recoveredBlock121Result |
    recoveredBlock121Stack0 := self.
    recoveredBlock121PC := 128.
    recoveredBlock121Done := false.
    [recoveredBlock121Done not] whileTrue: [
        recoveredBlock121Step := recoveredBlock121PC.
        recoveredBlock121Step = 128 ifTrue: [
            recoveredBlock121Stack1 := 0.
            recoveredBlock121PC := 130.
        ].
        recoveredBlock121Step = 130 ifTrue: [
            recoveredBlock121Local1 := recoveredBlock121Stack1.
            recoveredBlock121PC := 131.
        ].
        recoveredBlock121Step = 131 ifTrue: [
            recoveredBlock121Stack1 := recoveredBlock121Arg1.
            recoveredBlock121PC := 132.
        ].
        recoveredBlock121Step = 132 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) size.
            recoveredBlock121PC := 133.
        ].
        recoveredBlock121Step = 133 ifTrue: [
            recoveredBlock121PC := 202.
        ].
        recoveredBlock121Step = 136 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 137.
        ].
        recoveredBlock121Step = 137 ifTrue: [
            recoveredBlock121Stack3 := recoveredBlock121Local1.
            recoveredBlock121PC := 138.
        ].
        recoveredBlock121Step = 138 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) at: (recoveredBlock121Stack3).
            recoveredBlock121PC := 140.
        ].
        recoveredBlock121Step = 140 ifTrue: [
            recoveredLocal7 := recoveredBlock121Stack2.
            recoveredBlock121PC := 143.
        ].
        recoveredBlock121Step = 143 ifTrue: [
            recoveredBlock121Stack2 := recoveredLocal7.
            recoveredBlock121PC := 146.
        ].
        recoveredBlock121Step = 146 ifTrue: [
            (recoveredBlock121Stack2 ~~ nil) ifTrue: [recoveredBlock121PC := 158] ifFalse: [recoveredBlock121PC := 150].
        ].
        recoveredBlock121Step = 150 ifTrue: [
            recoveredBlock121Stack2 := '---'.
            recoveredBlock121PC := 152.
        ].
        recoveredBlock121Step = 152 ifTrue: [
            recoveredLocal7 := recoveredBlock121Stack2.
            recoveredBlock121PC := 155.
        ].
        recoveredBlock121Step = 155 ifTrue: [
            recoveredBlock121PC := 182.
        ].
        recoveredBlock121Step = 158 ifTrue: [
            recoveredBlock121Stack2 := recoveredLocal7.
            recoveredBlock121PC := 161.
        ].
        recoveredBlock121Step = 161 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) isCharacter.
            recoveredBlock121PC := 163.
        ].
        recoveredBlock121Step = 163 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 182] ifFalse: [recoveredBlock121PC := 166].
        ].
        recoveredBlock121Step = 166 ifTrue: [
            recoveredBlock121Stack2 := recoveredLocal7.
            recoveredBlock121PC := 169.
        ].
        recoveredBlock121Step = 169 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) isString.
            recoveredBlock121PC := 171.
        ].
        recoveredBlock121Step = 171 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 182] ifFalse: [recoveredBlock121PC := 174].
        ].
        recoveredBlock121Step = 174 ifTrue: [
            recoveredBlock121Stack2 := recoveredLocal7.
            recoveredBlock121PC := 177.
        ].
        recoveredBlock121Step = 177 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) asString.
            recoveredBlock121PC := 179.
        ].
        recoveredBlock121Step = 179 ifTrue: [
            recoveredLocal7 := recoveredBlock121Stack2.
            recoveredBlock121PC := 182.
        ].
        recoveredBlock121Step = 182 ifTrue: [
            recoveredBlock121Stack2 := self.
            recoveredBlock121PC := 183.
        ].
        recoveredBlock121Step = 183 ifTrue: [
            recoveredBlock121Stack3 := recoveredLocal7.
            recoveredBlock121PC := 186.
        ].
        recoveredBlock121Step = 186 ifTrue: [
            (recoveredBlock121Stack2) asIdentifier: (recoveredBlock121Stack3).
            recoveredBlock121PC := 188.
        ].
        recoveredBlock121Step = 188 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Local1.
            recoveredBlock121PC := 189.
        ].
        recoveredBlock121Step = 189 ifTrue: [
            recoveredBlock121Stack3 := recoveredBlock121Arg1.
            recoveredBlock121PC := 190.
        ].
        recoveredBlock121Step = 190 ifTrue: [
            recoveredBlock121Stack3 := (recoveredBlock121Stack3) size.
            recoveredBlock121PC := 191.
        ].
        recoveredBlock121Step = 191 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) = (recoveredBlock121Stack3).
            recoveredBlock121PC := 192.
        ].
        recoveredBlock121Step = 192 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 202] ifFalse: [recoveredBlock121PC := 196].
        ].
        recoveredBlock121Step = 196 ifTrue: [
            recoveredBlock121Stack2 := textStream.
            recoveredBlock121PC := 198.
        ].
        recoveredBlock121Step = 198 ifTrue: [
            recoveredBlock121Stack3 := ' & '.
            recoveredBlock121PC := 200.
        ].
        recoveredBlock121Step = 200 ifTrue: [
            (recoveredBlock121Stack2) nextPutAll: (recoveredBlock121Stack3).
            recoveredBlock121PC := 202.
        ].
        recoveredBlock121Step = 202 ifTrue: [
            (recoveredBlock121Stack1 isInteger and: [recoveredBlock121Local1 isInteger]) ifTrue: [(recoveredBlock121Local1 + 1 <= recoveredBlock121Stack1) ifTrue: [recoveredBlock121Local1 := recoveredBlock121Local1 + 1. recoveredBlock121PC := 136] ifFalse: [recoveredBlock121Local1 := nil. recoveredBlock121PC := 216]] ifFalse: [recoveredBlock121PC := 206].
        ].
        recoveredBlock121Step = 206 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Stack1.
            recoveredBlock121PC := 207.
        ].
        recoveredBlock121Step = 207 ifTrue: [
            recoveredBlock121Stack3 := recoveredBlock121Local1.
            recoveredBlock121PC := 208.
        ].
        recoveredBlock121Step = 208 ifTrue: [
            recoveredBlock121Stack3 := (recoveredBlock121Stack3) + (1).
            recoveredBlock121PC := 209.
        ].
        recoveredBlock121Step = 209 ifTrue: [
            recoveredBlock121Stack4 := recoveredBlock121Stack3.
            recoveredBlock121PC := 210.
        ].
        recoveredBlock121Step = 210 ifTrue: [
            recoveredBlock121Local1 := recoveredBlock121Stack4.
            recoveredBlock121PC := 211.
        ].
        recoveredBlock121Step = 211 ifTrue: [
            recoveredBlock121Stack2 := (recoveredBlock121Stack2) < (recoveredBlock121Stack3).
            recoveredBlock121PC := 212.
        ].
        recoveredBlock121Step = 212 ifTrue: [
            (recoveredBlock121Stack2) ifTrue: [recoveredBlock121PC := 214] ifFalse: [recoveredBlock121PC := 136].
        ].
        recoveredBlock121Step = 214 ifTrue: [
            recoveredBlock121Stack2 := nil.
            recoveredBlock121PC := 215.
        ].
        recoveredBlock121Step = 215 ifTrue: [
            recoveredBlock121Local1 := recoveredBlock121Stack2.
            recoveredBlock121PC := 216.
        ].
        recoveredBlock121Step = 216 ifTrue: [
            recoveredBlock121PC := 217.
        ].
        recoveredBlock121Step = 217 ifTrue: [
            recoveredBlock121Stack1 := recoveredLocal2.
            recoveredBlock121PC := 220.
        ].
        recoveredBlock121Step = 220 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) last.
            recoveredBlock121PC := 222.
        ].
        recoveredBlock121Step = 222 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Arg1.
            recoveredBlock121PC := 223.
        ].
        recoveredBlock121Step = 223 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) = (recoveredBlock121Stack2).
            recoveredBlock121PC := 224.
        ].
        recoveredBlock121Step = 224 ifTrue: [
            (recoveredBlock121Stack1) ifTrue: [recoveredBlock121PC := 228] ifFalse: [recoveredBlock121PC := 240].
        ].
        recoveredBlock121Step = 228 ifTrue: [
            recoveredBlock121Stack1 := textStream.
            recoveredBlock121PC := 230.
        ].
        recoveredBlock121Step = 230 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Stack1.
            recoveredBlock121PC := 231.
        ].
        recoveredBlock121Step = 231 ifTrue: [
            recoveredBlock121Stack3 := '\\ \hline'.
            recoveredBlock121PC := 233.
        ].
        recoveredBlock121Step = 233 ifTrue: [
            (recoveredBlock121Stack2) nextPutAll: (recoveredBlock121Stack3).
            recoveredBlock121PC := 235.
        ].
        recoveredBlock121Step = 235 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) cr.
            recoveredBlock121PC := 237.
        ].
        recoveredBlock121Step = 237 ifTrue: [
            recoveredBlock121PC := 249.
        ].
        recoveredBlock121Step = 240 ifTrue: [
            recoveredBlock121Stack1 := textStream.
            recoveredBlock121PC := 242.
        ].
        recoveredBlock121Step = 242 ifTrue: [
            recoveredBlock121Stack2 := recoveredBlock121Stack1.
            recoveredBlock121PC := 243.
        ].
        recoveredBlock121Step = 243 ifTrue: [
            recoveredBlock121Stack3 := '\\'.
            recoveredBlock121PC := 245.
        ].
        recoveredBlock121Step = 245 ifTrue: [
            (recoveredBlock121Stack2) nextPutAll: (recoveredBlock121Stack3).
            recoveredBlock121PC := 247.
        ].
        recoveredBlock121Step = 247 ifTrue: [
            recoveredBlock121Stack1 := (recoveredBlock121Stack1) cr.
            recoveredBlock121PC := 249.
        ].
        recoveredBlock121Step = 249 ifTrue: [
            recoveredBlock121Result := recoveredBlock121Stack1.
            recoveredBlock121Done := true.
        ].
    ].
    recoveredBlock121Result
].
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := '\end{tabular}'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20014c00; bytecode file offset 0x41890"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
asIdentifierString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WriteStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) species.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) new.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := [:recoveredBlock39Arg1 | 
    | recoveredBlock39Stack0 recoveredBlock39Stack1 recoveredBlock39Stack2 recoveredBlock39Stack3 recoveredBlock39PC recoveredBlock39Step recoveredBlock39Done recoveredBlock39Result |
    recoveredBlock39Stack0 := self.
    recoveredBlock39PC := 46.
    recoveredBlock39Done := false.
    [recoveredBlock39Done not] whileTrue: [
        recoveredBlock39Step := recoveredBlock39PC.
        recoveredBlock39Step = 46 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 47.
        ].
        recoveredBlock39Step = 47 ifTrue: [
            recoveredBlock39Stack2 := ${.
            recoveredBlock39PC := 50.
        ].
        recoveredBlock39Step = 50 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 51.
        ].
        recoveredBlock39Step = 51 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 54] ifFalse: [recoveredBlock39PC := 64].
        ].
        recoveredBlock39Step = 54 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 57.
        ].
        recoveredBlock39Step = 57 ifTrue: [
            recoveredBlock39Stack2 := '\{'.
            recoveredBlock39PC := 59.
        ].
        recoveredBlock39Step = 59 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 61.
        ].
        recoveredBlock39Step = 61 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 64 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 65.
        ].
        recoveredBlock39Step = 65 ifTrue: [
            recoveredBlock39Stack2 := $}.
            recoveredBlock39PC := 68.
        ].
        recoveredBlock39Step = 68 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 69.
        ].
        recoveredBlock39Step = 69 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 72] ifFalse: [recoveredBlock39PC := 82].
        ].
        recoveredBlock39Step = 72 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 75.
        ].
        recoveredBlock39Step = 75 ifTrue: [
            recoveredBlock39Stack2 := '\}'.
            recoveredBlock39PC := 77.
        ].
        recoveredBlock39Step = 77 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 79.
        ].
        recoveredBlock39Step = 79 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 82 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 83.
        ].
        recoveredBlock39Step = 83 ifTrue: [
            recoveredBlock39Stack2 := $\.
            recoveredBlock39PC := 86.
        ].
        recoveredBlock39Step = 86 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 87.
        ].
        recoveredBlock39Step = 87 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 90] ifFalse: [recoveredBlock39PC := 100].
        ].
        recoveredBlock39Step = 90 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 93.
        ].
        recoveredBlock39Step = 93 ifTrue: [
            recoveredBlock39Stack2 := '\tt\symbol{92}\rm '.
            recoveredBlock39PC := 95.
        ].
        recoveredBlock39Step = 95 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 97.
        ].
        recoveredBlock39Step = 97 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 100 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 101.
        ].
        recoveredBlock39Step = 101 ifTrue: [
            recoveredBlock39Stack2 := $$.
            recoveredBlock39PC := 104.
        ].
        recoveredBlock39Step = 104 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 105.
        ].
        recoveredBlock39Step = 105 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 108] ifFalse: [recoveredBlock39PC := 118].
        ].
        recoveredBlock39Step = 108 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 111.
        ].
        recoveredBlock39Step = 111 ifTrue: [
            recoveredBlock39Stack2 := '\$'.
            recoveredBlock39PC := 113.
        ].
        recoveredBlock39Step = 113 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 115.
        ].
        recoveredBlock39Step = 115 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 118 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 119.
        ].
        recoveredBlock39Step = 119 ifTrue: [
            recoveredBlock39Stack2 := $&.
            recoveredBlock39PC := 122.
        ].
        recoveredBlock39Step = 122 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 123.
        ].
        recoveredBlock39Step = 123 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 126] ifFalse: [recoveredBlock39PC := 136].
        ].
        recoveredBlock39Step = 126 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 129.
        ].
        recoveredBlock39Step = 129 ifTrue: [
            recoveredBlock39Stack2 := '\&'.
            recoveredBlock39PC := 131.
        ].
        recoveredBlock39Step = 131 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 133.
        ].
        recoveredBlock39Step = 133 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 136 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 137.
        ].
        recoveredBlock39Step = 137 ifTrue: [
            recoveredBlock39Stack2 := $_.
            recoveredBlock39PC := 140.
        ].
        recoveredBlock39Step = 140 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 141.
        ].
        recoveredBlock39Step = 141 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 144] ifFalse: [recoveredBlock39PC := 154].
        ].
        recoveredBlock39Step = 144 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 147.
        ].
        recoveredBlock39Step = 147 ifTrue: [
            recoveredBlock39Stack2 := '\_'.
            recoveredBlock39PC := 149.
        ].
        recoveredBlock39Step = 149 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 151.
        ].
        recoveredBlock39Step = 151 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 154 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 155.
        ].
        recoveredBlock39Step = 155 ifTrue: [
            recoveredBlock39Stack2 := $^.
            recoveredBlock39PC := 158.
        ].
        recoveredBlock39Step = 158 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 159.
        ].
        recoveredBlock39Step = 159 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 162] ifFalse: [recoveredBlock39PC := 172].
        ].
        recoveredBlock39Step = 162 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 165.
        ].
        recoveredBlock39Step = 165 ifTrue: [
            recoveredBlock39Stack2 := '\symbol{94}'.
            recoveredBlock39PC := 167.
        ].
        recoveredBlock39Step = 167 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 169.
        ].
        recoveredBlock39Step = 169 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 172 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 173.
        ].
        recoveredBlock39Step = 173 ifTrue: [
            recoveredBlock39Stack2 := (Character value: 181).
            recoveredBlock39PC := 176.
        ].
        recoveredBlock39Step = 176 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 177.
        ].
        recoveredBlock39Step = 177 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 180] ifFalse: [recoveredBlock39PC := 190].
        ].
        recoveredBlock39Step = 180 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 183.
        ].
        recoveredBlock39Step = 183 ifTrue: [
            recoveredBlock39Stack2 := '$\mu$'.
            recoveredBlock39PC := 185.
        ].
        recoveredBlock39Step = 185 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 187.
        ].
        recoveredBlock39Step = 187 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 190 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 191.
        ].
        recoveredBlock39Step = 191 ifTrue: [
            recoveredBlock39Stack2 := (Character value: 223).
            recoveredBlock39PC := 194.
        ].
        recoveredBlock39Step = 194 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 195.
        ].
        recoveredBlock39Step = 195 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 198] ifFalse: [recoveredBlock39PC := 208].
        ].
        recoveredBlock39Step = 198 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 201.
        ].
        recoveredBlock39Step = 201 ifTrue: [
            recoveredBlock39Stack2 := '\symbol{25}'.
            recoveredBlock39PC := 203.
        ].
        recoveredBlock39Step = 203 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 205.
        ].
        recoveredBlock39Step = 205 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 208 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 209.
        ].
        recoveredBlock39Step = 209 ifTrue: [
            recoveredBlock39Stack2 := $|.
            recoveredBlock39PC := 212.
        ].
        recoveredBlock39Step = 212 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 213.
        ].
        recoveredBlock39Step = 213 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 216] ifFalse: [recoveredBlock39PC := 226].
        ].
        recoveredBlock39Step = 216 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 219.
        ].
        recoveredBlock39Step = 219 ifTrue: [
            recoveredBlock39Stack2 := '\tt\symbol{124}\rm '.
            recoveredBlock39PC := 221.
        ].
        recoveredBlock39Step = 221 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 223.
        ].
        recoveredBlock39Step = 223 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 226 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 227.
        ].
        recoveredBlock39Step = 227 ifTrue: [
            recoveredBlock39Stack2 := $>.
            recoveredBlock39PC := 230.
        ].
        recoveredBlock39Step = 230 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 231.
        ].
        recoveredBlock39Step = 231 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 234] ifFalse: [recoveredBlock39PC := 244].
        ].
        recoveredBlock39Step = 234 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 237.
        ].
        recoveredBlock39Step = 237 ifTrue: [
            recoveredBlock39Stack2 := '$>$'.
            recoveredBlock39PC := 239.
        ].
        recoveredBlock39Step = 239 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 241.
        ].
        recoveredBlock39Step = 241 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 244 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 245.
        ].
        recoveredBlock39Step = 245 ifTrue: [
            recoveredBlock39Stack2 := $<.
            recoveredBlock39PC := 248.
        ].
        recoveredBlock39Step = 248 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 249.
        ].
        recoveredBlock39Step = 249 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 252] ifFalse: [recoveredBlock39PC := 262].
        ].
        recoveredBlock39Step = 252 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 255.
        ].
        recoveredBlock39Step = 255 ifTrue: [
            recoveredBlock39Stack2 := '$<$'.
            recoveredBlock39PC := 257.
        ].
        recoveredBlock39Step = 257 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 259.
        ].
        recoveredBlock39Step = 259 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 262 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 263.
        ].
        recoveredBlock39Step = 263 ifTrue: [
            recoveredBlock39Stack2 := $ .
            recoveredBlock39PC := 266.
        ].
        recoveredBlock39Step = 266 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 267.
        ].
        recoveredBlock39Step = 267 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 270] ifFalse: [recoveredBlock39PC := 280].
        ].
        recoveredBlock39Step = 270 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 273.
        ].
        recoveredBlock39Step = 273 ifTrue: [
            recoveredBlock39Stack2 := '  '.
            recoveredBlock39PC := 275.
        ].
        recoveredBlock39Step = 275 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 277.
        ].
        recoveredBlock39Step = 277 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 280 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 281.
        ].
        recoveredBlock39Step = 281 ifTrue: [
            recoveredBlock39Stack2 := $/.
            recoveredBlock39PC := 284.
        ].
        recoveredBlock39Step = 284 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 285.
        ].
        recoveredBlock39Step = 285 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 288] ifFalse: [recoveredBlock39PC := 300].
        ].
        recoveredBlock39Step = 288 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 291.
        ].
        recoveredBlock39Step = 291 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 292.
        ].
        recoveredBlock39Step = 292 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) asString.
            recoveredBlock39PC := 294.
        ].
        recoveredBlock39Step = 294 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 296.
        ].
        recoveredBlock39Step = 296 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 300 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 301.
        ].
        recoveredBlock39Step = 301 ifTrue: [
            recoveredBlock39Stack2 := $#.
            recoveredBlock39PC := 304.
        ].
        recoveredBlock39Step = 304 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 305.
        ].
        recoveredBlock39Step = 305 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 308] ifFalse: [recoveredBlock39PC := 318].
        ].
        recoveredBlock39Step = 308 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 311.
        ].
        recoveredBlock39Step = 311 ifTrue: [
            recoveredBlock39Stack2 := '\#'.
            recoveredBlock39PC := 313.
        ].
        recoveredBlock39Step = 313 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 315.
        ].
        recoveredBlock39Step = 315 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 318 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 319.
        ].
        recoveredBlock39Step = 319 ifTrue: [
            recoveredBlock39Stack2 := $%.
            recoveredBlock39PC := 322.
        ].
        recoveredBlock39Step = 322 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 323.
        ].
        recoveredBlock39Step = 323 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 326] ifFalse: [recoveredBlock39PC := 336].
        ].
        recoveredBlock39Step = 326 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 329.
        ].
        recoveredBlock39Step = 329 ifTrue: [
            recoveredBlock39Stack2 := '\%'.
            recoveredBlock39PC := 331.
        ].
        recoveredBlock39Step = 331 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 333.
        ].
        recoveredBlock39Step = 333 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 336 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 337.
        ].
        recoveredBlock39Step = 337 ifTrue: [
            recoveredBlock39Stack2 := (Character value: 178).
            recoveredBlock39PC := 340.
        ].
        recoveredBlock39Step = 340 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 341.
        ].
        recoveredBlock39Step = 341 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 344] ifFalse: [recoveredBlock39PC := 354].
        ].
        recoveredBlock39Step = 344 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 347.
        ].
        recoveredBlock39Step = 347 ifTrue: [
            recoveredBlock39Stack2 := '${^2}$'.
            recoveredBlock39PC := 349.
        ].
        recoveredBlock39Step = 349 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 351.
        ].
        recoveredBlock39Step = 351 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 354 ifTrue: [
            recoveredBlock39Stack1 := recoveredBlock39Arg1.
            recoveredBlock39PC := 355.
        ].
        recoveredBlock39Step = 355 ifTrue: [
            recoveredBlock39Stack2 := (Character value: 179).
            recoveredBlock39PC := 358.
        ].
        recoveredBlock39Step = 358 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) = (recoveredBlock39Stack2).
            recoveredBlock39PC := 359.
        ].
        recoveredBlock39Step = 359 ifTrue: [
            (recoveredBlock39Stack1) ifTrue: [recoveredBlock39PC := 362] ifFalse: [recoveredBlock39PC := 372].
        ].
        recoveredBlock39Step = 362 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 365.
        ].
        recoveredBlock39Step = 365 ifTrue: [
            recoveredBlock39Stack2 := '${^3}$'.
            recoveredBlock39PC := 367.
        ].
        recoveredBlock39Step = 367 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 369.
        ].
        recoveredBlock39Step = 369 ifTrue: [
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 372 ifTrue: [
            recoveredBlock39Stack1 := recoveredLocal2.
            recoveredBlock39PC := 375.
        ].
        recoveredBlock39Step = 375 ifTrue: [
            recoveredBlock39Stack2 := recoveredBlock39Arg1.
            recoveredBlock39PC := 376.
        ].
        recoveredBlock39Step = 376 ifTrue: [
            recoveredBlock39Stack2 := (recoveredBlock39Stack2) asString.
            recoveredBlock39PC := 378.
        ].
        recoveredBlock39Step = 378 ifTrue: [
            recoveredBlock39Stack1 := (recoveredBlock39Stack1) nextPutAll: (recoveredBlock39Stack2).
            recoveredBlock39PC := 380.
        ].
        recoveredBlock39Step = 380 ifTrue: [
            recoveredBlock39Result := recoveredBlock39Stack1.
            recoveredBlock39Done := true.
        ].
    ].
    recoveredBlock39Result
].
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x20015d8c; bytecode file offset 0x42a10"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsSep1: recoveredArg1 header: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := 'l'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 74] ifFalse: [recoveredPC := 115]] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 111] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 77.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 156.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := 'l'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 130] ifFalse: [recoveredPC := 185]] ifFalse: [recoveredPC := 159].
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack2 := [:recoveredBlock189Arg1 | 
    | recoveredBlock189Stack0 recoveredBlock189Stack1 recoveredBlock189Stack2 recoveredBlock189Stack3 recoveredBlock189Stack4 recoveredBlock189PC recoveredBlock189Step recoveredBlock189Done recoveredBlock189Result |
    recoveredBlock189Stack0 := self.
    recoveredBlock189PC := 196.
    recoveredBlock189Done := false.
    [recoveredBlock189Done not] whileTrue: [
        recoveredBlock189Step := recoveredBlock189PC.
        recoveredBlock189Step = 196 ifTrue: [
            recoveredBlock189Stack1 := nil.
            recoveredBlock189PC := 197.
        ].
        recoveredBlock189Step = 197 ifTrue: [
            recoveredBlock189Stack2 := recoveredBlock189Arg1.
            recoveredBlock189PC := 198.
        ].
        recoveredBlock189Step = 198 ifTrue: [
            recoveredBlock189Stack2 := (recoveredBlock189Stack2) size.
            recoveredBlock189PC := 200.
        ].
        recoveredBlock189Step = 200 ifTrue: [
            recoveredBlock189Stack3 := recoveredLocal7.
            recoveredBlock189PC := 203.
        ].
        recoveredBlock189Step = 203 ifTrue: [
            recoveredBlock189Stack2 := (recoveredBlock189Stack2) > (recoveredBlock189Stack3).
            recoveredBlock189PC := 204.
        ].
        recoveredBlock189Step = 204 ifTrue: [
            (recoveredBlock189Stack2) ifTrue: [recoveredBlock189PC := 208] ifFalse: [recoveredBlock189PC := 216].
        ].
        recoveredBlock189Step = 208 ifTrue: [
            recoveredBlock189PC := 209.
        ].
        recoveredBlock189Step = 209 ifTrue: [
            recoveredBlock189Stack1 := recoveredBlock189Arg1.
            recoveredBlock189PC := 210.
        ].
        recoveredBlock189Step = 210 ifTrue: [
            recoveredBlock189Stack1 := (recoveredBlock189Stack1) size.
            recoveredBlock189PC := 212.
        ].
        recoveredBlock189Step = 212 ifTrue: [
            recoveredBlock189Stack2 := recoveredBlock189Stack1.
            recoveredBlock189PC := 213.
        ].
        recoveredBlock189Step = 213 ifTrue: [
            recoveredLocal7 := recoveredBlock189Stack2.
            recoveredBlock189PC := 216.
        ].
        recoveredBlock189Step = 216 ifTrue: [
            recoveredBlock189Result := recoveredBlock189Stack1.
            recoveredBlock189Done := true.
        ].
    ].
    recoveredBlock189Result
].
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := '\begin{tabular}{'.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack4 := '} \hline '.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 292.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack3) asIdentifier: (recoveredStack4).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack5 := '\\ \hline '.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredPC := 292.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack4 := ' & '.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 248] ifFalse: [recoveredPC := 321]] ifFalse: [recoveredPC := 295].
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 317] ifFalse: [recoveredPC := 312].
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredPC := 251.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack2 := [:recoveredBlock325Arg1 | 
    | recoveredBlock325Local1 recoveredBlock325Stack0 recoveredBlock325Stack1 recoveredBlock325Stack2 recoveredBlock325Stack3 recoveredBlock325Stack4 recoveredBlock325Stack5 recoveredBlock325PC recoveredBlock325Step recoveredBlock325Done recoveredBlock325Result |
    recoveredBlock325Stack0 := self.
    recoveredBlock325PC := 332.
    recoveredBlock325Done := false.
    [recoveredBlock325Done not] whileTrue: [
        recoveredBlock325Step := recoveredBlock325PC.
        recoveredBlock325Step = 332 ifTrue: [
            recoveredBlock325Stack1 := recoveredLocal2.
            recoveredBlock325PC := 335.
        ].
        recoveredBlock325Step = 335 ifTrue: [
            recoveredBlock325Stack1 := (recoveredBlock325Stack1) + (1).
            recoveredBlock325PC := 336.
        ].
        recoveredBlock325Step = 336 ifTrue: [
            recoveredLocal2 := recoveredBlock325Stack1.
            recoveredBlock325PC := 339.
        ].
        recoveredBlock325Step = 339 ifTrue: [
            recoveredBlock325Stack1 := 0.
            recoveredBlock325PC := 341.
        ].
        recoveredBlock325Step = 341 ifTrue: [
            recoveredBlock325Local1 := recoveredBlock325Stack1.
            recoveredBlock325PC := 342.
        ].
        recoveredBlock325Step = 342 ifTrue: [
            recoveredBlock325Stack1 := recoveredBlock325Arg1.
            recoveredBlock325PC := 343.
        ].
        recoveredBlock325Step = 343 ifTrue: [
            recoveredBlock325Stack1 := (recoveredBlock325Stack1) size.
            recoveredBlock325PC := 345.
        ].
        recoveredBlock325Step = 345 ifTrue: [
            recoveredBlock325PC := 414.
        ].
        recoveredBlock325Step = 348 ifTrue: [
            recoveredBlock325Stack2 := recoveredBlock325Arg1.
            recoveredBlock325PC := 349.
        ].
        recoveredBlock325Step = 349 ifTrue: [
            recoveredBlock325Stack3 := recoveredBlock325Local1.
            recoveredBlock325PC := 350.
        ].
        recoveredBlock325Step = 350 ifTrue: [
            recoveredBlock325Stack2 := (recoveredBlock325Stack2) at: (recoveredBlock325Stack3).
            recoveredBlock325PC := 352.
        ].
        recoveredBlock325Step = 352 ifTrue: [
            recoveredLocal9 := recoveredBlock325Stack2.
            recoveredBlock325PC := 355.
        ].
        recoveredBlock325Step = 355 ifTrue: [
            recoveredBlock325Stack2 := recoveredLocal9.
            recoveredBlock325PC := 358.
        ].
        recoveredBlock325Step = 358 ifTrue: [
            (recoveredBlock325Stack2 ~~ nil) ifTrue: [recoveredBlock325PC := 370] ifFalse: [recoveredBlock325PC := 362].
        ].
        recoveredBlock325Step = 362 ifTrue: [
            recoveredBlock325Stack2 := '---'.
            recoveredBlock325PC := 364.
        ].
        recoveredBlock325Step = 364 ifTrue: [
            recoveredLocal9 := recoveredBlock325Stack2.
            recoveredBlock325PC := 367.
        ].
        recoveredBlock325Step = 367 ifTrue: [
            recoveredBlock325PC := 394.
        ].
        recoveredBlock325Step = 370 ifTrue: [
            recoveredBlock325Stack2 := recoveredLocal9.
            recoveredBlock325PC := 373.
        ].
        recoveredBlock325Step = 373 ifTrue: [
            recoveredBlock325Stack2 := (recoveredBlock325Stack2) isCharacter.
            recoveredBlock325PC := 375.
        ].
        recoveredBlock325Step = 375 ifTrue: [
            (recoveredBlock325Stack2) ifTrue: [recoveredBlock325PC := 394] ifFalse: [recoveredBlock325PC := 378].
        ].
        recoveredBlock325Step = 378 ifTrue: [
            recoveredBlock325Stack2 := recoveredLocal9.
            recoveredBlock325PC := 381.
        ].
        recoveredBlock325Step = 381 ifTrue: [
            recoveredBlock325Stack2 := (recoveredBlock325Stack2) isString.
            recoveredBlock325PC := 383.
        ].
        recoveredBlock325Step = 383 ifTrue: [
            (recoveredBlock325Stack2) ifTrue: [recoveredBlock325PC := 394] ifFalse: [recoveredBlock325PC := 386].
        ].
        recoveredBlock325Step = 386 ifTrue: [
            recoveredBlock325Stack2 := recoveredLocal9.
            recoveredBlock325PC := 389.
        ].
        recoveredBlock325Step = 389 ifTrue: [
            recoveredBlock325Stack2 := (recoveredBlock325Stack2) asString.
            recoveredBlock325PC := 391.
        ].
        recoveredBlock325Step = 391 ifTrue: [
            recoveredLocal9 := recoveredBlock325Stack2.
            recoveredBlock325PC := 394.
        ].
        recoveredBlock325Step = 394 ifTrue: [
            recoveredBlock325Stack2 := self.
            recoveredBlock325PC := 395.
        ].
        recoveredBlock325Step = 395 ifTrue: [
            recoveredBlock325Stack3 := recoveredLocal9.
            recoveredBlock325PC := 398.
        ].
        recoveredBlock325Step = 398 ifTrue: [
            (recoveredBlock325Stack2) asIdentifier: (recoveredBlock325Stack3).
            recoveredBlock325PC := 400.
        ].
        recoveredBlock325Step = 400 ifTrue: [
            recoveredBlock325Stack2 := recoveredBlock325Local1.
            recoveredBlock325PC := 401.
        ].
        recoveredBlock325Step = 401 ifTrue: [
            recoveredBlock325Stack3 := recoveredBlock325Arg1.
            recoveredBlock325PC := 402.
        ].
        recoveredBlock325Step = 402 ifTrue: [
            recoveredBlock325Stack3 := (recoveredBlock325Stack3) size.
            recoveredBlock325PC := 404.
        ].
        recoveredBlock325Step = 404 ifTrue: [
            recoveredBlock325Stack2 := (recoveredBlock325Stack2) = (recoveredBlock325Stack3).
            recoveredBlock325PC := 405.
        ].
        recoveredBlock325Step = 405 ifTrue: [
            (recoveredBlock325Stack2) ifTrue: [recoveredBlock325PC := 414] ifFalse: [recoveredBlock325PC := 408].
        ].
        recoveredBlock325Step = 408 ifTrue: [
            recoveredBlock325Stack2 := textStream.
            recoveredBlock325PC := 410.
        ].
        recoveredBlock325Step = 410 ifTrue: [
            recoveredBlock325Stack3 := ' & '.
            recoveredBlock325PC := 412.
        ].
        recoveredBlock325Step = 412 ifTrue: [
            (recoveredBlock325Stack2) nextPutAll: (recoveredBlock325Stack3).
            recoveredBlock325PC := 414.
        ].
        recoveredBlock325Step = 414 ifTrue: [
            (recoveredBlock325Stack1 isInteger and: [recoveredBlock325Local1 isInteger]) ifTrue: [(recoveredBlock325Local1 + 1 <= recoveredBlock325Stack1) ifTrue: [recoveredBlock325Local1 := recoveredBlock325Local1 + 1. recoveredBlock325PC := 348] ifFalse: [recoveredBlock325Local1 := nil. recoveredBlock325PC := 428]] ifFalse: [recoveredBlock325PC := 418].
        ].
        recoveredBlock325Step = 418 ifTrue: [
            recoveredBlock325Stack2 := recoveredBlock325Stack1.
            recoveredBlock325PC := 419.
        ].
        recoveredBlock325Step = 419 ifTrue: [
            recoveredBlock325Stack3 := recoveredBlock325Local1.
            recoveredBlock325PC := 420.
        ].
        recoveredBlock325Step = 420 ifTrue: [
            recoveredBlock325Stack3 := (recoveredBlock325Stack3) + (1).
            recoveredBlock325PC := 421.
        ].
        recoveredBlock325Step = 421 ifTrue: [
            recoveredBlock325Stack4 := recoveredBlock325Stack3.
            recoveredBlock325PC := 422.
        ].
        recoveredBlock325Step = 422 ifTrue: [
            recoveredBlock325Local1 := recoveredBlock325Stack4.
            recoveredBlock325PC := 423.
        ].
        recoveredBlock325Step = 423 ifTrue: [
            recoveredBlock325Stack2 := (recoveredBlock325Stack2) < (recoveredBlock325Stack3).
            recoveredBlock325PC := 424.
        ].
        recoveredBlock325Step = 424 ifTrue: [
            (recoveredBlock325Stack2) ifTrue: [recoveredBlock325PC := 426] ifFalse: [recoveredBlock325PC := 348].
        ].
        recoveredBlock325Step = 426 ifTrue: [
            recoveredBlock325Stack2 := nil.
            recoveredBlock325PC := 427.
        ].
        recoveredBlock325Step = 427 ifTrue: [
            recoveredBlock325Local1 := recoveredBlock325Stack2.
            recoveredBlock325PC := 428.
        ].
        recoveredBlock325Step = 428 ifTrue: [
            recoveredBlock325PC := 429.
        ].
        recoveredBlock325Step = 429 ifTrue: [
            recoveredBlock325Stack1 := recoveredLocal2.
            recoveredBlock325PC := 432.
        ].
        recoveredBlock325Step = 432 ifTrue: [
            recoveredBlock325Stack2 := recoveredLocal4.
            recoveredBlock325PC := 435.
        ].
        recoveredBlock325Step = 435 ifTrue: [
            recoveredBlock325Stack2 := (recoveredBlock325Stack2) size.
            recoveredBlock325PC := 437.
        ].
        recoveredBlock325Step = 437 ifTrue: [
            recoveredBlock325Stack1 := (recoveredBlock325Stack1) = (recoveredBlock325Stack2).
            recoveredBlock325PC := 438.
        ].
        recoveredBlock325Step = 438 ifTrue: [
            (recoveredBlock325Stack1) ifTrue: [recoveredBlock325PC := 442] ifFalse: [recoveredBlock325PC := 454].
        ].
        recoveredBlock325Step = 442 ifTrue: [
            recoveredBlock325Stack1 := textStream.
            recoveredBlock325PC := 444.
        ].
        recoveredBlock325Step = 444 ifTrue: [
            recoveredBlock325Stack2 := recoveredBlock325Stack1.
            recoveredBlock325PC := 445.
        ].
        recoveredBlock325Step = 445 ifTrue: [
            recoveredBlock325Stack3 := '\\ \hline '.
            recoveredBlock325PC := 447.
        ].
        recoveredBlock325Step = 447 ifTrue: [
            (recoveredBlock325Stack2) nextPutAll: (recoveredBlock325Stack3).
            recoveredBlock325PC := 449.
        ].
        recoveredBlock325Step = 449 ifTrue: [
            recoveredBlock325Stack1 := (recoveredBlock325Stack1) cr.
            recoveredBlock325PC := 451.
        ].
        recoveredBlock325Step = 451 ifTrue: [
            recoveredBlock325PC := 463.
        ].
        recoveredBlock325Step = 454 ifTrue: [
            recoveredBlock325Stack1 := textStream.
            recoveredBlock325PC := 456.
        ].
        recoveredBlock325Step = 456 ifTrue: [
            recoveredBlock325Stack2 := recoveredBlock325Stack1.
            recoveredBlock325PC := 457.
        ].
        recoveredBlock325Step = 457 ifTrue: [
            recoveredBlock325Stack3 := '\\'.
            recoveredBlock325PC := 459.
        ].
        recoveredBlock325Step = 459 ifTrue: [
            (recoveredBlock325Stack2) nextPutAll: (recoveredBlock325Stack3).
            recoveredBlock325PC := 461.
        ].
        recoveredBlock325Step = 461 ifTrue: [
            recoveredBlock325Stack1 := (recoveredBlock325Stack1) cr.
            recoveredBlock325PC := 463.
        ].
        recoveredBlock325Step = 463 ifTrue: [
            recoveredBlock325Result := recoveredBlock325Stack1.
            recoveredBlock325Done := true.
        ].
    ].
    recoveredBlock325Result
].
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack3 := '\end{tabular}'.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20017024; bytecode file offset 0x43cb0"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumns: recoveredArg1 header: recoveredArg2 sep: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 60] ifFalse: [recoveredPC := 105]] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack2 := [:recoveredBlock109Arg1 | 
    | recoveredBlock109Stack0 recoveredBlock109Stack1 recoveredBlock109Stack2 recoveredBlock109Stack3 recoveredBlock109Stack4 recoveredBlock109PC recoveredBlock109Step recoveredBlock109Done recoveredBlock109Result |
    recoveredBlock109Stack0 := self.
    recoveredBlock109PC := 116.
    recoveredBlock109Done := false.
    [recoveredBlock109Done not] whileTrue: [
        recoveredBlock109Step := recoveredBlock109PC.
        recoveredBlock109Step = 116 ifTrue: [
            recoveredBlock109Stack1 := nil.
            recoveredBlock109PC := 117.
        ].
        recoveredBlock109Step = 117 ifTrue: [
            recoveredBlock109Stack2 := recoveredBlock109Arg1.
            recoveredBlock109PC := 118.
        ].
        recoveredBlock109Step = 118 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) size.
            recoveredBlock109PC := 120.
        ].
        recoveredBlock109Step = 120 ifTrue: [
            recoveredBlock109Stack3 := recoveredLocal6.
            recoveredBlock109PC := 123.
        ].
        recoveredBlock109Step = 123 ifTrue: [
            recoveredBlock109Stack2 := (recoveredBlock109Stack2) > (recoveredBlock109Stack3).
            recoveredBlock109PC := 124.
        ].
        recoveredBlock109Step = 124 ifTrue: [
            (recoveredBlock109Stack2) ifTrue: [recoveredBlock109PC := 128] ifFalse: [recoveredBlock109PC := 136].
        ].
        recoveredBlock109Step = 128 ifTrue: [
            recoveredBlock109PC := 129.
        ].
        recoveredBlock109Step = 129 ifTrue: [
            recoveredBlock109Stack1 := recoveredBlock109Arg1.
            recoveredBlock109PC := 130.
        ].
        recoveredBlock109Step = 130 ifTrue: [
            recoveredBlock109Stack1 := (recoveredBlock109Stack1) size.
            recoveredBlock109PC := 132.
        ].
        recoveredBlock109Step = 132 ifTrue: [
            recoveredBlock109Stack2 := recoveredBlock109Stack1.
            recoveredBlock109PC := 133.
        ].
        recoveredBlock109Step = 133 ifTrue: [
            recoveredLocal6 := recoveredBlock109Stack2.
            recoveredBlock109PC := 136.
        ].
        recoveredBlock109Step = 136 ifTrue: [
            recoveredBlock109Result := recoveredBlock109Stack1.
            recoveredBlock109Done := true.
        ].
    ].
    recoveredBlock109Result
].
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := 'l'.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredLocal7 := recoveredStack3.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 158] ifFalse: [recoveredPC := 199]] ifFalse: [recoveredPC := 174].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredPC := 161.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredPC := 227.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack4 := 'l'.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal7 := recoveredStack3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 214] ifFalse: [recoveredPC := 255]] ifFalse: [recoveredPC := 230].
        ].
        recoveredStep = 230 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 251] ifFalse: [recoveredPC := 246].
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredPC := 217.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := '\begin{tabular}{'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack4 := recoveredLocal7.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := '}'.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredPC := 340.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := '\underline{'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack6 := recoveredLocal4.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifierString: (recoveredStack6).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack5 := '}'.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 322] ifFalse: [recoveredPC := 334].
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack5 := '\\'.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredPC := 340.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack4 := ' & '.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 284] ifFalse: [recoveredPC := 369]] ifFalse: [recoveredPC := 343].
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 365] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack2 := [:recoveredBlock373Arg1 | 
    | recoveredBlock373Local1 recoveredBlock373Stack0 recoveredBlock373Stack1 recoveredBlock373Stack2 recoveredBlock373Stack3 recoveredBlock373Stack4 recoveredBlock373Stack5 recoveredBlock373PC recoveredBlock373Step recoveredBlock373Done recoveredBlock373Result |
    recoveredBlock373Stack0 := self.
    recoveredBlock373PC := 380.
    recoveredBlock373Done := false.
    [recoveredBlock373Done not] whileTrue: [
        recoveredBlock373Step := recoveredBlock373PC.
        recoveredBlock373Step = 380 ifTrue: [
            recoveredBlock373Stack1 := 0.
            recoveredBlock373PC := 382.
        ].
        recoveredBlock373Step = 382 ifTrue: [
            recoveredBlock373Local1 := recoveredBlock373Stack1.
            recoveredBlock373PC := 383.
        ].
        recoveredBlock373Step = 383 ifTrue: [
            recoveredBlock373Stack1 := recoveredBlock373Arg1.
            recoveredBlock373PC := 384.
        ].
        recoveredBlock373Step = 384 ifTrue: [
            recoveredBlock373Stack1 := (recoveredBlock373Stack1) size.
            recoveredBlock373PC := 386.
        ].
        recoveredBlock373Step = 386 ifTrue: [
            recoveredBlock373PC := 460.
        ].
        recoveredBlock373Step = 390 ifTrue: [
            recoveredBlock373Stack2 := recoveredBlock373Arg1.
            recoveredBlock373PC := 391.
        ].
        recoveredBlock373Step = 391 ifTrue: [
            recoveredBlock373Stack3 := recoveredBlock373Local1.
            recoveredBlock373PC := 392.
        ].
        recoveredBlock373Step = 392 ifTrue: [
            recoveredBlock373Stack2 := (recoveredBlock373Stack2) at: (recoveredBlock373Stack3).
            recoveredBlock373PC := 394.
        ].
        recoveredBlock373Step = 394 ifTrue: [
            recoveredLocal8 := recoveredBlock373Stack2.
            recoveredBlock373PC := 397.
        ].
        recoveredBlock373Step = 397 ifTrue: [
            recoveredBlock373Stack2 := recoveredLocal8.
            recoveredBlock373PC := 400.
        ].
        recoveredBlock373Step = 400 ifTrue: [
            (recoveredBlock373Stack2 ~~ nil) ifTrue: [recoveredBlock373PC := 412] ifFalse: [recoveredBlock373PC := 404].
        ].
        recoveredBlock373Step = 404 ifTrue: [
            recoveredBlock373Stack2 := '---'.
            recoveredBlock373PC := 406.
        ].
        recoveredBlock373Step = 406 ifTrue: [
            recoveredLocal8 := recoveredBlock373Stack2.
            recoveredBlock373PC := 409.
        ].
        recoveredBlock373Step = 409 ifTrue: [
            recoveredBlock373PC := 436.
        ].
        recoveredBlock373Step = 412 ifTrue: [
            recoveredBlock373Stack2 := recoveredLocal8.
            recoveredBlock373PC := 415.
        ].
        recoveredBlock373Step = 415 ifTrue: [
            recoveredBlock373Stack2 := (recoveredBlock373Stack2) isCharacter.
            recoveredBlock373PC := 417.
        ].
        recoveredBlock373Step = 417 ifTrue: [
            (recoveredBlock373Stack2) ifTrue: [recoveredBlock373PC := 436] ifFalse: [recoveredBlock373PC := 420].
        ].
        recoveredBlock373Step = 420 ifTrue: [
            recoveredBlock373Stack2 := recoveredLocal8.
            recoveredBlock373PC := 423.
        ].
        recoveredBlock373Step = 423 ifTrue: [
            recoveredBlock373Stack2 := (recoveredBlock373Stack2) isString.
            recoveredBlock373PC := 425.
        ].
        recoveredBlock373Step = 425 ifTrue: [
            (recoveredBlock373Stack2) ifTrue: [recoveredBlock373PC := 436] ifFalse: [recoveredBlock373PC := 428].
        ].
        recoveredBlock373Step = 428 ifTrue: [
            recoveredBlock373Stack2 := recoveredLocal8.
            recoveredBlock373PC := 431.
        ].
        recoveredBlock373Step = 431 ifTrue: [
            recoveredBlock373Stack2 := (recoveredBlock373Stack2) asString.
            recoveredBlock373PC := 433.
        ].
        recoveredBlock373Step = 433 ifTrue: [
            recoveredLocal8 := recoveredBlock373Stack2.
            recoveredBlock373PC := 436.
        ].
        recoveredBlock373Step = 436 ifTrue: [
            recoveredBlock373Stack2 := textStream.
            recoveredBlock373PC := 438.
        ].
        recoveredBlock373Step = 438 ifTrue: [
            recoveredBlock373Stack3 := self.
            recoveredBlock373PC := 439.
        ].
        recoveredBlock373Step = 439 ifTrue: [
            recoveredBlock373Stack4 := recoveredLocal8.
            recoveredBlock373PC := 442.
        ].
        recoveredBlock373Step = 442 ifTrue: [
            recoveredBlock373Stack3 := (recoveredBlock373Stack3) asIdentifierString: (recoveredBlock373Stack4).
            recoveredBlock373PC := 444.
        ].
        recoveredBlock373Step = 444 ifTrue: [
            (recoveredBlock373Stack2) nextPutAll: (recoveredBlock373Stack3).
            recoveredBlock373PC := 446.
        ].
        recoveredBlock373Step = 446 ifTrue: [
            recoveredBlock373Stack2 := recoveredBlock373Local1.
            recoveredBlock373PC := 447.
        ].
        recoveredBlock373Step = 447 ifTrue: [
            recoveredBlock373Stack3 := recoveredBlock373Arg1.
            recoveredBlock373PC := 448.
        ].
        recoveredBlock373Step = 448 ifTrue: [
            recoveredBlock373Stack3 := (recoveredBlock373Stack3) size.
            recoveredBlock373PC := 450.
        ].
        recoveredBlock373Step = 450 ifTrue: [
            recoveredBlock373Stack2 := (recoveredBlock373Stack2) = (recoveredBlock373Stack3).
            recoveredBlock373PC := 451.
        ].
        recoveredBlock373Step = 451 ifTrue: [
            (recoveredBlock373Stack2) ifTrue: [recoveredBlock373PC := 460] ifFalse: [recoveredBlock373PC := 454].
        ].
        recoveredBlock373Step = 454 ifTrue: [
            recoveredBlock373Stack2 := textStream.
            recoveredBlock373PC := 456.
        ].
        recoveredBlock373Step = 456 ifTrue: [
            recoveredBlock373Stack3 := ' & '.
            recoveredBlock373PC := 458.
        ].
        recoveredBlock373Step = 458 ifTrue: [
            (recoveredBlock373Stack2) nextPutAll: (recoveredBlock373Stack3).
            recoveredBlock373PC := 460.
        ].
        recoveredBlock373Step = 460 ifTrue: [
            (recoveredBlock373Stack1 isInteger and: [recoveredBlock373Local1 isInteger]) ifTrue: [(recoveredBlock373Local1 + 1 <= recoveredBlock373Stack1) ifTrue: [recoveredBlock373Local1 := recoveredBlock373Local1 + 1. recoveredBlock373PC := 390] ifFalse: [recoveredBlock373Local1 := nil. recoveredBlock373PC := 474]] ifFalse: [recoveredBlock373PC := 464].
        ].
        recoveredBlock373Step = 464 ifTrue: [
            recoveredBlock373Stack2 := recoveredBlock373Stack1.
            recoveredBlock373PC := 465.
        ].
        recoveredBlock373Step = 465 ifTrue: [
            recoveredBlock373Stack3 := recoveredBlock373Local1.
            recoveredBlock373PC := 466.
        ].
        recoveredBlock373Step = 466 ifTrue: [
            recoveredBlock373Stack3 := (recoveredBlock373Stack3) + (1).
            recoveredBlock373PC := 467.
        ].
        recoveredBlock373Step = 467 ifTrue: [
            recoveredBlock373Stack4 := recoveredBlock373Stack3.
            recoveredBlock373PC := 468.
        ].
        recoveredBlock373Step = 468 ifTrue: [
            recoveredBlock373Local1 := recoveredBlock373Stack4.
            recoveredBlock373PC := 469.
        ].
        recoveredBlock373Step = 469 ifTrue: [
            recoveredBlock373Stack2 := (recoveredBlock373Stack2) < (recoveredBlock373Stack3).
            recoveredBlock373PC := 470.
        ].
        recoveredBlock373Step = 470 ifTrue: [
            (recoveredBlock373Stack2) ifTrue: [recoveredBlock373PC := 472] ifFalse: [recoveredBlock373PC := 390].
        ].
        recoveredBlock373Step = 472 ifTrue: [
            recoveredBlock373Stack2 := nil.
            recoveredBlock373PC := 473.
        ].
        recoveredBlock373Step = 473 ifTrue: [
            recoveredBlock373Local1 := recoveredBlock373Stack2.
            recoveredBlock373PC := 474.
        ].
        recoveredBlock373Step = 474 ifTrue: [
            recoveredBlock373PC := 475.
        ].
        recoveredBlock373Step = 475 ifTrue: [
            recoveredBlock373Stack1 := recoveredLocal3.
            recoveredBlock373PC := 478.
        ].
        recoveredBlock373Step = 478 ifTrue: [
            recoveredBlock373Stack1 := (recoveredBlock373Stack1) last.
            recoveredBlock373PC := 480.
        ].
        recoveredBlock373Step = 480 ifTrue: [
            recoveredBlock373Stack2 := recoveredLocal3.
            recoveredBlock373PC := 483.
        ].
        recoveredBlock373Step = 483 ifTrue: [
            recoveredBlock373Stack3 := recoveredBlock373Arg1.
            recoveredBlock373PC := 484.
        ].
        recoveredBlock373Step = 484 ifTrue: [
            recoveredBlock373Stack2 := (recoveredBlock373Stack2) indexOf: (recoveredBlock373Stack3).
            recoveredBlock373PC := 486.
        ].
        recoveredBlock373Step = 486 ifTrue: [
            recoveredBlock373Stack1 := (recoveredBlock373Stack1) = (recoveredBlock373Stack2).
            recoveredBlock373PC := 487.
        ].
        recoveredBlock373Step = 487 ifTrue: [
            (recoveredBlock373Stack1) ifTrue: [recoveredBlock373PC := 490] ifFalse: [recoveredBlock373PC := 498].
        ].
        recoveredBlock373Step = 490 ifTrue: [
            recoveredBlock373Stack1 := textStream.
            recoveredBlock373PC := 492.
        ].
        recoveredBlock373Step = 492 ifTrue: [
            recoveredBlock373Stack1 := (recoveredBlock373Stack1) cr.
            recoveredBlock373PC := 494.
        ].
        recoveredBlock373Step = 494 ifTrue: [
            recoveredBlock373PC := 507.
        ].
        recoveredBlock373Step = 498 ifTrue: [
            recoveredBlock373Stack1 := textStream.
            recoveredBlock373PC := 500.
        ].
        recoveredBlock373Step = 500 ifTrue: [
            recoveredBlock373Stack2 := recoveredBlock373Stack1.
            recoveredBlock373PC := 501.
        ].
        recoveredBlock373Step = 501 ifTrue: [
            recoveredBlock373Stack3 := '\\'.
            recoveredBlock373PC := 503.
        ].
        recoveredBlock373Step = 503 ifTrue: [
            (recoveredBlock373Stack2) nextPutAll: (recoveredBlock373Stack3).
            recoveredBlock373PC := 505.
        ].
        recoveredBlock373Step = 505 ifTrue: [
            recoveredBlock373Stack1 := (recoveredBlock373Stack1) cr.
            recoveredBlock373PC := 507.
        ].
        recoveredBlock373Step = 507 ifTrue: [
            recoveredBlock373Result := recoveredBlock373Stack1.
            recoveredBlock373Done := true.
        ].
    ].
    recoveredBlock373Result
].
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 512.
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack3 := '\end{tabular}'.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200172a0; bytecode file offset 0x43f08"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSepMatrix1: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Lf.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := '{*{1}{| r } *{'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := '}{| l} |}'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := '\begin {tabular}'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal16.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := ' \hline '.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal19 := recoveredStack1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := '\end {tabular}'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 412].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack4 := recoveredLocal19.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal9 := recoveredStack4.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := recoveredLocal10.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack6 := recoveredLocal2.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack5 := recoveredLocal12.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack4 := (recoveredStack4) <= (recoveredStack5).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 164] ifFalse: [recoveredPC := 192].
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack5 := recoveredLocal11.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack5 := (recoveredStack5) * (recoveredStack6).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := (recoveredStack4) = (recoveredStack5).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 174] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := textStream.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack6 := ' \\ \hline '.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack5) nextPutAll: (recoveredStack6).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack4) cr.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack4 := textStream.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack5 := ' & '.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack3 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack3) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 142] ifFalse: [recoveredLocal1 := nil. recoveredPC := 206]] ifFalse: [recoveredPC := 196].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 142].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 124] ifFalse: [recoveredLocal2 := nil. recoveredPC := 221]] ifFalse: [recoveredPC := 211].
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 219] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack4 := ' \hline '.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack4 := recoveredLocal18.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 106] ifFalse: [recoveredLocal3 := nil. recoveredPC := 274]] ifFalse: [recoveredPC := 263].
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 272] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredPC := 373.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredPC := 358.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack3) asIdentifier: (recoveredStack4).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 332] ifFalse: [recoveredPC := 358].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 340] ifFalse: [recoveredPC := 352].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack5 := ' \\  '.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 358.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack4 := ' & '.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 308] ifFalse: [recoveredLocal2 := nil. recoveredPC := 372]] ifFalse: [recoveredPC := 362].
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 370] ifFalse: [recoveredPC := 308].
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 292] ifFalse: [recoveredLocal3 := nil. recoveredPC := 387]] ifFalse: [recoveredPC := 377].
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 385] ifFalse: [recoveredPC := 292].
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack3 := ' \hline '.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredPC := 537.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := recoveredLocal19.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredPC := 501.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredPC := 486.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack3) asIdentifier: (recoveredStack4).
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 468] ifFalse: [recoveredPC := 480].
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack5 := ' \\  '.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredPC := 486.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack4 := ' & '.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 444] ifFalse: [recoveredLocal2 := nil. recoveredPC := 500]] ifFalse: [recoveredPC := 490].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 498] ifFalse: [recoveredPC := 444].
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredPC := 501.
        ].
        recoveredStep = 501 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 430] ifFalse: [recoveredLocal3 := nil. recoveredPC := 515]] ifFalse: [recoveredPC := 505].
        ].
        recoveredStep = 505 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 507.
        ].
        recoveredStep = 507 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 510.
        ].
        recoveredStep = 510 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 513] ifFalse: [recoveredPC := 430].
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack3 := ' \hline '.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20017a94; bytecode file offset 0x4473c"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsSep1: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := '|'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 69.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := 'l|'.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 56] ifFalse: [recoveredPC := 97]] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 138.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack3.
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
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack4 := 'l|'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 112] ifFalse: [recoveredPC := 167]] ifFalse: [recoveredPC := 141].
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 163] ifFalse: [recoveredPC := 158].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 115.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack3 := '\begin{tabular} {'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack4 := '} \hline'.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack3 := '\multicolumn {1} {|c|} { '.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := '} & '.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := '\multicolumn {4} {|c|} { '.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := '} & '.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := '\multicolumn {1} {|c|} { '.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack6 := 3.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := '} & '.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack3 := '\multicolumn {3} {|c|} { '.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack6 := 4.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack4 := '} & '.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := '\multicolumn {1} {|c|} { '.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack5 := recoveredArg3.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack6 := 5.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack4 := '} \\ \cline {2-10} '.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredPC := 340.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack5 := ' & '.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 318] ifFalse: [recoveredPC := 369]] ifFalse: [recoveredPC := 343].
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 365] ifFalse: [recoveredPC := 360].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack4 := (recoveredStack4) last.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIdentifierString: (recoveredStack4).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack4 := '\\ \hline'.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack2 := [:recoveredBlock392Arg1 | 
    | recoveredBlock392Local1 recoveredBlock392Stack0 recoveredBlock392Stack1 recoveredBlock392Stack2 recoveredBlock392Stack3 recoveredBlock392Stack4 recoveredBlock392Stack5 recoveredBlock392PC recoveredBlock392Step recoveredBlock392Done recoveredBlock392Result |
    recoveredBlock392Stack0 := self.
    recoveredBlock392PC := 398.
    recoveredBlock392Done := false.
    [recoveredBlock392Done not] whileTrue: [
        recoveredBlock392Step := recoveredBlock392PC.
        recoveredBlock392Step = 398 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Arg1.
            recoveredBlock392PC := 399.
        ].
        recoveredBlock392Step = 399 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) isEmpty.
            recoveredBlock392PC := 400.
        ].
        recoveredBlock392Step = 400 ifTrue: [
            (recoveredBlock392Stack1) ifTrue: [recoveredBlock392PC := 404] ifFalse: [recoveredBlock392PC := 416].
        ].
        recoveredBlock392Step = 404 ifTrue: [
            recoveredBlock392Stack1 := textStream.
            recoveredBlock392PC := 406.
        ].
        recoveredBlock392Step = 406 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Stack1.
            recoveredBlock392PC := 407.
        ].
        recoveredBlock392Step = 407 ifTrue: [
            recoveredBlock392Stack3 := '\hline'.
            recoveredBlock392PC := 409.
        ].
        recoveredBlock392Step = 409 ifTrue: [
            (recoveredBlock392Stack2) nextPutAll: (recoveredBlock392Stack3).
            recoveredBlock392PC := 411.
        ].
        recoveredBlock392Step = 411 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) cr.
            recoveredBlock392PC := 413.
        ].
        recoveredBlock392Step = 413 ifTrue: [
            recoveredBlock392PC := 547.
        ].
        recoveredBlock392Step = 416 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal2.
            recoveredBlock392PC := 419.
        ].
        recoveredBlock392Step = 419 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) + (1).
            recoveredBlock392PC := 420.
        ].
        recoveredBlock392Step = 420 ifTrue: [
            recoveredLocal2 := recoveredBlock392Stack1.
            recoveredBlock392PC := 423.
        ].
        recoveredBlock392Step = 423 ifTrue: [
            recoveredBlock392Stack1 := 0.
            recoveredBlock392PC := 425.
        ].
        recoveredBlock392Step = 425 ifTrue: [
            recoveredBlock392Local1 := recoveredBlock392Stack1.
            recoveredBlock392PC := 426.
        ].
        recoveredBlock392Step = 426 ifTrue: [
            recoveredBlock392Stack1 := recoveredBlock392Arg1.
            recoveredBlock392PC := 427.
        ].
        recoveredBlock392Step = 427 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) size.
            recoveredBlock392PC := 429.
        ].
        recoveredBlock392Step = 429 ifTrue: [
            recoveredBlock392PC := 498.
        ].
        recoveredBlock392Step = 432 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Arg1.
            recoveredBlock392PC := 433.
        ].
        recoveredBlock392Step = 433 ifTrue: [
            recoveredBlock392Stack3 := recoveredBlock392Local1.
            recoveredBlock392PC := 434.
        ].
        recoveredBlock392Step = 434 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) at: (recoveredBlock392Stack3).
            recoveredBlock392PC := 436.
        ].
        recoveredBlock392Step = 436 ifTrue: [
            recoveredLocal5 := recoveredBlock392Stack2.
            recoveredBlock392PC := 439.
        ].
        recoveredBlock392Step = 439 ifTrue: [
            recoveredBlock392Stack2 := recoveredLocal5.
            recoveredBlock392PC := 442.
        ].
        recoveredBlock392Step = 442 ifTrue: [
            (recoveredBlock392Stack2 ~~ nil) ifTrue: [recoveredBlock392PC := 454] ifFalse: [recoveredBlock392PC := 446].
        ].
        recoveredBlock392Step = 446 ifTrue: [
            recoveredBlock392Stack2 := '---'.
            recoveredBlock392PC := 448.
        ].
        recoveredBlock392Step = 448 ifTrue: [
            recoveredLocal5 := recoveredBlock392Stack2.
            recoveredBlock392PC := 451.
        ].
        recoveredBlock392Step = 451 ifTrue: [
            recoveredBlock392PC := 478.
        ].
        recoveredBlock392Step = 454 ifTrue: [
            recoveredBlock392Stack2 := recoveredLocal5.
            recoveredBlock392PC := 457.
        ].
        recoveredBlock392Step = 457 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) isCharacter.
            recoveredBlock392PC := 459.
        ].
        recoveredBlock392Step = 459 ifTrue: [
            (recoveredBlock392Stack2) ifTrue: [recoveredBlock392PC := 478] ifFalse: [recoveredBlock392PC := 462].
        ].
        recoveredBlock392Step = 462 ifTrue: [
            recoveredBlock392Stack2 := recoveredLocal5.
            recoveredBlock392PC := 465.
        ].
        recoveredBlock392Step = 465 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) isString.
            recoveredBlock392PC := 467.
        ].
        recoveredBlock392Step = 467 ifTrue: [
            (recoveredBlock392Stack2) ifTrue: [recoveredBlock392PC := 478] ifFalse: [recoveredBlock392PC := 470].
        ].
        recoveredBlock392Step = 470 ifTrue: [
            recoveredBlock392Stack2 := recoveredLocal5.
            recoveredBlock392PC := 473.
        ].
        recoveredBlock392Step = 473 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) asString.
            recoveredBlock392PC := 475.
        ].
        recoveredBlock392Step = 475 ifTrue: [
            recoveredLocal5 := recoveredBlock392Stack2.
            recoveredBlock392PC := 478.
        ].
        recoveredBlock392Step = 478 ifTrue: [
            recoveredBlock392Stack2 := self.
            recoveredBlock392PC := 479.
        ].
        recoveredBlock392Step = 479 ifTrue: [
            recoveredBlock392Stack3 := recoveredLocal5.
            recoveredBlock392PC := 482.
        ].
        recoveredBlock392Step = 482 ifTrue: [
            (recoveredBlock392Stack2) asIdentifier: (recoveredBlock392Stack3).
            recoveredBlock392PC := 484.
        ].
        recoveredBlock392Step = 484 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Local1.
            recoveredBlock392PC := 485.
        ].
        recoveredBlock392Step = 485 ifTrue: [
            recoveredBlock392Stack3 := recoveredBlock392Arg1.
            recoveredBlock392PC := 486.
        ].
        recoveredBlock392Step = 486 ifTrue: [
            recoveredBlock392Stack3 := (recoveredBlock392Stack3) size.
            recoveredBlock392PC := 488.
        ].
        recoveredBlock392Step = 488 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) = (recoveredBlock392Stack3).
            recoveredBlock392PC := 489.
        ].
        recoveredBlock392Step = 489 ifTrue: [
            (recoveredBlock392Stack2) ifTrue: [recoveredBlock392PC := 498] ifFalse: [recoveredBlock392PC := 492].
        ].
        recoveredBlock392Step = 492 ifTrue: [
            recoveredBlock392Stack2 := textStream.
            recoveredBlock392PC := 494.
        ].
        recoveredBlock392Step = 494 ifTrue: [
            recoveredBlock392Stack3 := ' & '.
            recoveredBlock392PC := 496.
        ].
        recoveredBlock392Step = 496 ifTrue: [
            (recoveredBlock392Stack2) nextPutAll: (recoveredBlock392Stack3).
            recoveredBlock392PC := 498.
        ].
        recoveredBlock392Step = 498 ifTrue: [
            (recoveredBlock392Stack1 isInteger and: [recoveredBlock392Local1 isInteger]) ifTrue: [(recoveredBlock392Local1 + 1 <= recoveredBlock392Stack1) ifTrue: [recoveredBlock392Local1 := recoveredBlock392Local1 + 1. recoveredBlock392PC := 432] ifFalse: [recoveredBlock392Local1 := nil. recoveredBlock392PC := 512]] ifFalse: [recoveredBlock392PC := 502].
        ].
        recoveredBlock392Step = 502 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Stack1.
            recoveredBlock392PC := 503.
        ].
        recoveredBlock392Step = 503 ifTrue: [
            recoveredBlock392Stack3 := recoveredBlock392Local1.
            recoveredBlock392PC := 504.
        ].
        recoveredBlock392Step = 504 ifTrue: [
            recoveredBlock392Stack3 := (recoveredBlock392Stack3) + (1).
            recoveredBlock392PC := 505.
        ].
        recoveredBlock392Step = 505 ifTrue: [
            recoveredBlock392Stack4 := recoveredBlock392Stack3.
            recoveredBlock392PC := 506.
        ].
        recoveredBlock392Step = 506 ifTrue: [
            recoveredBlock392Local1 := recoveredBlock392Stack4.
            recoveredBlock392PC := 507.
        ].
        recoveredBlock392Step = 507 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) < (recoveredBlock392Stack3).
            recoveredBlock392PC := 508.
        ].
        recoveredBlock392Step = 508 ifTrue: [
            (recoveredBlock392Stack2) ifTrue: [recoveredBlock392PC := 510] ifFalse: [recoveredBlock392PC := 432].
        ].
        recoveredBlock392Step = 510 ifTrue: [
            recoveredBlock392Stack2 := nil.
            recoveredBlock392PC := 511.
        ].
        recoveredBlock392Step = 511 ifTrue: [
            recoveredBlock392Local1 := recoveredBlock392Stack2.
            recoveredBlock392PC := 512.
        ].
        recoveredBlock392Step = 512 ifTrue: [
            recoveredBlock392PC := 513.
        ].
        recoveredBlock392Step = 513 ifTrue: [
            recoveredBlock392Stack1 := recoveredLocal2.
            recoveredBlock392PC := 516.
        ].
        recoveredBlock392Step = 516 ifTrue: [
            recoveredBlock392Stack2 := recoveredArg1.
            recoveredBlock392PC := 519.
        ].
        recoveredBlock392Step = 519 ifTrue: [
            recoveredBlock392Stack2 := (recoveredBlock392Stack2) size.
            recoveredBlock392PC := 521.
        ].
        recoveredBlock392Step = 521 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) = (recoveredBlock392Stack2).
            recoveredBlock392PC := 522.
        ].
        recoveredBlock392Step = 522 ifTrue: [
            (recoveredBlock392Stack1) ifTrue: [recoveredBlock392PC := 526] ifFalse: [recoveredBlock392PC := 538].
        ].
        recoveredBlock392Step = 526 ifTrue: [
            recoveredBlock392Stack1 := textStream.
            recoveredBlock392PC := 528.
        ].
        recoveredBlock392Step = 528 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Stack1.
            recoveredBlock392PC := 529.
        ].
        recoveredBlock392Step = 529 ifTrue: [
            recoveredBlock392Stack3 := '\\ \hline '.
            recoveredBlock392PC := 531.
        ].
        recoveredBlock392Step = 531 ifTrue: [
            (recoveredBlock392Stack2) nextPutAll: (recoveredBlock392Stack3).
            recoveredBlock392PC := 533.
        ].
        recoveredBlock392Step = 533 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) cr.
            recoveredBlock392PC := 535.
        ].
        recoveredBlock392Step = 535 ifTrue: [
            recoveredBlock392PC := 547.
        ].
        recoveredBlock392Step = 538 ifTrue: [
            recoveredBlock392Stack1 := textStream.
            recoveredBlock392PC := 540.
        ].
        recoveredBlock392Step = 540 ifTrue: [
            recoveredBlock392Stack2 := recoveredBlock392Stack1.
            recoveredBlock392PC := 541.
        ].
        recoveredBlock392Step = 541 ifTrue: [
            recoveredBlock392Stack3 := '\\ '.
            recoveredBlock392PC := 543.
        ].
        recoveredBlock392Step = 543 ifTrue: [
            (recoveredBlock392Stack2) nextPutAll: (recoveredBlock392Stack3).
            recoveredBlock392PC := 545.
        ].
        recoveredBlock392Step = 545 ifTrue: [
            recoveredBlock392Stack1 := (recoveredBlock392Stack1) cr.
            recoveredBlock392PC := 547.
        ].
        recoveredBlock392Step = 547 ifTrue: [
            recoveredBlock392Result := recoveredBlock392Stack1.
            recoveredBlock392Done := true.
        ].
    ].
    recoveredBlock392Result
].
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack3 := '\end{tabular}'.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200182a8; bytecode file offset 0x44f40"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsSepS: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '|'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 76] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := 'l|'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 88] ifFalse: [recoveredPC := 129]] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 125] ifFalse: [recoveredPC := 120].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 91.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredPC := 170.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := 'l|'.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 144] ifFalse: [recoveredPC := 199]] ifFalse: [recoveredPC := 173].
        ].
        recoveredStep = 173 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack2 := [:recoveredBlock203Arg1 | 
    | recoveredBlock203Stack0 recoveredBlock203Stack1 recoveredBlock203Stack2 recoveredBlock203Stack3 recoveredBlock203Stack4 recoveredBlock203PC recoveredBlock203Step recoveredBlock203Done recoveredBlock203Result |
    recoveredBlock203Stack0 := self.
    recoveredBlock203PC := 210.
    recoveredBlock203Done := false.
    [recoveredBlock203Done not] whileTrue: [
        recoveredBlock203Step := recoveredBlock203PC.
        recoveredBlock203Step = 210 ifTrue: [
            recoveredBlock203Stack1 := nil.
            recoveredBlock203PC := 211.
        ].
        recoveredBlock203Step = 211 ifTrue: [
            recoveredBlock203Stack2 := recoveredBlock203Arg1.
            recoveredBlock203PC := 212.
        ].
        recoveredBlock203Step = 212 ifTrue: [
            recoveredBlock203Stack2 := (recoveredBlock203Stack2) size.
            recoveredBlock203PC := 214.
        ].
        recoveredBlock203Step = 214 ifTrue: [
            recoveredBlock203Stack3 := recoveredLocal8.
            recoveredBlock203PC := 217.
        ].
        recoveredBlock203Step = 217 ifTrue: [
            recoveredBlock203Stack2 := (recoveredBlock203Stack2) > (recoveredBlock203Stack3).
            recoveredBlock203PC := 218.
        ].
        recoveredBlock203Step = 218 ifTrue: [
            (recoveredBlock203Stack2) ifTrue: [recoveredBlock203PC := 222] ifFalse: [recoveredBlock203PC := 230].
        ].
        recoveredBlock203Step = 222 ifTrue: [
            recoveredBlock203PC := 223.
        ].
        recoveredBlock203Step = 223 ifTrue: [
            recoveredBlock203Stack1 := recoveredBlock203Arg1.
            recoveredBlock203PC := 224.
        ].
        recoveredBlock203Step = 224 ifTrue: [
            recoveredBlock203Stack1 := (recoveredBlock203Stack1) size.
            recoveredBlock203PC := 226.
        ].
        recoveredBlock203Step = 226 ifTrue: [
            recoveredBlock203Stack2 := recoveredBlock203Stack1.
            recoveredBlock203PC := 227.
        ].
        recoveredBlock203Step = 227 ifTrue: [
            recoveredLocal8 := recoveredBlock203Stack2.
            recoveredBlock203PC := 230.
        ].
        recoveredBlock203Step = 230 ifTrue: [
            recoveredBlock203Result := recoveredBlock203Stack1.
            recoveredBlock203Done := true.
        ].
    ].
    recoveredBlock203Result
].
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := '\begin{tabular}{'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack4 := '} \hline '.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredPC := 291.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack5 := '\multicolumn {2} {|c|} {'.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifierString: (recoveredStack7).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack6 := '} & '.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 262] ifFalse: [recoveredPC := 319]] ifFalse: [recoveredPC := 294].
        ].
        recoveredStep = 294 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 315] ifFalse: [recoveredPC := 310].
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredPC := 265.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := '\multicolumn {2} {|c|} {'.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack5 := (recoveredStack5) last.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack4 := '} \\ \hline '.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredPC := 376.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack5 := recoveredLocal6.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack6 := recoveredLocal1.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack5 := ' & '.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 354] ifFalse: [recoveredPC := 405]] ifFalse: [recoveredPC := 379].
        ].
        recoveredStep = 379 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 401] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredPC := 357.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack4 := (recoveredStack4) last.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIdentifierString: (recoveredStack4).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack4 := '\\ \hline '.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack2 := [:recoveredBlock428Arg1 | 
    | recoveredBlock428Local1 recoveredBlock428Stack0 recoveredBlock428Stack1 recoveredBlock428Stack2 recoveredBlock428Stack3 recoveredBlock428Stack4 recoveredBlock428Stack5 recoveredBlock428PC recoveredBlock428Step recoveredBlock428Done recoveredBlock428Result |
    recoveredBlock428Stack0 := self.
    recoveredBlock428PC := 434.
    recoveredBlock428Done := false.
    [recoveredBlock428Done not] whileTrue: [
        recoveredBlock428Step := recoveredBlock428PC.
        recoveredBlock428Step = 434 ifTrue: [
            recoveredBlock428Stack1 := recoveredLocal2.
            recoveredBlock428PC := 437.
        ].
        recoveredBlock428Step = 437 ifTrue: [
            recoveredBlock428Stack1 := (recoveredBlock428Stack1) + (1).
            recoveredBlock428PC := 438.
        ].
        recoveredBlock428Step = 438 ifTrue: [
            recoveredLocal2 := recoveredBlock428Stack1.
            recoveredBlock428PC := 441.
        ].
        recoveredBlock428Step = 441 ifTrue: [
            recoveredBlock428Stack1 := 0.
            recoveredBlock428PC := 443.
        ].
        recoveredBlock428Step = 443 ifTrue: [
            recoveredBlock428Local1 := recoveredBlock428Stack1.
            recoveredBlock428PC := 444.
        ].
        recoveredBlock428Step = 444 ifTrue: [
            recoveredBlock428Stack1 := recoveredBlock428Arg1.
            recoveredBlock428PC := 445.
        ].
        recoveredBlock428Step = 445 ifTrue: [
            recoveredBlock428Stack1 := (recoveredBlock428Stack1) size.
            recoveredBlock428PC := 447.
        ].
        recoveredBlock428Step = 447 ifTrue: [
            recoveredBlock428PC := 516.
        ].
        recoveredBlock428Step = 450 ifTrue: [
            recoveredBlock428Stack2 := recoveredBlock428Arg1.
            recoveredBlock428PC := 451.
        ].
        recoveredBlock428Step = 451 ifTrue: [
            recoveredBlock428Stack3 := recoveredBlock428Local1.
            recoveredBlock428PC := 452.
        ].
        recoveredBlock428Step = 452 ifTrue: [
            recoveredBlock428Stack2 := (recoveredBlock428Stack2) at: (recoveredBlock428Stack3).
            recoveredBlock428PC := 454.
        ].
        recoveredBlock428Step = 454 ifTrue: [
            recoveredLocal10 := recoveredBlock428Stack2.
            recoveredBlock428PC := 457.
        ].
        recoveredBlock428Step = 457 ifTrue: [
            recoveredBlock428Stack2 := recoveredLocal10.
            recoveredBlock428PC := 460.
        ].
        recoveredBlock428Step = 460 ifTrue: [
            (recoveredBlock428Stack2 ~~ nil) ifTrue: [recoveredBlock428PC := 472] ifFalse: [recoveredBlock428PC := 464].
        ].
        recoveredBlock428Step = 464 ifTrue: [
            recoveredBlock428Stack2 := '---'.
            recoveredBlock428PC := 466.
        ].
        recoveredBlock428Step = 466 ifTrue: [
            recoveredLocal10 := recoveredBlock428Stack2.
            recoveredBlock428PC := 469.
        ].
        recoveredBlock428Step = 469 ifTrue: [
            recoveredBlock428PC := 496.
        ].
        recoveredBlock428Step = 472 ifTrue: [
            recoveredBlock428Stack2 := recoveredLocal10.
            recoveredBlock428PC := 475.
        ].
        recoveredBlock428Step = 475 ifTrue: [
            recoveredBlock428Stack2 := (recoveredBlock428Stack2) isCharacter.
            recoveredBlock428PC := 477.
        ].
        recoveredBlock428Step = 477 ifTrue: [
            (recoveredBlock428Stack2) ifTrue: [recoveredBlock428PC := 496] ifFalse: [recoveredBlock428PC := 480].
        ].
        recoveredBlock428Step = 480 ifTrue: [
            recoveredBlock428Stack2 := recoveredLocal10.
            recoveredBlock428PC := 483.
        ].
        recoveredBlock428Step = 483 ifTrue: [
            recoveredBlock428Stack2 := (recoveredBlock428Stack2) isString.
            recoveredBlock428PC := 485.
        ].
        recoveredBlock428Step = 485 ifTrue: [
            (recoveredBlock428Stack2) ifTrue: [recoveredBlock428PC := 496] ifFalse: [recoveredBlock428PC := 488].
        ].
        recoveredBlock428Step = 488 ifTrue: [
            recoveredBlock428Stack2 := recoveredLocal10.
            recoveredBlock428PC := 491.
        ].
        recoveredBlock428Step = 491 ifTrue: [
            recoveredBlock428Stack2 := (recoveredBlock428Stack2) asString.
            recoveredBlock428PC := 493.
        ].
        recoveredBlock428Step = 493 ifTrue: [
            recoveredLocal10 := recoveredBlock428Stack2.
            recoveredBlock428PC := 496.
        ].
        recoveredBlock428Step = 496 ifTrue: [
            recoveredBlock428Stack2 := self.
            recoveredBlock428PC := 497.
        ].
        recoveredBlock428Step = 497 ifTrue: [
            recoveredBlock428Stack3 := recoveredLocal10.
            recoveredBlock428PC := 500.
        ].
        recoveredBlock428Step = 500 ifTrue: [
            (recoveredBlock428Stack2) asIdentifier: (recoveredBlock428Stack3).
            recoveredBlock428PC := 502.
        ].
        recoveredBlock428Step = 502 ifTrue: [
            recoveredBlock428Stack2 := recoveredBlock428Local1.
            recoveredBlock428PC := 503.
        ].
        recoveredBlock428Step = 503 ifTrue: [
            recoveredBlock428Stack3 := recoveredBlock428Arg1.
            recoveredBlock428PC := 504.
        ].
        recoveredBlock428Step = 504 ifTrue: [
            recoveredBlock428Stack3 := (recoveredBlock428Stack3) size.
            recoveredBlock428PC := 506.
        ].
        recoveredBlock428Step = 506 ifTrue: [
            recoveredBlock428Stack2 := (recoveredBlock428Stack2) = (recoveredBlock428Stack3).
            recoveredBlock428PC := 507.
        ].
        recoveredBlock428Step = 507 ifTrue: [
            (recoveredBlock428Stack2) ifTrue: [recoveredBlock428PC := 516] ifFalse: [recoveredBlock428PC := 510].
        ].
        recoveredBlock428Step = 510 ifTrue: [
            recoveredBlock428Stack2 := textStream.
            recoveredBlock428PC := 512.
        ].
        recoveredBlock428Step = 512 ifTrue: [
            recoveredBlock428Stack3 := ' & '.
            recoveredBlock428PC := 514.
        ].
        recoveredBlock428Step = 514 ifTrue: [
            (recoveredBlock428Stack2) nextPutAll: (recoveredBlock428Stack3).
            recoveredBlock428PC := 516.
        ].
        recoveredBlock428Step = 516 ifTrue: [
            (recoveredBlock428Stack1 isInteger and: [recoveredBlock428Local1 isInteger]) ifTrue: [(recoveredBlock428Local1 + 1 <= recoveredBlock428Stack1) ifTrue: [recoveredBlock428Local1 := recoveredBlock428Local1 + 1. recoveredBlock428PC := 450] ifFalse: [recoveredBlock428Local1 := nil. recoveredBlock428PC := 530]] ifFalse: [recoveredBlock428PC := 520].
        ].
        recoveredBlock428Step = 520 ifTrue: [
            recoveredBlock428Stack2 := recoveredBlock428Stack1.
            recoveredBlock428PC := 521.
        ].
        recoveredBlock428Step = 521 ifTrue: [
            recoveredBlock428Stack3 := recoveredBlock428Local1.
            recoveredBlock428PC := 522.
        ].
        recoveredBlock428Step = 522 ifTrue: [
            recoveredBlock428Stack3 := (recoveredBlock428Stack3) + (1).
            recoveredBlock428PC := 523.
        ].
        recoveredBlock428Step = 523 ifTrue: [
            recoveredBlock428Stack4 := recoveredBlock428Stack3.
            recoveredBlock428PC := 524.
        ].
        recoveredBlock428Step = 524 ifTrue: [
            recoveredBlock428Local1 := recoveredBlock428Stack4.
            recoveredBlock428PC := 525.
        ].
        recoveredBlock428Step = 525 ifTrue: [
            recoveredBlock428Stack2 := (recoveredBlock428Stack2) < (recoveredBlock428Stack3).
            recoveredBlock428PC := 526.
        ].
        recoveredBlock428Step = 526 ifTrue: [
            (recoveredBlock428Stack2) ifTrue: [recoveredBlock428PC := 528] ifFalse: [recoveredBlock428PC := 450].
        ].
        recoveredBlock428Step = 528 ifTrue: [
            recoveredBlock428Stack2 := nil.
            recoveredBlock428PC := 529.
        ].
        recoveredBlock428Step = 529 ifTrue: [
            recoveredBlock428Local1 := recoveredBlock428Stack2.
            recoveredBlock428PC := 530.
        ].
        recoveredBlock428Step = 530 ifTrue: [
            recoveredBlock428PC := 531.
        ].
        recoveredBlock428Step = 531 ifTrue: [
            recoveredBlock428Stack1 := recoveredLocal2.
            recoveredBlock428PC := 534.
        ].
        recoveredBlock428Step = 534 ifTrue: [
            recoveredBlock428Stack2 := recoveredLocal5.
            recoveredBlock428PC := 537.
        ].
        recoveredBlock428Step = 537 ifTrue: [
            recoveredBlock428Stack2 := (recoveredBlock428Stack2) size.
            recoveredBlock428PC := 539.
        ].
        recoveredBlock428Step = 539 ifTrue: [
            recoveredBlock428Stack1 := (recoveredBlock428Stack1) = (recoveredBlock428Stack2).
            recoveredBlock428PC := 540.
        ].
        recoveredBlock428Step = 540 ifTrue: [
            (recoveredBlock428Stack1) ifTrue: [recoveredBlock428PC := 544] ifFalse: [recoveredBlock428PC := 556].
        ].
        recoveredBlock428Step = 544 ifTrue: [
            recoveredBlock428Stack1 := textStream.
            recoveredBlock428PC := 546.
        ].
        recoveredBlock428Step = 546 ifTrue: [
            recoveredBlock428Stack2 := recoveredBlock428Stack1.
            recoveredBlock428PC := 547.
        ].
        recoveredBlock428Step = 547 ifTrue: [
            recoveredBlock428Stack3 := '\\ \hline '.
            recoveredBlock428PC := 549.
        ].
        recoveredBlock428Step = 549 ifTrue: [
            (recoveredBlock428Stack2) nextPutAll: (recoveredBlock428Stack3).
            recoveredBlock428PC := 551.
        ].
        recoveredBlock428Step = 551 ifTrue: [
            recoveredBlock428Stack1 := (recoveredBlock428Stack1) cr.
            recoveredBlock428PC := 552.
        ].
        recoveredBlock428Step = 552 ifTrue: [
            recoveredBlock428PC := 564.
        ].
        recoveredBlock428Step = 556 ifTrue: [
            recoveredBlock428Stack1 := textStream.
            recoveredBlock428PC := 558.
        ].
        recoveredBlock428Step = 558 ifTrue: [
            recoveredBlock428Stack2 := recoveredBlock428Stack1.
            recoveredBlock428PC := 559.
        ].
        recoveredBlock428Step = 559 ifTrue: [
            recoveredBlock428Stack3 := '\\'.
            recoveredBlock428PC := 561.
        ].
        recoveredBlock428Step = 561 ifTrue: [
            (recoveredBlock428Stack2) nextPutAll: (recoveredBlock428Stack3).
            recoveredBlock428PC := 563.
        ].
        recoveredBlock428Step = 563 ifTrue: [
            recoveredBlock428Stack1 := (recoveredBlock428Stack1) cr.
            recoveredBlock428PC := 564.
        ].
        recoveredBlock428Step = 564 ifTrue: [
            recoveredBlock428Result := recoveredBlock428Stack1.
            recoveredBlock428Done := true.
        ].
    ].
    recoveredBlock428Result
].
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredStack3 := '\end{tabular}'.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20018da4; bytecode file offset 0x45a48"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsSepS2: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
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
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := '|'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := 'l|'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 80] ifFalse: [recoveredPC := 121]] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 117] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 83.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredPC := 162.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack4 := 'l|'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 136] ifFalse: [recoveredPC := 191]] ifFalse: [recoveredPC := 165].
        ].
        recoveredStep = 165 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 139.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack2 := [:recoveredBlock195Arg1 | 
    | recoveredBlock195Stack0 recoveredBlock195Stack1 recoveredBlock195Stack2 recoveredBlock195Stack3 recoveredBlock195Stack4 recoveredBlock195PC recoveredBlock195Step recoveredBlock195Done recoveredBlock195Result |
    recoveredBlock195Stack0 := self.
    recoveredBlock195PC := 202.
    recoveredBlock195Done := false.
    [recoveredBlock195Done not] whileTrue: [
        recoveredBlock195Step := recoveredBlock195PC.
        recoveredBlock195Step = 202 ifTrue: [
            recoveredBlock195Stack1 := nil.
            recoveredBlock195PC := 203.
        ].
        recoveredBlock195Step = 203 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Arg1.
            recoveredBlock195PC := 204.
        ].
        recoveredBlock195Step = 204 ifTrue: [
            recoveredBlock195Stack2 := (recoveredBlock195Stack2) size.
            recoveredBlock195PC := 206.
        ].
        recoveredBlock195Step = 206 ifTrue: [
            recoveredBlock195Stack3 := recoveredLocal8.
            recoveredBlock195PC := 209.
        ].
        recoveredBlock195Step = 209 ifTrue: [
            recoveredBlock195Stack2 := (recoveredBlock195Stack2) > (recoveredBlock195Stack3).
            recoveredBlock195PC := 210.
        ].
        recoveredBlock195Step = 210 ifTrue: [
            (recoveredBlock195Stack2) ifTrue: [recoveredBlock195PC := 214] ifFalse: [recoveredBlock195PC := 222].
        ].
        recoveredBlock195Step = 214 ifTrue: [
            recoveredBlock195PC := 215.
        ].
        recoveredBlock195Step = 215 ifTrue: [
            recoveredBlock195Stack1 := recoveredBlock195Arg1.
            recoveredBlock195PC := 216.
        ].
        recoveredBlock195Step = 216 ifTrue: [
            recoveredBlock195Stack1 := (recoveredBlock195Stack1) size.
            recoveredBlock195PC := 218.
        ].
        recoveredBlock195Step = 218 ifTrue: [
            recoveredBlock195Stack2 := recoveredBlock195Stack1.
            recoveredBlock195PC := 219.
        ].
        recoveredBlock195Step = 219 ifTrue: [
            recoveredLocal8 := recoveredBlock195Stack2.
            recoveredBlock195PC := 222.
        ].
        recoveredBlock195Step = 222 ifTrue: [
            recoveredBlock195Result := recoveredBlock195Stack1.
            recoveredBlock195Done := true.
        ].
    ].
    recoveredBlock195Result
].
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := '\begin {tabular} {'.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack4 := '} \hline'.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredPC := 283.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack5 := '\multicolumn {1} {|l|} {'.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifierString: (recoveredStack7).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack6 := '} & '.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 254] ifFalse: [recoveredPC := 311]] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 307] ifFalse: [recoveredPC := 302].
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredPC := 257.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := '\multicolumn {1} {|l|} {'.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack5 := (recoveredStack5) last.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifierString: (recoveredStack5).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack4 := '} \\ \cline{6-7} \cline{9-10} '.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredPC := 371.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack6 := recoveredLocal6.
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifierString: (recoveredStack6).
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack6 := '\\'.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 346] ifFalse: [recoveredPC := 399]] ifFalse: [recoveredPC := 374].
        ].
        recoveredStep = 374 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 395] ifFalse: [recoveredPC := 390].
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 349.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack4 := (recoveredStack4) last.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIdentifierString: (recoveredStack4).
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack4 := ' \hline'.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := [:recoveredBlock422Arg1 | 
    | recoveredBlock422Local1 recoveredBlock422Stack0 recoveredBlock422Stack1 recoveredBlock422Stack2 recoveredBlock422Stack3 recoveredBlock422Stack4 recoveredBlock422Stack5 recoveredBlock422PC recoveredBlock422Step recoveredBlock422Done recoveredBlock422Result |
    recoveredBlock422Stack0 := self.
    recoveredBlock422PC := 428.
    recoveredBlock422Done := false.
    [recoveredBlock422Done not] whileTrue: [
        recoveredBlock422Step := recoveredBlock422PC.
        recoveredBlock422Step = 428 ifTrue: [
            recoveredBlock422Stack1 := recoveredLocal2.
            recoveredBlock422PC := 431.
        ].
        recoveredBlock422Step = 431 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) + (1).
            recoveredBlock422PC := 432.
        ].
        recoveredBlock422Step = 432 ifTrue: [
            recoveredLocal2 := recoveredBlock422Stack1.
            recoveredBlock422PC := 435.
        ].
        recoveredBlock422Step = 435 ifTrue: [
            recoveredBlock422Stack1 := 0.
            recoveredBlock422PC := 437.
        ].
        recoveredBlock422Step = 437 ifTrue: [
            recoveredBlock422Local1 := recoveredBlock422Stack1.
            recoveredBlock422PC := 438.
        ].
        recoveredBlock422Step = 438 ifTrue: [
            recoveredBlock422Stack1 := recoveredBlock422Arg1.
            recoveredBlock422PC := 439.
        ].
        recoveredBlock422Step = 439 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) size.
            recoveredBlock422PC := 441.
        ].
        recoveredBlock422Step = 441 ifTrue: [
            recoveredBlock422PC := 532.
        ].
        recoveredBlock422Step = 444 ifTrue: [
            recoveredBlock422Stack2 := recoveredBlock422Arg1.
            recoveredBlock422PC := 445.
        ].
        recoveredBlock422Step = 445 ifTrue: [
            recoveredBlock422Stack3 := recoveredBlock422Local1.
            recoveredBlock422PC := 446.
        ].
        recoveredBlock422Step = 446 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) at: (recoveredBlock422Stack3).
            recoveredBlock422PC := 448.
        ].
        recoveredBlock422Step = 448 ifTrue: [
            recoveredLocal10 := recoveredBlock422Stack2.
            recoveredBlock422PC := 451.
        ].
        recoveredBlock422Step = 451 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal10.
            recoveredBlock422PC := 454.
        ].
        recoveredBlock422Step = 454 ifTrue: [
            (recoveredBlock422Stack2 ~~ nil) ifTrue: [recoveredBlock422PC := 466] ifFalse: [recoveredBlock422PC := 458].
        ].
        recoveredBlock422Step = 458 ifTrue: [
            recoveredBlock422Stack2 := '---'.
            recoveredBlock422PC := 460.
        ].
        recoveredBlock422Step = 460 ifTrue: [
            recoveredLocal10 := recoveredBlock422Stack2.
            recoveredBlock422PC := 463.
        ].
        recoveredBlock422Step = 463 ifTrue: [
            recoveredBlock422PC := 511.
        ].
        recoveredBlock422Step = 466 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal10.
            recoveredBlock422PC := 469.
        ].
        recoveredBlock422Step = 469 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) isCharacter.
            recoveredBlock422PC := 471.
        ].
        recoveredBlock422Step = 471 ifTrue: [
            (recoveredBlock422Stack2) ifTrue: [recoveredBlock422PC := 511] ifFalse: [recoveredBlock422PC := 474].
        ].
        recoveredBlock422Step = 474 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal10.
            recoveredBlock422PC := 477.
        ].
        recoveredBlock422Step = 477 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) isString.
            recoveredBlock422PC := 479.
        ].
        recoveredBlock422Step = 479 ifTrue: [
            (recoveredBlock422Stack2) ifTrue: [recoveredBlock422PC := 490] ifFalse: [recoveredBlock422PC := 482].
        ].
        recoveredBlock422Step = 482 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal10.
            recoveredBlock422PC := 485.
        ].
        recoveredBlock422Step = 485 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) asString.
            recoveredBlock422PC := 487.
        ].
        recoveredBlock422Step = 487 ifTrue: [
            recoveredLocal10 := recoveredBlock422Stack2.
            recoveredBlock422PC := 490.
        ].
        recoveredBlock422Step = 490 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal10.
            recoveredBlock422PC := 493.
        ].
        recoveredBlock422Step = 493 ifTrue: [
            recoveredBlock422Stack3 := $&.
            recoveredBlock422PC := 496.
        ].
        recoveredBlock422Step = 496 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) includes: (recoveredBlock422Stack3).
            recoveredBlock422PC := 498.
        ].
        recoveredBlock422Step = 498 ifTrue: [
            (recoveredBlock422Stack2) ifTrue: [recoveredBlock422PC := 502] ifFalse: [recoveredBlock422PC := 511].
        ].
        recoveredBlock422Step = 502 ifTrue: [
            recoveredBlock422Stack2 := self.
            recoveredBlock422PC := 503.
        ].
        recoveredBlock422Step = 503 ifTrue: [
            recoveredBlock422Stack3 := recoveredLocal10.
            recoveredBlock422PC := 506.
        ].
        recoveredBlock422Step = 506 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) deleteAndOp: (recoveredBlock422Stack3).
            recoveredBlock422PC := 508.
        ].
        recoveredBlock422Step = 508 ifTrue: [
            recoveredLocal10 := recoveredBlock422Stack2.
            recoveredBlock422PC := 511.
        ].
        recoveredBlock422Step = 511 ifTrue: [
            recoveredBlock422Stack2 := self.
            recoveredBlock422PC := 512.
        ].
        recoveredBlock422Step = 512 ifTrue: [
            recoveredBlock422Stack3 := recoveredLocal10.
            recoveredBlock422PC := 515.
        ].
        recoveredBlock422Step = 515 ifTrue: [
            (recoveredBlock422Stack2) asIdentifier: (recoveredBlock422Stack3).
            recoveredBlock422PC := 517.
        ].
        recoveredBlock422Step = 517 ifTrue: [
            recoveredBlock422Stack2 := recoveredBlock422Local1.
            recoveredBlock422PC := 518.
        ].
        recoveredBlock422Step = 518 ifTrue: [
            recoveredBlock422Stack3 := recoveredBlock422Arg1.
            recoveredBlock422PC := 519.
        ].
        recoveredBlock422Step = 519 ifTrue: [
            recoveredBlock422Stack3 := (recoveredBlock422Stack3) size.
            recoveredBlock422PC := 521.
        ].
        recoveredBlock422Step = 521 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) = (recoveredBlock422Stack3).
            recoveredBlock422PC := 522.
        ].
        recoveredBlock422Step = 522 ifTrue: [
            (recoveredBlock422Stack2) ifTrue: [recoveredBlock422PC := 532] ifFalse: [recoveredBlock422PC := 526].
        ].
        recoveredBlock422Step = 526 ifTrue: [
            recoveredBlock422Stack2 := textStream.
            recoveredBlock422PC := 528.
        ].
        recoveredBlock422Step = 528 ifTrue: [
            recoveredBlock422Stack3 := ' & '.
            recoveredBlock422PC := 530.
        ].
        recoveredBlock422Step = 530 ifTrue: [
            (recoveredBlock422Stack2) nextPutAll: (recoveredBlock422Stack3).
            recoveredBlock422PC := 532.
        ].
        recoveredBlock422Step = 532 ifTrue: [
            (recoveredBlock422Stack1 isInteger and: [recoveredBlock422Local1 isInteger]) ifTrue: [(recoveredBlock422Local1 + 1 <= recoveredBlock422Stack1) ifTrue: [recoveredBlock422Local1 := recoveredBlock422Local1 + 1. recoveredBlock422PC := 444] ifFalse: [recoveredBlock422Local1 := nil. recoveredBlock422PC := 546]] ifFalse: [recoveredBlock422PC := 536].
        ].
        recoveredBlock422Step = 536 ifTrue: [
            recoveredBlock422Stack2 := recoveredBlock422Stack1.
            recoveredBlock422PC := 537.
        ].
        recoveredBlock422Step = 537 ifTrue: [
            recoveredBlock422Stack3 := recoveredBlock422Local1.
            recoveredBlock422PC := 538.
        ].
        recoveredBlock422Step = 538 ifTrue: [
            recoveredBlock422Stack3 := (recoveredBlock422Stack3) + (1).
            recoveredBlock422PC := 539.
        ].
        recoveredBlock422Step = 539 ifTrue: [
            recoveredBlock422Stack4 := recoveredBlock422Stack3.
            recoveredBlock422PC := 540.
        ].
        recoveredBlock422Step = 540 ifTrue: [
            recoveredBlock422Local1 := recoveredBlock422Stack4.
            recoveredBlock422PC := 541.
        ].
        recoveredBlock422Step = 541 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) < (recoveredBlock422Stack3).
            recoveredBlock422PC := 542.
        ].
        recoveredBlock422Step = 542 ifTrue: [
            (recoveredBlock422Stack2) ifTrue: [recoveredBlock422PC := 544] ifFalse: [recoveredBlock422PC := 444].
        ].
        recoveredBlock422Step = 544 ifTrue: [
            recoveredBlock422Stack2 := nil.
            recoveredBlock422PC := 545.
        ].
        recoveredBlock422Step = 545 ifTrue: [
            recoveredBlock422Local1 := recoveredBlock422Stack2.
            recoveredBlock422PC := 546.
        ].
        recoveredBlock422Step = 546 ifTrue: [
            recoveredBlock422PC := 547.
        ].
        recoveredBlock422Step = 547 ifTrue: [
            recoveredBlock422Stack1 := recoveredLocal2.
            recoveredBlock422PC := 550.
        ].
        recoveredBlock422Step = 550 ifTrue: [
            recoveredBlock422Stack2 := recoveredLocal5.
            recoveredBlock422PC := 553.
        ].
        recoveredBlock422Step = 553 ifTrue: [
            recoveredBlock422Stack2 := (recoveredBlock422Stack2) size.
            recoveredBlock422PC := 555.
        ].
        recoveredBlock422Step = 555 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) = (recoveredBlock422Stack2).
            recoveredBlock422PC := 556.
        ].
        recoveredBlock422Step = 556 ifTrue: [
            (recoveredBlock422Stack1) ifTrue: [recoveredBlock422PC := 560] ifFalse: [recoveredBlock422PC := 570].
        ].
        recoveredBlock422Step = 560 ifTrue: [
            recoveredBlock422Stack1 := textStream.
            recoveredBlock422PC := 562.
        ].
        recoveredBlock422Step = 562 ifTrue: [
            recoveredBlock422Stack2 := '\\ \hline '.
            recoveredBlock422PC := 564.
        ].
        recoveredBlock422Step = 564 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) nextPutAll: (recoveredBlock422Stack2).
            recoveredBlock422PC := 566.
        ].
        recoveredBlock422Step = 566 ifTrue: [
            recoveredBlock422PC := 579.
        ].
        recoveredBlock422Step = 570 ifTrue: [
            recoveredBlock422Stack1 := textStream.
            recoveredBlock422PC := 572.
        ].
        recoveredBlock422Step = 572 ifTrue: [
            recoveredBlock422Stack2 := recoveredBlock422Stack1.
            recoveredBlock422PC := 573.
        ].
        recoveredBlock422Step = 573 ifTrue: [
            recoveredBlock422Stack3 := '\\'.
            recoveredBlock422PC := 575.
        ].
        recoveredBlock422Step = 575 ifTrue: [
            (recoveredBlock422Stack2) nextPutAll: (recoveredBlock422Stack3).
            recoveredBlock422PC := 577.
        ].
        recoveredBlock422Step = 577 ifTrue: [
            recoveredBlock422Stack1 := (recoveredBlock422Stack1) cr.
            recoveredBlock422PC := 579.
        ].
        recoveredBlock422Step = 579 ifTrue: [
            recoveredBlock422Result := recoveredBlock422Stack1.
            recoveredBlock422Done := true.
        ].
    ].
    recoveredBlock422Result
].
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack3 := '\end{tabular}'.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2001b824; bytecode file offset 0x484c4"
!SGDocumentationLaTeXTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSep1: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredLocal19 recoveredLocal20 recoveredLocal21 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := Lf.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 87.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := OrderedCollection.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack4 := recoveredLocal16.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 70] ifFalse: [recoveredLocal3 := nil. recoveredPC := 101]] ifFalse: [recoveredPC := 91].
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) limitLabelsInTab.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 108] ifFalse: [recoveredPC := 140].
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := [:block28001314Arg1 | 
    8
].
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1) filledWith: (recoveredStack2).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) getLimitRecordsFor: (recoveredStack1) limitStringSizeRecord: (recoveredStack2).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal12 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal12.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal14 := recoveredStack0.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredLocal19 := recoveredStack0.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := '{*{1}{| r |} *{'.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := '}{| l} |}'.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal18 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := '\begin{tabular} '.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := ' \hline '.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal21 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := '\end{tabular}'.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal20 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack1 := 10.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 192] ifFalse: [recoveredPC := 678].
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 434.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := recoveredLocal21.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := 'y,x & '.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredPC := 262.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack3 := recoveredLocal13.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 244] ifFalse: [recoveredPC := 256].
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack4 := '\\ \hline \hline'.
            recoveredPC := 249.
        ].
        recoveredStep = 249 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredPC := 262.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := ' & '.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 228] ifFalse: [recoveredLocal2 := nil. recoveredPC := 276]] ifFalse: [recoveredPC := 266].
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 274] ifFalse: [recoveredPC := 228].
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredPC := 393.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredLocal10 := recoveredStack2.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := recoveredLocal10.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 300] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            recoveredStack3 := ' & '.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredLocal9.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredPC := 378.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredLocal11 := recoveredStack3.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            (recoveredStack3) asIdentifier: (recoveredStack4).
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack4 := recoveredLocal14.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 350] ifFalse: [recoveredPC := 378].
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack4 := (recoveredStack4) * (recoveredStack5).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 360] ifFalse: [recoveredPC := 372].
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack5 := '\\ '.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 367.
        ].
        recoveredStep = 367 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredPC := 378.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack4 := ' & '.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack2) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 328] ifFalse: [recoveredLocal1 := nil. recoveredPC := 392]] ifFalse: [recoveredPC := 382].
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 390] ifFalse: [recoveredPC := 328].
        ].
        recoveredStep = 390 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 286] ifFalse: [recoveredLocal2 := nil. recoveredPC := 407]] ifFalse: [recoveredPC := 397].
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 405] ifFalse: [recoveredPC := 286].
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := recoveredLocal20.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 200] ifFalse: [recoveredLocal3 := nil. recoveredPC := 450]] ifFalse: [recoveredPC := 439].
        ].
        recoveredStep = 439 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 448] ifFalse: [recoveredPC := 200].
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack2 := recoveredLocal21.
            recoveredPC := 456.
        ].
        recoveredStep = 456 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            recoveredStack1 := 'y,x & '.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack0 := recoveredLocal9.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack0 := recoveredLocal15.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredPC := 508.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack1) asIdentifier: (recoveredStack2).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack2 := recoveredLocal15.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 490] ifFalse: [recoveredPC := 502].
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack3 := '\\ \hline \hline'.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredPC := 508.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 504.
        ].
        recoveredStep = 504 ifTrue: [
            recoveredStack2 := ' & '.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 476] ifFalse: [recoveredLocal3 := nil. recoveredPC := 522]] ifFalse: [recoveredPC := 512].
        ].
        recoveredStep = 512 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 520] ifFalse: [recoveredPC := 476].
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 526.
        ].
        recoveredStep = 526 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredPC := 639.
        ].
        recoveredStep = 532 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 534.
        ].
        recoveredStep = 534 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 537.
        ].
        recoveredStep = 537 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 539.
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 546] ifFalse: [recoveredPC := 562].
        ].
        recoveredStep = 546 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 547.
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            (recoveredStack1) asIdentifier: (recoveredStack2).
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 558.
        ].
        recoveredStep = 558 ifTrue: [
            recoveredStack2 := ' & '.
            recoveredPC := 560.
        ].
        recoveredStep = 560 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredPC := 624.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 580.
        ].
        recoveredStep = 580 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 581.
        ].
        recoveredStep = 581 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 583.
        ].
        recoveredStep = 583 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 587.
        ].
        recoveredStep = 587 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack3 := recoveredLocal14.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 598] ifFalse: [recoveredPC := 624].
        ].
        recoveredStep = 598 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 606] ifFalse: [recoveredPC := 618].
        ].
        recoveredStep = 606 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack4 := '\\ '.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            recoveredPC := 624.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack3 := ' & '.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 624.
        ].
        recoveredStep = 624 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 572] ifFalse: [recoveredLocal2 := nil. recoveredPC := 638]] ifFalse: [recoveredPC := 628].
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 633.
        ].
        recoveredStep = 633 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 636] ifFalse: [recoveredPC := 572].
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredPC := 639.
        ].
        recoveredStep = 639 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 532] ifFalse: [recoveredLocal3 := nil. recoveredPC := 653]] ifFalse: [recoveredPC := 643].
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 645.
        ].
        recoveredStep = 645 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 647.
        ].
        recoveredStep = 647 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 649.
        ].
        recoveredStep = 649 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 651] ifFalse: [recoveredPC := 532].
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 652.
        ].
        recoveredStep = 652 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack2 := '\hline \hline'.
            recoveredPC := 659.
        ].
        recoveredStep = 659 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 671.
        ].
        recoveredStep = 671 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 673.
        ].
        recoveredStep = 673 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredPC := 901.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 680.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 681.
        ].
        recoveredStep = 681 ifTrue: [
            recoveredStack2 := recoveredLocal21.
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 689.
        ].
        recoveredStep = 689 ifTrue: [
            recoveredStack1 := 'y,x & '.
            recoveredPC := 691.
        ].
        recoveredStep = 691 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 695.
        ].
        recoveredStep = 695 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack0 := recoveredLocal17.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            recoveredPC := 742.
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 706.
        ].
        recoveredStep = 706 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 709.
        ].
        recoveredStep = 709 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 711.
        ].
        recoveredStep = 711 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            (recoveredStack1) asIdentifier: (recoveredStack2).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack2 := recoveredLocal17.
            recoveredPC := 718.
        ].
        recoveredStep = 718 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 720.
        ].
        recoveredStep = 720 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 724] ifFalse: [recoveredPC := 736].
        ].
        recoveredStep = 724 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 726.
        ].
        recoveredStep = 726 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredStack3 := '\\ \hline \hline'.
            recoveredPC := 729.
        ].
        recoveredStep = 729 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 731.
        ].
        recoveredStep = 731 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredPC := 742.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack2 := ' & '.
            recoveredPC := 740.
        ].
        recoveredStep = 740 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 702] ifFalse: [recoveredLocal3 := nil. recoveredPC := 756]] ifFalse: [recoveredPC := 746].
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 747.
        ].
        recoveredStep = 747 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 750.
        ].
        recoveredStep = 750 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 754] ifFalse: [recoveredPC := 702].
        ].
        recoveredStep = 754 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 756.
        ].
        recoveredStep = 756 ifTrue: [
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredStack0 := recoveredLocal14.
            recoveredPC := 762.
        ].
        recoveredStep = 762 ifTrue: [
            recoveredPC := 865.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 769.
        ].
        recoveredStep = 769 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredStack2 := recoveredLocal14.
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            recoveredStack1 := (recoveredStack1) <= (recoveredStack2).
            recoveredPC := 776.
        ].
        recoveredStep = 776 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 780] ifFalse: [recoveredPC := 796].
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 781.
        ].
        recoveredStep = 781 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            (recoveredStack1) asIdentifier: (recoveredStack2).
            recoveredPC := 790.
        ].
        recoveredStep = 790 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 792.
        ].
        recoveredStep = 792 ifTrue: [
            recoveredStack2 := ' & '.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 801.
        ].
        recoveredStep = 801 ifTrue: [
            recoveredPC := 850.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredLocal11 := recoveredStack2.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 811.
        ].
        recoveredStep = 811 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 813.
        ].
        recoveredStep = 813 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 821.
        ].
        recoveredStep = 821 ifTrue: [
            (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 824.
        ].
        recoveredStep = 824 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 826.
        ].
        recoveredStep = 826 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 827.
        ].
        recoveredStep = 827 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 830] ifFalse: [recoveredPC := 844].
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 832.
        ].
        recoveredStep = 832 ifTrue: [
            recoveredStack3 := '\\ '.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 838.
        ].
        recoveredStep = 838 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            recoveredPC := 850.
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 846.
        ].
        recoveredStep = 846 ifTrue: [
            recoveredStack3 := ' & '.
            recoveredPC := 848.
        ].
        recoveredStep = 848 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 850.
        ].
        recoveredStep = 850 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack1) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 804] ifFalse: [recoveredLocal2 := nil. recoveredPC := 864]] ifFalse: [recoveredPC := 854].
        ].
        recoveredStep = 854 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 856.
        ].
        recoveredStep = 856 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 857.
        ].
        recoveredStep = 857 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 859.
        ].
        recoveredStep = 859 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 860.
        ].
        recoveredStep = 860 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 862] ifFalse: [recoveredPC := 804].
        ].
        recoveredStep = 862 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 864.
        ].
        recoveredStep = 864 ifTrue: [
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack0) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 766] ifFalse: [recoveredLocal3 := nil. recoveredPC := 879]] ifFalse: [recoveredPC := 869].
        ].
        recoveredStep = 869 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 871.
        ].
        recoveredStep = 871 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 875.
        ].
        recoveredStep = 875 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 877] ifFalse: [recoveredPC := 766].
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 878.
        ].
        recoveredStep = 878 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            recoveredPC := 880.
        ].
        recoveredStep = 880 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 882.
        ].
        recoveredStep = 882 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack2 := ' \hline \hline'.
            recoveredPC := 885.
        ].
        recoveredStep = 885 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 887.
        ].
        recoveredStep = 887 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 889.
        ].
        recoveredStep = 889 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 891.
        ].
        recoveredStep = 891 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 892.
        ].
        recoveredStep = 892 ifTrue: [
            recoveredStack2 := recoveredLocal20.
            recoveredPC := 894.
        ].
        recoveredStep = 894 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 897.
        ].
        recoveredStep = 897 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 899.
        ].
        recoveredStep = 899 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 901.
        ].
        recoveredStep = 901 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 902.
        ].
        recoveredStep = 902 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

