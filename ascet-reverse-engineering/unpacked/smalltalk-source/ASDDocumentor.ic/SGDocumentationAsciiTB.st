"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDDocumentor.ic method 0x20000010; bytecode file offset 0x2cc64"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
newLine
    ^self
! !

"ASDDocumentor.ic method 0x20000028; bytecode file offset 0x2cc64"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
newPage
    ^self
! !

"ASDDocumentor.ic method 0x20000040; bytecode file offset 0x2cc64"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
noPageBreak
    ^self
! !

"ASDDocumentor.ic method 0x20000060; bytecode file offset 0x2cc84"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
setWorkingDir: recoveredArg1
    ^self
! !

"ASDDocumentor.ic method 0x200000dc; bytecode file offset 0x2cd1c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
resultFile
    | recoveredValue0 |
    recoveredValue0 := (self) txtFile.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200006f8; bytecode file offset 0x2d32c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
emptyLine
    | recoveredValue0 |
    recoveredValue0 := textStream.
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x2000077c; bytecode file offset 0x2d438"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
closeTextStream
    | recoveredValue0 |
    recoveredValue0 := (self) textStream.
    (recoveredValue0) close.
    ^self
! !

"ASDDocumentor.ic method 0x2000092c; bytecode file offset 0x2d568"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
level1
    | recoveredValue0 |
    recoveredValue0 := level1.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000968; bytecode file offset 0x2d59c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
level2
    | recoveredValue0 |
    recoveredValue0 := level2.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200009b0; bytecode file offset 0x2d5dc"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tableOfContents
    | recoveredValue0 |
    recoveredValue0 := tableOfContents.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200009d4; bytecode file offset 0x2d5f8"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tempSourceFiles
    | recoveredValue0 |
    recoveredValue0 := tempSourceFiles.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000ab8; bytecode file offset 0x2d6dc"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
maxColumns
    ^6
! !

"ASDDocumentor.ic method 0x20000b0c; bytecode file offset 0x2d730"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
limitLabelsInTab
    ^false
! !

"ASDDocumentor.ic method 0x20000b20; bytecode file offset 0x2d744"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
columnSize
    ^60
! !

"ASDDocumentor.ic method 0x20000b64; bytecode file offset 0x2d7b0"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
text1RowsWithCRUnderline: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) chapterLevel3: (recoveredValue0).
    ^self
! !

"ASDDocumentor.ic method 0x20000e64; bytecode file offset 0x2daa4"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWith4ColumnsDataImplTab: recoveredArg1 header: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) tabWithNColumnsSep: (recoveredValue0) header: (recoveredValue1).
    ^self
! !

"ASDDocumentor.ic method 0x20001824; bytecode file offset 0x2e454"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWithNColumns2Rows: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := OrderedCollection.
    recoveredValue2 := (recoveredValue1) new.
    (self) tabWithNColumnsSep: (recoveredValue0) header: (recoveredValue2).
    ^self
! !

"ASDDocumentor.ic method 0x20001948; bytecode file offset 0x2e574"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
txtFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    txtFile := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x200019d0; bytecode file offset 0x2e5f4"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tableOfContents: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tableOfContents := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x200019e4; bytecode file offset 0x2e608"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tempSourceFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tempSourceFiles := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001aec; bytecode file offset 0x2e72c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabHeader: recoveredArg1 header: recoveredArg2 sep: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) tabWithNColumns: (recoveredValue0) header: (recoveredValue1) sep: (recoveredValue2).
    ^self
! !

"ASDDocumentor.ic method 0x20002258; bytecode file offset 0x2eea4"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
checkWorkingDirectory
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
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
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) directoryExists: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200022fc; bytecode file offset 0x2ef24"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
txtFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := txtFile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            txtFile := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := txtFile.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000268c; bytecode file offset 0x2f2c0"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
removeSourceFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tempSourceFiles.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block28000dbcArg1 | 
    | block28000dbcValue0 block28000dbcValue1 block28000dbcValue2 |
    block28000dbcValue0 := CfsFileDescriptor.
    block28000dbcValue1 := block28000dbcArg1.
    block28000dbcValue2 := (block28000dbcValue0) remove: (block28000dbcValue1).
    block28000dbcValue2
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20002a40; bytecode file offset 0x2f6ac"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
printFormulaIdentity
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    (recoveredValue4) nextPutAll: ('f(phys) = phys').
    recoveredValue5 := recoveredLocal1.
    (recoveredValue5) close.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) contents.
    ^recoveredValue7
! !

"ASDDocumentor.ic method 0x20002de8; bytecode file offset 0x2fa28"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
configHeader
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) docuAuthor.
    recoveredValue1 := ('Author: ') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , (' Title: ').
    recoveredValue3 := (self) docuTitle.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue4) , (' View: ').
    recoveredValue6 := (self) category.
    recoveredValue7 := (recoveredValue5) , (recoveredValue6).
    recoveredLocal1 := recoveredValue7.
    recoveredValue8 := recoveredLocal1.
    ^recoveredValue8
! !

"ASDDocumentor.ic method 0x20002e28; bytecode file offset 0x2fa58"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
text1RowsWithCR: recoveredArg1
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) cr.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003334; bytecode file offset 0x2ff6c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
text1RowsWithCRBold: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200034bc; bytecode file offset 0x300e8"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
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
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 26].
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
            recoveredPC := 28.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
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

"ASDDocumentor.ic method 0x200034ec; bytecode file offset 0x30124"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
reInitLevel2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (2).
    level2 := recoveredValue1.
    recoveredValue2 := level2.
    recoveredValue3 := (self) level1.
    recoveredValue4 := (recoveredValue3) at: (1).
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredValue5 := level2.
    (recoveredValue5) at: (2) put: (0).
    ^self
! !

"ASDDocumentor.ic method 0x20003ad8; bytecode file offset 0x3075c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x200040e4; bytecode file offset 0x30d1c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
textDocumentation: recoveredArg1
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
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := '---'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000466c; bytecode file offset 0x312a8"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
reInitLevel3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) new: (3).
    level3 := recoveredValue1.
    recoveredValue2 := level3.
    recoveredValue3 := (self) level1.
    recoveredValue4 := (recoveredValue3) at: (1).
    (recoveredValue2) at: (1) put: (recoveredValue4).
    recoveredValue5 := level3.
    recoveredValue6 := (self) level2.
    recoveredValue7 := (recoveredValue6) at: (2).
    (recoveredValue5) at: (2) put: (recoveredValue7).
    recoveredValue8 := level3.
    (recoveredValue8) at: (3) put: (0).
    ^self
! !

"ASDDocumentor.ic method 0x200051ec; bytecode file offset 0x31e3c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
includeFile: recoveredArg1 ext: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := 'File '.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := ' (Working Directory) $'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) tempSourceFiles.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingDirectory.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrLfs1: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000631c; bytecode file offset 0x33028"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x200064ac; bytecode file offset 0x330fc"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
setFigure: recoveredArg1 as: recoveredArg2 withNum: recoveredArg3 withTitle: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('$File ') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , (' (Working Directory) $').
    recoveredValue5 := (self) withCrLfs1: (recoveredValue4).
    (recoveredValue1) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) cr.
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) cr.
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) , (' ').
    recoveredValue11 := recoveredArg3.
    recoveredValue12 := (recoveredValue10) , (recoveredValue11).
    recoveredValue13 := (recoveredValue12) , (': ').
    recoveredValue14 := recoveredArg4.
    recoveredValue15 := (recoveredValue13) , (recoveredValue14).
    recoveredValue16 := (self) withCrLfs1: (recoveredValue15).
    (recoveredValue8) nextPutAll: (recoveredValue16).
    (recoveredValue0) cr.
    recoveredValue17 := tempSourceFiles.
    recoveredValue18 := (self) workingDirectory.
    recoveredValue19 := (recoveredValue18) , ('\').
    recoveredValue20 := recoveredArg1.
    recoveredValue21 := (recoveredValue19) , (recoveredValue20).
    (recoveredValue17) add: (recoveredValue21).
    ^self
! !

"ASDDocumentor.ic method 0x20006b18; bytecode file offset 0x3374c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
maxSizeSubstrings: recoveredArg1
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
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := [:recoveredBlock32Arg1 | 
    | recoveredBlock32Stack0 recoveredBlock32Stack1 recoveredBlock32Stack2 recoveredBlock32Stack3 recoveredBlock32Stack4 recoveredBlock32PC recoveredBlock32Step recoveredBlock32Done recoveredBlock32Result |
    recoveredBlock32Stack0 := self.
    recoveredBlock32PC := 38.
    recoveredBlock32Done := false.
    [recoveredBlock32Done not] whileTrue: [
        recoveredBlock32Step := recoveredBlock32PC.
        recoveredBlock32Step = 38 ifTrue: [
            recoveredBlock32Stack1 := nil.
            recoveredBlock32PC := 39.
        ].
        recoveredBlock32Step = 39 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Arg1.
            recoveredBlock32PC := 40.
        ].
        recoveredBlock32Step = 40 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) size.
            recoveredBlock32PC := 41.
        ].
        recoveredBlock32Step = 41 ifTrue: [
            recoveredBlock32Stack3 := recoveredLocal1.
            recoveredBlock32PC := 44.
        ].
        recoveredBlock32Step = 44 ifTrue: [
            recoveredBlock32Stack2 := (recoveredBlock32Stack2) > (recoveredBlock32Stack3).
            recoveredBlock32PC := 45.
        ].
        recoveredBlock32Step = 45 ifTrue: [
            (recoveredBlock32Stack2) ifTrue: [recoveredBlock32PC := 48] ifFalse: [recoveredBlock32PC := 55].
        ].
        recoveredBlock32Step = 48 ifTrue: [
            recoveredBlock32PC := 49.
        ].
        recoveredBlock32Step = 49 ifTrue: [
            recoveredBlock32Stack1 := recoveredBlock32Arg1.
            recoveredBlock32PC := 50.
        ].
        recoveredBlock32Step = 50 ifTrue: [
            recoveredBlock32Stack1 := (recoveredBlock32Stack1) size.
            recoveredBlock32PC := 51.
        ].
        recoveredBlock32Step = 51 ifTrue: [
            recoveredBlock32Stack2 := recoveredBlock32Stack1.
            recoveredBlock32PC := 52.
        ].
        recoveredBlock32Step = 52 ifTrue: [
            recoveredLocal1 := recoveredBlock32Stack2.
            recoveredBlock32PC := 55.
        ].
        recoveredBlock32Step = 55 ifTrue: [
            recoveredBlock32Result := recoveredBlock32Stack1.
            recoveredBlock32Done := true.
        ].
    ].
    recoveredBlock32Result
].
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x200073a8; bytecode file offset 0x33fec"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
text1RowsWithCRBoldUnderline: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := nil.
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
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredPC := 39.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := '-'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 34] ifFalse: [recoveredLocal1 := nil. recoveredPC := 53]] ifFalse: [recoveredPC := 43].
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 51] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000757c; bytecode file offset 0x341cc"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
endDocument
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) textStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) reset.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := (recoveredStack0) lang.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := 'German'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 'Inhaltsverzeichnis'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) lang.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := 'English'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := 'Contents'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := tableOfContents.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) cr.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20007770; bytecode file offset 0x343b4"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
textNRowsWithCR: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
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
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 57].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Value0 recoveredBlock35Value1 recoveredBlock35Value2 recoveredBlock35Value3 recoveredBlock35Value4 |
    recoveredBlock35Value0 := recoveredLocal2.
    recoveredBlock35Value1 := recoveredBlock35Arg1.
    recoveredBlock35Value2 := (recoveredBlock35Value0) , (recoveredBlock35Value1).
    recoveredBlock35Value3 := (recoveredBlock35Value2) , ('$').
    recoveredBlock35Value4 := recoveredBlock35Value3.
    recoveredLocal2 := recoveredBlock35Value4.
    recoveredBlock35Value3
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000ab1c; bytecode file offset 0x37768"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
chapterLevel3: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) last.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := $:.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := ':$'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := '-'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 70] ifFalse: [recoveredLocal1 := nil. recoveredPC := 89]] ifFalse: [recoveredPC := 79].
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000b330; bytecode file offset 0x38018"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
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
    recoveredValue30 := (recoveredValue29) , (')/(').
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

"ASDDocumentor.ic method 0x2000c628; bytecode file offset 0x3928c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
chapterLevel1: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := level1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := level1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) reInitLevel2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) reInitLevel3.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := '$$$'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := tableOfContents.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrLfs1: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            tableOfContents := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 98.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := '-'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 92] ifFalse: [recoveredLocal1 := nil. recoveredPC := 112]] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrLfs1: (recoveredStack3).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000cf18; bytecode file offset 0x39b90"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
beginDocument
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            level1 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            level2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            level3 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := level1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := level2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := level2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := level3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := level3.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := level3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            tableOfContents := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingDirectory.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := (recoveredStack2) docuFile.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := '.txt'.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack0) txtFile: (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := CfsLeadEncodedReadWriteFileStream.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := (recoveredStack1) txtFile.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            textStream := recoveredStack0.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := (recoveredStack1) message.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := (recoveredStack2) configHeader.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000d158; bytecode file offset 0x39e58"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x2000df1c; bytecode file offset 0x3ab80"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
chapterLevel2: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
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
            recoveredStack1 := ''.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := level2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := level2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := level2.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) at: (recoveredStack2) put: (recoveredStack3).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) reInitLevel3.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := '.'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredLocal7 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := '$$'.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := ' '.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := tableOfContents.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) withCrLfs1: (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            tableOfContents := recoveredStack0.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := (recoveredStack0) subStrings.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (recoveredStack1).
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredPC := 120.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack2 := '-'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack0) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 114] ifFalse: [recoveredLocal1 := nil. recoveredPC := 134]] ifFalse: [recoveredPC := 124].
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 132] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrLfs1: (recoveredStack3).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000f054; bytecode file offset 0x3bcbc"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
initOn: recoveredArg1
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
            manager := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingDirectory.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 19] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) askForWorkingDirectory.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 31].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) askForWorkingDirectory.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := nil.
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) dirIsRoot: (recoveredStack1).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 62].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) docuFile.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := '.txt'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            txtFile := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := (recoveredStack0) dirIsRootWithSep: (recoveredStack1).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) docuFile.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := '.txt'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            txtFile := recoveredStack0.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := $\.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) docuFile.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := '.txt'.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            txtFile := recoveredStack0.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := $\.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 134] ifFalse: [recoveredPC := 144].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            level1 := recoveredStack0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            level2 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := Array.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            level3 := recoveredStack0.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            tempSourceFiles := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            tableOfContents := recoveredStack0.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000fad0; bytecode file offset 0x3c730"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWithNColumns: recoveredArg1 header: recoveredArg2 sep: recoveredArg3
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
            recoveredStack1 := '$'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) processCollection: (recoveredStack1) header: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := (self) maxSizeSubstrings: (recoveredBlock58Value0).
    recoveredBlock58Value2 := recoveredLocal2.
    recoveredBlock58Value3 := (recoveredBlock58Value1) max: (recoveredBlock58Value2).
    recoveredBlock58Value4 := recoveredBlock58Value3.
    recoveredLocal2 := recoveredBlock58Value4.
    recoveredBlock58Value3
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 recoveredBlock81Value4 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := [:recoveredBlock81Block89Arg1 | 
    | recoveredBlock81Block89Stack0 recoveredBlock81Block89Stack1 recoveredBlock81Block89Stack2 recoveredBlock81Block89Stack3 recoveredBlock81Block89PC recoveredBlock81Block89Step recoveredBlock81Block89Done recoveredBlock81Block89Result |
    recoveredBlock81Block89Stack0 := nil.
    recoveredBlock81Block89PC := 96.
    recoveredBlock81Block89Done := false.
    [recoveredBlock81Block89Done not] whileTrue: [
        recoveredBlock81Block89Step := recoveredBlock81Block89PC.
        recoveredBlock81Block89Step = 96 ifTrue: [
            recoveredBlock81Block89Stack1 := recoveredBlock81Block89Arg1.
            recoveredBlock81Block89PC := 97.
        ].
        recoveredBlock81Block89Step = 97 ifTrue: [
            (recoveredBlock81Block89Stack1 ~~ nil) ifTrue: [recoveredBlock81Block89PC := 108] ifFalse: [recoveredBlock81Block89PC := 100].
        ].
        recoveredBlock81Block89Step = 100 ifTrue: [
            recoveredBlock81Block89Stack1 := '---'.
            recoveredBlock81Block89PC := 102.
        ].
        recoveredBlock81Block89Step = 102 ifTrue: [
            recoveredLocal3 := recoveredBlock81Block89Stack1.
            recoveredBlock81Block89PC := 105.
        ].
        recoveredBlock81Block89Step = 105 ifTrue: [
            recoveredBlock81Block89PC := 114.
        ].
        recoveredBlock81Block89Step = 108 ifTrue: [
            recoveredBlock81Block89Stack1 := recoveredBlock81Block89Arg1.
            recoveredBlock81Block89PC := 109.
        ].
        recoveredBlock81Block89Step = 109 ifTrue: [
            recoveredBlock81Block89Stack1 := (recoveredBlock81Block89Stack1) asString.
            recoveredBlock81Block89PC := 111.
        ].
        recoveredBlock81Block89Step = 111 ifTrue: [
            recoveredLocal3 := recoveredBlock81Block89Stack1.
            recoveredBlock81Block89PC := 114.
        ].
        recoveredBlock81Block89Step = 114 ifTrue: [
            recoveredBlock81Block89Stack1 := recoveredLocal3.
            recoveredBlock81Block89PC := 117.
        ].
        recoveredBlock81Block89Step = 117 ifTrue: [
            recoveredBlock81Block89Stack2 := ':'.
            recoveredBlock81Block89PC := 119.
        ].
        recoveredBlock81Block89Step = 119 ifTrue: [
            recoveredBlock81Block89Stack1 := (recoveredBlock81Block89Stack1) = (recoveredBlock81Block89Stack2).
            recoveredBlock81Block89PC := 120.
        ].
        recoveredBlock81Block89Step = 120 ifTrue: [
            (recoveredBlock81Block89Stack1) ifTrue: [recoveredBlock81Block89PC := 124] ifFalse: [recoveredBlock81Block89PC := 138].
        ].
        recoveredBlock81Block89Step = 124 ifTrue: [
            recoveredBlock81Block89Stack1 := recoveredLocal3.
            recoveredBlock81Block89PC := 127.
        ].
        recoveredBlock81Block89Step = 127 ifTrue: [
            recoveredBlock81Block89Stack2 := ' '.
            recoveredBlock81Block89PC := 129.
        ].
        recoveredBlock81Block89Step = 129 ifTrue: [
            recoveredBlock81Block89Stack1 := (recoveredBlock81Block89Stack1) , (recoveredBlock81Block89Stack2).
            recoveredBlock81Block89PC := 131.
        ].
        recoveredBlock81Block89Step = 131 ifTrue: [
            recoveredLocal3 := recoveredBlock81Block89Stack1.
            recoveredBlock81Block89PC := 134.
        ].
        recoveredBlock81Block89Step = 134 ifTrue: [
            recoveredBlock81Block89PC := 150.
        ].
        recoveredBlock81Block89Step = 138 ifTrue: [
            recoveredBlock81Block89Stack1 := recoveredLocal3.
            recoveredBlock81Block89PC := 141.
        ].
        recoveredBlock81Block89Step = 141 ifTrue: [
            recoveredBlock81Block89Stack2 := recoveredLocal2.
            recoveredBlock81Block89PC := 144.
        ].
        recoveredBlock81Block89Step = 144 ifTrue: [
            recoveredBlock81Block89Stack2 := (recoveredBlock81Block89Stack2) + (1).
            recoveredBlock81Block89PC := 145.
        ].
        recoveredBlock81Block89Step = 145 ifTrue: [
            recoveredBlock81Block89Stack1 := (recoveredBlock81Block89Stack1) fillBlankTo: (recoveredBlock81Block89Stack2).
            recoveredBlock81Block89PC := 147.
        ].
        recoveredBlock81Block89Step = 147 ifTrue: [
            recoveredLocal3 := recoveredBlock81Block89Stack1.
            recoveredBlock81Block89PC := 150.
        ].
        recoveredBlock81Block89Step = 150 ifTrue: [
            recoveredBlock81Block89Stack1 := recoveredLocal4.
            recoveredBlock81Block89PC := 153.
        ].
        recoveredBlock81Block89Step = 153 ifTrue: [
            recoveredBlock81Block89Stack2 := recoveredLocal3.
            recoveredBlock81Block89PC := 156.
        ].
        recoveredBlock81Block89Step = 156 ifTrue: [
            recoveredBlock81Block89Stack1 := (recoveredBlock81Block89Stack1) , (recoveredBlock81Block89Stack2).
            recoveredBlock81Block89PC := 158.
        ].
        recoveredBlock81Block89Step = 158 ifTrue: [
            recoveredBlock81Block89Stack2 := ' '.
            recoveredBlock81Block89PC := 160.
        ].
        recoveredBlock81Block89Step = 160 ifTrue: [
            recoveredBlock81Block89Stack1 := (recoveredBlock81Block89Stack1) , (recoveredBlock81Block89Stack2).
            recoveredBlock81Block89PC := 162.
        ].
        recoveredBlock81Block89Step = 162 ifTrue: [
            recoveredBlock81Block89Stack2 := recoveredBlock81Block89Stack1.
            recoveredBlock81Block89PC := 163.
        ].
        recoveredBlock81Block89Step = 163 ifTrue: [
            recoveredLocal4 := recoveredBlock81Block89Stack2.
            recoveredBlock81Block89PC := 166.
        ].
        recoveredBlock81Block89Step = 166 ifTrue: [
            recoveredBlock81Block89Result := recoveredBlock81Block89Stack1.
            recoveredBlock81Block89Done := true.
        ].
    ].
    recoveredBlock81Block89Result
].
    (recoveredBlock81Value0) do: (recoveredBlock81Value1).
    recoveredBlock81Value2 := recoveredLocal4.
    recoveredBlock81Value3 := (recoveredBlock81Value2) , ('$').
    recoveredBlock81Value4 := recoveredBlock81Value3.
    recoveredLocal4 := recoveredBlock81Value4.
    recoveredBlock81Value3
].
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrLfs1: (recoveredStack3).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20011fac; bytecode file offset 0x3ec08"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSepMatrix: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := [:recoveredBlock29Block37Arg1 | 
    | recoveredBlock29Block37Stack0 recoveredBlock29Block37Stack1 recoveredBlock29Block37Stack2 recoveredBlock29Block37Stack3 recoveredBlock29Block37Stack4 recoveredBlock29Block37PC recoveredBlock29Block37Step recoveredBlock29Block37Done recoveredBlock29Block37Result |
    recoveredBlock29Block37Stack0 := nil.
    recoveredBlock29Block37PC := 44.
    recoveredBlock29Block37Done := false.
    [recoveredBlock29Block37Done not] whileTrue: [
        recoveredBlock29Block37Step := recoveredBlock29Block37PC.
        recoveredBlock29Block37Step = 44 ifTrue: [
            recoveredBlock29Block37Stack1 := nil.
            recoveredBlock29Block37PC := 45.
        ].
        recoveredBlock29Block37Step = 45 ifTrue: [
            recoveredBlock29Block37Stack2 := recoveredBlock29Block37Arg1.
            recoveredBlock29Block37PC := 46.
        ].
        recoveredBlock29Block37Step = 46 ifTrue: [
            recoveredBlock29Block37Stack2 := (recoveredBlock29Block37Stack2) size.
            recoveredBlock29Block37PC := 47.
        ].
        recoveredBlock29Block37Step = 47 ifTrue: [
            recoveredBlock29Block37Stack3 := recoveredLocal5.
            recoveredBlock29Block37PC := 50.
        ].
        recoveredBlock29Block37Step = 50 ifTrue: [
            recoveredBlock29Block37Stack2 := (recoveredBlock29Block37Stack2) > (recoveredBlock29Block37Stack3).
            recoveredBlock29Block37PC := 51.
        ].
        recoveredBlock29Block37Step = 51 ifTrue: [
            (recoveredBlock29Block37Stack2) ifTrue: [recoveredBlock29Block37PC := 54] ifFalse: [recoveredBlock29Block37PC := 61].
        ].
        recoveredBlock29Block37Step = 54 ifTrue: [
            recoveredBlock29Block37PC := 55.
        ].
        recoveredBlock29Block37Step = 55 ifTrue: [
            recoveredBlock29Block37Stack1 := recoveredBlock29Block37Arg1.
            recoveredBlock29Block37PC := 56.
        ].
        recoveredBlock29Block37Step = 56 ifTrue: [
            recoveredBlock29Block37Stack1 := (recoveredBlock29Block37Stack1) size.
            recoveredBlock29Block37PC := 57.
        ].
        recoveredBlock29Block37Step = 57 ifTrue: [
            recoveredBlock29Block37Stack2 := recoveredBlock29Block37Stack1.
            recoveredBlock29Block37PC := 58.
        ].
        recoveredBlock29Block37Step = 58 ifTrue: [
            recoveredLocal5 := recoveredBlock29Block37Stack2.
            recoveredBlock29Block37PC := 61.
        ].
        recoveredBlock29Block37Step = 61 ifTrue: [
            recoveredBlock29Block37Result := recoveredBlock29Block37Stack1.
            recoveredBlock29Block37Done := true.
        ].
    ].
    recoveredBlock29Block37Result
].
    recoveredBlock29Value2 := (recoveredBlock29Value0) do: (recoveredBlock29Value1).
    recoveredBlock29Value2
].
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := $-.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack5 := 3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (recoveredStack5).
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) fillChar: (recoveredStack2) to: (recoveredStack3).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredPC := 221.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredPC := 157.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack5 := recoveredLocal8.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack6 := '| '.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack6 := recoveredArg1.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack7 := recoveredLocal1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack7 := recoveredLocal5.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack6 := (recoveredStack6) fillBlankTo: (recoveredStack7).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack6 := ' '.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredLocal8 := recoveredStack5.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack3 isInteger and: [recoveredStack4 isInteger]) ifTrue: [(recoveredStack4 + 1 <= recoveredStack3) ifTrue: [recoveredStack4 := recoveredStack4 + 1. recoveredStack5 := recoveredStack4. recoveredPC := 122] ifFalse: [recoveredPC := 185]] ifFalse: [recoveredPC := 160].
        ].
        recoveredStep = 160 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 181] ifFalse: [recoveredPC := 176].
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredPC := 125.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := '|$'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 206] ifFalse: [recoveredPC := 221].
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack4 := recoveredLocal4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := '$'.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 110] ifFalse: [recoveredPC := 250]] ifFalse: [recoveredPC := 224].
        ].
        recoveredStep = 224 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 246] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredPC := 113.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack4 := recoveredLocal8.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack1 := recoveredLocal8.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDDocumentor.ic method 0x200122f4; bytecode file offset 0x3ef4c"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
processCollection: recoveredArg1 header: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 10].
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
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) columnSize.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := [:recoveredBlock56Arg1 | 
    | recoveredBlock56Local1 recoveredBlock56Stack0 recoveredBlock56Stack1 recoveredBlock56Stack2 recoveredBlock56Stack3 recoveredBlock56Stack4 recoveredBlock56Stack5 recoveredBlock56PC recoveredBlock56Step recoveredBlock56Done recoveredBlock56Result |
    recoveredBlock56Stack0 := self.
    recoveredBlock56PC := 62.
    recoveredBlock56Done := false.
    [recoveredBlock56Done not] whileTrue: [
        recoveredBlock56Step := recoveredBlock56PC.
        recoveredBlock56Step = 62 ifTrue: [
            recoveredBlock56Stack1 := nil.
            recoveredBlock56PC := 63.
        ].
        recoveredBlock56Step = 63 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 66.
        ].
        recoveredBlock56Step = 66 ifTrue: [
            (recoveredBlock56Stack2 == nil) ifTrue: [recoveredBlock56PC := 282] ifFalse: [recoveredBlock56PC := 70].
        ].
        recoveredBlock56Step = 70 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 73.
        ].
        recoveredBlock56Step = 73 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) isEmpty.
            recoveredBlock56PC := 74.
        ].
        recoveredBlock56Step = 74 ifTrue: [
            (recoveredBlock56Stack2) ifTrue: [recoveredBlock56PC := 282] ifFalse: [recoveredBlock56PC := 78].
        ].
        recoveredBlock56Step = 78 ifTrue: [
            recoveredBlock56PC := 79.
        ].
        recoveredBlock56Step = 79 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Arg1.
            recoveredBlock56PC := 82.
        ].
        recoveredBlock56Step = 82 ifTrue: [
            recoveredBlock56Stack2 := 1.
            recoveredBlock56PC := 84.
        ].
        recoveredBlock56Step = 84 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) at: (recoveredBlock56Stack2).
            recoveredBlock56PC := 86.
        ].
        recoveredBlock56Step = 86 ifTrue: [
            recoveredBlock56Local1 := recoveredBlock56Stack1.
            recoveredBlock56PC := 89.
        ].
        recoveredBlock56Step = 89 ifTrue: [
            recoveredBlock56Stack1 := recoveredBlock56Local1.
            recoveredBlock56PC := 92.
        ].
        recoveredBlock56Step = 92 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) size.
            recoveredBlock56PC := 93.
        ].
        recoveredBlock56Step = 93 ifTrue: [
            recoveredBlock56Stack2 := recoveredLocal2.
            recoveredBlock56PC := 96.
        ].
        recoveredBlock56Step = 96 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) > (recoveredBlock56Stack2).
            recoveredBlock56PC := 97.
        ].
        recoveredBlock56Step = 97 ifTrue: [
            (recoveredBlock56Stack1) ifTrue: [recoveredBlock56PC := 100] ifFalse: [recoveredBlock56PC := 274].
        ].
        recoveredBlock56Step = 100 ifTrue: [
            recoveredBlock56Stack1 := 1.
            recoveredBlock56PC := 102.
        ].
        recoveredBlock56Step = 102 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Local1.
            recoveredBlock56PC := 105.
        ].
        recoveredBlock56Step = 105 ifTrue: [
            recoveredBlock56Stack2 := (recoveredBlock56Stack2) size.
            recoveredBlock56PC := 106.
        ].
        recoveredBlock56Step = 106 ifTrue: [
            recoveredBlock56Stack3 := recoveredLocal2.
            recoveredBlock56PC := 109.
        ].
        recoveredBlock56Step = 109 ifTrue: [
            recoveredBlock56Stack4 := [:recoveredBlock56Block109Arg1 | 
    | recoveredBlock56Block109Local1 recoveredBlock56Block109Local2 recoveredBlock56Block109Local3 recoveredBlock56Block109Stack0 recoveredBlock56Block109Stack1 recoveredBlock56Block109Stack2 recoveredBlock56Block109Stack3 recoveredBlock56Block109Stack4 recoveredBlock56Block109Stack5 recoveredBlock56Block109PC recoveredBlock56Block109Step recoveredBlock56Block109Done recoveredBlock56Block109Result |
    recoveredBlock56Block109Stack0 := nil.
    recoveredBlock56Block109PC := 116.
    recoveredBlock56Block109Done := false.
    [recoveredBlock56Block109Done not] whileTrue: [
        recoveredBlock56Block109Step := recoveredBlock56Block109PC.
        recoveredBlock56Block109Step = 116 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredBlock56Block109Arg1.
            recoveredBlock56Block109PC := 117.
        ].
        recoveredBlock56Block109Step = 117 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredLocal2.
            recoveredBlock56Block109PC := 120.
        ].
        recoveredBlock56Block109Step = 120 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) + (recoveredBlock56Block109Stack2).
            recoveredBlock56Block109PC := 121.
        ].
        recoveredBlock56Block109Step = 121 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Local1.
            recoveredBlock56Block109PC := 124.
        ].
        recoveredBlock56Block109Step = 124 ifTrue: [
            recoveredBlock56Block109Stack2 := (recoveredBlock56Block109Stack2) size.
            recoveredBlock56Block109PC := 125.
        ].
        recoveredBlock56Block109Step = 125 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) > (recoveredBlock56Block109Stack2).
            recoveredBlock56Block109PC := 126.
        ].
        recoveredBlock56Block109Step = 126 ifTrue: [
            (recoveredBlock56Block109Stack1) ifTrue: [recoveredBlock56Block109PC := 130] ifFalse: [recoveredBlock56Block109PC := 198].
        ].
        recoveredBlock56Block109Step = 130 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredBlock56Local1.
            recoveredBlock56Block109PC := 133.
        ].
        recoveredBlock56Block109Step = 133 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Arg1.
            recoveredBlock56Block109PC := 134.
        ].
        recoveredBlock56Block109Step = 134 ifTrue: [
            recoveredBlock56Block109Stack3 := recoveredBlock56Local1.
            recoveredBlock56Block109PC := 137.
        ].
        recoveredBlock56Block109Step = 137 ifTrue: [
            recoveredBlock56Block109Stack3 := (recoveredBlock56Block109Stack3) size.
            recoveredBlock56Block109PC := 138.
        ].
        recoveredBlock56Block109Step = 138 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) copyFrom: (recoveredBlock56Block109Stack2) to: (recoveredBlock56Block109Stack3).
            recoveredBlock56Block109PC := 140.
        ].
        recoveredBlock56Block109Step = 140 ifTrue: [
            recoveredBlock56Block109Local3 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 141.
        ].
        recoveredBlock56Block109Step = 141 ifTrue: [
            recoveredBlock56Block109Stack1 := OrderedCollection.
            recoveredBlock56Block109PC := 143.
        ].
        recoveredBlock56Block109Step = 143 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) new.
            recoveredBlock56Block109PC := 145.
        ].
        recoveredBlock56Block109Step = 145 ifTrue: [
            recoveredBlock56Block109Local2 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 146.
        ].
        recoveredBlock56Block109Step = 146 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredBlock56Block109Local2.
            recoveredBlock56Block109PC := 147.
        ].
        recoveredBlock56Block109Step = 147 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Local3.
            recoveredBlock56Block109PC := 148.
        ].
        recoveredBlock56Block109Step = 148 ifTrue: [
            (recoveredBlock56Block109Stack1) add: (recoveredBlock56Block109Stack2).
            recoveredBlock56Block109PC := 150.
        ].
        recoveredBlock56Block109Step = 150 ifTrue: [
            recoveredBlock56Block109Stack1 := 1.
            recoveredBlock56Block109PC := 152.
        ].
        recoveredBlock56Block109Step = 152 ifTrue: [
            recoveredBlock56Block109Local1 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 153.
        ].
        recoveredBlock56Block109Step = 153 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredArg2.
            recoveredBlock56Block109PC := 156.
        ].
        recoveredBlock56Block109Step = 156 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) size.
            recoveredBlock56Block109PC := 157.
        ].
        recoveredBlock56Block109Step = 157 ifTrue: [
            recoveredBlock56Block109PC := 169.
        ].
        recoveredBlock56Block109Step = 160 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Local2.
            recoveredBlock56Block109PC := 161.
        ].
        recoveredBlock56Block109Step = 161 ifTrue: [
            recoveredBlock56Block109Stack3 := recoveredBlock56Arg1.
            recoveredBlock56Block109PC := 164.
        ].
        recoveredBlock56Block109Step = 164 ifTrue: [
            recoveredBlock56Block109Stack4 := recoveredBlock56Block109Local1.
            recoveredBlock56Block109PC := 165.
        ].
        recoveredBlock56Block109Step = 165 ifTrue: [
            recoveredBlock56Block109Stack3 := (recoveredBlock56Block109Stack3) at: (recoveredBlock56Block109Stack4).
            recoveredBlock56Block109PC := 167.
        ].
        recoveredBlock56Block109Step = 167 ifTrue: [
            (recoveredBlock56Block109Stack2) add: (recoveredBlock56Block109Stack3).
            recoveredBlock56Block109PC := 169.
        ].
        recoveredBlock56Block109Step = 169 ifTrue: [
            (recoveredBlock56Block109Stack1 isInteger and: [recoveredBlock56Block109Local1 isInteger]) ifTrue: [(recoveredBlock56Block109Local1 + 1 <= recoveredBlock56Block109Stack1) ifTrue: [recoveredBlock56Block109Local1 := recoveredBlock56Block109Local1 + 1. recoveredBlock56Block109PC := 160] ifFalse: [recoveredBlock56Block109Local1 := nil. recoveredBlock56Block109PC := 183]] ifFalse: [recoveredBlock56Block109PC := 173].
        ].
        recoveredBlock56Block109Step = 173 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 174.
        ].
        recoveredBlock56Block109Step = 174 ifTrue: [
            recoveredBlock56Block109Stack3 := recoveredBlock56Block109Local1.
            recoveredBlock56Block109PC := 175.
        ].
        recoveredBlock56Block109Step = 175 ifTrue: [
            recoveredBlock56Block109Stack3 := (recoveredBlock56Block109Stack3) + (1).
            recoveredBlock56Block109PC := 176.
        ].
        recoveredBlock56Block109Step = 176 ifTrue: [
            recoveredBlock56Block109Stack4 := recoveredBlock56Block109Stack3.
            recoveredBlock56Block109PC := 177.
        ].
        recoveredBlock56Block109Step = 177 ifTrue: [
            recoveredBlock56Block109Local1 := recoveredBlock56Block109Stack4.
            recoveredBlock56Block109PC := 178.
        ].
        recoveredBlock56Block109Step = 178 ifTrue: [
            recoveredBlock56Block109Stack2 := (recoveredBlock56Block109Stack2) < (recoveredBlock56Block109Stack3).
            recoveredBlock56Block109PC := 179.
        ].
        recoveredBlock56Block109Step = 179 ifTrue: [
            (recoveredBlock56Block109Stack2) ifTrue: [recoveredBlock56Block109PC := 181] ifFalse: [recoveredBlock56Block109PC := 160].
        ].
        recoveredBlock56Block109Step = 181 ifTrue: [
            recoveredBlock56Block109Stack2 := nil.
            recoveredBlock56Block109PC := 182.
        ].
        recoveredBlock56Block109Step = 182 ifTrue: [
            recoveredBlock56Block109Local1 := recoveredBlock56Block109Stack2.
            recoveredBlock56Block109PC := 183.
        ].
        recoveredBlock56Block109Step = 183 ifTrue: [
            recoveredBlock56Block109PC := 184.
        ].
        recoveredBlock56Block109Step = 184 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredLocal1.
            recoveredBlock56Block109PC := 187.
        ].
        recoveredBlock56Block109Step = 187 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Local2.
            recoveredBlock56Block109PC := 188.
        ].
        recoveredBlock56Block109Step = 188 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) add: (recoveredBlock56Block109Stack2).
            recoveredBlock56Block109PC := 190.
        ].
        recoveredBlock56Block109Step = 190 ifTrue: [
            recoveredBlock56Block109Stack2 := nil.
            recoveredBlock56Block109PC := 191.
        ].
        recoveredBlock56Block109Step = 191 ifTrue: [
            recoveredBlock56Block109Stack3 := recoveredBlock56Block109Stack2.
            recoveredBlock56Block109PC := 192.
        ].
        recoveredBlock56Block109Step = 192 ifTrue: [
            recoveredBlock56Block109Local3 := recoveredBlock56Block109Stack3.
            recoveredBlock56Block109PC := 193.
        ].
        recoveredBlock56Block109Step = 193 ifTrue: [
            recoveredBlock56Block109Local2 := recoveredBlock56Block109Stack2.
            recoveredBlock56Block109PC := 194.
        ].
        recoveredBlock56Block109Step = 194 ifTrue: [
            recoveredBlock56Block109PC := 266.
        ].
        recoveredBlock56Block109Step = 198 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredBlock56Local1.
            recoveredBlock56Block109PC := 201.
        ].
        recoveredBlock56Block109Step = 201 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Arg1.
            recoveredBlock56Block109PC := 202.
        ].
        recoveredBlock56Block109Step = 202 ifTrue: [
            recoveredBlock56Block109Stack3 := recoveredBlock56Block109Arg1.
            recoveredBlock56Block109PC := 203.
        ].
        recoveredBlock56Block109Step = 203 ifTrue: [
            recoveredBlock56Block109Stack4 := recoveredLocal2.
            recoveredBlock56Block109PC := 206.
        ].
        recoveredBlock56Block109Step = 206 ifTrue: [
            recoveredBlock56Block109Stack3 := (recoveredBlock56Block109Stack3) + (recoveredBlock56Block109Stack4).
            recoveredBlock56Block109PC := 207.
        ].
        recoveredBlock56Block109Step = 207 ifTrue: [
            recoveredBlock56Block109Stack3 := (recoveredBlock56Block109Stack3) + (-1).
            recoveredBlock56Block109PC := 208.
        ].
        recoveredBlock56Block109Step = 208 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) copyFrom: (recoveredBlock56Block109Stack2) to: (recoveredBlock56Block109Stack3).
            recoveredBlock56Block109PC := 210.
        ].
        recoveredBlock56Block109Step = 210 ifTrue: [
            recoveredBlock56Block109Local3 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 211.
        ].
        recoveredBlock56Block109Step = 211 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredBlock56Block109Local3.
            recoveredBlock56Block109PC := 212.
        ].
        recoveredBlock56Block109Step = 212 ifTrue: [
            recoveredBlock56Block109Stack2 := '-'.
            recoveredBlock56Block109PC := 214.
        ].
        recoveredBlock56Block109Step = 214 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) , (recoveredBlock56Block109Stack2).
            recoveredBlock56Block109PC := 216.
        ].
        recoveredBlock56Block109Step = 216 ifTrue: [
            recoveredBlock56Block109Local3 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 217.
        ].
        recoveredBlock56Block109Step = 217 ifTrue: [
            recoveredBlock56Block109Stack1 := OrderedCollection.
            recoveredBlock56Block109PC := 219.
        ].
        recoveredBlock56Block109Step = 219 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) new.
            recoveredBlock56Block109PC := 221.
        ].
        recoveredBlock56Block109Step = 221 ifTrue: [
            recoveredBlock56Block109Local2 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 222.
        ].
        recoveredBlock56Block109Step = 222 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredBlock56Block109Local2.
            recoveredBlock56Block109PC := 223.
        ].
        recoveredBlock56Block109Step = 223 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Local3.
            recoveredBlock56Block109PC := 224.
        ].
        recoveredBlock56Block109Step = 224 ifTrue: [
            (recoveredBlock56Block109Stack1) add: (recoveredBlock56Block109Stack2).
            recoveredBlock56Block109PC := 226.
        ].
        recoveredBlock56Block109Step = 226 ifTrue: [
            recoveredBlock56Block109Stack1 := 1.
            recoveredBlock56Block109PC := 228.
        ].
        recoveredBlock56Block109Step = 228 ifTrue: [
            recoveredBlock56Block109Local1 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 229.
        ].
        recoveredBlock56Block109Step = 229 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredArg2.
            recoveredBlock56Block109PC := 232.
        ].
        recoveredBlock56Block109Step = 232 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) size.
            recoveredBlock56Block109PC := 233.
        ].
        recoveredBlock56Block109Step = 233 ifTrue: [
            recoveredBlock56Block109PC := 241.
        ].
        recoveredBlock56Block109Step = 236 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Local2.
            recoveredBlock56Block109PC := 237.
        ].
        recoveredBlock56Block109Step = 237 ifTrue: [
            recoveredBlock56Block109Stack3 := '   '.
            recoveredBlock56Block109PC := 239.
        ].
        recoveredBlock56Block109Step = 239 ifTrue: [
            (recoveredBlock56Block109Stack2) add: (recoveredBlock56Block109Stack3).
            recoveredBlock56Block109PC := 241.
        ].
        recoveredBlock56Block109Step = 241 ifTrue: [
            (recoveredBlock56Block109Stack1 isInteger and: [recoveredBlock56Block109Local1 isInteger]) ifTrue: [(recoveredBlock56Block109Local1 + 1 <= recoveredBlock56Block109Stack1) ifTrue: [recoveredBlock56Block109Local1 := recoveredBlock56Block109Local1 + 1. recoveredBlock56Block109PC := 236] ifFalse: [recoveredBlock56Block109Local1 := nil. recoveredBlock56Block109PC := 255]] ifFalse: [recoveredBlock56Block109PC := 245].
        ].
        recoveredBlock56Block109Step = 245 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109PC := 246.
        ].
        recoveredBlock56Block109Step = 246 ifTrue: [
            recoveredBlock56Block109Stack3 := recoveredBlock56Block109Local1.
            recoveredBlock56Block109PC := 247.
        ].
        recoveredBlock56Block109Step = 247 ifTrue: [
            recoveredBlock56Block109Stack3 := (recoveredBlock56Block109Stack3) + (1).
            recoveredBlock56Block109PC := 248.
        ].
        recoveredBlock56Block109Step = 248 ifTrue: [
            recoveredBlock56Block109Stack4 := recoveredBlock56Block109Stack3.
            recoveredBlock56Block109PC := 249.
        ].
        recoveredBlock56Block109Step = 249 ifTrue: [
            recoveredBlock56Block109Local1 := recoveredBlock56Block109Stack4.
            recoveredBlock56Block109PC := 250.
        ].
        recoveredBlock56Block109Step = 250 ifTrue: [
            recoveredBlock56Block109Stack2 := (recoveredBlock56Block109Stack2) < (recoveredBlock56Block109Stack3).
            recoveredBlock56Block109PC := 251.
        ].
        recoveredBlock56Block109Step = 251 ifTrue: [
            (recoveredBlock56Block109Stack2) ifTrue: [recoveredBlock56Block109PC := 253] ifFalse: [recoveredBlock56Block109PC := 236].
        ].
        recoveredBlock56Block109Step = 253 ifTrue: [
            recoveredBlock56Block109Stack2 := nil.
            recoveredBlock56Block109PC := 254.
        ].
        recoveredBlock56Block109Step = 254 ifTrue: [
            recoveredBlock56Block109Local1 := recoveredBlock56Block109Stack2.
            recoveredBlock56Block109PC := 255.
        ].
        recoveredBlock56Block109Step = 255 ifTrue: [
            recoveredBlock56Block109PC := 256.
        ].
        recoveredBlock56Block109Step = 256 ifTrue: [
            recoveredBlock56Block109Stack1 := recoveredLocal1.
            recoveredBlock56Block109PC := 259.
        ].
        recoveredBlock56Block109Step = 259 ifTrue: [
            recoveredBlock56Block109Stack2 := recoveredBlock56Block109Local2.
            recoveredBlock56Block109PC := 260.
        ].
        recoveredBlock56Block109Step = 260 ifTrue: [
            recoveredBlock56Block109Stack1 := (recoveredBlock56Block109Stack1) add: (recoveredBlock56Block109Stack2).
            recoveredBlock56Block109PC := 262.
        ].
        recoveredBlock56Block109Step = 262 ifTrue: [
            recoveredBlock56Block109Stack2 := nil.
            recoveredBlock56Block109PC := 263.
        ].
        recoveredBlock56Block109Step = 263 ifTrue: [
            recoveredBlock56Block109Stack3 := recoveredBlock56Block109Stack2.
            recoveredBlock56Block109PC := 264.
        ].
        recoveredBlock56Block109Step = 264 ifTrue: [
            recoveredBlock56Block109Local3 := recoveredBlock56Block109Stack3.
            recoveredBlock56Block109PC := 265.
        ].
        recoveredBlock56Block109Step = 265 ifTrue: [
            recoveredBlock56Block109Local2 := recoveredBlock56Block109Stack2.
            recoveredBlock56Block109PC := 266.
        ].
        recoveredBlock56Block109Step = 266 ifTrue: [
            recoveredBlock56Block109Result := recoveredBlock56Block109Stack1.
            recoveredBlock56Block109Done := true.
        ].
    ].
    recoveredBlock56Block109Result
].
            recoveredBlock56PC := 267.
        ].
        recoveredBlock56Step = 267 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) to: (recoveredBlock56Stack2) by: (recoveredBlock56Stack3) do: (recoveredBlock56Stack4).
            recoveredBlock56PC := 270.
        ].
        recoveredBlock56Step = 270 ifTrue: [
            recoveredBlock56PC := 282.
        ].
        recoveredBlock56Step = 274 ifTrue: [
            recoveredBlock56Stack1 := recoveredLocal1.
            recoveredBlock56PC := 277.
        ].
        recoveredBlock56Step = 277 ifTrue: [
            recoveredBlock56Stack2 := recoveredBlock56Arg1.
            recoveredBlock56PC := 280.
        ].
        recoveredBlock56Step = 280 ifTrue: [
            recoveredBlock56Stack1 := (recoveredBlock56Stack1) add: (recoveredBlock56Stack2).
            recoveredBlock56PC := 282.
        ].
        recoveredBlock56Step = 282 ifTrue: [
            recoveredBlock56Result := recoveredBlock56Stack1.
            recoveredBlock56Done := true.
        ].
    ].
    recoveredBlock56Result
].
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200158f4; bytecode file offset 0x42574"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWithNColumnsSep: recoveredArg1 header: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) processCollection: (recoveredStack1) header: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 70.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := (self) maxSizeSubstrings: (recoveredBlock90Value0).
    recoveredBlock90Value2 := recoveredLocal4.
    recoveredBlock90Value3 := (recoveredBlock90Value1) max: (recoveredBlock90Value2).
    recoveredBlock90Value4 := recoveredBlock90Value3.
    recoveredLocal4 := recoveredBlock90Value4.
    recoveredBlock90Value3
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 126] ifFalse: [recoveredPC := 146].
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredPC := 160.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) fillChar: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 182] ifFalse: [recoveredPC := 197].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack1 := [:recoveredBlock200Arg1 | 
    | recoveredBlock200Stack0 recoveredBlock200Stack1 recoveredBlock200Stack2 recoveredBlock200Stack3 recoveredBlock200Stack4 recoveredBlock200Stack5 recoveredBlock200PC recoveredBlock200Step recoveredBlock200Done recoveredBlock200Result |
    recoveredBlock200Stack0 := self.
    recoveredBlock200PC := 206.
    recoveredBlock200Done := false.
    [recoveredBlock200Done not] whileTrue: [
        recoveredBlock200Step := recoveredBlock200PC.
        recoveredBlock200Step = 206 ifTrue: [
            recoveredBlock200Stack1 := recoveredBlock200Arg1.
            recoveredBlock200PC := 207.
        ].
        recoveredBlock200Step = 207 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) size.
            recoveredBlock200PC := 209.
        ].
        recoveredBlock200Step = 209 ifTrue: [
            recoveredBlock200Stack2 := recoveredLocal4.
            recoveredBlock200PC := 212.
        ].
        recoveredBlock200Step = 212 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) < (recoveredBlock200Stack2).
            recoveredBlock200PC := 213.
        ].
        recoveredBlock200Step = 213 ifTrue: [
            (recoveredBlock200Stack1) ifTrue: [recoveredBlock200PC := 216] ifFalse: [recoveredBlock200PC := 232].
        ].
        recoveredBlock200Step = 216 ifTrue: [
            recoveredBlock200Stack1 := '|'.
            recoveredBlock200PC := 218.
        ].
        recoveredBlock200Step = 218 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Arg1.
            recoveredBlock200PC := 219.
        ].
        recoveredBlock200Step = 219 ifTrue: [
            recoveredBlock200Stack3 := recoveredLocal4.
            recoveredBlock200PC := 222.
        ].
        recoveredBlock200Step = 222 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) fillBlankTo: (recoveredBlock200Stack3).
            recoveredBlock200PC := 224.
        ].
        recoveredBlock200Step = 224 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 226.
        ].
        recoveredBlock200Step = 226 ifTrue: [
            recoveredLocal6 := recoveredBlock200Stack1.
            recoveredBlock200PC := 229.
        ].
        recoveredBlock200Step = 229 ifTrue: [
            recoveredBlock200PC := 246.
        ].
        recoveredBlock200Step = 232 ifTrue: [
            recoveredBlock200Stack1 := '|'.
            recoveredBlock200PC := 234.
        ].
        recoveredBlock200Step = 234 ifTrue: [
            recoveredBlock200Stack2 := self.
            recoveredBlock200PC := 235.
        ].
        recoveredBlock200Step = 235 ifTrue: [
            recoveredBlock200Stack3 := recoveredLocal4.
            recoveredBlock200PC := 238.
        ].
        recoveredBlock200Step = 238 ifTrue: [
            recoveredBlock200Stack4 := recoveredBlock200Arg1.
            recoveredBlock200PC := 239.
        ].
        recoveredBlock200Step = 239 ifTrue: [
            recoveredBlock200Stack2 := (recoveredBlock200Stack2) limitStringSize: (recoveredBlock200Stack3) string: (recoveredBlock200Stack4).
            recoveredBlock200PC := 241.
        ].
        recoveredBlock200Step = 241 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 243.
        ].
        recoveredBlock200Step = 243 ifTrue: [
            recoveredLocal6 := recoveredBlock200Stack1.
            recoveredBlock200PC := 246.
        ].
        recoveredBlock200Step = 246 ifTrue: [
            recoveredBlock200Stack1 := recoveredLocal8.
            recoveredBlock200PC := 249.
        ].
        recoveredBlock200Step = 249 ifTrue: [
            recoveredBlock200Stack2 := recoveredLocal6.
            recoveredBlock200PC := 252.
        ].
        recoveredBlock200Step = 252 ifTrue: [
            recoveredBlock200Stack1 := (recoveredBlock200Stack1) , (recoveredBlock200Stack2).
            recoveredBlock200PC := 254.
        ].
        recoveredBlock200Step = 254 ifTrue: [
            recoveredBlock200Stack2 := recoveredBlock200Stack1.
            recoveredBlock200PC := 255.
        ].
        recoveredBlock200Step = 255 ifTrue: [
            recoveredLocal8 := recoveredBlock200Stack2.
            recoveredBlock200PC := 258.
        ].
        recoveredBlock200Step = 258 ifTrue: [
            recoveredBlock200Result := recoveredBlock200Stack1.
            recoveredBlock200Done := true.
        ].
    ].
    recoveredBlock200Result
].
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := '|$'.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack1 := [:recoveredBlock283Arg1 | 
    | recoveredBlock283Stack0 recoveredBlock283Stack1 recoveredBlock283Stack2 recoveredBlock283Stack3 recoveredBlock283Stack4 recoveredBlock283PC recoveredBlock283Step recoveredBlock283Done recoveredBlock283Result |
    recoveredBlock283Stack0 := self.
    recoveredBlock283PC := 290.
    recoveredBlock283Done := false.
    [recoveredBlock283Done not] whileTrue: [
        recoveredBlock283Step := recoveredBlock283PC.
        recoveredBlock283Step = 290 ifTrue: [
            recoveredBlock283Stack1 := recoveredBlock283Arg1.
            recoveredBlock283PC := 291.
        ].
        recoveredBlock283Step = 291 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) isEmpty.
            recoveredBlock283PC := 292.
        ].
        recoveredBlock283Step = 292 ifTrue: [
            (recoveredBlock283Stack1) ifTrue: [recoveredBlock283PC := 296] ifFalse: [recoveredBlock283PC := 336].
        ].
        recoveredBlock283Step = 296 ifTrue: [
            recoveredBlock283Stack1 := recoveredLocal3.
            recoveredBlock283PC := 299.
        ].
        recoveredBlock283Step = 299 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) size.
            recoveredBlock283PC := 301.
        ].
        recoveredBlock283Step = 301 ifTrue: [
            recoveredBlock283Stack2 := recoveredLocal3.
            recoveredBlock283PC := 304.
        ].
        recoveredBlock283Step = 304 ifTrue: [
            recoveredBlock283Stack3 := recoveredLocal3.
            recoveredBlock283PC := 307.
        ].
        recoveredBlock283Step = 307 ifTrue: [
            recoveredBlock283Stack3 := (recoveredBlock283Stack3) last.
            recoveredBlock283PC := 309.
        ].
        recoveredBlock283Step = 309 ifTrue: [
            recoveredBlock283Stack2 := (recoveredBlock283Stack2) indexOf: (recoveredBlock283Stack3).
            recoveredBlock283PC := 311.
        ].
        recoveredBlock283Step = 311 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) = (recoveredBlock283Stack2).
            recoveredBlock283PC := 312.
        ].
        recoveredBlock283Step = 312 ifTrue: [
            (recoveredBlock283Stack1) ifTrue: [recoveredBlock283PC := 336] ifFalse: [recoveredBlock283PC := 316].
        ].
        recoveredBlock283Step = 316 ifTrue: [
            recoveredBlock283Stack1 := recoveredLocal8.
            recoveredBlock283PC := 319.
        ].
        recoveredBlock283Step = 319 ifTrue: [
            recoveredBlock283Stack2 := recoveredLocal2.
            recoveredBlock283PC := 322.
        ].
        recoveredBlock283Step = 322 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) , (recoveredBlock283Stack2).
            recoveredBlock283PC := 324.
        ].
        recoveredBlock283Step = 324 ifTrue: [
            recoveredBlock283Stack2 := '$'.
            recoveredBlock283PC := 326.
        ].
        recoveredBlock283Step = 326 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) , (recoveredBlock283Stack2).
            recoveredBlock283PC := 328.
        ].
        recoveredBlock283Step = 328 ifTrue: [
            recoveredBlock283Stack2 := recoveredBlock283Stack1.
            recoveredBlock283PC := 329.
        ].
        recoveredBlock283Step = 329 ifTrue: [
            recoveredLocal8 := recoveredBlock283Stack2.
            recoveredBlock283PC := 332.
        ].
        recoveredBlock283Step = 332 ifTrue: [
            recoveredBlock283PC := 434.
        ].
        recoveredBlock283Step = 336 ifTrue: [
            recoveredBlock283Stack1 := recoveredBlock283Arg1.
            recoveredBlock283PC := 337.
        ].
        recoveredBlock283Step = 337 ifTrue: [
            recoveredBlock283Stack2 := [:recoveredBlock283Block337Arg1 | 
    | recoveredBlock283Block337Stack0 recoveredBlock283Block337Stack1 recoveredBlock283Block337Stack2 recoveredBlock283Block337Stack3 recoveredBlock283Block337Stack4 recoveredBlock283Block337Stack5 recoveredBlock283Block337PC recoveredBlock283Block337Step recoveredBlock283Block337Done recoveredBlock283Block337Result |
    recoveredBlock283Block337Stack0 := self.
    recoveredBlock283Block337PC := 344.
    recoveredBlock283Block337Done := false.
    [recoveredBlock283Block337Done not] whileTrue: [
        recoveredBlock283Block337Step := recoveredBlock283Block337PC.
        recoveredBlock283Block337Step = 344 ifTrue: [
            recoveredBlock283Block337Stack1 := recoveredBlock283Block337Arg1.
            recoveredBlock283Block337PC := 345.
        ].
        recoveredBlock283Block337Step = 345 ifTrue: [
            (recoveredBlock283Block337Stack1 ~~ nil) ifTrue: [recoveredBlock283Block337PC := 356] ifFalse: [recoveredBlock283Block337PC := 348].
        ].
        recoveredBlock283Block337Step = 348 ifTrue: [
            recoveredBlock283Block337Stack1 := '---'.
            recoveredBlock283Block337PC := 350.
        ].
        recoveredBlock283Block337Step = 350 ifTrue: [
            recoveredLocal6 := recoveredBlock283Block337Stack1.
            recoveredBlock283Block337PC := 353.
        ].
        recoveredBlock283Block337Step = 353 ifTrue: [
            recoveredBlock283Block337PC := 362.
        ].
        recoveredBlock283Block337Step = 356 ifTrue: [
            recoveredBlock283Block337Stack1 := recoveredBlock283Block337Arg1.
            recoveredBlock283Block337PC := 357.
        ].
        recoveredBlock283Block337Step = 357 ifTrue: [
            recoveredBlock283Block337Stack1 := (recoveredBlock283Block337Stack1) asString.
            recoveredBlock283Block337PC := 359.
        ].
        recoveredBlock283Block337Step = 359 ifTrue: [
            recoveredLocal6 := recoveredBlock283Block337Stack1.
            recoveredBlock283Block337PC := 362.
        ].
        recoveredBlock283Block337Step = 362 ifTrue: [
            recoveredBlock283Block337Stack1 := recoveredLocal6.
            recoveredBlock283Block337PC := 365.
        ].
        recoveredBlock283Block337Step = 365 ifTrue: [
            recoveredBlock283Block337Stack1 := (recoveredBlock283Block337Stack1) size.
            recoveredBlock283Block337PC := 367.
        ].
        recoveredBlock283Block337Step = 367 ifTrue: [
            recoveredBlock283Block337Stack2 := recoveredLocal4.
            recoveredBlock283Block337PC := 370.
        ].
        recoveredBlock283Block337Step = 370 ifTrue: [
            recoveredBlock283Block337Stack1 := (recoveredBlock283Block337Stack1) < (recoveredBlock283Block337Stack2).
            recoveredBlock283Block337PC := 371.
        ].
        recoveredBlock283Block337Step = 371 ifTrue: [
            (recoveredBlock283Block337Stack1) ifTrue: [recoveredBlock283Block337PC := 374] ifFalse: [recoveredBlock283Block337PC := 392].
        ].
        recoveredBlock283Block337Step = 374 ifTrue: [
            recoveredBlock283Block337Stack1 := '|'.
            recoveredBlock283Block337PC := 376.
        ].
        recoveredBlock283Block337Step = 376 ifTrue: [
            recoveredBlock283Block337Stack2 := recoveredLocal6.
            recoveredBlock283Block337PC := 379.
        ].
        recoveredBlock283Block337Step = 379 ifTrue: [
            recoveredBlock283Block337Stack3 := recoveredLocal4.
            recoveredBlock283Block337PC := 382.
        ].
        recoveredBlock283Block337Step = 382 ifTrue: [
            recoveredBlock283Block337Stack2 := (recoveredBlock283Block337Stack2) fillBlankTo: (recoveredBlock283Block337Stack3).
            recoveredBlock283Block337PC := 384.
        ].
        recoveredBlock283Block337Step = 384 ifTrue: [
            recoveredBlock283Block337Stack1 := (recoveredBlock283Block337Stack1) , (recoveredBlock283Block337Stack2).
            recoveredBlock283Block337PC := 386.
        ].
        recoveredBlock283Block337Step = 386 ifTrue: [
            recoveredLocal6 := recoveredBlock283Block337Stack1.
            recoveredBlock283Block337PC := 389.
        ].
        recoveredBlock283Block337Step = 389 ifTrue: [
            recoveredBlock283Block337PC := 408.
        ].
        recoveredBlock283Block337Step = 392 ifTrue: [
            recoveredBlock283Block337Stack1 := '|'.
            recoveredBlock283Block337PC := 394.
        ].
        recoveredBlock283Block337Step = 394 ifTrue: [
            recoveredBlock283Block337Stack2 := self.
            recoveredBlock283Block337PC := 395.
        ].
        recoveredBlock283Block337Step = 395 ifTrue: [
            recoveredBlock283Block337Stack3 := recoveredLocal4.
            recoveredBlock283Block337PC := 398.
        ].
        recoveredBlock283Block337Step = 398 ifTrue: [
            recoveredBlock283Block337Stack4 := recoveredLocal6.
            recoveredBlock283Block337PC := 401.
        ].
        recoveredBlock283Block337Step = 401 ifTrue: [
            recoveredBlock283Block337Stack2 := (recoveredBlock283Block337Stack2) limitStringSize: (recoveredBlock283Block337Stack3) string: (recoveredBlock283Block337Stack4).
            recoveredBlock283Block337PC := 403.
        ].
        recoveredBlock283Block337Step = 403 ifTrue: [
            recoveredBlock283Block337Stack1 := (recoveredBlock283Block337Stack1) , (recoveredBlock283Block337Stack2).
            recoveredBlock283Block337PC := 405.
        ].
        recoveredBlock283Block337Step = 405 ifTrue: [
            recoveredLocal6 := recoveredBlock283Block337Stack1.
            recoveredBlock283Block337PC := 408.
        ].
        recoveredBlock283Block337Step = 408 ifTrue: [
            recoveredBlock283Block337Stack1 := recoveredLocal8.
            recoveredBlock283Block337PC := 411.
        ].
        recoveredBlock283Block337Step = 411 ifTrue: [
            recoveredBlock283Block337Stack2 := recoveredLocal6.
            recoveredBlock283Block337PC := 414.
        ].
        recoveredBlock283Block337Step = 414 ifTrue: [
            recoveredBlock283Block337Stack1 := (recoveredBlock283Block337Stack1) , (recoveredBlock283Block337Stack2).
            recoveredBlock283Block337PC := 416.
        ].
        recoveredBlock283Block337Step = 416 ifTrue: [
            recoveredBlock283Block337Stack2 := recoveredBlock283Block337Stack1.
            recoveredBlock283Block337PC := 417.
        ].
        recoveredBlock283Block337Step = 417 ifTrue: [
            recoveredLocal8 := recoveredBlock283Block337Stack2.
            recoveredBlock283Block337PC := 420.
        ].
        recoveredBlock283Block337Step = 420 ifTrue: [
            recoveredBlock283Block337Result := recoveredBlock283Block337Stack1.
            recoveredBlock283Block337Done := true.
        ].
    ].
    recoveredBlock283Block337Result
].
            recoveredBlock283PC := 421.
        ].
        recoveredBlock283Step = 421 ifTrue: [
            (recoveredBlock283Stack1) do: (recoveredBlock283Stack2).
            recoveredBlock283PC := 423.
        ].
        recoveredBlock283Step = 423 ifTrue: [
            recoveredBlock283Stack1 := recoveredLocal8.
            recoveredBlock283PC := 426.
        ].
        recoveredBlock283Step = 426 ifTrue: [
            recoveredBlock283Stack2 := '|$'.
            recoveredBlock283PC := 428.
        ].
        recoveredBlock283Step = 428 ifTrue: [
            recoveredBlock283Stack1 := (recoveredBlock283Stack1) , (recoveredBlock283Stack2).
            recoveredBlock283PC := 430.
        ].
        recoveredBlock283Step = 430 ifTrue: [
            recoveredBlock283Stack2 := recoveredBlock283Stack1.
            recoveredBlock283PC := 431.
        ].
        recoveredBlock283Step = 431 ifTrue: [
            recoveredLocal8 := recoveredBlock283Stack2.
            recoveredBlock283PC := 434.
        ].
        recoveredBlock283Step = 434 ifTrue: [
            recoveredBlock283Result := recoveredBlock283Stack1.
            recoveredBlock283Done := true.
        ].
    ].
    recoveredBlock283Result
].
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := recoveredLocal8.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredLocal8 := recoveredStack0.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrLfs1: (recoveredStack3).
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200166b0; bytecode file offset 0x43330"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWithNColumnsSepS: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) processCollection: (recoveredStack1) header: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := (recoveredBlock58Value0) size.
    recoveredBlock58Value2 := recoveredLocal4.
    recoveredBlock58Value3 := (recoveredBlock58Value1) max: (recoveredBlock58Value2).
    recoveredBlock58Value4 := recoveredBlock58Value3.
    recoveredLocal4 := recoveredBlock58Value4.
    recoveredBlock58Value3
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 recoveredBlock81Value4 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := (self) maxSizeSubstrings: (recoveredBlock81Value0).
    recoveredBlock81Value2 := (recoveredBlock81Value1) max.
    recoveredBlock81Value3 := (recoveredBlock81Value2) max.
    recoveredBlock81Value4 := recoveredBlock81Value3.
    recoveredLocal4 := recoveredBlock81Value4.
    recoveredBlock81Value3
].
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := 70.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 150] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 181.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack0 := (recoveredStack0) fillChar: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 202] ifFalse: [recoveredPC := 217].
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack1 := [:recoveredBlock220Arg1 | 
    | recoveredBlock220Value0 recoveredBlock220Value1 recoveredBlock220Value2 recoveredBlock220Value3 recoveredBlock220Value4 recoveredBlock220Value5 recoveredBlock220Value6 |
    recoveredBlock220Value0 := recoveredBlock220Arg1.
    recoveredBlock220Value1 := recoveredLocal4.
    recoveredBlock220Value2 := (recoveredBlock220Value1) * (2).
    recoveredBlock220Value3 := (recoveredBlock220Value0) fillBlankTo: (recoveredBlock220Value2).
    recoveredBlock220Value4 := ('|') , (recoveredBlock220Value3).
    recoveredBlock220Value5 := (recoveredBlock220Value4) , (' |').
    recoveredBlock220Value6 := recoveredBlock220Value5.
    recoveredLocal5 := recoveredBlock220Value6.
    recoveredBlock220Value5
].
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := [:recoveredBlock277Arg1 | 
    | recoveredBlock277Stack0 recoveredBlock277Stack1 recoveredBlock277Stack2 recoveredBlock277Stack3 recoveredBlock277Stack4 recoveredBlock277Stack5 recoveredBlock277PC recoveredBlock277Step recoveredBlock277Done recoveredBlock277Result |
    recoveredBlock277Stack0 := self.
    recoveredBlock277PC := 284.
    recoveredBlock277Done := false.
    [recoveredBlock277Done not] whileTrue: [
        recoveredBlock277Step := recoveredBlock277PC.
        recoveredBlock277Step = 284 ifTrue: [
            recoveredBlock277Stack1 := recoveredBlock277Arg1.
            recoveredBlock277PC := 285.
        ].
        recoveredBlock277Step = 285 ifTrue: [
            recoveredBlock277Stack1 := (recoveredBlock277Stack1) size.
            recoveredBlock277PC := 286.
        ].
        recoveredBlock277Step = 286 ifTrue: [
            recoveredBlock277Stack2 := recoveredLocal4.
            recoveredBlock277PC := 289.
        ].
        recoveredBlock277Step = 289 ifTrue: [
            recoveredBlock277Stack1 := (recoveredBlock277Stack1) < (recoveredBlock277Stack2).
            recoveredBlock277PC := 290.
        ].
        recoveredBlock277Step = 290 ifTrue: [
            (recoveredBlock277Stack1) ifTrue: [recoveredBlock277PC := 294] ifFalse: [recoveredBlock277PC := 310].
        ].
        recoveredBlock277Step = 294 ifTrue: [
            recoveredBlock277Stack1 := '|'.
            recoveredBlock277PC := 296.
        ].
        recoveredBlock277Step = 296 ifTrue: [
            recoveredBlock277Stack2 := recoveredBlock277Arg1.
            recoveredBlock277PC := 297.
        ].
        recoveredBlock277Step = 297 ifTrue: [
            recoveredBlock277Stack3 := recoveredLocal4.
            recoveredBlock277PC := 300.
        ].
        recoveredBlock277Step = 300 ifTrue: [
            recoveredBlock277Stack2 := (recoveredBlock277Stack2) fillBlankTo: (recoveredBlock277Stack3).
            recoveredBlock277PC := 302.
        ].
        recoveredBlock277Step = 302 ifTrue: [
            recoveredBlock277Stack1 := (recoveredBlock277Stack1) , (recoveredBlock277Stack2).
            recoveredBlock277PC := 304.
        ].
        recoveredBlock277Step = 304 ifTrue: [
            recoveredLocal5 := recoveredBlock277Stack1.
            recoveredBlock277PC := 307.
        ].
        recoveredBlock277Step = 307 ifTrue: [
            recoveredBlock277PC := 324.
        ].
        recoveredBlock277Step = 310 ifTrue: [
            recoveredBlock277Stack1 := '|'.
            recoveredBlock277PC := 312.
        ].
        recoveredBlock277Step = 312 ifTrue: [
            recoveredBlock277Stack2 := self.
            recoveredBlock277PC := 313.
        ].
        recoveredBlock277Step = 313 ifTrue: [
            recoveredBlock277Stack3 := recoveredLocal4.
            recoveredBlock277PC := 316.
        ].
        recoveredBlock277Step = 316 ifTrue: [
            recoveredBlock277Stack4 := recoveredBlock277Arg1.
            recoveredBlock277PC := 317.
        ].
        recoveredBlock277Step = 317 ifTrue: [
            recoveredBlock277Stack2 := (recoveredBlock277Stack2) limitStringSize: (recoveredBlock277Stack3) string: (recoveredBlock277Stack4).
            recoveredBlock277PC := 319.
        ].
        recoveredBlock277Step = 319 ifTrue: [
            recoveredBlock277Stack1 := (recoveredBlock277Stack1) , (recoveredBlock277Stack2).
            recoveredBlock277PC := 321.
        ].
        recoveredBlock277Step = 321 ifTrue: [
            recoveredLocal5 := recoveredBlock277Stack1.
            recoveredBlock277PC := 324.
        ].
        recoveredBlock277Step = 324 ifTrue: [
            recoveredBlock277Stack1 := recoveredLocal6.
            recoveredBlock277PC := 327.
        ].
        recoveredBlock277Step = 327 ifTrue: [
            recoveredBlock277Stack2 := recoveredLocal5.
            recoveredBlock277PC := 330.
        ].
        recoveredBlock277Step = 330 ifTrue: [
            recoveredBlock277Stack1 := (recoveredBlock277Stack1) , (recoveredBlock277Stack2).
            recoveredBlock277PC := 332.
        ].
        recoveredBlock277Step = 332 ifTrue: [
            recoveredBlock277Stack2 := recoveredBlock277Stack1.
            recoveredBlock277PC := 333.
        ].
        recoveredBlock277Step = 333 ifTrue: [
            recoveredLocal6 := recoveredBlock277Stack2.
            recoveredBlock277PC := 336.
        ].
        recoveredBlock277Step = 336 ifTrue: [
            recoveredBlock277Result := recoveredBlock277Stack1.
            recoveredBlock277Done := true.
        ].
    ].
    recoveredBlock277Result
].
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := '|$'.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack1 := [:recoveredBlock361Arg1 | 
    | recoveredBlock361Value0 recoveredBlock361Value1 recoveredBlock361Value2 recoveredBlock361Value3 recoveredBlock361Value4 |
    recoveredBlock361Value0 := recoveredBlock361Arg1.
    recoveredBlock361Value1 := [:recoveredBlock361Block369Arg1 | 
    | recoveredBlock361Block369Stack0 recoveredBlock361Block369Stack1 recoveredBlock361Block369Stack2 recoveredBlock361Block369Stack3 recoveredBlock361Block369Stack4 recoveredBlock361Block369Stack5 recoveredBlock361Block369PC recoveredBlock361Block369Step recoveredBlock361Block369Done recoveredBlock361Block369Result |
    recoveredBlock361Block369Stack0 := self.
    recoveredBlock361Block369PC := 376.
    recoveredBlock361Block369Done := false.
    [recoveredBlock361Block369Done not] whileTrue: [
        recoveredBlock361Block369Step := recoveredBlock361Block369PC.
        recoveredBlock361Block369Step = 376 ifTrue: [
            recoveredBlock361Block369Stack1 := recoveredBlock361Block369Arg1.
            recoveredBlock361Block369PC := 377.
        ].
        recoveredBlock361Block369Step = 377 ifTrue: [
            (recoveredBlock361Block369Stack1 ~~ nil) ifTrue: [recoveredBlock361Block369PC := 388] ifFalse: [recoveredBlock361Block369PC := 380].
        ].
        recoveredBlock361Block369Step = 380 ifTrue: [
            recoveredBlock361Block369Stack1 := '---'.
            recoveredBlock361Block369PC := 382.
        ].
        recoveredBlock361Block369Step = 382 ifTrue: [
            recoveredLocal5 := recoveredBlock361Block369Stack1.
            recoveredBlock361Block369PC := 385.
        ].
        recoveredBlock361Block369Step = 385 ifTrue: [
            recoveredBlock361Block369PC := 394.
        ].
        recoveredBlock361Block369Step = 388 ifTrue: [
            recoveredBlock361Block369Stack1 := recoveredBlock361Block369Arg1.
            recoveredBlock361Block369PC := 389.
        ].
        recoveredBlock361Block369Step = 389 ifTrue: [
            recoveredBlock361Block369Stack1 := (recoveredBlock361Block369Stack1) asString.
            recoveredBlock361Block369PC := 391.
        ].
        recoveredBlock361Block369Step = 391 ifTrue: [
            recoveredLocal5 := recoveredBlock361Block369Stack1.
            recoveredBlock361Block369PC := 394.
        ].
        recoveredBlock361Block369Step = 394 ifTrue: [
            recoveredBlock361Block369Stack1 := recoveredLocal5.
            recoveredBlock361Block369PC := 397.
        ].
        recoveredBlock361Block369Step = 397 ifTrue: [
            recoveredBlock361Block369Stack1 := (recoveredBlock361Block369Stack1) size.
            recoveredBlock361Block369PC := 398.
        ].
        recoveredBlock361Block369Step = 398 ifTrue: [
            recoveredBlock361Block369Stack2 := recoveredLocal4.
            recoveredBlock361Block369PC := 401.
        ].
        recoveredBlock361Block369Step = 401 ifTrue: [
            recoveredBlock361Block369Stack1 := (recoveredBlock361Block369Stack1) < (recoveredBlock361Block369Stack2).
            recoveredBlock361Block369PC := 402.
        ].
        recoveredBlock361Block369Step = 402 ifTrue: [
            (recoveredBlock361Block369Stack1) ifTrue: [recoveredBlock361Block369PC := 406] ifFalse: [recoveredBlock361Block369PC := 424].
        ].
        recoveredBlock361Block369Step = 406 ifTrue: [
            recoveredBlock361Block369Stack1 := '|'.
            recoveredBlock361Block369PC := 408.
        ].
        recoveredBlock361Block369Step = 408 ifTrue: [
            recoveredBlock361Block369Stack2 := recoveredLocal5.
            recoveredBlock361Block369PC := 411.
        ].
        recoveredBlock361Block369Step = 411 ifTrue: [
            recoveredBlock361Block369Stack3 := recoveredLocal4.
            recoveredBlock361Block369PC := 414.
        ].
        recoveredBlock361Block369Step = 414 ifTrue: [
            recoveredBlock361Block369Stack2 := (recoveredBlock361Block369Stack2) fillBlankTo: (recoveredBlock361Block369Stack3).
            recoveredBlock361Block369PC := 416.
        ].
        recoveredBlock361Block369Step = 416 ifTrue: [
            recoveredBlock361Block369Stack1 := (recoveredBlock361Block369Stack1) , (recoveredBlock361Block369Stack2).
            recoveredBlock361Block369PC := 418.
        ].
        recoveredBlock361Block369Step = 418 ifTrue: [
            recoveredLocal5 := recoveredBlock361Block369Stack1.
            recoveredBlock361Block369PC := 421.
        ].
        recoveredBlock361Block369Step = 421 ifTrue: [
            recoveredBlock361Block369PC := 440.
        ].
        recoveredBlock361Block369Step = 424 ifTrue: [
            recoveredBlock361Block369Stack1 := '|'.
            recoveredBlock361Block369PC := 426.
        ].
        recoveredBlock361Block369Step = 426 ifTrue: [
            recoveredBlock361Block369Stack2 := self.
            recoveredBlock361Block369PC := 427.
        ].
        recoveredBlock361Block369Step = 427 ifTrue: [
            recoveredBlock361Block369Stack3 := recoveredLocal4.
            recoveredBlock361Block369PC := 430.
        ].
        recoveredBlock361Block369Step = 430 ifTrue: [
            recoveredBlock361Block369Stack4 := recoveredLocal5.
            recoveredBlock361Block369PC := 433.
        ].
        recoveredBlock361Block369Step = 433 ifTrue: [
            recoveredBlock361Block369Stack2 := (recoveredBlock361Block369Stack2) limitStringSize: (recoveredBlock361Block369Stack3) string: (recoveredBlock361Block369Stack4).
            recoveredBlock361Block369PC := 435.
        ].
        recoveredBlock361Block369Step = 435 ifTrue: [
            recoveredBlock361Block369Stack1 := (recoveredBlock361Block369Stack1) , (recoveredBlock361Block369Stack2).
            recoveredBlock361Block369PC := 437.
        ].
        recoveredBlock361Block369Step = 437 ifTrue: [
            recoveredLocal5 := recoveredBlock361Block369Stack1.
            recoveredBlock361Block369PC := 440.
        ].
        recoveredBlock361Block369Step = 440 ifTrue: [
            recoveredBlock361Block369Stack1 := recoveredLocal6.
            recoveredBlock361Block369PC := 443.
        ].
        recoveredBlock361Block369Step = 443 ifTrue: [
            recoveredBlock361Block369Stack2 := recoveredLocal5.
            recoveredBlock361Block369PC := 446.
        ].
        recoveredBlock361Block369Step = 446 ifTrue: [
            recoveredBlock361Block369Stack1 := (recoveredBlock361Block369Stack1) , (recoveredBlock361Block369Stack2).
            recoveredBlock361Block369PC := 448.
        ].
        recoveredBlock361Block369Step = 448 ifTrue: [
            recoveredBlock361Block369Stack2 := recoveredBlock361Block369Stack1.
            recoveredBlock361Block369PC := 449.
        ].
        recoveredBlock361Block369Step = 449 ifTrue: [
            recoveredLocal6 := recoveredBlock361Block369Stack2.
            recoveredBlock361Block369PC := 452.
        ].
        recoveredBlock361Block369Step = 452 ifTrue: [
            recoveredBlock361Block369Result := recoveredBlock361Block369Stack1.
            recoveredBlock361Block369Done := true.
        ].
    ].
    recoveredBlock361Block369Result
].
    (recoveredBlock361Value0) do: (recoveredBlock361Value1).
    recoveredBlock361Value2 := recoveredLocal6.
    recoveredBlock361Value3 := (recoveredBlock361Value2) , ('|$').
    recoveredBlock361Value4 := recoveredBlock361Value3.
    recoveredLocal6 := recoveredBlock361Value4.
    recoveredBlock361Value3
].
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrLfs1: (recoveredStack3).
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20017d54; bytecode file offset 0x449d8"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWithNColumnsSep: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) processCollection: (recoveredStack1) header: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := [:recoveredBlock58Arg1 | 
    | recoveredBlock58Value0 recoveredBlock58Value1 recoveredBlock58Value2 recoveredBlock58Value3 recoveredBlock58Value4 |
    recoveredBlock58Value0 := recoveredBlock58Arg1.
    recoveredBlock58Value1 := (recoveredBlock58Value0) size.
    recoveredBlock58Value2 := recoveredLocal4.
    recoveredBlock58Value3 := (recoveredBlock58Value1) max: (recoveredBlock58Value2).
    recoveredBlock58Value4 := recoveredBlock58Value3.
    recoveredLocal4 := recoveredBlock58Value4.
    recoveredBlock58Value3
].
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := [:recoveredBlock81Arg1 | 
    | recoveredBlock81Value0 recoveredBlock81Value1 recoveredBlock81Value2 recoveredBlock81Value3 recoveredBlock81Value4 |
    recoveredBlock81Value0 := recoveredBlock81Arg1.
    recoveredBlock81Value1 := (self) maxSizeSubstrings: (recoveredBlock81Value0).
    recoveredBlock81Value2 := recoveredLocal4.
    recoveredBlock81Value3 := (recoveredBlock81Value1) max: (recoveredBlock81Value2).
    recoveredBlock81Value4 := recoveredBlock81Value3.
    recoveredLocal4 := recoveredBlock81Value4.
    recoveredBlock81Value3
].
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 112] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack0 := 70.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 144] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredPC := 175.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) fillChar: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 196] ifFalse: [recoveredPC := 211].
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack0 := '|'.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack1 := (recoveredStack1) fillBlankTo: (recoveredStack2).
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := '|'.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := 4.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := (recoveredStack1) fillBlankTo: (recoveredStack2).
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack1 := '   |'.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredStack1 := (recoveredStack1) fillBlankTo: (recoveredStack2).
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := '|'.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack0 := recoveredLocal5.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack2 := 4.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack1 := (recoveredStack1) fillBlankTo: (recoveredStack2).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack1 := '  |'.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 342] ifFalse: [recoveredPC := 357].
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack1 := [:recoveredBlock360Arg1 | 
    | recoveredBlock360Stack0 recoveredBlock360Stack1 recoveredBlock360Stack2 recoveredBlock360Stack3 recoveredBlock360Stack4 recoveredBlock360Stack5 recoveredBlock360PC recoveredBlock360Step recoveredBlock360Done recoveredBlock360Result |
    recoveredBlock360Stack0 := self.
    recoveredBlock360PC := 366.
    recoveredBlock360Done := false.
    [recoveredBlock360Done not] whileTrue: [
        recoveredBlock360Step := recoveredBlock360PC.
        recoveredBlock360Step = 366 ifTrue: [
            recoveredBlock360Stack1 := recoveredBlock360Arg1.
            recoveredBlock360PC := 367.
        ].
        recoveredBlock360Step = 367 ifTrue: [
            recoveredBlock360Stack1 := (recoveredBlock360Stack1) size.
            recoveredBlock360PC := 368.
        ].
        recoveredBlock360Step = 368 ifTrue: [
            recoveredBlock360Stack2 := recoveredLocal4.
            recoveredBlock360PC := 371.
        ].
        recoveredBlock360Step = 371 ifTrue: [
            recoveredBlock360Stack1 := (recoveredBlock360Stack1) < (recoveredBlock360Stack2).
            recoveredBlock360PC := 372.
        ].
        recoveredBlock360Step = 372 ifTrue: [
            (recoveredBlock360Stack1) ifTrue: [recoveredBlock360PC := 376] ifFalse: [recoveredBlock360PC := 392].
        ].
        recoveredBlock360Step = 376 ifTrue: [
            recoveredBlock360Stack1 := '|'.
            recoveredBlock360PC := 378.
        ].
        recoveredBlock360Step = 378 ifTrue: [
            recoveredBlock360Stack2 := recoveredBlock360Arg1.
            recoveredBlock360PC := 379.
        ].
        recoveredBlock360Step = 379 ifTrue: [
            recoveredBlock360Stack3 := recoveredLocal4.
            recoveredBlock360PC := 382.
        ].
        recoveredBlock360Step = 382 ifTrue: [
            recoveredBlock360Stack2 := (recoveredBlock360Stack2) fillBlankTo: (recoveredBlock360Stack3).
            recoveredBlock360PC := 384.
        ].
        recoveredBlock360Step = 384 ifTrue: [
            recoveredBlock360Stack1 := (recoveredBlock360Stack1) , (recoveredBlock360Stack2).
            recoveredBlock360PC := 386.
        ].
        recoveredBlock360Step = 386 ifTrue: [
            recoveredLocal5 := recoveredBlock360Stack1.
            recoveredBlock360PC := 389.
        ].
        recoveredBlock360Step = 389 ifTrue: [
            recoveredBlock360PC := 406.
        ].
        recoveredBlock360Step = 392 ifTrue: [
            recoveredBlock360Stack1 := '|'.
            recoveredBlock360PC := 394.
        ].
        recoveredBlock360Step = 394 ifTrue: [
            recoveredBlock360Stack2 := self.
            recoveredBlock360PC := 395.
        ].
        recoveredBlock360Step = 395 ifTrue: [
            recoveredBlock360Stack3 := recoveredLocal4.
            recoveredBlock360PC := 398.
        ].
        recoveredBlock360Step = 398 ifTrue: [
            recoveredBlock360Stack4 := recoveredBlock360Arg1.
            recoveredBlock360PC := 399.
        ].
        recoveredBlock360Step = 399 ifTrue: [
            recoveredBlock360Stack2 := (recoveredBlock360Stack2) limitStringSize: (recoveredBlock360Stack3) string: (recoveredBlock360Stack4).
            recoveredBlock360PC := 401.
        ].
        recoveredBlock360Step = 401 ifTrue: [
            recoveredBlock360Stack1 := (recoveredBlock360Stack1) , (recoveredBlock360Stack2).
            recoveredBlock360PC := 403.
        ].
        recoveredBlock360Step = 403 ifTrue: [
            recoveredLocal5 := recoveredBlock360Stack1.
            recoveredBlock360PC := 406.
        ].
        recoveredBlock360Step = 406 ifTrue: [
            recoveredBlock360Stack1 := recoveredLocal6.
            recoveredBlock360PC := 409.
        ].
        recoveredBlock360Step = 409 ifTrue: [
            recoveredBlock360Stack2 := recoveredLocal5.
            recoveredBlock360PC := 412.
        ].
        recoveredBlock360Step = 412 ifTrue: [
            recoveredBlock360Stack1 := (recoveredBlock360Stack1) , (recoveredBlock360Stack2).
            recoveredBlock360PC := 414.
        ].
        recoveredBlock360Step = 414 ifTrue: [
            recoveredBlock360Stack2 := recoveredBlock360Stack1.
            recoveredBlock360PC := 415.
        ].
        recoveredBlock360Step = 415 ifTrue: [
            recoveredLocal6 := recoveredBlock360Stack2.
            recoveredBlock360PC := 418.
        ].
        recoveredBlock360Step = 418 ifTrue: [
            recoveredBlock360Result := recoveredBlock360Stack1.
            recoveredBlock360Done := true.
        ].
    ].
    recoveredBlock360Result
].
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack1 := '|$'.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack1 := [:recoveredBlock443Arg1 | 
    | recoveredBlock443Value0 recoveredBlock443Value1 recoveredBlock443Value2 recoveredBlock443Value3 recoveredBlock443Value4 |
    recoveredBlock443Value0 := recoveredBlock443Arg1.
    recoveredBlock443Value1 := [:recoveredBlock443Block451Arg1 | 
    | recoveredBlock443Block451Stack0 recoveredBlock443Block451Stack1 recoveredBlock443Block451Stack2 recoveredBlock443Block451Stack3 recoveredBlock443Block451Stack4 recoveredBlock443Block451Stack5 recoveredBlock443Block451PC recoveredBlock443Block451Step recoveredBlock443Block451Done recoveredBlock443Block451Result |
    recoveredBlock443Block451Stack0 := self.
    recoveredBlock443Block451PC := 458.
    recoveredBlock443Block451Done := false.
    [recoveredBlock443Block451Done not] whileTrue: [
        recoveredBlock443Block451Step := recoveredBlock443Block451PC.
        recoveredBlock443Block451Step = 458 ifTrue: [
            recoveredBlock443Block451Stack1 := recoveredBlock443Block451Arg1.
            recoveredBlock443Block451PC := 459.
        ].
        recoveredBlock443Block451Step = 459 ifTrue: [
            (recoveredBlock443Block451Stack1 ~~ nil) ifTrue: [recoveredBlock443Block451PC := 470] ifFalse: [recoveredBlock443Block451PC := 462].
        ].
        recoveredBlock443Block451Step = 462 ifTrue: [
            recoveredBlock443Block451Stack1 := '---'.
            recoveredBlock443Block451PC := 464.
        ].
        recoveredBlock443Block451Step = 464 ifTrue: [
            recoveredLocal5 := recoveredBlock443Block451Stack1.
            recoveredBlock443Block451PC := 467.
        ].
        recoveredBlock443Block451Step = 467 ifTrue: [
            recoveredBlock443Block451PC := 476.
        ].
        recoveredBlock443Block451Step = 470 ifTrue: [
            recoveredBlock443Block451Stack1 := recoveredBlock443Block451Arg1.
            recoveredBlock443Block451PC := 471.
        ].
        recoveredBlock443Block451Step = 471 ifTrue: [
            recoveredBlock443Block451Stack1 := (recoveredBlock443Block451Stack1) asString.
            recoveredBlock443Block451PC := 473.
        ].
        recoveredBlock443Block451Step = 473 ifTrue: [
            recoveredLocal5 := recoveredBlock443Block451Stack1.
            recoveredBlock443Block451PC := 476.
        ].
        recoveredBlock443Block451Step = 476 ifTrue: [
            recoveredBlock443Block451Stack1 := recoveredLocal5.
            recoveredBlock443Block451PC := 479.
        ].
        recoveredBlock443Block451Step = 479 ifTrue: [
            recoveredBlock443Block451Stack1 := (recoveredBlock443Block451Stack1) size.
            recoveredBlock443Block451PC := 480.
        ].
        recoveredBlock443Block451Step = 480 ifTrue: [
            recoveredBlock443Block451Stack2 := recoveredLocal4.
            recoveredBlock443Block451PC := 483.
        ].
        recoveredBlock443Block451Step = 483 ifTrue: [
            recoveredBlock443Block451Stack1 := (recoveredBlock443Block451Stack1) < (recoveredBlock443Block451Stack2).
            recoveredBlock443Block451PC := 484.
        ].
        recoveredBlock443Block451Step = 484 ifTrue: [
            (recoveredBlock443Block451Stack1) ifTrue: [recoveredBlock443Block451PC := 488] ifFalse: [recoveredBlock443Block451PC := 506].
        ].
        recoveredBlock443Block451Step = 488 ifTrue: [
            recoveredBlock443Block451Stack1 := '|'.
            recoveredBlock443Block451PC := 490.
        ].
        recoveredBlock443Block451Step = 490 ifTrue: [
            recoveredBlock443Block451Stack2 := recoveredLocal5.
            recoveredBlock443Block451PC := 493.
        ].
        recoveredBlock443Block451Step = 493 ifTrue: [
            recoveredBlock443Block451Stack3 := recoveredLocal4.
            recoveredBlock443Block451PC := 496.
        ].
        recoveredBlock443Block451Step = 496 ifTrue: [
            recoveredBlock443Block451Stack2 := (recoveredBlock443Block451Stack2) fillBlankTo: (recoveredBlock443Block451Stack3).
            recoveredBlock443Block451PC := 498.
        ].
        recoveredBlock443Block451Step = 498 ifTrue: [
            recoveredBlock443Block451Stack1 := (recoveredBlock443Block451Stack1) , (recoveredBlock443Block451Stack2).
            recoveredBlock443Block451PC := 500.
        ].
        recoveredBlock443Block451Step = 500 ifTrue: [
            recoveredLocal5 := recoveredBlock443Block451Stack1.
            recoveredBlock443Block451PC := 503.
        ].
        recoveredBlock443Block451Step = 503 ifTrue: [
            recoveredBlock443Block451PC := 522.
        ].
        recoveredBlock443Block451Step = 506 ifTrue: [
            recoveredBlock443Block451Stack1 := '|'.
            recoveredBlock443Block451PC := 508.
        ].
        recoveredBlock443Block451Step = 508 ifTrue: [
            recoveredBlock443Block451Stack2 := self.
            recoveredBlock443Block451PC := 509.
        ].
        recoveredBlock443Block451Step = 509 ifTrue: [
            recoveredBlock443Block451Stack3 := recoveredLocal4.
            recoveredBlock443Block451PC := 512.
        ].
        recoveredBlock443Block451Step = 512 ifTrue: [
            recoveredBlock443Block451Stack4 := recoveredLocal5.
            recoveredBlock443Block451PC := 515.
        ].
        recoveredBlock443Block451Step = 515 ifTrue: [
            recoveredBlock443Block451Stack2 := (recoveredBlock443Block451Stack2) limitStringSize: (recoveredBlock443Block451Stack3) string: (recoveredBlock443Block451Stack4).
            recoveredBlock443Block451PC := 517.
        ].
        recoveredBlock443Block451Step = 517 ifTrue: [
            recoveredBlock443Block451Stack1 := (recoveredBlock443Block451Stack1) , (recoveredBlock443Block451Stack2).
            recoveredBlock443Block451PC := 519.
        ].
        recoveredBlock443Block451Step = 519 ifTrue: [
            recoveredLocal5 := recoveredBlock443Block451Stack1.
            recoveredBlock443Block451PC := 522.
        ].
        recoveredBlock443Block451Step = 522 ifTrue: [
            recoveredBlock443Block451Stack1 := recoveredLocal6.
            recoveredBlock443Block451PC := 525.
        ].
        recoveredBlock443Block451Step = 525 ifTrue: [
            recoveredBlock443Block451Stack2 := recoveredLocal5.
            recoveredBlock443Block451PC := 528.
        ].
        recoveredBlock443Block451Step = 528 ifTrue: [
            recoveredBlock443Block451Stack1 := (recoveredBlock443Block451Stack1) , (recoveredBlock443Block451Stack2).
            recoveredBlock443Block451PC := 530.
        ].
        recoveredBlock443Block451Step = 530 ifTrue: [
            recoveredBlock443Block451Stack2 := recoveredBlock443Block451Stack1.
            recoveredBlock443Block451PC := 531.
        ].
        recoveredBlock443Block451Step = 531 ifTrue: [
            recoveredLocal6 := recoveredBlock443Block451Stack2.
            recoveredBlock443Block451PC := 534.
        ].
        recoveredBlock443Block451Step = 534 ifTrue: [
            recoveredBlock443Block451Result := recoveredBlock443Block451Stack1.
            recoveredBlock443Block451Done := true.
        ].
    ].
    recoveredBlock443Block451Result
].
    (recoveredBlock443Value0) do: (recoveredBlock443Value1).
    recoveredBlock443Value2 := recoveredLocal6.
    recoveredBlock443Value3 := (recoveredBlock443Value2) , ('|$').
    recoveredBlock443Value4 := recoveredBlock443Value3.
    recoveredLocal6 := recoveredBlock443Value4.
    recoveredBlock443Value3
].
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 554.
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 562.
        ].
        recoveredStep = 562 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrLfs1: (recoveredStack3).
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20018000; bytecode file offset 0x44c80"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWithNColumnsSepS1: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := ''.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) processCollection: (recoveredStack1) header: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 48] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 58] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack0 := 70.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack0 := (recoveredStack0) - (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (-1).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) // (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredPC := 134.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := 1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := [:recoveredBlock90Arg1 | 
    | recoveredBlock90Value0 recoveredBlock90Value1 recoveredBlock90Value2 recoveredBlock90Value3 recoveredBlock90Value4 |
    recoveredBlock90Value0 := recoveredBlock90Arg1.
    recoveredBlock90Value1 := (recoveredBlock90Value0) size.
    recoveredBlock90Value2 := recoveredLocal4.
    recoveredBlock90Value3 := (recoveredBlock90Value1) max: (recoveredBlock90Value2).
    recoveredBlock90Value4 := recoveredBlock90Value3.
    recoveredLocal4 := recoveredBlock90Value4.
    recoveredBlock90Value3
].
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := [:recoveredBlock114Arg1 | 
    | recoveredBlock114Value0 recoveredBlock114Value1 recoveredBlock114Value2 recoveredBlock114Value3 recoveredBlock114Value4 |
    recoveredBlock114Value0 := recoveredBlock114Arg1.
    recoveredBlock114Value1 := (self) maxSizeSubstrings: (recoveredBlock114Value0).
    recoveredBlock114Value2 := (recoveredBlock114Value1) max.
    recoveredBlock114Value3 := (recoveredBlock114Value2) max.
    recoveredBlock114Value4 := recoveredBlock114Value3.
    recoveredLocal4 := recoveredBlock114Value4.
    recoveredBlock114Value3
].
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 182.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack0 := (recoveredStack0) * (recoveredStack1).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := (recoveredStack0) + (1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack1 := $-.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack0 := (recoveredStack0) fillChar: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 204] ifFalse: [recoveredPC := 219].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack0 := '|'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredLocal5 := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack1 := [:recoveredBlock227Arg1 :recoveredBlock227Arg2 | 
    | recoveredBlock227Stack0 recoveredBlock227Stack1 recoveredBlock227Stack2 recoveredBlock227Stack3 recoveredBlock227Stack4 recoveredBlock227Stack5 recoveredBlock227PC recoveredBlock227Step recoveredBlock227Done recoveredBlock227Result |
    recoveredBlock227Stack0 := self.
    recoveredBlock227PC := 234.
    recoveredBlock227Done := false.
    [recoveredBlock227Done not] whileTrue: [
        recoveredBlock227Step := recoveredBlock227PC.
        recoveredBlock227Step = 234 ifTrue: [
            recoveredBlock227Stack1 := recoveredBlock227Arg1.
            recoveredBlock227PC := 235.
        ].
        recoveredBlock227Step = 235 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) size.
            recoveredBlock227PC := 237.
        ].
        recoveredBlock227Step = 237 ifTrue: [
            recoveredBlock227Stack2 := recoveredLocal4.
            recoveredBlock227PC := 240.
        ].
        recoveredBlock227Step = 240 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) < (recoveredBlock227Stack2).
            recoveredBlock227PC := 241.
        ].
        recoveredBlock227Step = 241 ifTrue: [
            (recoveredBlock227Stack1) ifTrue: [recoveredBlock227PC := 260] ifFalse: [recoveredBlock227PC := 244].
        ].
        recoveredBlock227Step = 244 ifTrue: [
            recoveredBlock227Stack1 := recoveredBlock227Arg2.
            recoveredBlock227PC := 245.
        ].
        recoveredBlock227Step = 245 ifTrue: [
            recoveredBlock227Stack2 := 6.
            recoveredBlock227PC := 247.
        ].
        recoveredBlock227Step = 247 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) = (recoveredBlock227Stack2).
            recoveredBlock227PC := 248.
        ].
        recoveredBlock227Step = 248 ifTrue: [
            (recoveredBlock227Stack1) ifTrue: [recoveredBlock227PC := 260] ifFalse: [recoveredBlock227PC := 252].
        ].
        recoveredBlock227Step = 252 ifTrue: [
            recoveredBlock227Stack1 := recoveredBlock227Arg2.
            recoveredBlock227PC := 253.
        ].
        recoveredBlock227Step = 253 ifTrue: [
            recoveredBlock227Stack2 := 8.
            recoveredBlock227PC := 255.
        ].
        recoveredBlock227Step = 255 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) = (recoveredBlock227Stack2).
            recoveredBlock227PC := 256.
        ].
        recoveredBlock227Step = 256 ifTrue: [
            (recoveredBlock227Stack1) ifTrue: [recoveredBlock227PC := 260] ifFalse: [recoveredBlock227PC := 288].
        ].
        recoveredBlock227Step = 260 ifTrue: [
            recoveredBlock227Stack1 := recoveredLocal5.
            recoveredBlock227PC := 263.
        ].
        recoveredBlock227Step = 263 ifTrue: [
            recoveredBlock227Stack2 := recoveredArg3.
            recoveredBlock227PC := 266.
        ].
        recoveredBlock227Step = 266 ifTrue: [
            recoveredBlock227Stack2 := (recoveredBlock227Stack2) first.
            recoveredBlock227PC := 268.
        ].
        recoveredBlock227Step = 268 ifTrue: [
            recoveredBlock227Stack3 := recoveredLocal4.
            recoveredBlock227PC := 271.
        ].
        recoveredBlock227Step = 271 ifTrue: [
            recoveredBlock227Stack4 := 1.
            recoveredBlock227PC := 273.
        ].
        recoveredBlock227Step = 273 ifTrue: [
            recoveredBlock227Stack3 := (recoveredBlock227Stack3) * (recoveredBlock227Stack4).
            recoveredBlock227PC := 274.
        ].
        recoveredBlock227Step = 274 ifTrue: [
            recoveredBlock227Stack2 := (recoveredBlock227Stack2) fillBlankTo: (recoveredBlock227Stack3).
            recoveredBlock227PC := 276.
        ].
        recoveredBlock227Step = 276 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) , (recoveredBlock227Stack2).
            recoveredBlock227PC := 278.
        ].
        recoveredBlock227Step = 278 ifTrue: [
            recoveredBlock227Stack2 := '|'.
            recoveredBlock227PC := 280.
        ].
        recoveredBlock227Step = 280 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) , (recoveredBlock227Stack2).
            recoveredBlock227PC := 282.
        ].
        recoveredBlock227Step = 282 ifTrue: [
            recoveredLocal5 := recoveredBlock227Stack1.
            recoveredBlock227PC := 285.
        ].
        recoveredBlock227Step = 285 ifTrue: [
            recoveredBlock227PC := 311.
        ].
        recoveredBlock227Step = 288 ifTrue: [
            recoveredBlock227Stack1 := recoveredLocal5.
            recoveredBlock227PC := 291.
        ].
        recoveredBlock227Step = 291 ifTrue: [
            recoveredBlock227Stack2 := self.
            recoveredBlock227PC := 292.
        ].
        recoveredBlock227Step = 292 ifTrue: [
            recoveredBlock227Stack3 := recoveredLocal4.
            recoveredBlock227PC := 295.
        ].
        recoveredBlock227Step = 295 ifTrue: [
            recoveredBlock227Stack4 := recoveredArg3.
            recoveredBlock227PC := 298.
        ].
        recoveredBlock227Step = 298 ifTrue: [
            recoveredBlock227Stack4 := (recoveredBlock227Stack4) first.
            recoveredBlock227PC := 300.
        ].
        recoveredBlock227Step = 300 ifTrue: [
            recoveredBlock227Stack2 := (recoveredBlock227Stack2) limitStringSize: (recoveredBlock227Stack3) string: (recoveredBlock227Stack4).
            recoveredBlock227PC := 302.
        ].
        recoveredBlock227Step = 302 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) , (recoveredBlock227Stack2).
            recoveredBlock227PC := 304.
        ].
        recoveredBlock227Step = 304 ifTrue: [
            recoveredBlock227Stack2 := '|'.
            recoveredBlock227PC := 306.
        ].
        recoveredBlock227Step = 306 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) , (recoveredBlock227Stack2).
            recoveredBlock227PC := 308.
        ].
        recoveredBlock227Step = 308 ifTrue: [
            recoveredLocal5 := recoveredBlock227Stack1.
            recoveredBlock227PC := 311.
        ].
        recoveredBlock227Step = 311 ifTrue: [
            recoveredBlock227Stack1 := recoveredLocal6.
            recoveredBlock227PC := 314.
        ].
        recoveredBlock227Step = 314 ifTrue: [
            recoveredBlock227Stack2 := recoveredLocal5.
            recoveredBlock227PC := 317.
        ].
        recoveredBlock227Step = 317 ifTrue: [
            recoveredBlock227Stack1 := (recoveredBlock227Stack1) , (recoveredBlock227Stack2).
            recoveredBlock227PC := 319.
        ].
        recoveredBlock227Step = 319 ifTrue: [
            recoveredBlock227Stack2 := recoveredBlock227Stack1.
            recoveredBlock227PC := 320.
        ].
        recoveredBlock227Step = 320 ifTrue: [
            recoveredLocal6 := recoveredBlock227Stack2.
            recoveredBlock227PC := 323.
        ].
        recoveredBlock227Step = 323 ifTrue: [
            recoveredBlock227Result := recoveredBlock227Stack1.
            recoveredBlock227Done := true.
        ].
    ].
    recoveredBlock227Result
].
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack0) doWithIndex: (recoveredStack1).
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 344] ifFalse: [recoveredPC := 359].
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack1 := [:recoveredBlock362Arg1 | 
    | recoveredBlock362Stack0 recoveredBlock362Stack1 recoveredBlock362Stack2 recoveredBlock362Stack3 recoveredBlock362Stack4 recoveredBlock362Stack5 recoveredBlock362PC recoveredBlock362Step recoveredBlock362Done recoveredBlock362Result |
    recoveredBlock362Stack0 := self.
    recoveredBlock362PC := 368.
    recoveredBlock362Done := false.
    [recoveredBlock362Done not] whileTrue: [
        recoveredBlock362Step := recoveredBlock362PC.
        recoveredBlock362Step = 368 ifTrue: [
            recoveredBlock362Stack1 := recoveredBlock362Arg1.
            recoveredBlock362PC := 369.
        ].
        recoveredBlock362Step = 369 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) size.
            recoveredBlock362PC := 371.
        ].
        recoveredBlock362Step = 371 ifTrue: [
            recoveredBlock362Stack2 := recoveredLocal4.
            recoveredBlock362PC := 374.
        ].
        recoveredBlock362Step = 374 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) < (recoveredBlock362Stack2).
            recoveredBlock362PC := 375.
        ].
        recoveredBlock362Step = 375 ifTrue: [
            (recoveredBlock362Stack1) ifTrue: [recoveredBlock362PC := 378] ifFalse: [recoveredBlock362PC := 394].
        ].
        recoveredBlock362Step = 378 ifTrue: [
            recoveredBlock362Stack1 := '|'.
            recoveredBlock362PC := 380.
        ].
        recoveredBlock362Step = 380 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Arg1.
            recoveredBlock362PC := 381.
        ].
        recoveredBlock362Step = 381 ifTrue: [
            recoveredBlock362Stack3 := recoveredLocal4.
            recoveredBlock362PC := 384.
        ].
        recoveredBlock362Step = 384 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) fillBlankTo: (recoveredBlock362Stack3).
            recoveredBlock362PC := 386.
        ].
        recoveredBlock362Step = 386 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) , (recoveredBlock362Stack2).
            recoveredBlock362PC := 388.
        ].
        recoveredBlock362Step = 388 ifTrue: [
            recoveredLocal5 := recoveredBlock362Stack1.
            recoveredBlock362PC := 391.
        ].
        recoveredBlock362Step = 391 ifTrue: [
            recoveredBlock362PC := 408.
        ].
        recoveredBlock362Step = 394 ifTrue: [
            recoveredBlock362Stack1 := '|'.
            recoveredBlock362PC := 396.
        ].
        recoveredBlock362Step = 396 ifTrue: [
            recoveredBlock362Stack2 := self.
            recoveredBlock362PC := 397.
        ].
        recoveredBlock362Step = 397 ifTrue: [
            recoveredBlock362Stack3 := recoveredLocal4.
            recoveredBlock362PC := 400.
        ].
        recoveredBlock362Step = 400 ifTrue: [
            recoveredBlock362Stack4 := recoveredBlock362Arg1.
            recoveredBlock362PC := 401.
        ].
        recoveredBlock362Step = 401 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) limitStringSize: (recoveredBlock362Stack3) string: (recoveredBlock362Stack4).
            recoveredBlock362PC := 403.
        ].
        recoveredBlock362Step = 403 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) , (recoveredBlock362Stack2).
            recoveredBlock362PC := 405.
        ].
        recoveredBlock362Step = 405 ifTrue: [
            recoveredLocal5 := recoveredBlock362Stack1.
            recoveredBlock362PC := 408.
        ].
        recoveredBlock362Step = 408 ifTrue: [
            recoveredBlock362Stack1 := recoveredLocal6.
            recoveredBlock362PC := 411.
        ].
        recoveredBlock362Step = 411 ifTrue: [
            recoveredBlock362Stack2 := recoveredLocal5.
            recoveredBlock362PC := 414.
        ].
        recoveredBlock362Step = 414 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) , (recoveredBlock362Stack2).
            recoveredBlock362PC := 416.
        ].
        recoveredBlock362Step = 416 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Stack1.
            recoveredBlock362PC := 417.
        ].
        recoveredBlock362Step = 417 ifTrue: [
            recoveredLocal6 := recoveredBlock362Stack2.
            recoveredBlock362PC := 420.
        ].
        recoveredBlock362Step = 420 ifTrue: [
            recoveredBlock362Result := recoveredBlock362Stack1.
            recoveredBlock362Done := true.
        ].
    ].
    recoveredBlock362Result
].
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack1 := '|$'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 439.
        ].
        recoveredStep = 439 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := [:recoveredBlock445Arg1 | 
    | recoveredBlock445Value0 recoveredBlock445Value1 recoveredBlock445Value2 recoveredBlock445Value3 recoveredBlock445Value4 |
    recoveredBlock445Value0 := recoveredBlock445Arg1.
    recoveredBlock445Value1 := [:recoveredBlock445Block453Arg1 | 
    | recoveredBlock445Block453Stack0 recoveredBlock445Block453Stack1 recoveredBlock445Block453Stack2 recoveredBlock445Block453Stack3 recoveredBlock445Block453Stack4 recoveredBlock445Block453Stack5 recoveredBlock445Block453PC recoveredBlock445Block453Step recoveredBlock445Block453Done recoveredBlock445Block453Result |
    recoveredBlock445Block453Stack0 := self.
    recoveredBlock445Block453PC := 460.
    recoveredBlock445Block453Done := false.
    [recoveredBlock445Block453Done not] whileTrue: [
        recoveredBlock445Block453Step := recoveredBlock445Block453PC.
        recoveredBlock445Block453Step = 460 ifTrue: [
            recoveredBlock445Block453Stack1 := recoveredBlock445Block453Arg1.
            recoveredBlock445Block453PC := 461.
        ].
        recoveredBlock445Block453Step = 461 ifTrue: [
            (recoveredBlock445Block453Stack1 ~~ nil) ifTrue: [recoveredBlock445Block453PC := 472] ifFalse: [recoveredBlock445Block453PC := 464].
        ].
        recoveredBlock445Block453Step = 464 ifTrue: [
            recoveredBlock445Block453Stack1 := '---'.
            recoveredBlock445Block453PC := 466.
        ].
        recoveredBlock445Block453Step = 466 ifTrue: [
            recoveredLocal5 := recoveredBlock445Block453Stack1.
            recoveredBlock445Block453PC := 469.
        ].
        recoveredBlock445Block453Step = 469 ifTrue: [
            recoveredBlock445Block453PC := 478.
        ].
        recoveredBlock445Block453Step = 472 ifTrue: [
            recoveredBlock445Block453Stack1 := recoveredBlock445Block453Arg1.
            recoveredBlock445Block453PC := 473.
        ].
        recoveredBlock445Block453Step = 473 ifTrue: [
            recoveredBlock445Block453Stack1 := (recoveredBlock445Block453Stack1) asString.
            recoveredBlock445Block453PC := 475.
        ].
        recoveredBlock445Block453Step = 475 ifTrue: [
            recoveredLocal5 := recoveredBlock445Block453Stack1.
            recoveredBlock445Block453PC := 478.
        ].
        recoveredBlock445Block453Step = 478 ifTrue: [
            recoveredBlock445Block453Stack1 := recoveredLocal5.
            recoveredBlock445Block453PC := 481.
        ].
        recoveredBlock445Block453Step = 481 ifTrue: [
            recoveredBlock445Block453Stack1 := (recoveredBlock445Block453Stack1) size.
            recoveredBlock445Block453PC := 483.
        ].
        recoveredBlock445Block453Step = 483 ifTrue: [
            recoveredBlock445Block453Stack2 := recoveredLocal4.
            recoveredBlock445Block453PC := 486.
        ].
        recoveredBlock445Block453Step = 486 ifTrue: [
            recoveredBlock445Block453Stack1 := (recoveredBlock445Block453Stack1) < (recoveredBlock445Block453Stack2).
            recoveredBlock445Block453PC := 487.
        ].
        recoveredBlock445Block453Step = 487 ifTrue: [
            (recoveredBlock445Block453Stack1) ifTrue: [recoveredBlock445Block453PC := 490] ifFalse: [recoveredBlock445Block453PC := 508].
        ].
        recoveredBlock445Block453Step = 490 ifTrue: [
            recoveredBlock445Block453Stack1 := '|'.
            recoveredBlock445Block453PC := 492.
        ].
        recoveredBlock445Block453Step = 492 ifTrue: [
            recoveredBlock445Block453Stack2 := recoveredLocal5.
            recoveredBlock445Block453PC := 495.
        ].
        recoveredBlock445Block453Step = 495 ifTrue: [
            recoveredBlock445Block453Stack3 := recoveredLocal4.
            recoveredBlock445Block453PC := 498.
        ].
        recoveredBlock445Block453Step = 498 ifTrue: [
            recoveredBlock445Block453Stack2 := (recoveredBlock445Block453Stack2) fillBlankTo: (recoveredBlock445Block453Stack3).
            recoveredBlock445Block453PC := 500.
        ].
        recoveredBlock445Block453Step = 500 ifTrue: [
            recoveredBlock445Block453Stack1 := (recoveredBlock445Block453Stack1) , (recoveredBlock445Block453Stack2).
            recoveredBlock445Block453PC := 502.
        ].
        recoveredBlock445Block453Step = 502 ifTrue: [
            recoveredLocal5 := recoveredBlock445Block453Stack1.
            recoveredBlock445Block453PC := 505.
        ].
        recoveredBlock445Block453Step = 505 ifTrue: [
            recoveredBlock445Block453PC := 524.
        ].
        recoveredBlock445Block453Step = 508 ifTrue: [
            recoveredBlock445Block453Stack1 := '|'.
            recoveredBlock445Block453PC := 510.
        ].
        recoveredBlock445Block453Step = 510 ifTrue: [
            recoveredBlock445Block453Stack2 := self.
            recoveredBlock445Block453PC := 511.
        ].
        recoveredBlock445Block453Step = 511 ifTrue: [
            recoveredBlock445Block453Stack3 := recoveredLocal4.
            recoveredBlock445Block453PC := 514.
        ].
        recoveredBlock445Block453Step = 514 ifTrue: [
            recoveredBlock445Block453Stack4 := recoveredLocal5.
            recoveredBlock445Block453PC := 517.
        ].
        recoveredBlock445Block453Step = 517 ifTrue: [
            recoveredBlock445Block453Stack2 := (recoveredBlock445Block453Stack2) limitStringSize: (recoveredBlock445Block453Stack3) string: (recoveredBlock445Block453Stack4).
            recoveredBlock445Block453PC := 519.
        ].
        recoveredBlock445Block453Step = 519 ifTrue: [
            recoveredBlock445Block453Stack1 := (recoveredBlock445Block453Stack1) , (recoveredBlock445Block453Stack2).
            recoveredBlock445Block453PC := 521.
        ].
        recoveredBlock445Block453Step = 521 ifTrue: [
            recoveredLocal5 := recoveredBlock445Block453Stack1.
            recoveredBlock445Block453PC := 524.
        ].
        recoveredBlock445Block453Step = 524 ifTrue: [
            recoveredBlock445Block453Stack1 := recoveredLocal6.
            recoveredBlock445Block453PC := 527.
        ].
        recoveredBlock445Block453Step = 527 ifTrue: [
            recoveredBlock445Block453Stack2 := recoveredLocal5.
            recoveredBlock445Block453PC := 530.
        ].
        recoveredBlock445Block453Step = 530 ifTrue: [
            recoveredBlock445Block453Stack1 := (recoveredBlock445Block453Stack1) , (recoveredBlock445Block453Stack2).
            recoveredBlock445Block453PC := 532.
        ].
        recoveredBlock445Block453Step = 532 ifTrue: [
            recoveredBlock445Block453Stack2 := recoveredBlock445Block453Stack1.
            recoveredBlock445Block453PC := 533.
        ].
        recoveredBlock445Block453Step = 533 ifTrue: [
            recoveredLocal6 := recoveredBlock445Block453Stack2.
            recoveredBlock445Block453PC := 536.
        ].
        recoveredBlock445Block453Step = 536 ifTrue: [
            recoveredBlock445Block453Result := recoveredBlock445Block453Stack1.
            recoveredBlock445Block453Done := true.
        ].
    ].
    recoveredBlock445Block453Result
].
    (recoveredBlock445Value0) do: (recoveredBlock445Value1).
    recoveredBlock445Value2 := recoveredLocal6.
    recoveredBlock445Value3 := (recoveredBlock445Value2) , ('|$').
    recoveredBlock445Value4 := recoveredBlock445Value3.
    recoveredLocal6 := recoveredBlock445Value4.
    recoveredBlock445Value3
].
            recoveredPC := 551.
        ].
        recoveredStep = 551 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack0 := recoveredLocal6.
            recoveredPC := 556.
        ].
        recoveredStep = 556 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredLocal6 := recoveredStack0.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 571.
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := (recoveredStack2) withCrLfs1: (recoveredStack3).
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 575.
        ].
        recoveredStep = 575 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 578.
        ].
        recoveredStep = 578 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2001b458; bytecode file offset 0x480c8"
!SGDocumentationAsciiTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSep: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal12 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal11 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := '$'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredLocal13 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 93.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack4 := recoveredLocal17.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 78] ifFalse: [recoveredPC := 121]] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack3 := recoveredLocal2.
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
            recoveredLocal2 := recoveredStack4.
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
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredPC := 81.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := recoveredLocal16.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredPC := 147.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := recoveredLocal16.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 132] ifFalse: [recoveredPC := 175]] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredPC := 201.
        ].
        recoveredStep = 186 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack4 := recoveredLocal13.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 186] ifFalse: [recoveredPC := 229]] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 204 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 213.
        ].
        recoveredStep = 213 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 225] ifFalse: [recoveredPC := 220].
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredPC := 189.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := [:recoveredBlock238Arg1 | 
    | recoveredBlock238Value0 recoveredBlock238Value1 recoveredBlock238Value2 |
    recoveredBlock238Value0 := recoveredBlock238Arg1.
    recoveredBlock238Value1 := [:recoveredBlock238Block245Arg1 | 
    | recoveredBlock238Block245Stack0 recoveredBlock238Block245Stack1 recoveredBlock238Block245Stack2 recoveredBlock238Block245Stack3 recoveredBlock238Block245Stack4 recoveredBlock238Block245PC recoveredBlock238Block245Step recoveredBlock238Block245Done recoveredBlock238Block245Result |
    recoveredBlock238Block245Stack0 := nil.
    recoveredBlock238Block245PC := 252.
    recoveredBlock238Block245Done := false.
    [recoveredBlock238Block245Done not] whileTrue: [
        recoveredBlock238Block245Step := recoveredBlock238Block245PC.
        recoveredBlock238Block245Step = 252 ifTrue: [
            recoveredBlock238Block245Stack1 := nil.
            recoveredBlock238Block245PC := 253.
        ].
        recoveredBlock238Block245Step = 253 ifTrue: [
            recoveredBlock238Block245Stack2 := recoveredBlock238Block245Arg1.
            recoveredBlock238Block245PC := 254.
        ].
        recoveredBlock238Block245Step = 254 ifTrue: [
            recoveredBlock238Block245Stack2 := (recoveredBlock238Block245Stack2) size.
            recoveredBlock238Block245PC := 256.
        ].
        recoveredBlock238Block245Step = 256 ifTrue: [
            recoveredBlock238Block245Stack3 := recoveredLocal9.
            recoveredBlock238Block245PC := 259.
        ].
        recoveredBlock238Block245Step = 259 ifTrue: [
            recoveredBlock238Block245Stack2 := (recoveredBlock238Block245Stack2) > (recoveredBlock238Block245Stack3).
            recoveredBlock238Block245PC := 260.
        ].
        recoveredBlock238Block245Step = 260 ifTrue: [
            (recoveredBlock238Block245Stack2) ifTrue: [recoveredBlock238Block245PC := 264] ifFalse: [recoveredBlock238Block245PC := 272].
        ].
        recoveredBlock238Block245Step = 264 ifTrue: [
            recoveredBlock238Block245PC := 265.
        ].
        recoveredBlock238Block245Step = 265 ifTrue: [
            recoveredBlock238Block245Stack1 := recoveredBlock238Block245Arg1.
            recoveredBlock238Block245PC := 266.
        ].
        recoveredBlock238Block245Step = 266 ifTrue: [
            recoveredBlock238Block245Stack1 := (recoveredBlock238Block245Stack1) size.
            recoveredBlock238Block245PC := 268.
        ].
        recoveredBlock238Block245Step = 268 ifTrue: [
            recoveredBlock238Block245Stack2 := recoveredBlock238Block245Stack1.
            recoveredBlock238Block245PC := 269.
        ].
        recoveredBlock238Block245Step = 269 ifTrue: [
            recoveredLocal9 := recoveredBlock238Block245Stack2.
            recoveredBlock238Block245PC := 272.
        ].
        recoveredBlock238Block245Step = 272 ifTrue: [
            recoveredBlock238Block245Result := recoveredBlock238Block245Stack1.
            recoveredBlock238Block245Done := true.
        ].
    ].
    recoveredBlock238Block245Result
].
    recoveredBlock238Value2 := (recoveredBlock238Value0) do: (recoveredBlock238Value1).
    recoveredBlock238Value2
].
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack1 := recoveredLocal9.
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := '-'.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack1 := recoveredLocal10.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := 3.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (recoveredStack2).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack1 := (recoveredStack1) fillBlankTo: (recoveredStack2).
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack4 := $-.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := (recoveredStack1) replaceFrom: (recoveredStack2) to: (recoveredStack3) withObject: (recoveredStack4).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 356.
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack2 := '| '.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack3 := 'x&y'.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack4 := recoveredLocal10.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            recoveredStack3 := (recoveredStack3) fillBlankTo: (recoveredStack4).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack3 := ' '.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 381.
        ].
        recoveredStep = 381 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 383.
        ].
        recoveredStep = 383 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal17.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 533.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack3 := '  '.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack4 := recoveredLocal17.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack5 := recoveredLocal10.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack4 := (recoveredStack4) fillBlankTo: (recoveredStack5).
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack4 := ' '.
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 419.
        ].
        recoveredStep = 419 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack6 := $|.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack3 := (recoveredStack3) replaceFrom: (recoveredStack4) to: (recoveredStack5) withObject: (recoveredStack6).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack4 := recoveredLocal17.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := (recoveredStack3) = (recoveredStack4).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 450] ifFalse: [recoveredPC := 522].
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredStack4 := ' '.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 463.
        ].
        recoveredStep = 463 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack4 := (recoveredStack4) size.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            recoveredStack5 := (recoveredStack5) size.
            recoveredPC := 473.
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack6 := $|.
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack3 := (recoveredStack3) replaceFrom: (recoveredStack4) to: (recoveredStack5) withObject: (recoveredStack6).
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredLocal18 := recoveredStack3.
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 496.
        ].
        recoveredStep = 496 ifTrue: [
            recoveredStack4 := '$'.
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredLocal18 := recoveredStack3.
            recoveredPC := 503.
        ].
        recoveredStep = 503 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 506.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack4 := '$'.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 515.
        ].
        recoveredStep = 515 ifTrue: [
            recoveredLocal18 := recoveredStack3.
            recoveredPC := 518.
        ].
        recoveredStep = 518 ifTrue: [
            recoveredPC := 533.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 528.
        ].
        recoveredStep = 528 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 530.
        ].
        recoveredStep = 530 ifTrue: [
            recoveredLocal18 := recoveredStack3.
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 396] ifFalse: [recoveredPC := 564]] ifFalse: [recoveredPC := 537].
        ].
        recoveredStep = 537 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 546.
        ].
        recoveredStep = 546 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 560] ifFalse: [recoveredPC := 554].
        ].
        recoveredStep = 554 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            recoveredPC := 399.
        ].
        recoveredStep = 560 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 561.
        ].
        recoveredStep = 561 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 570.
        ].
        recoveredStep = 570 ifTrue: [
            recoveredPC := 823.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack3 := 0.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            recoveredLocal12 := recoveredStack3.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 585.
        ].
        recoveredStep = 585 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredLocal11 := recoveredStack3.
            recoveredPC := 589.
        ].
        recoveredStep = 589 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack4 := recoveredLocal14.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 600] ifFalse: [recoveredPC := 651].
        ].
        recoveredStep = 600 ifTrue: [
            recoveredStack3 := '  '.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack4 := recoveredLocal16.
            recoveredPC := 605.
        ].
        recoveredStep = 605 ifTrue: [
            recoveredStack5 := recoveredLocal11.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 609.
        ].
        recoveredStep = 609 ifTrue: [
            recoveredStack5 := recoveredLocal10.
            recoveredPC := 612.
        ].
        recoveredStep = 612 ifTrue: [
            recoveredStack4 := (recoveredStack4) fillBlankTo: (recoveredStack5).
            recoveredPC := 614.
        ].
        recoveredStep = 614 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 616.
        ].
        recoveredStep = 616 ifTrue: [
            recoveredStack4 := ' '.
            recoveredPC := 618.
        ].
        recoveredStep = 618 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 626.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 630.
        ].
        recoveredStep = 630 ifTrue: [
            recoveredStack6 := $|.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack3 := (recoveredStack3) replaceFrom: (recoveredStack4) to: (recoveredStack5) withObject: (recoveredStack6).
            recoveredPC := 637.
        ].
        recoveredStep = 637 ifTrue: [
            recoveredLocal3 := recoveredStack3.
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 643.
        ].
        recoveredStep = 643 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            recoveredLocal18 := recoveredStack3.
            recoveredPC := 651.
        ].
        recoveredStep = 651 ifTrue: [
            recoveredStack3 := recoveredLocal15.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack4 := 0.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredPC := 791.
        ].
        recoveredStep = 660 ifTrue: [
            recoveredLocal1 := recoveredStack5.
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack5 := recoveredLocal12.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 667.
        ].
        recoveredStep = 667 ifTrue: [
            recoveredLocal12 := recoveredStack5.
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            recoveredStack5 := '  '.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack6 := recoveredLocal13.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack7 := recoveredLocal2.
            recoveredPC := 678.
        ].
        recoveredStep = 678 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 679.
        ].
        recoveredStep = 679 ifTrue: [
            recoveredStack7 := recoveredLocal12.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredStack7 := recoveredLocal10.
            recoveredPC := 686.
        ].
        recoveredStep = 686 ifTrue: [
            recoveredStack6 := (recoveredStack6) fillBlankTo: (recoveredStack7).
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 693.
        ].
        recoveredStep = 693 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 700.
        ].
        recoveredStep = 700 ifTrue: [
            recoveredStack8 := $|.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack5 := (recoveredStack5) replaceFrom: (recoveredStack6) to: (recoveredStack7) withObject: (recoveredStack8).
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack6 := recoveredLocal15.
            recoveredPC := 716.
        ].
        recoveredStep = 716 ifTrue: [
            recoveredStack5 := (recoveredStack5) = (recoveredStack6).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            (recoveredStack5) ifTrue: [recoveredPC := 720] ifFalse: [recoveredPC := 776].
        ].
        recoveredStep = 720 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            recoveredStack6 := '  '.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 733.
        ].
        recoveredStep = 733 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack6 := (recoveredStack6) size.
            recoveredPC := 738.
        ].
        recoveredStep = 738 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack7 := (recoveredStack7) size.
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack8 := $|.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack5 := (recoveredStack5) replaceFrom: (recoveredStack6) to: (recoveredStack7) withObject: (recoveredStack8).
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredLocal3 := recoveredStack5.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack5 := recoveredLocal18.
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 758.
        ].
        recoveredStep = 758 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 760.
        ].
        recoveredStep = 760 ifTrue: [
            recoveredLocal18 := recoveredStack5.
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            recoveredStack5 := recoveredLocal18.
            recoveredPC := 766.
        ].
        recoveredStep = 766 ifTrue: [
            recoveredStack6 := '$'.
            recoveredPC := 768.
        ].
        recoveredStep = 768 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredLocal18 := recoveredStack5.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredPC := 791.
        ].
        recoveredStep = 776 ifTrue: [
            recoveredStack5 := recoveredLocal18.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredStack6 := recoveredLocal3.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 784.
        ].
        recoveredStep = 784 ifTrue: [
            recoveredStack6 := ' '.
            recoveredPC := 786.
        ].
        recoveredStep = 786 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 788.
        ].
        recoveredStep = 788 ifTrue: [
            recoveredLocal18 := recoveredStack5.
            recoveredPC := 791.
        ].
        recoveredStep = 791 ifTrue: [
            (recoveredStack3 isInteger and: [recoveredStack4 isInteger]) ifTrue: [(recoveredStack4 + 1 <= recoveredStack3) ifTrue: [recoveredStack4 := recoveredStack4 + 1. recoveredStack5 := recoveredStack4. recoveredPC := 660] ifFalse: [recoveredPC := 822]] ifFalse: [recoveredPC := 795].
        ].
        recoveredStep = 795 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 808.
        ].
        recoveredStep = 808 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 818] ifFalse: [recoveredPC := 812].
        ].
        recoveredStep = 812 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 815.
        ].
        recoveredStep = 815 ifTrue: [
            recoveredPC := 663.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 822.
        ].
        recoveredStep = 822 ifTrue: [
            recoveredPC := 823.
        ].
        recoveredStep = 823 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 574] ifFalse: [recoveredPC := 854]] ifFalse: [recoveredPC := 827].
        ].
        recoveredStep = 827 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 830.
        ].
        recoveredStep = 830 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 831.
        ].
        recoveredStep = 831 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 834.
        ].
        recoveredStep = 834 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 835.
        ].
        recoveredStep = 835 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 836.
        ].
        recoveredStep = 836 ifTrue: [
            recoveredLocal2 := recoveredStack4.
            recoveredPC := 839.
        ].
        recoveredStep = 839 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 840.
        ].
        recoveredStep = 840 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 850] ifFalse: [recoveredPC := 844].
        ].
        recoveredStep = 844 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 847.
        ].
        recoveredStep = 847 ifTrue: [
            recoveredPC := 577.
        ].
        recoveredStep = 850 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 851.
        ].
        recoveredStep = 851 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 854.
        ].
        recoveredStep = 854 ifTrue: [
            recoveredPC := 855.
        ].
        recoveredStep = 855 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 858.
        ].
        recoveredStep = 858 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 861.
        ].
        recoveredStep = 861 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 863.
        ].
        recoveredStep = 863 ifTrue: [
            recoveredStack2 := '$'.
            recoveredPC := 865.
        ].
        recoveredStep = 865 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 867.
        ].
        recoveredStep = 867 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 870.
        ].
        recoveredStep = 870 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 872.
        ].
        recoveredStep = 872 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 873.
        ].
        recoveredStep = 873 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 874.
        ].
        recoveredStep = 874 ifTrue: [
            recoveredStack4 := recoveredLocal18.
            recoveredPC := 877.
        ].
        recoveredStep = 877 ifTrue: [
            recoveredStack3 := (recoveredStack3) withCrLfs1: (recoveredStack4).
            recoveredPC := 879.
        ].
        recoveredStep = 879 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 881.
        ].
        recoveredStep = 881 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 883.
        ].
        recoveredStep = 883 ifTrue: [
            recoveredStack1 := recoveredLocal18.
            recoveredPC := 886.
        ].
        recoveredStep = 886 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

