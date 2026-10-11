"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDDocumentor.ic method 0x20000008; bytecode file offset 0x2cc64"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
noPageBreak
    ^self
! !

"ASDDocumentor.ic method 0x20000020; bytecode file offset 0x2cc64"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
newPage
    ^self
! !

"ASDDocumentor.ic method 0x20000058; bytecode file offset 0x2cc84"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
setWorkingDir: recoveredArg1
    ^self
! !

"ASDDocumentor.ic method 0x200000b8; bytecode file offset 0x2cd1c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
resultFile
    | recoveredValue0 |
    recoveredValue0 := (self) htmlFile.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x200002d0; bytecode file offset 0x2cf3c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
checkMaxVerbatim
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) manager.
    recoveredValue1 := (recoveredValue0) checkMaxVerbatim.
    ^recoveredValue1
! !

"ASDDocumentor.ic method 0x2000073c; bytecode file offset 0x2d438"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
closeTextStream
    | recoveredValue0 |
    recoveredValue0 := (self) textStream.
    (recoveredValue0) close.
    ^self
! !

"ASDDocumentor.ic method 0x200008f0; bytecode file offset 0x2d52c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
htmlFile
    | recoveredValue0 |
    recoveredValue0 := htmlFile.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x2000093c; bytecode file offset 0x2d568"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tempSourceFiles
    | recoveredValue0 |
    recoveredValue0 := tempSourceFiles.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x2000099c; bytecode file offset 0x2d5c0"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
itemsCounter
    | recoveredValue0 |
    recoveredValue0 := itemsCounter.
    ^recoveredValue0
! !

"ASDDocumentor.ic method 0x20000ad4; bytecode file offset 0x2d6f8"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
maxColumns
    ^8
! !

"ASDDocumentor.ic method 0x20000afc; bytecode file offset 0x2d730"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
limitLabelsInTab
    ^false
! !

"ASDDocumentor.ic method 0x20000e7c; bytecode file offset 0x2daa4"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWith4ColumnsDataImplTab: recoveredArg1 header: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) tabWithNColumnsSep: (recoveredValue0) header: (recoveredValue1).
    ^self
! !

"ASDDocumentor.ic method 0x20001654; bytecode file offset 0x2e290"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
emptyLine
    | recoveredValue0 |
    recoveredValue0 := textStream.
    (recoveredValue0) nextPutAll: ('<br>').
    ^self
! !

"ASDDocumentor.ic method 0x20001664; bytecode file offset 0x2e290"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
newLine
    | recoveredValue0 |
    recoveredValue0 := textStream.
    (recoveredValue0) nextPutAll: ('<br>').
    ^self
! !

"ASDDocumentor.ic method 0x20001950; bytecode file offset 0x2e574"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
htmlFile: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    htmlFile := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001974; bytecode file offset 0x2e5a0"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tempSourceFiles: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    tempSourceFiles := recoveredValue0.
    ^self
! !

"ASDDocumentor.ic method 0x20001af8; bytecode file offset 0x2e72c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabHeader: recoveredArg1 header: recoveredArg2 sep: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := recoveredArg3.
    (self) tabWithNColumnsNoBorder: (recoveredValue0) header: (recoveredValue1) sep: (recoveredValue2).
    ^self
! !

"ASDDocumentor.ic method 0x20002040; bytecode file offset 0x2ec70"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
text1RowsWithCRUnderline: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (self) asIdentifier: (recoveredValue2).
    (recoveredValue1) nextPutAll: (recoveredValue3).
    (recoveredValue0) cr.
    ^self
! !

"ASDDocumentor.ic method 0x20002268; bytecode file offset 0x2eea4"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x20002648; bytecode file offset 0x2f294"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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
            recoveredStack2 := [:block28000d74Arg1 | 
    | block28000d74Value0 block28000d74Value1 block28000d74Value2 |
    block28000d74Value0 := CfsFileDescriptor.
    block28000d74Value1 := block28000d74Arg1.
    block28000d74Value2 := (block28000d74Value0) remove: (block28000d74Value1).
    block28000d74Value2
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

"ASDDocumentor.ic method 0x200028e4; bytecode file offset 0x2f514"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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
            recoveredStack1 := textStream.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIdentifier: (recoveredStack4).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20002a68; bytecode file offset 0x2f6ac"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x20002d48; bytecode file offset 0x2f984"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
checkIfHtmlFileExists
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingDirectory.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) docuFile.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := '.htm'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) fileExists: (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003528; bytecode file offset 0x3017c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
text1RowsWithCRBold: recoveredArg1
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
            recoveredStack3 := ' <strong> '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIdentifier: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := ' </strong> '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003544; bytecode file offset 0x3017c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
text1RowsWithCRBoldUnderline: recoveredArg1
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
            recoveredStack3 := ' <strong> '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := (recoveredStack3) asIdentifier: (recoveredStack4).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := ' </strong> '.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20003930; bytecode file offset 0x3057c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
includeFile: recoveredArg1 ext: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('<IMG SRC=') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('>').
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    (self) newLine.
    recoveredValue5 := (self) tempSourceFiles.
    recoveredValue6 := (self) workingDirectory.
    recoveredValue7 := (recoveredValue6) , ('\').
    recoveredValue8 := recoveredArg1.
    recoveredValue9 := (recoveredValue7) , (recoveredValue8).
    (recoveredValue5) add: (recoveredValue9).
    ^self
! !

"ASDDocumentor.ic method 0x20003aa4; bytecode file offset 0x3075c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x20004014; bytecode file offset 0x30c4c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
chapterLevel3: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := '<h3> '.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ' </h3> '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200047a0; bytecode file offset 0x3142c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
endDocument
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := '</body>'.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := '</html>'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) textStream.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack0) close.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfHtmlFileExists.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 43] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := 'The html file docu.htm was not generated.'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := '-->The html file docu.htm was not generated.'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20004dd4; bytecode file offset 0x31a10"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
chapterLevel1: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := '<h1> '.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ' </h1> '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
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
            recoveredStack3 := '<hr>'.
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
            recoveredStack1 := textStream.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20006394; bytecode file offset 0x33028"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x200067b4; bytecode file offset 0x3340c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
setFigure: recoveredArg1 as: recoveredArg2 withNum: recoveredArg3 withTitle: recoveredArg4 ext: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 |
    recoveredValue0 := textStream.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('<IMG SRC=') , (recoveredValue2).
    recoveredValue4 := (recoveredValue3) , ('>').
    (recoveredValue1) nextPutAll: (recoveredValue4).
    (recoveredValue0) cr.
    (self) newLine.
    recoveredValue5 := textStream.
    recoveredValue6 := recoveredValue5.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) , (' ').
    recoveredValue9 := recoveredArg3.
    recoveredValue10 := (recoveredValue8) , (recoveredValue9).
    recoveredValue11 := (recoveredValue10) , (': ').
    recoveredValue12 := recoveredArg4.
    recoveredValue13 := (recoveredValue11) , (recoveredValue12).
    recoveredValue14 := (self) asIdentifier: (recoveredValue13).
    (recoveredValue6) nextPutAll: (recoveredValue14).
    (recoveredValue5) cr.
    (self) emptyLine.
    recoveredValue15 := tempSourceFiles.
    recoveredValue16 := (self) workingDirectory.
    recoveredValue17 := (recoveredValue16) , ('\').
    recoveredValue18 := recoveredArg1.
    recoveredValue19 := (recoveredValue17) , (recoveredValue18).
    (recoveredValue15) add: (recoveredValue19).
    ^self
! !

"ASDDocumentor.ic method 0x20006fbc; bytecode file offset 0x33c08"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
chapterLevel2: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := '<h2> '.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ' </h2> '.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := itemsCounter.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            itemsCounter := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := ' <a name="kap'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := itemsCounter.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := '">'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := '</a>'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000702c; bytecode file offset 0x33c78"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
textVerbatim: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredStack1 := (recoveredStack1) asEscapedString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredLocal3 := recoveredStack1.
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
            recoveredStack3 := ' <pre> '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredPC := 42.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 47] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := ' </pre> '.
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
            recoveredStack1 := textStream.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20007e14; bytecode file offset 0x34a60"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
textDocumentation: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 29].
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
            recoveredStack2 := '<br><br>'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) trimNonAlphaNumericalCharacters.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := ' <pre> '.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := ' </pre> '.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000b000; bytecode file offset 0x37c3c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x2000b08c; bytecode file offset 0x37cd8"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
textNRowsWithCR: recoveredArg1
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
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Stack0 recoveredBlock29Stack1 recoveredBlock29Stack2 recoveredBlock29Stack3 recoveredBlock29Stack4 recoveredBlock29Stack5 recoveredBlock29PC recoveredBlock29Step recoveredBlock29Done recoveredBlock29Result |
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
            (recoveredBlock29Stack1) ifTrue: [recoveredBlock29PC := 44] ifFalse: [recoveredBlock29PC := 74].
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
            recoveredLocal1 := recoveredBlock29Stack1.
            recoveredBlock29PC := 54.
        ].
        recoveredBlock29Step = 54 ifTrue: [
            recoveredBlock29Stack1 := textStream.
            recoveredBlock29PC := 56.
        ].
        recoveredBlock29Step = 56 ifTrue: [
            recoveredBlock29Stack2 := self.
            recoveredBlock29PC := 57.
        ].
        recoveredBlock29Step = 57 ifTrue: [
            recoveredBlock29Stack3 := recoveredLocal1.
            recoveredBlock29PC := 60.
        ].
        recoveredBlock29Step = 60 ifTrue: [
            recoveredBlock29Stack4 := '..'.
            recoveredBlock29PC := 62.
        ].
        recoveredBlock29Step = 62 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) , (recoveredBlock29Stack4).
            recoveredBlock29PC := 64.
        ].
        recoveredBlock29Step = 64 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) asIdentifier: (recoveredBlock29Stack3).
            recoveredBlock29PC := 66.
        ].
        recoveredBlock29Step = 66 ifTrue: [
            (recoveredBlock29Stack1) nextPutAll: (recoveredBlock29Stack2).
            recoveredBlock29PC := 68.
        ].
        recoveredBlock29Step = 68 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 69.
        ].
        recoveredBlock29Step = 69 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) newLine.
            recoveredBlock29PC := 71.
        ].
        recoveredBlock29Step = 71 ifTrue: [
            recoveredBlock29PC := 95.
        ].
        recoveredBlock29Step = 74 ifTrue: [
            recoveredBlock29Stack1 := nil.
            recoveredBlock29PC := 75.
        ].
        recoveredBlock29Step = 75 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Arg1.
            recoveredBlock29PC := 76.
        ].
        recoveredBlock29Step = 76 ifTrue: [
            recoveredBlock29Stack2 := (recoveredBlock29Stack2) notEmpty.
            recoveredBlock29PC := 77.
        ].
        recoveredBlock29Step = 77 ifTrue: [
            (recoveredBlock29Stack2) ifTrue: [recoveredBlock29PC := 80] ifFalse: [recoveredBlock29PC := 95].
        ].
        recoveredBlock29Step = 80 ifTrue: [
            recoveredBlock29PC := 81.
        ].
        recoveredBlock29Step = 81 ifTrue: [
            recoveredBlock29Stack1 := textStream.
            recoveredBlock29PC := 83.
        ].
        recoveredBlock29Step = 83 ifTrue: [
            recoveredBlock29Stack2 := recoveredBlock29Stack1.
            recoveredBlock29PC := 84.
        ].
        recoveredBlock29Step = 84 ifTrue: [
            recoveredBlock29Stack3 := self.
            recoveredBlock29PC := 85.
        ].
        recoveredBlock29Step = 85 ifTrue: [
            recoveredBlock29Stack4 := recoveredBlock29Arg1.
            recoveredBlock29PC := 86.
        ].
        recoveredBlock29Step = 86 ifTrue: [
            recoveredBlock29Stack3 := (recoveredBlock29Stack3) asIdentifier: (recoveredBlock29Stack4).
            recoveredBlock29PC := 88.
        ].
        recoveredBlock29Step = 88 ifTrue: [
            (recoveredBlock29Stack2) nextPutAll: (recoveredBlock29Stack3).
            recoveredBlock29PC := 90.
        ].
        recoveredBlock29Step = 90 ifTrue: [
            (recoveredBlock29Stack1) cr.
            recoveredBlock29PC := 92.
        ].
        recoveredBlock29Step = 92 ifTrue: [
            recoveredBlock29Stack1 := self.
            recoveredBlock29PC := 93.
        ].
        recoveredBlock29Step = 93 ifTrue: [
            recoveredBlock29Stack1 := (recoveredBlock29Stack1) newLine.
            recoveredBlock29PC := 95.
        ].
        recoveredBlock29Step = 95 ifTrue: [
            recoveredBlock29Result := recoveredBlock29Stack1.
            recoveredBlock29Done := true.
        ].
    ].
    recoveredBlock29Result
].
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000b2ec; bytecode file offset 0x38018"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x2000d10c; bytecode file offset 0x39e58"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
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

"ASDDocumentor.ic method 0x2000e1f0; bytecode file offset 0x3ae50"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
configHeader
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) documentedItems.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal4 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 133.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := '<h1> '.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := recoveredLocal6.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := ' </h1> '.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := ' <ul> '.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal6 := recoveredStack2.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := '<li><a href="#kap'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack3 := '">'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack3 := '</a>'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack4 := recoveredLocal5.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack1) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 70] ifFalse: [recoveredLocal1 := nil. recoveredPC := 123]] ifFalse: [recoveredPC := 113].
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 121] ifFalse: [recoveredPC := 70].
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := ' </ul> '.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            (recoveredStack0 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack0) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 18] ifFalse: [recoveredLocal2 := nil. recoveredPC := 147]] ifFalse: [recoveredPC := 137].
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := (recoveredStack1) < (recoveredStack2).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 145] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000f28c; bytecode file offset 0x3befc"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumns2Rows: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := ' <table border> '.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal9 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack2 := [:recoveredBlock51Arg1 | 
    | recoveredBlock51Local1 recoveredBlock51Stack0 recoveredBlock51Stack1 recoveredBlock51Stack2 recoveredBlock51Stack3 recoveredBlock51Stack4 recoveredBlock51Stack5 recoveredBlock51Stack6 recoveredBlock51Stack7 recoveredBlock51PC recoveredBlock51Step recoveredBlock51Done recoveredBlock51Result |
    recoveredBlock51Stack0 := self.
    recoveredBlock51PC := 58.
    recoveredBlock51Done := false.
    [recoveredBlock51Done not] whileTrue: [
        recoveredBlock51Step := recoveredBlock51PC.
        recoveredBlock51Step = 58 ifTrue: [
            recoveredBlock51Stack1 := textStream.
            recoveredBlock51PC := 60.
        ].
        recoveredBlock51Step = 60 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 61.
        ].
        recoveredBlock51Step = 61 ifTrue: [
            recoveredBlock51Stack3 := ' <tr >'.
            recoveredBlock51PC := 63.
        ].
        recoveredBlock51Step = 63 ifTrue: [
            (recoveredBlock51Stack2) nextPutAll: (recoveredBlock51Stack3).
            recoveredBlock51PC := 65.
        ].
        recoveredBlock51Step = 65 ifTrue: [
            (recoveredBlock51Stack1) cr.
            recoveredBlock51PC := 67.
        ].
        recoveredBlock51Step = 67 ifTrue: [
            recoveredBlock51Stack1 := 0.
            recoveredBlock51PC := 69.
        ].
        recoveredBlock51Step = 69 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack1.
            recoveredBlock51PC := 70.
        ].
        recoveredBlock51Step = 70 ifTrue: [
            recoveredBlock51Stack1 := recoveredBlock51Arg1.
            recoveredBlock51PC := 71.
        ].
        recoveredBlock51Step = 71 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) size.
            recoveredBlock51PC := 73.
        ].
        recoveredBlock51Step = 73 ifTrue: [
            recoveredBlock51PC := 143.
        ].
        recoveredBlock51Step = 76 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Arg1.
            recoveredBlock51PC := 77.
        ].
        recoveredBlock51Step = 77 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local1.
            recoveredBlock51PC := 78.
        ].
        recoveredBlock51Step = 78 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) at: (recoveredBlock51Stack3).
            recoveredBlock51PC := 80.
        ].
        recoveredBlock51Step = 80 ifTrue: [
            recoveredLocal7 := recoveredBlock51Stack2.
            recoveredBlock51PC := 83.
        ].
        recoveredBlock51Step = 83 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal7.
            recoveredBlock51PC := 86.
        ].
        recoveredBlock51Step = 86 ifTrue: [
            (recoveredBlock51Stack2 ~~ nil) ifTrue: [recoveredBlock51PC := 98] ifFalse: [recoveredBlock51PC := 90].
        ].
        recoveredBlock51Step = 90 ifTrue: [
            recoveredBlock51Stack2 := '---'.
            recoveredBlock51PC := 92.
        ].
        recoveredBlock51Step = 92 ifTrue: [
            recoveredLocal7 := recoveredBlock51Stack2.
            recoveredBlock51PC := 95.
        ].
        recoveredBlock51Step = 95 ifTrue: [
            recoveredBlock51PC := 122.
        ].
        recoveredBlock51Step = 98 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal7.
            recoveredBlock51PC := 101.
        ].
        recoveredBlock51Step = 101 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) isCharacter.
            recoveredBlock51PC := 103.
        ].
        recoveredBlock51Step = 103 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 122] ifFalse: [recoveredBlock51PC := 106].
        ].
        recoveredBlock51Step = 106 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal7.
            recoveredBlock51PC := 109.
        ].
        recoveredBlock51Step = 109 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) isString.
            recoveredBlock51PC := 111.
        ].
        recoveredBlock51Step = 111 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 122] ifFalse: [recoveredBlock51PC := 114].
        ].
        recoveredBlock51Step = 114 ifTrue: [
            recoveredBlock51Stack2 := recoveredLocal7.
            recoveredBlock51PC := 117.
        ].
        recoveredBlock51Step = 117 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) asString.
            recoveredBlock51PC := 119.
        ].
        recoveredBlock51Step = 119 ifTrue: [
            recoveredLocal7 := recoveredBlock51Stack2.
            recoveredBlock51PC := 122.
        ].
        recoveredBlock51Step = 122 ifTrue: [
            recoveredBlock51Stack2 := textStream.
            recoveredBlock51PC := 124.
        ].
        recoveredBlock51Step = 124 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Stack2.
            recoveredBlock51PC := 125.
        ].
        recoveredBlock51Step = 125 ifTrue: [
            recoveredBlock51Stack4 := ' <td> '.
            recoveredBlock51PC := 127.
        ].
        recoveredBlock51Step = 127 ifTrue: [
            recoveredBlock51Stack5 := self.
            recoveredBlock51PC := 128.
        ].
        recoveredBlock51Step = 128 ifTrue: [
            recoveredBlock51Stack6 := recoveredLocal7.
            recoveredBlock51PC := 131.
        ].
        recoveredBlock51Step = 131 ifTrue: [
            recoveredBlock51Stack5 := (recoveredBlock51Stack5) asIdentifier: (recoveredBlock51Stack6).
            recoveredBlock51PC := 133.
        ].
        recoveredBlock51Step = 133 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) , (recoveredBlock51Stack5).
            recoveredBlock51PC := 135.
        ].
        recoveredBlock51Step = 135 ifTrue: [
            recoveredBlock51Stack5 := ' </td> '.
            recoveredBlock51PC := 137.
        ].
        recoveredBlock51Step = 137 ifTrue: [
            recoveredBlock51Stack4 := (recoveredBlock51Stack4) , (recoveredBlock51Stack5).
            recoveredBlock51PC := 139.
        ].
        recoveredBlock51Step = 139 ifTrue: [
            (recoveredBlock51Stack3) nextPutAll: (recoveredBlock51Stack4).
            recoveredBlock51PC := 141.
        ].
        recoveredBlock51Step = 141 ifTrue: [
            (recoveredBlock51Stack2) cr.
            recoveredBlock51PC := 143.
        ].
        recoveredBlock51Step = 143 ifTrue: [
            (recoveredBlock51Stack1 isInteger and: [recoveredBlock51Local1 isInteger]) ifTrue: [(recoveredBlock51Local1 + 1 <= recoveredBlock51Stack1) ifTrue: [recoveredBlock51Local1 := recoveredBlock51Local1 + 1. recoveredBlock51PC := 76] ifFalse: [recoveredBlock51Local1 := nil. recoveredBlock51PC := 157]] ifFalse: [recoveredBlock51PC := 147].
        ].
        recoveredBlock51Step = 147 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 148.
        ].
        recoveredBlock51Step = 148 ifTrue: [
            recoveredBlock51Stack3 := recoveredBlock51Local1.
            recoveredBlock51PC := 149.
        ].
        recoveredBlock51Step = 149 ifTrue: [
            recoveredBlock51Stack3 := (recoveredBlock51Stack3) + (1).
            recoveredBlock51PC := 150.
        ].
        recoveredBlock51Step = 150 ifTrue: [
            recoveredBlock51Stack4 := recoveredBlock51Stack3.
            recoveredBlock51PC := 151.
        ].
        recoveredBlock51Step = 151 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack4.
            recoveredBlock51PC := 152.
        ].
        recoveredBlock51Step = 152 ifTrue: [
            recoveredBlock51Stack2 := (recoveredBlock51Stack2) < (recoveredBlock51Stack3).
            recoveredBlock51PC := 153.
        ].
        recoveredBlock51Step = 153 ifTrue: [
            (recoveredBlock51Stack2) ifTrue: [recoveredBlock51PC := 155] ifFalse: [recoveredBlock51PC := 76].
        ].
        recoveredBlock51Step = 155 ifTrue: [
            recoveredBlock51Stack2 := nil.
            recoveredBlock51PC := 156.
        ].
        recoveredBlock51Step = 156 ifTrue: [
            recoveredBlock51Local1 := recoveredBlock51Stack2.
            recoveredBlock51PC := 157.
        ].
        recoveredBlock51Step = 157 ifTrue: [
            recoveredBlock51PC := 158.
        ].
        recoveredBlock51Step = 158 ifTrue: [
            recoveredBlock51Stack1 := textStream.
            recoveredBlock51PC := 160.
        ].
        recoveredBlock51Step = 160 ifTrue: [
            recoveredBlock51Stack2 := recoveredBlock51Stack1.
            recoveredBlock51PC := 161.
        ].
        recoveredBlock51Step = 161 ifTrue: [
            recoveredBlock51Stack3 := ' </tr >'.
            recoveredBlock51PC := 163.
        ].
        recoveredBlock51Step = 163 ifTrue: [
            (recoveredBlock51Stack2) nextPutAll: (recoveredBlock51Stack3).
            recoveredBlock51PC := 165.
        ].
        recoveredBlock51Step = 165 ifTrue: [
            recoveredBlock51Stack1 := (recoveredBlock51Stack1) cr.
            recoveredBlock51PC := 167.
        ].
        recoveredBlock51Step = 167 ifTrue: [
            recoveredBlock51Result := recoveredBlock51Stack1.
            recoveredBlock51Done := true.
        ].
    ].
    recoveredBlock51Result
].
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack0) newLine.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2000f968; bytecode file offset 0x3c624"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
beginDocument
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
            recoveredStack0 := (recoveredStack0) dirIsRoot: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 17] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            tempSourceFiles := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := Dictionary.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) checkIfHtmlFileExists.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 34] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := CfsFileDescriptor.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := (recoveredStack2) docuFile.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := '.htm'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) remove: (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) workingDirectory.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := '\'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack2 := (recoveredStack2) docuFile.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := '.htm'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack0) htmlFile: (recoveredStack1).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := CfsLeadEncodedReadWriteFileStream.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) htmlFile.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack0 := (recoveredStack0) openEmpty: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            textStream := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCfsError.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 90].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := RBUserInfo.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := (recoveredStack1) message.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) message: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) prompt.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := '<html>'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := '<head>'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := '<title>'.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := 'Titel: '.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := (recoveredStack3) docuTitle.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack1 := 'Autor: '.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := (recoveredStack3) docuAuthor.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := ' '.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 'Sicht: '.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack3 := (recoveredStack3) docuView.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack2 := (recoveredStack2) asIdentifier: (recoveredStack3).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack2 := '</title>'.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) cr.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack2 := '</head>'.
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
            recoveredStack0 := 0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            itemsCounter := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack0) configHeader.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := textStream.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack2 := '<body>'.
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

"ASDDocumentor.ic method 0x20010574; bytecode file offset 0x3d21c"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
initOn: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            manager := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := EtasMainAPI.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal5 := recoveredStack2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAPIError.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := ASDPathOptions.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) instance.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionDocuWorkingPath.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) currentOpenedDatabase.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredLocal4 := recoveredStack2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) isAPIError.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 36] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := ReadWriteStream.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack3 := 'Cannot open the current database.'.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := 'Database is probably password protected.'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := 'Please remove password protection first.'.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := RBUserInfo.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := (recoveredStack1) message: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) prompt.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := (recoveredStack0) manager.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := (recoveredStack0) workingDirectory.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 93] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            (recoveredStack0) askForWorkingDirectory.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 100] ifFalse: [recoveredPC := 105].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) askForWorkingDirectory.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) dirIsRoot: (recoveredStack1).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := (recoveredStack1) docuFile.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := '.htm'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            htmlFile := recoveredStack0.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := (recoveredStack0) dirIsRootWithSep: (recoveredStack1).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) docuFile.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := '.htm'.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            htmlFile := recoveredStack0.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := $\.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 172] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack1 := '\'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) docuFile.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack1 := '.htm'.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            htmlFile := recoveredStack0.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := (recoveredStack0) last.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := $\.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 208] ifFalse: [recoveredPC := 218].
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := (recoveredStack2) size.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyFrom: (recoveredStack1) to: (recoveredStack2).
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack0 := OrderedCollection.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack0 := (recoveredStack0) new.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            tempSourceFiles := recoveredStack0.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            itemsCounter := recoveredStack0.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20011a7c; bytecode file offset 0x3e6dc"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
asIdentifier: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal2 := recoveredValue0.
    recoveredLocal1 := ''.
    recoveredValue1 := recoveredLocal2.
    recoveredValue2 := [:recoveredBlock18Arg1 | 
    | recoveredBlock18Value0 recoveredBlock18Value1 recoveredBlock18Value2 recoveredBlock18Value3 recoveredBlock18Value4 recoveredBlock18Value5 recoveredBlock18Value6 recoveredBlock18Value7 recoveredBlock18Value8 recoveredBlock18Value9 recoveredBlock18Value10 recoveredBlock18Value11 recoveredBlock18Value12 recoveredBlock18Value13 recoveredBlock18Value14 recoveredBlock18Value15 recoveredBlock18Value16 recoveredBlock18Value17 recoveredBlock18Value18 recoveredBlock18Value19 |
    recoveredBlock18Value0 := [
    | recoveredBlock18Block24Value0 |
    recoveredBlock18Block24Value0 := recoveredBlock18Arg1.
    recoveredBlock18Block24Value0
].
    recoveredBlock18Value1 := [
    | recoveredBlock18Block38Value0 recoveredBlock18Block38Value1 recoveredBlock18Block38Value2 |
    recoveredBlock18Block38Value0 := recoveredLocal1.
    recoveredBlock18Block38Value1 := (recoveredBlock18Block38Value0) , ('&lt;').
    recoveredBlock18Block38Value2 := recoveredBlock18Block38Value1.
    recoveredLocal1 := recoveredBlock18Block38Value2.
    recoveredBlock18Block38Value1
].
    recoveredBlock18Value2 := [
    | recoveredBlock18Block58Value0 recoveredBlock18Block58Value1 recoveredBlock18Block58Value2 |
    recoveredBlock18Block58Value0 := recoveredLocal1.
    recoveredBlock18Block58Value1 := (recoveredBlock18Block58Value0) , ('&gt;').
    recoveredBlock18Block58Value2 := recoveredBlock18Block58Value1.
    recoveredLocal1 := recoveredBlock18Block58Value2.
    recoveredBlock18Block58Value1
].
    recoveredBlock18Value3 := (Character value: 252).
    recoveredBlock18Value4 := [
    | recoveredBlock18Block78Value0 recoveredBlock18Block78Value1 recoveredBlock18Block78Value2 |
    recoveredBlock18Block78Value0 := recoveredLocal1.
    recoveredBlock18Block78Value1 := (recoveredBlock18Block78Value0) , ('&uuml;').
    recoveredBlock18Block78Value2 := recoveredBlock18Block78Value1.
    recoveredLocal1 := recoveredBlock18Block78Value2.
    recoveredBlock18Block78Value1
].
    recoveredBlock18Value5 := (Character value: 220).
    recoveredBlock18Value6 := [
    | recoveredBlock18Block98Value0 recoveredBlock18Block98Value1 recoveredBlock18Block98Value2 |
    recoveredBlock18Block98Value0 := recoveredLocal1.
    recoveredBlock18Block98Value1 := (recoveredBlock18Block98Value0) , ('&Uuml;').
    recoveredBlock18Block98Value2 := recoveredBlock18Block98Value1.
    recoveredLocal1 := recoveredBlock18Block98Value2.
    recoveredBlock18Block98Value1
].
    recoveredBlock18Value7 := (Character value: 228).
    recoveredBlock18Value8 := [
    | recoveredBlock18Block118Value0 recoveredBlock18Block118Value1 recoveredBlock18Block118Value2 |
    recoveredBlock18Block118Value0 := recoveredLocal1.
    recoveredBlock18Block118Value1 := (recoveredBlock18Block118Value0) , ('&auml;').
    recoveredBlock18Block118Value2 := recoveredBlock18Block118Value1.
    recoveredLocal1 := recoveredBlock18Block118Value2.
    recoveredBlock18Block118Value1
].
    recoveredBlock18Value9 := (Character value: 196).
    recoveredBlock18Value10 := [
    | recoveredBlock18Block138Value0 recoveredBlock18Block138Value1 recoveredBlock18Block138Value2 |
    recoveredBlock18Block138Value0 := recoveredLocal1.
    recoveredBlock18Block138Value1 := (recoveredBlock18Block138Value0) , ('&Auml;').
    recoveredBlock18Block138Value2 := recoveredBlock18Block138Value1.
    recoveredLocal1 := recoveredBlock18Block138Value2.
    recoveredBlock18Block138Value1
].
    recoveredBlock18Value11 := (Character value: 246).
    recoveredBlock18Value12 := [
    | recoveredBlock18Block158Value0 recoveredBlock18Block158Value1 recoveredBlock18Block158Value2 |
    recoveredBlock18Block158Value0 := recoveredLocal1.
    recoveredBlock18Block158Value1 := (recoveredBlock18Block158Value0) , ('&ouml;').
    recoveredBlock18Block158Value2 := recoveredBlock18Block158Value1.
    recoveredLocal1 := recoveredBlock18Block158Value2.
    recoveredBlock18Block158Value1
].
    recoveredBlock18Value13 := (Character value: 214).
    recoveredBlock18Value14 := [
    | recoveredBlock18Block178Value0 recoveredBlock18Block178Value1 recoveredBlock18Block178Value2 |
    recoveredBlock18Block178Value0 := recoveredLocal1.
    recoveredBlock18Block178Value1 := (recoveredBlock18Block178Value0) , ('&Ouml;').
    recoveredBlock18Block178Value2 := recoveredBlock18Block178Value1.
    recoveredLocal1 := recoveredBlock18Block178Value2.
    recoveredBlock18Block178Value1
].
    recoveredBlock18Value15 := (Character value: 223).
    recoveredBlock18Value16 := [
    | recoveredBlock18Block198Value0 recoveredBlock18Block198Value1 recoveredBlock18Block198Value2 |
    recoveredBlock18Block198Value0 := recoveredLocal1.
    recoveredBlock18Block198Value1 := (recoveredBlock18Block198Value0) , ('&szlig;').
    recoveredBlock18Block198Value2 := recoveredBlock18Block198Value1.
    recoveredLocal1 := recoveredBlock18Block198Value2.
    recoveredBlock18Block198Value1
].
    recoveredBlock18Value17 := [
    | recoveredBlock18Block218Value0 recoveredBlock18Block218Value1 recoveredBlock18Block218Value2 |
    recoveredBlock18Block218Value0 := recoveredLocal1.
    recoveredBlock18Block218Value1 := (recoveredBlock18Block218Value0) , ('&amp;').
    recoveredBlock18Block218Value2 := recoveredBlock18Block218Value1.
    recoveredLocal1 := recoveredBlock18Block218Value2.
    recoveredBlock18Block218Value1
].
    recoveredBlock18Value18 := [
    | recoveredBlock18Block235Value0 recoveredBlock18Block235Value1 recoveredBlock18Block235Value2 recoveredBlock18Block235Value3 recoveredBlock18Block235Value4 |
    recoveredBlock18Block235Value0 := recoveredLocal1.
    recoveredBlock18Block235Value1 := recoveredBlock18Arg1.
    recoveredBlock18Block235Value2 := (recoveredBlock18Block235Value1) asString.
    recoveredBlock18Block235Value3 := (recoveredBlock18Block235Value0) , (recoveredBlock18Block235Value2).
    recoveredBlock18Block235Value4 := recoveredBlock18Block235Value3.
    recoveredLocal1 := recoveredBlock18Block235Value4.
    recoveredBlock18Block235Value3
].
    recoveredBlock18Value19 := (recoveredBlock18Value0) case: ($<) do: (recoveredBlock18Value1) case: ($>) do: (recoveredBlock18Value2) case: (recoveredBlock18Value3) do: (recoveredBlock18Value4) case: (recoveredBlock18Value5) do: (recoveredBlock18Value6) case: (recoveredBlock18Value7) do: (recoveredBlock18Value8) case: (recoveredBlock18Value9) do: (recoveredBlock18Value10) case: (recoveredBlock18Value11) do: (recoveredBlock18Value12) case: (recoveredBlock18Value13) do: (recoveredBlock18Value14) case: (recoveredBlock18Value15) do: (recoveredBlock18Value16) case: ($&) do: (recoveredBlock18Value17) others: (recoveredBlock18Value18).
    recoveredBlock18Value19
].
    (recoveredValue1) do: (recoveredValue2).
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDDocumentor.ic method 0x20013abc; bytecode file offset 0x40748"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumnsNoBorder: recoveredArg1 header: recoveredArg2 sep: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 50] ifFalse: [recoveredPC := 95]] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := ' <table> '.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 163.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := ' <th> '.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack6 := ' </th> '.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 134] ifFalse: [recoveredPC := 191]] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 137.
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
            recoveredStack1 := textStream.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := [:recoveredBlock204Arg1 | 
    | recoveredBlock204Local1 recoveredBlock204Stack0 recoveredBlock204Stack1 recoveredBlock204Stack2 recoveredBlock204Stack3 recoveredBlock204Stack4 recoveredBlock204Stack5 recoveredBlock204Stack6 recoveredBlock204Stack7 recoveredBlock204PC recoveredBlock204Step recoveredBlock204Done recoveredBlock204Result |
    recoveredBlock204Stack0 := self.
    recoveredBlock204PC := 210.
    recoveredBlock204Done := false.
    [recoveredBlock204Done not] whileTrue: [
        recoveredBlock204Step := recoveredBlock204PC.
        recoveredBlock204Step = 210 ifTrue: [
            recoveredBlock204Stack1 := textStream.
            recoveredBlock204PC := 212.
        ].
        recoveredBlock204Step = 212 ifTrue: [
            recoveredBlock204Stack2 := recoveredBlock204Stack1.
            recoveredBlock204PC := 213.
        ].
        recoveredBlock204Step = 213 ifTrue: [
            recoveredBlock204Stack3 := ' <tr >'.
            recoveredBlock204PC := 215.
        ].
        recoveredBlock204Step = 215 ifTrue: [
            (recoveredBlock204Stack2) nextPutAll: (recoveredBlock204Stack3).
            recoveredBlock204PC := 217.
        ].
        recoveredBlock204Step = 217 ifTrue: [
            (recoveredBlock204Stack1) cr.
            recoveredBlock204PC := 219.
        ].
        recoveredBlock204Step = 219 ifTrue: [
            recoveredBlock204Stack1 := 0.
            recoveredBlock204PC := 221.
        ].
        recoveredBlock204Step = 221 ifTrue: [
            recoveredBlock204Local1 := recoveredBlock204Stack1.
            recoveredBlock204PC := 222.
        ].
        recoveredBlock204Step = 222 ifTrue: [
            recoveredBlock204Stack1 := recoveredBlock204Arg1.
            recoveredBlock204PC := 223.
        ].
        recoveredBlock204Step = 223 ifTrue: [
            recoveredBlock204Stack1 := (recoveredBlock204Stack1) size.
            recoveredBlock204PC := 224.
        ].
        recoveredBlock204Step = 224 ifTrue: [
            recoveredBlock204PC := 295.
        ].
        recoveredBlock204Step = 228 ifTrue: [
            recoveredBlock204Stack2 := recoveredBlock204Arg1.
            recoveredBlock204PC := 229.
        ].
        recoveredBlock204Step = 229 ifTrue: [
            recoveredBlock204Stack3 := recoveredBlock204Local1.
            recoveredBlock204PC := 230.
        ].
        recoveredBlock204Step = 230 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) at: (recoveredBlock204Stack3).
            recoveredBlock204PC := 232.
        ].
        recoveredBlock204Step = 232 ifTrue: [
            recoveredLocal5 := recoveredBlock204Stack2.
            recoveredBlock204PC := 235.
        ].
        recoveredBlock204Step = 235 ifTrue: [
            recoveredBlock204Stack2 := recoveredLocal5.
            recoveredBlock204PC := 238.
        ].
        recoveredBlock204Step = 238 ifTrue: [
            (recoveredBlock204Stack2 ~~ nil) ifTrue: [recoveredBlock204PC := 250] ifFalse: [recoveredBlock204PC := 242].
        ].
        recoveredBlock204Step = 242 ifTrue: [
            recoveredBlock204Stack2 := '---'.
            recoveredBlock204PC := 244.
        ].
        recoveredBlock204Step = 244 ifTrue: [
            recoveredLocal5 := recoveredBlock204Stack2.
            recoveredBlock204PC := 247.
        ].
        recoveredBlock204Step = 247 ifTrue: [
            recoveredBlock204PC := 274.
        ].
        recoveredBlock204Step = 250 ifTrue: [
            recoveredBlock204Stack2 := recoveredLocal5.
            recoveredBlock204PC := 253.
        ].
        recoveredBlock204Step = 253 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) isCharacter.
            recoveredBlock204PC := 255.
        ].
        recoveredBlock204Step = 255 ifTrue: [
            (recoveredBlock204Stack2) ifTrue: [recoveredBlock204PC := 274] ifFalse: [recoveredBlock204PC := 258].
        ].
        recoveredBlock204Step = 258 ifTrue: [
            recoveredBlock204Stack2 := recoveredLocal5.
            recoveredBlock204PC := 261.
        ].
        recoveredBlock204Step = 261 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) isString.
            recoveredBlock204PC := 263.
        ].
        recoveredBlock204Step = 263 ifTrue: [
            (recoveredBlock204Stack2) ifTrue: [recoveredBlock204PC := 274] ifFalse: [recoveredBlock204PC := 266].
        ].
        recoveredBlock204Step = 266 ifTrue: [
            recoveredBlock204Stack2 := recoveredLocal5.
            recoveredBlock204PC := 269.
        ].
        recoveredBlock204Step = 269 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) asString.
            recoveredBlock204PC := 271.
        ].
        recoveredBlock204Step = 271 ifTrue: [
            recoveredLocal5 := recoveredBlock204Stack2.
            recoveredBlock204PC := 274.
        ].
        recoveredBlock204Step = 274 ifTrue: [
            recoveredBlock204Stack2 := textStream.
            recoveredBlock204PC := 276.
        ].
        recoveredBlock204Step = 276 ifTrue: [
            recoveredBlock204Stack3 := recoveredBlock204Stack2.
            recoveredBlock204PC := 277.
        ].
        recoveredBlock204Step = 277 ifTrue: [
            recoveredBlock204Stack4 := ' <td> '.
            recoveredBlock204PC := 279.
        ].
        recoveredBlock204Step = 279 ifTrue: [
            recoveredBlock204Stack5 := self.
            recoveredBlock204PC := 280.
        ].
        recoveredBlock204Step = 280 ifTrue: [
            recoveredBlock204Stack6 := recoveredLocal5.
            recoveredBlock204PC := 283.
        ].
        recoveredBlock204Step = 283 ifTrue: [
            recoveredBlock204Stack5 := (recoveredBlock204Stack5) asIdentifier: (recoveredBlock204Stack6).
            recoveredBlock204PC := 285.
        ].
        recoveredBlock204Step = 285 ifTrue: [
            recoveredBlock204Stack4 := (recoveredBlock204Stack4) , (recoveredBlock204Stack5).
            recoveredBlock204PC := 287.
        ].
        recoveredBlock204Step = 287 ifTrue: [
            recoveredBlock204Stack5 := ' </td> '.
            recoveredBlock204PC := 289.
        ].
        recoveredBlock204Step = 289 ifTrue: [
            recoveredBlock204Stack4 := (recoveredBlock204Stack4) , (recoveredBlock204Stack5).
            recoveredBlock204PC := 291.
        ].
        recoveredBlock204Step = 291 ifTrue: [
            (recoveredBlock204Stack3) nextPutAll: (recoveredBlock204Stack4).
            recoveredBlock204PC := 293.
        ].
        recoveredBlock204Step = 293 ifTrue: [
            (recoveredBlock204Stack2) cr.
            recoveredBlock204PC := 295.
        ].
        recoveredBlock204Step = 295 ifTrue: [
            (recoveredBlock204Stack1 isInteger and: [recoveredBlock204Local1 isInteger]) ifTrue: [(recoveredBlock204Local1 + 1 <= recoveredBlock204Stack1) ifTrue: [recoveredBlock204Local1 := recoveredBlock204Local1 + 1. recoveredBlock204PC := 228] ifFalse: [recoveredBlock204Local1 := nil. recoveredBlock204PC := 309]] ifFalse: [recoveredBlock204PC := 299].
        ].
        recoveredBlock204Step = 299 ifTrue: [
            recoveredBlock204Stack2 := recoveredBlock204Stack1.
            recoveredBlock204PC := 300.
        ].
        recoveredBlock204Step = 300 ifTrue: [
            recoveredBlock204Stack3 := recoveredBlock204Local1.
            recoveredBlock204PC := 301.
        ].
        recoveredBlock204Step = 301 ifTrue: [
            recoveredBlock204Stack3 := (recoveredBlock204Stack3) + (1).
            recoveredBlock204PC := 302.
        ].
        recoveredBlock204Step = 302 ifTrue: [
            recoveredBlock204Stack4 := recoveredBlock204Stack3.
            recoveredBlock204PC := 303.
        ].
        recoveredBlock204Step = 303 ifTrue: [
            recoveredBlock204Local1 := recoveredBlock204Stack4.
            recoveredBlock204PC := 304.
        ].
        recoveredBlock204Step = 304 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) < (recoveredBlock204Stack3).
            recoveredBlock204PC := 305.
        ].
        recoveredBlock204Step = 305 ifTrue: [
            (recoveredBlock204Stack2) ifTrue: [recoveredBlock204PC := 307] ifFalse: [recoveredBlock204PC := 228].
        ].
        recoveredBlock204Step = 307 ifTrue: [
            recoveredBlock204Stack2 := nil.
            recoveredBlock204PC := 308.
        ].
        recoveredBlock204Step = 308 ifTrue: [
            recoveredBlock204Local1 := recoveredBlock204Stack2.
            recoveredBlock204PC := 309.
        ].
        recoveredBlock204Step = 309 ifTrue: [
            recoveredBlock204PC := 310.
        ].
        recoveredBlock204Step = 310 ifTrue: [
            recoveredBlock204Stack1 := textStream.
            recoveredBlock204PC := 312.
        ].
        recoveredBlock204Step = 312 ifTrue: [
            recoveredBlock204Stack2 := recoveredBlock204Stack1.
            recoveredBlock204PC := 313.
        ].
        recoveredBlock204Step = 313 ifTrue: [
            recoveredBlock204Stack3 := ' </tr >'.
            recoveredBlock204PC := 315.
        ].
        recoveredBlock204Step = 315 ifTrue: [
            (recoveredBlock204Stack2) nextPutAll: (recoveredBlock204Stack3).
            recoveredBlock204PC := 317.
        ].
        recoveredBlock204Step = 317 ifTrue: [
            recoveredBlock204Stack1 := (recoveredBlock204Stack1) cr.
            recoveredBlock204PC := 319.
        ].
        recoveredBlock204Step = 319 ifTrue: [
            recoveredBlock204Result := recoveredBlock204Stack1.
            recoveredBlock204Done := true.
        ].
    ].
    recoveredBlock204Result
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack0) newLine.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20013e54; bytecode file offset 0x40ae0"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumns: recoveredArg1 header: recoveredArg2 sep: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 66.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack3 := recoveredLocal4.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 50] ifFalse: [recoveredPC := 95]] ifFalse: [recoveredPC := 69].
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 91] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := ' <table> '.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredPC := 163.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack5 := ' <th> '.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack6 := ' </th> '.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 134] ifFalse: [recoveredPC := 191]] ifFalse: [recoveredPC := 166].
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 187] ifFalse: [recoveredPC := 182].
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredPC := 137.
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
            recoveredStack1 := textStream.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack2 := [:recoveredBlock204Arg1 | 
    | recoveredBlock204Local1 recoveredBlock204Stack0 recoveredBlock204Stack1 recoveredBlock204Stack2 recoveredBlock204Stack3 recoveredBlock204Stack4 recoveredBlock204Stack5 recoveredBlock204Stack6 recoveredBlock204Stack7 recoveredBlock204PC recoveredBlock204Step recoveredBlock204Done recoveredBlock204Result |
    recoveredBlock204Stack0 := self.
    recoveredBlock204PC := 210.
    recoveredBlock204Done := false.
    [recoveredBlock204Done not] whileTrue: [
        recoveredBlock204Step := recoveredBlock204PC.
        recoveredBlock204Step = 210 ifTrue: [
            recoveredBlock204Stack1 := textStream.
            recoveredBlock204PC := 212.
        ].
        recoveredBlock204Step = 212 ifTrue: [
            recoveredBlock204Stack2 := recoveredBlock204Stack1.
            recoveredBlock204PC := 213.
        ].
        recoveredBlock204Step = 213 ifTrue: [
            recoveredBlock204Stack3 := ' <tr >'.
            recoveredBlock204PC := 215.
        ].
        recoveredBlock204Step = 215 ifTrue: [
            (recoveredBlock204Stack2) nextPutAll: (recoveredBlock204Stack3).
            recoveredBlock204PC := 217.
        ].
        recoveredBlock204Step = 217 ifTrue: [
            (recoveredBlock204Stack1) cr.
            recoveredBlock204PC := 219.
        ].
        recoveredBlock204Step = 219 ifTrue: [
            recoveredBlock204Stack1 := 0.
            recoveredBlock204PC := 221.
        ].
        recoveredBlock204Step = 221 ifTrue: [
            recoveredBlock204Local1 := recoveredBlock204Stack1.
            recoveredBlock204PC := 222.
        ].
        recoveredBlock204Step = 222 ifTrue: [
            recoveredBlock204Stack1 := recoveredBlock204Arg1.
            recoveredBlock204PC := 223.
        ].
        recoveredBlock204Step = 223 ifTrue: [
            recoveredBlock204Stack1 := (recoveredBlock204Stack1) size.
            recoveredBlock204PC := 224.
        ].
        recoveredBlock204Step = 224 ifTrue: [
            recoveredBlock204PC := 295.
        ].
        recoveredBlock204Step = 228 ifTrue: [
            recoveredBlock204Stack2 := recoveredBlock204Arg1.
            recoveredBlock204PC := 229.
        ].
        recoveredBlock204Step = 229 ifTrue: [
            recoveredBlock204Stack3 := recoveredBlock204Local1.
            recoveredBlock204PC := 230.
        ].
        recoveredBlock204Step = 230 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) at: (recoveredBlock204Stack3).
            recoveredBlock204PC := 232.
        ].
        recoveredBlock204Step = 232 ifTrue: [
            recoveredLocal5 := recoveredBlock204Stack2.
            recoveredBlock204PC := 235.
        ].
        recoveredBlock204Step = 235 ifTrue: [
            recoveredBlock204Stack2 := recoveredLocal5.
            recoveredBlock204PC := 238.
        ].
        recoveredBlock204Step = 238 ifTrue: [
            (recoveredBlock204Stack2 ~~ nil) ifTrue: [recoveredBlock204PC := 250] ifFalse: [recoveredBlock204PC := 242].
        ].
        recoveredBlock204Step = 242 ifTrue: [
            recoveredBlock204Stack2 := '---'.
            recoveredBlock204PC := 244.
        ].
        recoveredBlock204Step = 244 ifTrue: [
            recoveredLocal5 := recoveredBlock204Stack2.
            recoveredBlock204PC := 247.
        ].
        recoveredBlock204Step = 247 ifTrue: [
            recoveredBlock204PC := 274.
        ].
        recoveredBlock204Step = 250 ifTrue: [
            recoveredBlock204Stack2 := recoveredLocal5.
            recoveredBlock204PC := 253.
        ].
        recoveredBlock204Step = 253 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) isCharacter.
            recoveredBlock204PC := 255.
        ].
        recoveredBlock204Step = 255 ifTrue: [
            (recoveredBlock204Stack2) ifTrue: [recoveredBlock204PC := 274] ifFalse: [recoveredBlock204PC := 258].
        ].
        recoveredBlock204Step = 258 ifTrue: [
            recoveredBlock204Stack2 := recoveredLocal5.
            recoveredBlock204PC := 261.
        ].
        recoveredBlock204Step = 261 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) isString.
            recoveredBlock204PC := 263.
        ].
        recoveredBlock204Step = 263 ifTrue: [
            (recoveredBlock204Stack2) ifTrue: [recoveredBlock204PC := 274] ifFalse: [recoveredBlock204PC := 266].
        ].
        recoveredBlock204Step = 266 ifTrue: [
            recoveredBlock204Stack2 := recoveredLocal5.
            recoveredBlock204PC := 269.
        ].
        recoveredBlock204Step = 269 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) asString.
            recoveredBlock204PC := 271.
        ].
        recoveredBlock204Step = 271 ifTrue: [
            recoveredLocal5 := recoveredBlock204Stack2.
            recoveredBlock204PC := 274.
        ].
        recoveredBlock204Step = 274 ifTrue: [
            recoveredBlock204Stack2 := textStream.
            recoveredBlock204PC := 276.
        ].
        recoveredBlock204Step = 276 ifTrue: [
            recoveredBlock204Stack3 := recoveredBlock204Stack2.
            recoveredBlock204PC := 277.
        ].
        recoveredBlock204Step = 277 ifTrue: [
            recoveredBlock204Stack4 := ' <td> '.
            recoveredBlock204PC := 279.
        ].
        recoveredBlock204Step = 279 ifTrue: [
            recoveredBlock204Stack5 := self.
            recoveredBlock204PC := 280.
        ].
        recoveredBlock204Step = 280 ifTrue: [
            recoveredBlock204Stack6 := recoveredLocal5.
            recoveredBlock204PC := 283.
        ].
        recoveredBlock204Step = 283 ifTrue: [
            recoveredBlock204Stack5 := (recoveredBlock204Stack5) asIdentifier: (recoveredBlock204Stack6).
            recoveredBlock204PC := 285.
        ].
        recoveredBlock204Step = 285 ifTrue: [
            recoveredBlock204Stack4 := (recoveredBlock204Stack4) , (recoveredBlock204Stack5).
            recoveredBlock204PC := 287.
        ].
        recoveredBlock204Step = 287 ifTrue: [
            recoveredBlock204Stack5 := ' </td> '.
            recoveredBlock204PC := 289.
        ].
        recoveredBlock204Step = 289 ifTrue: [
            recoveredBlock204Stack4 := (recoveredBlock204Stack4) , (recoveredBlock204Stack5).
            recoveredBlock204PC := 291.
        ].
        recoveredBlock204Step = 291 ifTrue: [
            (recoveredBlock204Stack3) nextPutAll: (recoveredBlock204Stack4).
            recoveredBlock204PC := 293.
        ].
        recoveredBlock204Step = 293 ifTrue: [
            (recoveredBlock204Stack2) cr.
            recoveredBlock204PC := 295.
        ].
        recoveredBlock204Step = 295 ifTrue: [
            (recoveredBlock204Stack1 isInteger and: [recoveredBlock204Local1 isInteger]) ifTrue: [(recoveredBlock204Local1 + 1 <= recoveredBlock204Stack1) ifTrue: [recoveredBlock204Local1 := recoveredBlock204Local1 + 1. recoveredBlock204PC := 228] ifFalse: [recoveredBlock204Local1 := nil. recoveredBlock204PC := 309]] ifFalse: [recoveredBlock204PC := 299].
        ].
        recoveredBlock204Step = 299 ifTrue: [
            recoveredBlock204Stack2 := recoveredBlock204Stack1.
            recoveredBlock204PC := 300.
        ].
        recoveredBlock204Step = 300 ifTrue: [
            recoveredBlock204Stack3 := recoveredBlock204Local1.
            recoveredBlock204PC := 301.
        ].
        recoveredBlock204Step = 301 ifTrue: [
            recoveredBlock204Stack3 := (recoveredBlock204Stack3) + (1).
            recoveredBlock204PC := 302.
        ].
        recoveredBlock204Step = 302 ifTrue: [
            recoveredBlock204Stack4 := recoveredBlock204Stack3.
            recoveredBlock204PC := 303.
        ].
        recoveredBlock204Step = 303 ifTrue: [
            recoveredBlock204Local1 := recoveredBlock204Stack4.
            recoveredBlock204PC := 304.
        ].
        recoveredBlock204Step = 304 ifTrue: [
            recoveredBlock204Stack2 := (recoveredBlock204Stack2) < (recoveredBlock204Stack3).
            recoveredBlock204PC := 305.
        ].
        recoveredBlock204Step = 305 ifTrue: [
            (recoveredBlock204Stack2) ifTrue: [recoveredBlock204PC := 307] ifFalse: [recoveredBlock204PC := 228].
        ].
        recoveredBlock204Step = 307 ifTrue: [
            recoveredBlock204Stack2 := nil.
            recoveredBlock204PC := 308.
        ].
        recoveredBlock204Step = 308 ifTrue: [
            recoveredBlock204Local1 := recoveredBlock204Stack2.
            recoveredBlock204PC := 309.
        ].
        recoveredBlock204Step = 309 ifTrue: [
            recoveredBlock204PC := 310.
        ].
        recoveredBlock204Step = 310 ifTrue: [
            recoveredBlock204Stack1 := textStream.
            recoveredBlock204PC := 312.
        ].
        recoveredBlock204Step = 312 ifTrue: [
            recoveredBlock204Stack2 := recoveredBlock204Stack1.
            recoveredBlock204PC := 313.
        ].
        recoveredBlock204Step = 313 ifTrue: [
            recoveredBlock204Stack3 := ' </tr >'.
            recoveredBlock204PC := 315.
        ].
        recoveredBlock204Step = 315 ifTrue: [
            (recoveredBlock204Stack2) nextPutAll: (recoveredBlock204Stack3).
            recoveredBlock204PC := 317.
        ].
        recoveredBlock204Step = 317 ifTrue: [
            recoveredBlock204Stack1 := (recoveredBlock204Stack1) cr.
            recoveredBlock204PC := 319.
        ].
        recoveredBlock204Step = 319 ifTrue: [
            recoveredBlock204Result := recoveredBlock204Stack1.
            recoveredBlock204Done := true.
        ].
    ].
    recoveredBlock204Result
].
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := recoveredLocal6.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack4 := ' <br> '.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x200141bc; bytecode file offset 0x40e48"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumnsSep: recoveredArg1 header: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredStack1 := OrderedCollection.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredPC := 74.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 58] ifFalse: [recoveredPC := 103]] ifFalse: [recoveredPC := 77].
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 99] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredPC := 61.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := ' <table border> '.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredPC := 171.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := ' <th> '.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack7 := recoveredLocal5.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack6 := ' </th> '.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 142] ifFalse: [recoveredPC := 199]] ifFalse: [recoveredPC := 174].
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
            recoveredPC := 145.
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
            recoveredStack1 := textStream.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack3 := ' </tr> '.
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
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack2 := [:recoveredBlock212Arg1 | 
    | recoveredBlock212Local1 recoveredBlock212Stack0 recoveredBlock212Stack1 recoveredBlock212Stack2 recoveredBlock212Stack3 recoveredBlock212Stack4 recoveredBlock212Stack5 recoveredBlock212Stack6 recoveredBlock212Stack7 recoveredBlock212PC recoveredBlock212Step recoveredBlock212Done recoveredBlock212Result |
    recoveredBlock212Stack0 := self.
    recoveredBlock212PC := 218.
    recoveredBlock212Done := false.
    [recoveredBlock212Done not] whileTrue: [
        recoveredBlock212Step := recoveredBlock212PC.
        recoveredBlock212Step = 218 ifTrue: [
            recoveredBlock212Stack1 := textStream.
            recoveredBlock212PC := 220.
        ].
        recoveredBlock212Step = 220 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Stack1.
            recoveredBlock212PC := 221.
        ].
        recoveredBlock212Step = 221 ifTrue: [
            recoveredBlock212Stack3 := ' <tr >'.
            recoveredBlock212PC := 223.
        ].
        recoveredBlock212Step = 223 ifTrue: [
            (recoveredBlock212Stack2) nextPutAll: (recoveredBlock212Stack3).
            recoveredBlock212PC := 225.
        ].
        recoveredBlock212Step = 225 ifTrue: [
            (recoveredBlock212Stack1) cr.
            recoveredBlock212PC := 227.
        ].
        recoveredBlock212Step = 227 ifTrue: [
            recoveredBlock212Stack1 := 0.
            recoveredBlock212PC := 229.
        ].
        recoveredBlock212Step = 229 ifTrue: [
            recoveredBlock212Local1 := recoveredBlock212Stack1.
            recoveredBlock212PC := 230.
        ].
        recoveredBlock212Step = 230 ifTrue: [
            recoveredBlock212Stack1 := recoveredBlock212Arg1.
            recoveredBlock212PC := 231.
        ].
        recoveredBlock212Step = 231 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) size.
            recoveredBlock212PC := 232.
        ].
        recoveredBlock212Step = 232 ifTrue: [
            recoveredBlock212PC := 303.
        ].
        recoveredBlock212Step = 236 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Arg1.
            recoveredBlock212PC := 237.
        ].
        recoveredBlock212Step = 237 ifTrue: [
            recoveredBlock212Stack3 := recoveredBlock212Local1.
            recoveredBlock212PC := 238.
        ].
        recoveredBlock212Step = 238 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) at: (recoveredBlock212Stack3).
            recoveredBlock212PC := 240.
        ].
        recoveredBlock212Step = 240 ifTrue: [
            recoveredLocal6 := recoveredBlock212Stack2.
            recoveredBlock212PC := 243.
        ].
        recoveredBlock212Step = 243 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal6.
            recoveredBlock212PC := 246.
        ].
        recoveredBlock212Step = 246 ifTrue: [
            (recoveredBlock212Stack2 ~~ nil) ifTrue: [recoveredBlock212PC := 258] ifFalse: [recoveredBlock212PC := 250].
        ].
        recoveredBlock212Step = 250 ifTrue: [
            recoveredBlock212Stack2 := '---'.
            recoveredBlock212PC := 252.
        ].
        recoveredBlock212Step = 252 ifTrue: [
            recoveredLocal6 := recoveredBlock212Stack2.
            recoveredBlock212PC := 255.
        ].
        recoveredBlock212Step = 255 ifTrue: [
            recoveredBlock212PC := 282.
        ].
        recoveredBlock212Step = 258 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal6.
            recoveredBlock212PC := 261.
        ].
        recoveredBlock212Step = 261 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) isCharacter.
            recoveredBlock212PC := 263.
        ].
        recoveredBlock212Step = 263 ifTrue: [
            (recoveredBlock212Stack2) ifTrue: [recoveredBlock212PC := 282] ifFalse: [recoveredBlock212PC := 266].
        ].
        recoveredBlock212Step = 266 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal6.
            recoveredBlock212PC := 269.
        ].
        recoveredBlock212Step = 269 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) isString.
            recoveredBlock212PC := 271.
        ].
        recoveredBlock212Step = 271 ifTrue: [
            (recoveredBlock212Stack2) ifTrue: [recoveredBlock212PC := 282] ifFalse: [recoveredBlock212PC := 274].
        ].
        recoveredBlock212Step = 274 ifTrue: [
            recoveredBlock212Stack2 := recoveredLocal6.
            recoveredBlock212PC := 277.
        ].
        recoveredBlock212Step = 277 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) asString.
            recoveredBlock212PC := 279.
        ].
        recoveredBlock212Step = 279 ifTrue: [
            recoveredLocal6 := recoveredBlock212Stack2.
            recoveredBlock212PC := 282.
        ].
        recoveredBlock212Step = 282 ifTrue: [
            recoveredBlock212Stack2 := textStream.
            recoveredBlock212PC := 284.
        ].
        recoveredBlock212Step = 284 ifTrue: [
            recoveredBlock212Stack3 := recoveredBlock212Stack2.
            recoveredBlock212PC := 285.
        ].
        recoveredBlock212Step = 285 ifTrue: [
            recoveredBlock212Stack4 := ' <td> '.
            recoveredBlock212PC := 287.
        ].
        recoveredBlock212Step = 287 ifTrue: [
            recoveredBlock212Stack5 := self.
            recoveredBlock212PC := 288.
        ].
        recoveredBlock212Step = 288 ifTrue: [
            recoveredBlock212Stack6 := recoveredLocal6.
            recoveredBlock212PC := 291.
        ].
        recoveredBlock212Step = 291 ifTrue: [
            recoveredBlock212Stack5 := (recoveredBlock212Stack5) asIdentifier: (recoveredBlock212Stack6).
            recoveredBlock212PC := 293.
        ].
        recoveredBlock212Step = 293 ifTrue: [
            recoveredBlock212Stack4 := (recoveredBlock212Stack4) , (recoveredBlock212Stack5).
            recoveredBlock212PC := 295.
        ].
        recoveredBlock212Step = 295 ifTrue: [
            recoveredBlock212Stack5 := ' </td> '.
            recoveredBlock212PC := 297.
        ].
        recoveredBlock212Step = 297 ifTrue: [
            recoveredBlock212Stack4 := (recoveredBlock212Stack4) , (recoveredBlock212Stack5).
            recoveredBlock212PC := 299.
        ].
        recoveredBlock212Step = 299 ifTrue: [
            (recoveredBlock212Stack3) nextPutAll: (recoveredBlock212Stack4).
            recoveredBlock212PC := 301.
        ].
        recoveredBlock212Step = 301 ifTrue: [
            (recoveredBlock212Stack2) cr.
            recoveredBlock212PC := 303.
        ].
        recoveredBlock212Step = 303 ifTrue: [
            (recoveredBlock212Stack1 isInteger and: [recoveredBlock212Local1 isInteger]) ifTrue: [(recoveredBlock212Local1 + 1 <= recoveredBlock212Stack1) ifTrue: [recoveredBlock212Local1 := recoveredBlock212Local1 + 1. recoveredBlock212PC := 236] ifFalse: [recoveredBlock212Local1 := nil. recoveredBlock212PC := 317]] ifFalse: [recoveredBlock212PC := 307].
        ].
        recoveredBlock212Step = 307 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Stack1.
            recoveredBlock212PC := 308.
        ].
        recoveredBlock212Step = 308 ifTrue: [
            recoveredBlock212Stack3 := recoveredBlock212Local1.
            recoveredBlock212PC := 309.
        ].
        recoveredBlock212Step = 309 ifTrue: [
            recoveredBlock212Stack3 := (recoveredBlock212Stack3) + (1).
            recoveredBlock212PC := 310.
        ].
        recoveredBlock212Step = 310 ifTrue: [
            recoveredBlock212Stack4 := recoveredBlock212Stack3.
            recoveredBlock212PC := 311.
        ].
        recoveredBlock212Step = 311 ifTrue: [
            recoveredBlock212Local1 := recoveredBlock212Stack4.
            recoveredBlock212PC := 312.
        ].
        recoveredBlock212Step = 312 ifTrue: [
            recoveredBlock212Stack2 := (recoveredBlock212Stack2) < (recoveredBlock212Stack3).
            recoveredBlock212PC := 313.
        ].
        recoveredBlock212Step = 313 ifTrue: [
            (recoveredBlock212Stack2) ifTrue: [recoveredBlock212PC := 315] ifFalse: [recoveredBlock212PC := 236].
        ].
        recoveredBlock212Step = 315 ifTrue: [
            recoveredBlock212Stack2 := nil.
            recoveredBlock212PC := 316.
        ].
        recoveredBlock212Step = 316 ifTrue: [
            recoveredBlock212Local1 := recoveredBlock212Stack2.
            recoveredBlock212PC := 317.
        ].
        recoveredBlock212Step = 317 ifTrue: [
            recoveredBlock212PC := 318.
        ].
        recoveredBlock212Step = 318 ifTrue: [
            recoveredBlock212Stack1 := textStream.
            recoveredBlock212PC := 320.
        ].
        recoveredBlock212Step = 320 ifTrue: [
            recoveredBlock212Stack2 := recoveredBlock212Stack1.
            recoveredBlock212PC := 321.
        ].
        recoveredBlock212Step = 321 ifTrue: [
            recoveredBlock212Stack3 := ' </tr >'.
            recoveredBlock212PC := 323.
        ].
        recoveredBlock212Step = 323 ifTrue: [
            (recoveredBlock212Stack2) nextPutAll: (recoveredBlock212Stack3).
            recoveredBlock212PC := 325.
        ].
        recoveredBlock212Step = 325 ifTrue: [
            recoveredBlock212Stack1 := (recoveredBlock212Stack1) cr.
            recoveredBlock212PC := 327.
        ].
        recoveredBlock212Step = 327 ifTrue: [
            recoveredBlock212Result := recoveredBlock212Stack1.
            recoveredBlock212Done := true.
        ].
    ].
    recoveredBlock212Result
].
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            (recoveredStack0) newLine.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20016220; bytecode file offset 0x42eb0"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumnsSepS: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 64] ifFalse: [recoveredPC := 109]] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := ' <table border> '.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack2 := 2.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 212].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack3 := ' <th colspan=2> '.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack3 := ' <th colspan=2> '.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredPC := 265.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 222] ifFalse: [recoveredPC := 265].
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack3 := ' <th colspan=2> '.
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            (recoveredStack1) cr.
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
            recoveredStack3 := ' </tr> '.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack3 := ' <tr> '.
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
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            recoveredPC := 313.
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
            recoveredStack4 := recoveredStack3.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack5 := ' <th> '.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack6 := ' </th> '.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 284] ifFalse: [recoveredPC := 341]] ifFalse: [recoveredPC := 316].
        ].
        recoveredStep = 316 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 337] ifFalse: [recoveredPC := 332].
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredPC := 287.
        ].
        recoveredStep = 337 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 347.
        ].
        recoveredStep = 347 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 354.
        ].
        recoveredStep = 354 ifTrue: [
            recoveredStack2 := [:recoveredBlock354Arg1 | 
    | recoveredBlock354Local1 recoveredBlock354Stack0 recoveredBlock354Stack1 recoveredBlock354Stack2 recoveredBlock354Stack3 recoveredBlock354Stack4 recoveredBlock354Stack5 recoveredBlock354Stack6 recoveredBlock354Stack7 recoveredBlock354PC recoveredBlock354Step recoveredBlock354Done recoveredBlock354Result |
    recoveredBlock354Stack0 := self.
    recoveredBlock354PC := 360.
    recoveredBlock354Done := false.
    [recoveredBlock354Done not] whileTrue: [
        recoveredBlock354Step := recoveredBlock354PC.
        recoveredBlock354Step = 360 ifTrue: [
            recoveredBlock354Stack1 := textStream.
            recoveredBlock354PC := 362.
        ].
        recoveredBlock354Step = 362 ifTrue: [
            recoveredBlock354Stack2 := recoveredBlock354Stack1.
            recoveredBlock354PC := 363.
        ].
        recoveredBlock354Step = 363 ifTrue: [
            recoveredBlock354Stack3 := ' <tr >'.
            recoveredBlock354PC := 365.
        ].
        recoveredBlock354Step = 365 ifTrue: [
            (recoveredBlock354Stack2) nextPutAll: (recoveredBlock354Stack3).
            recoveredBlock354PC := 367.
        ].
        recoveredBlock354Step = 367 ifTrue: [
            (recoveredBlock354Stack1) cr.
            recoveredBlock354PC := 369.
        ].
        recoveredBlock354Step = 369 ifTrue: [
            recoveredBlock354Stack1 := 0.
            recoveredBlock354PC := 371.
        ].
        recoveredBlock354Step = 371 ifTrue: [
            recoveredBlock354Local1 := recoveredBlock354Stack1.
            recoveredBlock354PC := 372.
        ].
        recoveredBlock354Step = 372 ifTrue: [
            recoveredBlock354Stack1 := recoveredBlock354Arg1.
            recoveredBlock354PC := 373.
        ].
        recoveredBlock354Step = 373 ifTrue: [
            recoveredBlock354Stack1 := (recoveredBlock354Stack1) size.
            recoveredBlock354PC := 374.
        ].
        recoveredBlock354Step = 374 ifTrue: [
            recoveredBlock354PC := 445.
        ].
        recoveredBlock354Step = 378 ifTrue: [
            recoveredBlock354Stack2 := recoveredBlock354Arg1.
            recoveredBlock354PC := 379.
        ].
        recoveredBlock354Step = 379 ifTrue: [
            recoveredBlock354Stack3 := recoveredBlock354Local1.
            recoveredBlock354PC := 380.
        ].
        recoveredBlock354Step = 380 ifTrue: [
            recoveredBlock354Stack2 := (recoveredBlock354Stack2) at: (recoveredBlock354Stack3).
            recoveredBlock354PC := 382.
        ].
        recoveredBlock354Step = 382 ifTrue: [
            recoveredLocal6 := recoveredBlock354Stack2.
            recoveredBlock354PC := 385.
        ].
        recoveredBlock354Step = 385 ifTrue: [
            recoveredBlock354Stack2 := recoveredLocal6.
            recoveredBlock354PC := 388.
        ].
        recoveredBlock354Step = 388 ifTrue: [
            (recoveredBlock354Stack2 ~~ nil) ifTrue: [recoveredBlock354PC := 400] ifFalse: [recoveredBlock354PC := 392].
        ].
        recoveredBlock354Step = 392 ifTrue: [
            recoveredBlock354Stack2 := '---'.
            recoveredBlock354PC := 394.
        ].
        recoveredBlock354Step = 394 ifTrue: [
            recoveredLocal6 := recoveredBlock354Stack2.
            recoveredBlock354PC := 397.
        ].
        recoveredBlock354Step = 397 ifTrue: [
            recoveredBlock354PC := 424.
        ].
        recoveredBlock354Step = 400 ifTrue: [
            recoveredBlock354Stack2 := recoveredLocal6.
            recoveredBlock354PC := 403.
        ].
        recoveredBlock354Step = 403 ifTrue: [
            recoveredBlock354Stack2 := (recoveredBlock354Stack2) isCharacter.
            recoveredBlock354PC := 405.
        ].
        recoveredBlock354Step = 405 ifTrue: [
            (recoveredBlock354Stack2) ifTrue: [recoveredBlock354PC := 424] ifFalse: [recoveredBlock354PC := 408].
        ].
        recoveredBlock354Step = 408 ifTrue: [
            recoveredBlock354Stack2 := recoveredLocal6.
            recoveredBlock354PC := 411.
        ].
        recoveredBlock354Step = 411 ifTrue: [
            recoveredBlock354Stack2 := (recoveredBlock354Stack2) isString.
            recoveredBlock354PC := 413.
        ].
        recoveredBlock354Step = 413 ifTrue: [
            (recoveredBlock354Stack2) ifTrue: [recoveredBlock354PC := 424] ifFalse: [recoveredBlock354PC := 416].
        ].
        recoveredBlock354Step = 416 ifTrue: [
            recoveredBlock354Stack2 := recoveredLocal6.
            recoveredBlock354PC := 419.
        ].
        recoveredBlock354Step = 419 ifTrue: [
            recoveredBlock354Stack2 := (recoveredBlock354Stack2) asString.
            recoveredBlock354PC := 421.
        ].
        recoveredBlock354Step = 421 ifTrue: [
            recoveredLocal6 := recoveredBlock354Stack2.
            recoveredBlock354PC := 424.
        ].
        recoveredBlock354Step = 424 ifTrue: [
            recoveredBlock354Stack2 := textStream.
            recoveredBlock354PC := 426.
        ].
        recoveredBlock354Step = 426 ifTrue: [
            recoveredBlock354Stack3 := recoveredBlock354Stack2.
            recoveredBlock354PC := 427.
        ].
        recoveredBlock354Step = 427 ifTrue: [
            recoveredBlock354Stack4 := ' <td> '.
            recoveredBlock354PC := 429.
        ].
        recoveredBlock354Step = 429 ifTrue: [
            recoveredBlock354Stack5 := self.
            recoveredBlock354PC := 430.
        ].
        recoveredBlock354Step = 430 ifTrue: [
            recoveredBlock354Stack6 := recoveredLocal6.
            recoveredBlock354PC := 433.
        ].
        recoveredBlock354Step = 433 ifTrue: [
            recoveredBlock354Stack5 := (recoveredBlock354Stack5) asIdentifier: (recoveredBlock354Stack6).
            recoveredBlock354PC := 435.
        ].
        recoveredBlock354Step = 435 ifTrue: [
            recoveredBlock354Stack4 := (recoveredBlock354Stack4) , (recoveredBlock354Stack5).
            recoveredBlock354PC := 437.
        ].
        recoveredBlock354Step = 437 ifTrue: [
            recoveredBlock354Stack5 := ' </td> '.
            recoveredBlock354PC := 439.
        ].
        recoveredBlock354Step = 439 ifTrue: [
            recoveredBlock354Stack4 := (recoveredBlock354Stack4) , (recoveredBlock354Stack5).
            recoveredBlock354PC := 441.
        ].
        recoveredBlock354Step = 441 ifTrue: [
            (recoveredBlock354Stack3) nextPutAll: (recoveredBlock354Stack4).
            recoveredBlock354PC := 443.
        ].
        recoveredBlock354Step = 443 ifTrue: [
            (recoveredBlock354Stack2) cr.
            recoveredBlock354PC := 445.
        ].
        recoveredBlock354Step = 445 ifTrue: [
            (recoveredBlock354Stack1 isInteger and: [recoveredBlock354Local1 isInteger]) ifTrue: [(recoveredBlock354Local1 + 1 <= recoveredBlock354Stack1) ifTrue: [recoveredBlock354Local1 := recoveredBlock354Local1 + 1. recoveredBlock354PC := 378] ifFalse: [recoveredBlock354Local1 := nil. recoveredBlock354PC := 459]] ifFalse: [recoveredBlock354PC := 449].
        ].
        recoveredBlock354Step = 449 ifTrue: [
            recoveredBlock354Stack2 := recoveredBlock354Stack1.
            recoveredBlock354PC := 450.
        ].
        recoveredBlock354Step = 450 ifTrue: [
            recoveredBlock354Stack3 := recoveredBlock354Local1.
            recoveredBlock354PC := 451.
        ].
        recoveredBlock354Step = 451 ifTrue: [
            recoveredBlock354Stack3 := (recoveredBlock354Stack3) + (1).
            recoveredBlock354PC := 452.
        ].
        recoveredBlock354Step = 452 ifTrue: [
            recoveredBlock354Stack4 := recoveredBlock354Stack3.
            recoveredBlock354PC := 453.
        ].
        recoveredBlock354Step = 453 ifTrue: [
            recoveredBlock354Local1 := recoveredBlock354Stack4.
            recoveredBlock354PC := 454.
        ].
        recoveredBlock354Step = 454 ifTrue: [
            recoveredBlock354Stack2 := (recoveredBlock354Stack2) < (recoveredBlock354Stack3).
            recoveredBlock354PC := 455.
        ].
        recoveredBlock354Step = 455 ifTrue: [
            (recoveredBlock354Stack2) ifTrue: [recoveredBlock354PC := 457] ifFalse: [recoveredBlock354PC := 378].
        ].
        recoveredBlock354Step = 457 ifTrue: [
            recoveredBlock354Stack2 := nil.
            recoveredBlock354PC := 458.
        ].
        recoveredBlock354Step = 458 ifTrue: [
            recoveredBlock354Local1 := recoveredBlock354Stack2.
            recoveredBlock354PC := 459.
        ].
        recoveredBlock354Step = 459 ifTrue: [
            recoveredBlock354PC := 460.
        ].
        recoveredBlock354Step = 460 ifTrue: [
            recoveredBlock354Stack1 := textStream.
            recoveredBlock354PC := 462.
        ].
        recoveredBlock354Step = 462 ifTrue: [
            recoveredBlock354Stack2 := recoveredBlock354Stack1.
            recoveredBlock354PC := 463.
        ].
        recoveredBlock354Step = 463 ifTrue: [
            recoveredBlock354Stack3 := ' </tr >'.
            recoveredBlock354PC := 465.
        ].
        recoveredBlock354Step = 465 ifTrue: [
            (recoveredBlock354Stack2) nextPutAll: (recoveredBlock354Stack3).
            recoveredBlock354PC := 467.
        ].
        recoveredBlock354Step = 467 ifTrue: [
            recoveredBlock354Stack1 := (recoveredBlock354Stack1) cr.
            recoveredBlock354PC := 469.
        ].
        recoveredBlock354Step = 469 ifTrue: [
            recoveredBlock354Result := recoveredBlock354Stack1.
            recoveredBlock354Done := true.
        ].
    ].
    recoveredBlock354Result
].
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 472.
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack4 := ' <br> '.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2001647c; bytecode file offset 0x430e0"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSepMatrix: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
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
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal14.
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
            recoveredLocal15 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := ' <table border> '.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 78] ifFalse: [recoveredPC := 366].
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredPC := 224.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredLocal17.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredPC := 183.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack5 := ' <tr> '.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredPC := 159.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredLocal9 := recoveredStack4.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := textStream.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack6 := ' <td> '.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack8 := recoveredLocal10.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack9 := recoveredLocal2.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack8 := (recoveredStack8) at: (recoveredStack9).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack9 := recoveredLocal1.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack8 := (recoveredStack8) at: (recoveredStack9).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack7 := (recoveredStack7) asIdentifier: (recoveredStack8).
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack7 := ' </td> '.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 155.
        ].
        recoveredStep = 155 ifTrue: [
            (recoveredStack5) nextPutAll: (recoveredStack6).
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            (recoveredStack4) cr.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack3 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack3) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 130] ifFalse: [recoveredLocal1 := nil. recoveredPC := 173]] ifFalse: [recoveredPC := 163].
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 171] ifFalse: [recoveredPC := 130].
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack5 := ' </tr> '.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 104] ifFalse: [recoveredLocal2 := nil. recoveredPC := 197]] ifFalse: [recoveredPC := 187].
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 195] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            recoveredStack4 := recoveredLocal16.
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 224.
        ].
        recoveredStep = 224 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 86] ifFalse: [recoveredLocal3 := nil. recoveredPC := 240]] ifFalse: [recoveredPC := 229].
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack3 := recoveredLocal3.
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
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 234.
        ].
        recoveredStep = 234 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 238] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 246.
        ].
        recoveredStep = 246 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredPC := 335.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := ' <tr> '.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredPC := 311.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredStack5 := ' <td> '.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 293.
        ].
        recoveredStep = 293 ifTrue: [
            recoveredStack7 := recoveredLocal10.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 296.
        ].
        recoveredStep = 296 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack8 := recoveredLocal2.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 303.
        ].
        recoveredStep = 303 ifTrue: [
            recoveredStack6 := ' </td> '.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 282] ifFalse: [recoveredLocal2 := nil. recoveredPC := 325]] ifFalse: [recoveredPC := 315].
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 323] ifFalse: [recoveredPC := 282].
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack4 := ' </tr> '.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 258] ifFalse: [recoveredLocal3 := nil. recoveredPC := 349]] ifFalse: [recoveredPC := 339].
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 347] ifFalse: [recoveredPC := 258].
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredPC := 488.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 369.
        ].
        recoveredStep = 369 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredPC := 461.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            recoveredStack4 := ' <tr> '.
            recoveredPC := 394.
        ].
        recoveredStep = 394 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 396.
        ].
        recoveredStep = 396 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 400.
        ].
        recoveredStep = 400 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            recoveredPC := 437.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 411.
        ].
        recoveredStep = 411 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 417.
        ].
        recoveredStep = 417 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 421.
        ].
        recoveredStep = 421 ifTrue: [
            recoveredStack5 := ' <td> '.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 429.
        ].
        recoveredStep = 429 ifTrue: [
            recoveredStack6 := ' </td> '.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 406] ifFalse: [recoveredLocal2 := nil. recoveredPC := 451]] ifFalse: [recoveredPC := 441].
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 446.
        ].
        recoveredStep = 446 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 449] ifFalse: [recoveredPC := 406].
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 450.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 454.
        ].
        recoveredStep = 454 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack4 := ' </tr> '.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 461.
        ].
        recoveredStep = 461 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 384] ifFalse: [recoveredLocal3 := nil. recoveredPC := 475]] ifFalse: [recoveredPC := 465].
        ].
        recoveredStep = 465 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 467.
        ].
        recoveredStep = 467 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 470.
        ].
        recoveredStep = 470 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 471.
        ].
        recoveredStep = 471 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 473] ifFalse: [recoveredPC := 384].
        ].
        recoveredStep = 473 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredPC := 476.
        ].
        recoveredStep = 476 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 479.
        ].
        recoveredStep = 479 ifTrue: [
            recoveredStack3 := recoveredLocal16.
            recoveredPC := 481.
        ].
        recoveredStep = 481 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 484.
        ].
        recoveredStep = 484 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            (recoveredStack0) newLine.
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20016904; bytecode file offset 0x435a0"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumnsSep: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 64] ifFalse: [recoveredPC := 109]] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := ' <table border> '.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := ' <th colspan=1> '.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := ' <th colspan=4> '.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := ' <th colspan=1> '.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack6 := 3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := ' <th colspan=3> '.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack6 := 4.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := ' <th colspan=2> '.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack5 := recoveredLocal2.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack6 := 5.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 276.
        ].
        recoveredStep = 276 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredPC := 321.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack5 := ' <th> '.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            recoveredStack7 := recoveredLocal5.
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack8 := recoveredLocal1.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 313.
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack6 := ' </th> '.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 292] ifFalse: [recoveredPC := 349]] ifFalse: [recoveredPC := 324].
        ].
        recoveredStep = 324 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 345] ifFalse: [recoveredPC := 340].
        ].
        recoveredStep = 340 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 343.
        ].
        recoveredStep = 343 ifTrue: [
            recoveredPC := 295.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack2 := [:recoveredBlock362Arg1 | 
    | recoveredBlock362Local1 recoveredBlock362Stack0 recoveredBlock362Stack1 recoveredBlock362Stack2 recoveredBlock362Stack3 recoveredBlock362Stack4 recoveredBlock362Stack5 recoveredBlock362Stack6 recoveredBlock362Stack7 recoveredBlock362PC recoveredBlock362Step recoveredBlock362Done recoveredBlock362Result |
    recoveredBlock362Stack0 := self.
    recoveredBlock362PC := 368.
    recoveredBlock362Done := false.
    [recoveredBlock362Done not] whileTrue: [
        recoveredBlock362Step := recoveredBlock362PC.
        recoveredBlock362Step = 368 ifTrue: [
            recoveredBlock362Stack1 := textStream.
            recoveredBlock362PC := 370.
        ].
        recoveredBlock362Step = 370 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Stack1.
            recoveredBlock362PC := 371.
        ].
        recoveredBlock362Step = 371 ifTrue: [
            recoveredBlock362Stack3 := ' <tr >'.
            recoveredBlock362PC := 373.
        ].
        recoveredBlock362Step = 373 ifTrue: [
            (recoveredBlock362Stack2) nextPutAll: (recoveredBlock362Stack3).
            recoveredBlock362PC := 375.
        ].
        recoveredBlock362Step = 375 ifTrue: [
            (recoveredBlock362Stack1) cr.
            recoveredBlock362PC := 377.
        ].
        recoveredBlock362Step = 377 ifTrue: [
            recoveredBlock362Stack1 := 0.
            recoveredBlock362PC := 379.
        ].
        recoveredBlock362Step = 379 ifTrue: [
            recoveredBlock362Local1 := recoveredBlock362Stack1.
            recoveredBlock362PC := 380.
        ].
        recoveredBlock362Step = 380 ifTrue: [
            recoveredBlock362Stack1 := recoveredBlock362Arg1.
            recoveredBlock362PC := 381.
        ].
        recoveredBlock362Step = 381 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) size.
            recoveredBlock362PC := 382.
        ].
        recoveredBlock362Step = 382 ifTrue: [
            recoveredBlock362PC := 453.
        ].
        recoveredBlock362Step = 386 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Arg1.
            recoveredBlock362PC := 387.
        ].
        recoveredBlock362Step = 387 ifTrue: [
            recoveredBlock362Stack3 := recoveredBlock362Local1.
            recoveredBlock362PC := 388.
        ].
        recoveredBlock362Step = 388 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) at: (recoveredBlock362Stack3).
            recoveredBlock362PC := 390.
        ].
        recoveredBlock362Step = 390 ifTrue: [
            recoveredLocal6 := recoveredBlock362Stack2.
            recoveredBlock362PC := 393.
        ].
        recoveredBlock362Step = 393 ifTrue: [
            recoveredBlock362Stack2 := recoveredLocal6.
            recoveredBlock362PC := 396.
        ].
        recoveredBlock362Step = 396 ifTrue: [
            (recoveredBlock362Stack2 ~~ nil) ifTrue: [recoveredBlock362PC := 408] ifFalse: [recoveredBlock362PC := 400].
        ].
        recoveredBlock362Step = 400 ifTrue: [
            recoveredBlock362Stack2 := '---'.
            recoveredBlock362PC := 402.
        ].
        recoveredBlock362Step = 402 ifTrue: [
            recoveredLocal6 := recoveredBlock362Stack2.
            recoveredBlock362PC := 405.
        ].
        recoveredBlock362Step = 405 ifTrue: [
            recoveredBlock362PC := 432.
        ].
        recoveredBlock362Step = 408 ifTrue: [
            recoveredBlock362Stack2 := recoveredLocal6.
            recoveredBlock362PC := 411.
        ].
        recoveredBlock362Step = 411 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) isCharacter.
            recoveredBlock362PC := 413.
        ].
        recoveredBlock362Step = 413 ifTrue: [
            (recoveredBlock362Stack2) ifTrue: [recoveredBlock362PC := 432] ifFalse: [recoveredBlock362PC := 416].
        ].
        recoveredBlock362Step = 416 ifTrue: [
            recoveredBlock362Stack2 := recoveredLocal6.
            recoveredBlock362PC := 419.
        ].
        recoveredBlock362Step = 419 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) isString.
            recoveredBlock362PC := 421.
        ].
        recoveredBlock362Step = 421 ifTrue: [
            (recoveredBlock362Stack2) ifTrue: [recoveredBlock362PC := 432] ifFalse: [recoveredBlock362PC := 424].
        ].
        recoveredBlock362Step = 424 ifTrue: [
            recoveredBlock362Stack2 := recoveredLocal6.
            recoveredBlock362PC := 427.
        ].
        recoveredBlock362Step = 427 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) asString.
            recoveredBlock362PC := 429.
        ].
        recoveredBlock362Step = 429 ifTrue: [
            recoveredLocal6 := recoveredBlock362Stack2.
            recoveredBlock362PC := 432.
        ].
        recoveredBlock362Step = 432 ifTrue: [
            recoveredBlock362Stack2 := textStream.
            recoveredBlock362PC := 434.
        ].
        recoveredBlock362Step = 434 ifTrue: [
            recoveredBlock362Stack3 := recoveredBlock362Stack2.
            recoveredBlock362PC := 435.
        ].
        recoveredBlock362Step = 435 ifTrue: [
            recoveredBlock362Stack4 := ' <td> '.
            recoveredBlock362PC := 437.
        ].
        recoveredBlock362Step = 437 ifTrue: [
            recoveredBlock362Stack5 := self.
            recoveredBlock362PC := 438.
        ].
        recoveredBlock362Step = 438 ifTrue: [
            recoveredBlock362Stack6 := recoveredLocal6.
            recoveredBlock362PC := 441.
        ].
        recoveredBlock362Step = 441 ifTrue: [
            recoveredBlock362Stack5 := (recoveredBlock362Stack5) asIdentifier: (recoveredBlock362Stack6).
            recoveredBlock362PC := 443.
        ].
        recoveredBlock362Step = 443 ifTrue: [
            recoveredBlock362Stack4 := (recoveredBlock362Stack4) , (recoveredBlock362Stack5).
            recoveredBlock362PC := 445.
        ].
        recoveredBlock362Step = 445 ifTrue: [
            recoveredBlock362Stack5 := ' </td> '.
            recoveredBlock362PC := 447.
        ].
        recoveredBlock362Step = 447 ifTrue: [
            recoveredBlock362Stack4 := (recoveredBlock362Stack4) , (recoveredBlock362Stack5).
            recoveredBlock362PC := 449.
        ].
        recoveredBlock362Step = 449 ifTrue: [
            (recoveredBlock362Stack3) nextPutAll: (recoveredBlock362Stack4).
            recoveredBlock362PC := 451.
        ].
        recoveredBlock362Step = 451 ifTrue: [
            (recoveredBlock362Stack2) cr.
            recoveredBlock362PC := 453.
        ].
        recoveredBlock362Step = 453 ifTrue: [
            (recoveredBlock362Stack1 isInteger and: [recoveredBlock362Local1 isInteger]) ifTrue: [(recoveredBlock362Local1 + 1 <= recoveredBlock362Stack1) ifTrue: [recoveredBlock362Local1 := recoveredBlock362Local1 + 1. recoveredBlock362PC := 386] ifFalse: [recoveredBlock362Local1 := nil. recoveredBlock362PC := 467]] ifFalse: [recoveredBlock362PC := 457].
        ].
        recoveredBlock362Step = 457 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Stack1.
            recoveredBlock362PC := 458.
        ].
        recoveredBlock362Step = 458 ifTrue: [
            recoveredBlock362Stack3 := recoveredBlock362Local1.
            recoveredBlock362PC := 459.
        ].
        recoveredBlock362Step = 459 ifTrue: [
            recoveredBlock362Stack3 := (recoveredBlock362Stack3) + (1).
            recoveredBlock362PC := 460.
        ].
        recoveredBlock362Step = 460 ifTrue: [
            recoveredBlock362Stack4 := recoveredBlock362Stack3.
            recoveredBlock362PC := 461.
        ].
        recoveredBlock362Step = 461 ifTrue: [
            recoveredBlock362Local1 := recoveredBlock362Stack4.
            recoveredBlock362PC := 462.
        ].
        recoveredBlock362Step = 462 ifTrue: [
            recoveredBlock362Stack2 := (recoveredBlock362Stack2) < (recoveredBlock362Stack3).
            recoveredBlock362PC := 463.
        ].
        recoveredBlock362Step = 463 ifTrue: [
            (recoveredBlock362Stack2) ifTrue: [recoveredBlock362PC := 465] ifFalse: [recoveredBlock362PC := 386].
        ].
        recoveredBlock362Step = 465 ifTrue: [
            recoveredBlock362Stack2 := nil.
            recoveredBlock362PC := 466.
        ].
        recoveredBlock362Step = 466 ifTrue: [
            recoveredBlock362Local1 := recoveredBlock362Stack2.
            recoveredBlock362PC := 467.
        ].
        recoveredBlock362Step = 467 ifTrue: [
            recoveredBlock362PC := 468.
        ].
        recoveredBlock362Step = 468 ifTrue: [
            recoveredBlock362Stack1 := textStream.
            recoveredBlock362PC := 470.
        ].
        recoveredBlock362Step = 470 ifTrue: [
            recoveredBlock362Stack2 := recoveredBlock362Stack1.
            recoveredBlock362PC := 471.
        ].
        recoveredBlock362Step = 471 ifTrue: [
            recoveredBlock362Stack3 := ' </tr >'.
            recoveredBlock362PC := 473.
        ].
        recoveredBlock362Step = 473 ifTrue: [
            (recoveredBlock362Stack2) nextPutAll: (recoveredBlock362Stack3).
            recoveredBlock362PC := 475.
        ].
        recoveredBlock362Step = 475 ifTrue: [
            recoveredBlock362Stack1 := (recoveredBlock362Stack1) cr.
            recoveredBlock362PC := 477.
        ].
        recoveredBlock362Step = 477 ifTrue: [
            recoveredBlock362Result := recoveredBlock362Stack1.
            recoveredBlock362Done := true.
        ].
    ].
    recoveredBlock362Result
].
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 486.
        ].
        recoveredStep = 486 ifTrue: [
            recoveredStack4 := ' <br> '.
            recoveredPC := 488.
        ].
        recoveredStep = 488 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 490.
        ].
        recoveredStep = 490 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 492.
        ].
        recoveredStep = 492 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 494.
        ].
        recoveredStep = 494 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x20019080; bytecode file offset 0x45d14"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumnsSepS1: recoveredArg1 header: recoveredArg2 header2: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredPC recoveredStep |
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
            recoveredStack1 := recoveredArg3.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 110] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := recoveredArg3.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredLocal5.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            (recoveredStack3) add: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredStack2 isInteger]) ifTrue: [(recoveredStack2 + 1 <= recoveredStack1) ifTrue: [recoveredStack2 := recoveredStack2 + 1. recoveredStack3 := recoveredStack2. recoveredPC := 64] ifFalse: [recoveredPC := 109]] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 105] ifFalse: [recoveredPC := 100].
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 67.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := ' <table border> '.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal8 := recoveredStack1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredLocal7 := recoveredStack1.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack3 := ' <th rowspan=2 valign=top> '.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack6 := 1.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := ' <th rowspan=2 valign=top> '.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack6 := 2.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := ' <th rowspan=2 valign=top> '.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack6 := 3.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 210.
        ].
        recoveredStep = 210 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack3 := ' <th rowspan=2 valign=top> '.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack6 := 4.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 241.
        ].
        recoveredStep = 241 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack3 := ' <th rowspan=2 valign=top> '.
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack6 := 5.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 254.
        ].
        recoveredStep = 254 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 260.
        ].
        recoveredStep = 260 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack3 := ' <th colspan=2> '.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 270.
        ].
        recoveredStep = 270 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack6 := 6.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 279.
        ].
        recoveredStep = 279 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 281.
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 289.
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := ' <th rowspan=2 valign=top> '.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack6 := 7.
            recoveredPC := 300.
        ].
        recoveredStep = 300 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 304.
        ].
        recoveredStep = 304 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 317.
        ].
        recoveredStep = 317 ifTrue: [
            recoveredStack3 := ' <th colspan=2> '.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 320.
        ].
        recoveredStep = 320 ifTrue: [
            recoveredStack5 := recoveredLocal5.
            recoveredPC := 323.
        ].
        recoveredStep = 323 ifTrue: [
            recoveredStack6 := 8.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 327.
        ].
        recoveredStep = 327 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 329.
        ].
        recoveredStep = 329 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 331.
        ].
        recoveredStep = 331 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 333.
        ].
        recoveredStep = 333 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 337.
        ].
        recoveredStep = 337 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 341.
        ].
        recoveredStep = 341 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 344.
        ].
        recoveredStep = 344 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 346.
        ].
        recoveredStep = 346 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 360.
        ].
        recoveredStep = 360 ifTrue: [
            recoveredStack3 := ' <th> '.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 363.
        ].
        recoveredStep = 363 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            recoveredStack6 := 6.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 374.
        ].
        recoveredStep = 374 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 376.
        ].
        recoveredStep = 376 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := ' <th> '.
            recoveredPC := 387.
        ].
        recoveredStep = 387 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack6 := 7.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 397.
        ].
        recoveredStep = 397 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 403.
        ].
        recoveredStep = 403 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 407.
        ].
        recoveredStep = 407 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 409.
        ].
        recoveredStep = 409 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack3 := ' <th> '.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 413.
        ].
        recoveredStep = 413 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            recoveredStack6 := 9.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 420.
        ].
        recoveredStep = 420 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 430.
        ].
        recoveredStep = 430 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 434.
        ].
        recoveredStep = 434 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := ' <th> '.
            recoveredPC := 437.
        ].
        recoveredStep = 437 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack5 := recoveredLocal3.
            recoveredPC := 441.
        ].
        recoveredStep = 441 ifTrue: [
            recoveredStack6 := 10.
            recoveredPC := 443.
        ].
        recoveredStep = 443 ifTrue: [
            recoveredStack5 := (recoveredStack5) at: (recoveredStack6).
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack4 := (recoveredStack4) asIdentifier: (recoveredStack5).
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 449.
        ].
        recoveredStep = 449 ifTrue: [
            recoveredStack4 := ' </th> '.
            recoveredPC := 451.
        ].
        recoveredStep = 451 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 459.
        ].
        recoveredStep = 459 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := recoveredLocal4.
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            recoveredStack2 := [:recoveredBlock469Arg1 | 
    | recoveredBlock469Local1 recoveredBlock469Stack0 recoveredBlock469Stack1 recoveredBlock469Stack2 recoveredBlock469Stack3 recoveredBlock469Stack4 recoveredBlock469Stack5 recoveredBlock469Stack6 recoveredBlock469Stack7 recoveredBlock469PC recoveredBlock469Step recoveredBlock469Done recoveredBlock469Result |
    recoveredBlock469Stack0 := self.
    recoveredBlock469PC := 476.
    recoveredBlock469Done := false.
    [recoveredBlock469Done not] whileTrue: [
        recoveredBlock469Step := recoveredBlock469PC.
        recoveredBlock469Step = 476 ifTrue: [
            recoveredBlock469Stack1 := textStream.
            recoveredBlock469PC := 478.
        ].
        recoveredBlock469Step = 478 ifTrue: [
            recoveredBlock469Stack2 := recoveredBlock469Stack1.
            recoveredBlock469PC := 479.
        ].
        recoveredBlock469Step = 479 ifTrue: [
            recoveredBlock469Stack3 := ' <tr >'.
            recoveredBlock469PC := 481.
        ].
        recoveredBlock469Step = 481 ifTrue: [
            (recoveredBlock469Stack2) nextPutAll: (recoveredBlock469Stack3).
            recoveredBlock469PC := 483.
        ].
        recoveredBlock469Step = 483 ifTrue: [
            (recoveredBlock469Stack1) cr.
            recoveredBlock469PC := 485.
        ].
        recoveredBlock469Step = 485 ifTrue: [
            recoveredBlock469Stack1 := 0.
            recoveredBlock469PC := 487.
        ].
        recoveredBlock469Step = 487 ifTrue: [
            recoveredBlock469Local1 := recoveredBlock469Stack1.
            recoveredBlock469PC := 488.
        ].
        recoveredBlock469Step = 488 ifTrue: [
            recoveredBlock469Stack1 := recoveredBlock469Arg1.
            recoveredBlock469PC := 489.
        ].
        recoveredBlock469Step = 489 ifTrue: [
            recoveredBlock469Stack1 := (recoveredBlock469Stack1) size.
            recoveredBlock469PC := 490.
        ].
        recoveredBlock469Step = 490 ifTrue: [
            recoveredBlock469PC := 561.
        ].
        recoveredBlock469Step = 494 ifTrue: [
            recoveredBlock469Stack2 := recoveredBlock469Arg1.
            recoveredBlock469PC := 495.
        ].
        recoveredBlock469Step = 495 ifTrue: [
            recoveredBlock469Stack3 := recoveredBlock469Local1.
            recoveredBlock469PC := 496.
        ].
        recoveredBlock469Step = 496 ifTrue: [
            recoveredBlock469Stack2 := (recoveredBlock469Stack2) at: (recoveredBlock469Stack3).
            recoveredBlock469PC := 498.
        ].
        recoveredBlock469Step = 498 ifTrue: [
            recoveredLocal6 := recoveredBlock469Stack2.
            recoveredBlock469PC := 501.
        ].
        recoveredBlock469Step = 501 ifTrue: [
            recoveredBlock469Stack2 := recoveredLocal6.
            recoveredBlock469PC := 504.
        ].
        recoveredBlock469Step = 504 ifTrue: [
            (recoveredBlock469Stack2 ~~ nil) ifTrue: [recoveredBlock469PC := 516] ifFalse: [recoveredBlock469PC := 508].
        ].
        recoveredBlock469Step = 508 ifTrue: [
            recoveredBlock469Stack2 := '---'.
            recoveredBlock469PC := 510.
        ].
        recoveredBlock469Step = 510 ifTrue: [
            recoveredLocal6 := recoveredBlock469Stack2.
            recoveredBlock469PC := 513.
        ].
        recoveredBlock469Step = 513 ifTrue: [
            recoveredBlock469PC := 540.
        ].
        recoveredBlock469Step = 516 ifTrue: [
            recoveredBlock469Stack2 := recoveredLocal6.
            recoveredBlock469PC := 519.
        ].
        recoveredBlock469Step = 519 ifTrue: [
            recoveredBlock469Stack2 := (recoveredBlock469Stack2) isCharacter.
            recoveredBlock469PC := 521.
        ].
        recoveredBlock469Step = 521 ifTrue: [
            (recoveredBlock469Stack2) ifTrue: [recoveredBlock469PC := 540] ifFalse: [recoveredBlock469PC := 524].
        ].
        recoveredBlock469Step = 524 ifTrue: [
            recoveredBlock469Stack2 := recoveredLocal6.
            recoveredBlock469PC := 527.
        ].
        recoveredBlock469Step = 527 ifTrue: [
            recoveredBlock469Stack2 := (recoveredBlock469Stack2) isString.
            recoveredBlock469PC := 529.
        ].
        recoveredBlock469Step = 529 ifTrue: [
            (recoveredBlock469Stack2) ifTrue: [recoveredBlock469PC := 540] ifFalse: [recoveredBlock469PC := 532].
        ].
        recoveredBlock469Step = 532 ifTrue: [
            recoveredBlock469Stack2 := recoveredLocal6.
            recoveredBlock469PC := 535.
        ].
        recoveredBlock469Step = 535 ifTrue: [
            recoveredBlock469Stack2 := (recoveredBlock469Stack2) asString.
            recoveredBlock469PC := 537.
        ].
        recoveredBlock469Step = 537 ifTrue: [
            recoveredLocal6 := recoveredBlock469Stack2.
            recoveredBlock469PC := 540.
        ].
        recoveredBlock469Step = 540 ifTrue: [
            recoveredBlock469Stack2 := textStream.
            recoveredBlock469PC := 542.
        ].
        recoveredBlock469Step = 542 ifTrue: [
            recoveredBlock469Stack3 := recoveredBlock469Stack2.
            recoveredBlock469PC := 543.
        ].
        recoveredBlock469Step = 543 ifTrue: [
            recoveredBlock469Stack4 := ' <td> '.
            recoveredBlock469PC := 545.
        ].
        recoveredBlock469Step = 545 ifTrue: [
            recoveredBlock469Stack5 := self.
            recoveredBlock469PC := 546.
        ].
        recoveredBlock469Step = 546 ifTrue: [
            recoveredBlock469Stack6 := recoveredLocal6.
            recoveredBlock469PC := 549.
        ].
        recoveredBlock469Step = 549 ifTrue: [
            recoveredBlock469Stack5 := (recoveredBlock469Stack5) asIdentifier: (recoveredBlock469Stack6).
            recoveredBlock469PC := 551.
        ].
        recoveredBlock469Step = 551 ifTrue: [
            recoveredBlock469Stack4 := (recoveredBlock469Stack4) , (recoveredBlock469Stack5).
            recoveredBlock469PC := 553.
        ].
        recoveredBlock469Step = 553 ifTrue: [
            recoveredBlock469Stack5 := ' </td> '.
            recoveredBlock469PC := 555.
        ].
        recoveredBlock469Step = 555 ifTrue: [
            recoveredBlock469Stack4 := (recoveredBlock469Stack4) , (recoveredBlock469Stack5).
            recoveredBlock469PC := 557.
        ].
        recoveredBlock469Step = 557 ifTrue: [
            (recoveredBlock469Stack3) nextPutAll: (recoveredBlock469Stack4).
            recoveredBlock469PC := 559.
        ].
        recoveredBlock469Step = 559 ifTrue: [
            (recoveredBlock469Stack2) cr.
            recoveredBlock469PC := 561.
        ].
        recoveredBlock469Step = 561 ifTrue: [
            (recoveredBlock469Stack1 isInteger and: [recoveredBlock469Local1 isInteger]) ifTrue: [(recoveredBlock469Local1 + 1 <= recoveredBlock469Stack1) ifTrue: [recoveredBlock469Local1 := recoveredBlock469Local1 + 1. recoveredBlock469PC := 494] ifFalse: [recoveredBlock469Local1 := nil. recoveredBlock469PC := 575]] ifFalse: [recoveredBlock469PC := 565].
        ].
        recoveredBlock469Step = 565 ifTrue: [
            recoveredBlock469Stack2 := recoveredBlock469Stack1.
            recoveredBlock469PC := 566.
        ].
        recoveredBlock469Step = 566 ifTrue: [
            recoveredBlock469Stack3 := recoveredBlock469Local1.
            recoveredBlock469PC := 567.
        ].
        recoveredBlock469Step = 567 ifTrue: [
            recoveredBlock469Stack3 := (recoveredBlock469Stack3) + (1).
            recoveredBlock469PC := 568.
        ].
        recoveredBlock469Step = 568 ifTrue: [
            recoveredBlock469Stack4 := recoveredBlock469Stack3.
            recoveredBlock469PC := 569.
        ].
        recoveredBlock469Step = 569 ifTrue: [
            recoveredBlock469Local1 := recoveredBlock469Stack4.
            recoveredBlock469PC := 570.
        ].
        recoveredBlock469Step = 570 ifTrue: [
            recoveredBlock469Stack2 := (recoveredBlock469Stack2) < (recoveredBlock469Stack3).
            recoveredBlock469PC := 571.
        ].
        recoveredBlock469Step = 571 ifTrue: [
            (recoveredBlock469Stack2) ifTrue: [recoveredBlock469PC := 573] ifFalse: [recoveredBlock469PC := 494].
        ].
        recoveredBlock469Step = 573 ifTrue: [
            recoveredBlock469Stack2 := nil.
            recoveredBlock469PC := 574.
        ].
        recoveredBlock469Step = 574 ifTrue: [
            recoveredBlock469Local1 := recoveredBlock469Stack2.
            recoveredBlock469PC := 575.
        ].
        recoveredBlock469Step = 575 ifTrue: [
            recoveredBlock469PC := 576.
        ].
        recoveredBlock469Step = 576 ifTrue: [
            recoveredBlock469Stack1 := textStream.
            recoveredBlock469PC := 578.
        ].
        recoveredBlock469Step = 578 ifTrue: [
            recoveredBlock469Stack2 := recoveredBlock469Stack1.
            recoveredBlock469PC := 579.
        ].
        recoveredBlock469Step = 579 ifTrue: [
            recoveredBlock469Stack3 := ' </tr >'.
            recoveredBlock469PC := 581.
        ].
        recoveredBlock469Step = 581 ifTrue: [
            (recoveredBlock469Stack2) nextPutAll: (recoveredBlock469Stack3).
            recoveredBlock469PC := 583.
        ].
        recoveredBlock469Step = 583 ifTrue: [
            recoveredBlock469Stack1 := (recoveredBlock469Stack1) cr.
            recoveredBlock469PC := 585.
        ].
        recoveredBlock469Step = 585 ifTrue: [
            recoveredBlock469Result := recoveredBlock469Stack1.
            recoveredBlock469Done := true.
        ].
    ].
    recoveredBlock469Result
].
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 588.
        ].
        recoveredStep = 588 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 590.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 591.
        ].
        recoveredStep = 591 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 594.
        ].
        recoveredStep = 594 ifTrue: [
            recoveredStack4 := ' <br> '.
            recoveredPC := 596.
        ].
        recoveredStep = 596 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 598.
        ].
        recoveredStep = 598 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 600.
        ].
        recoveredStep = 600 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2001b07c; bytecode file offset 0x47d40"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSep: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
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
            recoveredStack2 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal12 := recoveredStack1.
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := ' <table border> '.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 590].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 342.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredLocal18.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := ' <tr> '.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := ' <th> y,x </th> '.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := ' <th> '.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack7 := recoveredLocal15.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack8 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack6 := ' </th> '.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 136] ifFalse: [recoveredLocal2 := nil. recoveredPC := 172]] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := ' </tr> '.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredPC := 301.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := ' <tr> '.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := ' <td> '.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack7 := recoveredLocal14.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack8 := recoveredLocal8.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack6 := ' </td> '.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 277.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal9 := recoveredStack4.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack4 := textStream.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack6 := ' <td> '.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack8 := recoveredLocal10.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack9 := recoveredLocal2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack8 := (recoveredStack8) at: (recoveredStack9).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack9 := recoveredLocal1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack8 := (recoveredStack8) at: (recoveredStack9).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack7 := (recoveredStack7) asIdentifier: (recoveredStack8).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack7 := ' </td> '.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack5) nextPutAll: (recoveredStack6).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack4) cr.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack3 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack3) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 248] ifFalse: [recoveredLocal1 := nil. recoveredPC := 291]] ifFalse: [recoveredPC := 281].
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 289] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack5 := ' </tr> '.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 190] ifFalse: [recoveredLocal2 := nil. recoveredPC := 315]] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 313] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack4 := recoveredLocal17.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 96] ifFalse: [recoveredLocal3 := nil. recoveredPC := 358]] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack3 := ' <th> y,x </th> '.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 418.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack4 := ' <th> '.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack6 := recoveredLocal15.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifier: (recoveredStack6).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack5 := ' </th> '.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 396] ifFalse: [recoveredLocal3 := nil. recoveredPC := 432]] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 430] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredPC := 559.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack4 := ' <tr> '.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 472] ifFalse: [recoveredPC := 495].
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack4 := ' <td> '.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack6 := recoveredLocal14.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack7 := recoveredLocal8.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifier: (recoveredStack6).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack5 := ' </td> '.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredPC := 535.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack5 := ' <td> '.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack7 := recoveredLocal10.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack8 := recoveredLocal2.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack6 := ' </td> '.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 506] ifFalse: [recoveredLocal2 := nil. recoveredPC := 549]] ifFalse: [recoveredPC := 539].
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 547] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack4 := ' </tr> '.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 450] ifFalse: [recoveredLocal3 := nil. recoveredPC := 573]] ifFalse: [recoveredPC := 563].
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 571] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredPC := 816.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := ' <th> y,x </th> '.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredPC := 648.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack4 := ' <th> '.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack6 := recoveredLocal15.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifier: (recoveredStack6).
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack5 := ' </th> '.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 626] ifFalse: [recoveredLocal3 := nil. recoveredPC := 662]] ifFalse: [recoveredPC := 652].
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 660] ifFalse: [recoveredPC := 626].
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredPC := 789.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack4 := ' <tr> '.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 702] ifFalse: [recoveredPC := 725].
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack4 := ' <td> '.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack6 := recoveredLocal14.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack7 := recoveredLocal8.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifier: (recoveredStack6).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack5 := ' </td> '.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredPC := 765.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack5 := ' <td> '.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack6 := ' </td> '.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 734] ifFalse: [recoveredLocal2 := nil. recoveredPC := 779]] ifFalse: [recoveredPC := 769].
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 777] ifFalse: [recoveredPC := 734].
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack4 := ' </tr> '.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 680] ifFalse: [recoveredLocal3 := nil. recoveredPC := 803]] ifFalse: [recoveredPC := 793].
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 801] ifFalse: [recoveredPC := 680].
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            (recoveredStack0) newLine.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDDocumentor.ic method 0x2001b0d0; bytecode file offset 0x47d40"
!SGDocumentationHtmlTB methodsFor: 'recovered'!
tabWithNColumnsMRowsSepMatrix1: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredLocal7 recoveredLocal8 recoveredLocal9 recoveredLocal10 recoveredLocal11 recoveredLocal12 recoveredLocal13 recoveredLocal14 recoveredLocal15 recoveredLocal16 recoveredLocal17 recoveredLocal18 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredPC recoveredStep |
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
            recoveredStack2 := 2.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal14 := recoveredStack1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := recoveredLocal14.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal12 := recoveredStack1.
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
            recoveredLocal10 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) // (recoveredStack2).
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) first.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredLocal16 := recoveredStack1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := ' <table border> '.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal18 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack1 := ' </table> '.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredLocal17 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 88] ifFalse: [recoveredPC := 590].
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 342.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack4 := recoveredLocal18.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack4 := ' <tr> '.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack4 := ' <th> y,x </th> '.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredPC := 158.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack5 := ' <th> '.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack7 := recoveredLocal15.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack8 := recoveredLocal2.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack6 := ' </th> '.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 136] ifFalse: [recoveredLocal2 := nil. recoveredPC := 172]] ifFalse: [recoveredPC := 162].
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 170] ifFalse: [recoveredPC := 136].
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredStack4 := ' </tr> '.
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := recoveredLocal12.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredPC := 301.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            recoveredLocal8 := recoveredStack3.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack5 := ' <tr> '.
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack3 := recoveredLocal8.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack4 := recoveredLocal12.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack3 := (recoveredStack3) <= (recoveredStack4).
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 212] ifFalse: [recoveredPC := 235].
        ].
        recoveredStep = 212 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 214.
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack5 := ' <td> '.
            recoveredPC := 217.
        ].
        recoveredStep = 217 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack7 := recoveredLocal14.
            recoveredPC := 220.
        ].
        recoveredStep = 220 ifTrue: [
            recoveredStack8 := recoveredLocal8.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 227.
        ].
        recoveredStep = 227 ifTrue: [
            recoveredStack6 := ' </td> '.
            recoveredPC := 229.
        ].
        recoveredStep = 229 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 231.
        ].
        recoveredStep = 231 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := recoveredLocal7.
            recoveredPC := 237.
        ].
        recoveredStep = 237 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (-1).
            recoveredPC := 239.
        ].
        recoveredStep = 239 ifTrue: [
            recoveredLocal1 := recoveredStack3.
            recoveredPC := 240.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack3 := recoveredLocal11.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack3 := (recoveredStack3) * (recoveredStack4).
            recoveredPC := 244.
        ].
        recoveredStep = 244 ifTrue: [
            recoveredPC := 277.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := recoveredLocal9.
            recoveredPC := 250.
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredLocal9 := recoveredStack4.
            recoveredPC := 253.
        ].
        recoveredStep = 253 ifTrue: [
            recoveredStack4 := textStream.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 256.
        ].
        recoveredStep = 256 ifTrue: [
            recoveredStack6 := ' <td> '.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack7 := self.
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack8 := recoveredLocal10.
            recoveredPC := 261.
        ].
        recoveredStep = 261 ifTrue: [
            recoveredStack9 := recoveredLocal2.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack8 := (recoveredStack8) at: (recoveredStack9).
            recoveredPC := 263.
        ].
        recoveredStep = 263 ifTrue: [
            recoveredStack9 := recoveredLocal1.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack8 := (recoveredStack8) at: (recoveredStack9).
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack7 := (recoveredStack7) asIdentifier: (recoveredStack8).
            recoveredPC := 267.
        ].
        recoveredStep = 267 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            recoveredStack7 := ' </td> '.
            recoveredPC := 271.
        ].
        recoveredStep = 271 ifTrue: [
            recoveredStack6 := (recoveredStack6) , (recoveredStack7).
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            (recoveredStack5) nextPutAll: (recoveredStack6).
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            (recoveredStack4) cr.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            (recoveredStack3 isInteger and: [recoveredLocal1 isInteger]) ifTrue: [(recoveredLocal1 + 1 <= recoveredStack3) ifTrue: [recoveredLocal1 := recoveredLocal1 + 1. recoveredPC := 248] ifFalse: [recoveredLocal1 := nil. recoveredPC := 291]] ifFalse: [recoveredPC := 281].
        ].
        recoveredStep = 281 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            recoveredStack5 := recoveredLocal1.
            recoveredPC := 283.
        ].
        recoveredStep = 283 ifTrue: [
            recoveredStack5 := (recoveredStack5) + (1).
            recoveredPC := 284.
        ].
        recoveredStep = 284 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredLocal1 := recoveredStack6.
            recoveredPC := 286.
        ].
        recoveredStep = 286 ifTrue: [
            recoveredStack4 := (recoveredStack4) < (recoveredStack5).
            recoveredPC := 287.
        ].
        recoveredStep = 287 ifTrue: [
            (recoveredStack4) ifTrue: [recoveredPC := 289] ifFalse: [recoveredPC := 248].
        ].
        recoveredStep = 289 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 290.
        ].
        recoveredStep = 290 ifTrue: [
            recoveredLocal1 := recoveredStack4.
            recoveredPC := 291.
        ].
        recoveredStep = 291 ifTrue: [
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 294.
        ].
        recoveredStep = 294 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack5 := ' </tr> '.
            recoveredPC := 297.
        ].
        recoveredStep = 297 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 299.
        ].
        recoveredStep = 299 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 301.
        ].
        recoveredStep = 301 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 190] ifFalse: [recoveredLocal2 := nil. recoveredPC := 315]] ifFalse: [recoveredPC := 305].
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 306.
        ].
        recoveredStep = 306 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 307.
        ].
        recoveredStep = 307 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 309.
        ].
        recoveredStep = 309 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 310.
        ].
        recoveredStep = 310 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 311.
        ].
        recoveredStep = 311 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 313] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 313 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 314.
        ].
        recoveredStep = 314 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredPC := 316.
        ].
        recoveredStep = 316 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 319.
        ].
        recoveredStep = 319 ifTrue: [
            recoveredStack4 := recoveredLocal17.
            recoveredPC := 321.
        ].
        recoveredStep = 321 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredStack3 := recoveredStack2.
            recoveredPC := 324.
        ].
        recoveredStep = 324 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 326.
        ].
        recoveredStep = 326 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 330.
        ].
        recoveredStep = 330 ifTrue: [
            recoveredLocal9 := recoveredStack2.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 334.
        ].
        recoveredStep = 334 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 336.
        ].
        recoveredStep = 336 ifTrue: [
            recoveredStack2 := recoveredLocal11.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 339.
        ].
        recoveredStep = 339 ifTrue: [
            recoveredStack2 := (recoveredStack2) * (recoveredStack3).
            recoveredPC := 340.
        ].
        recoveredStep = 340 ifTrue: [
            recoveredLocal7 := recoveredStack2.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 96] ifFalse: [recoveredLocal3 := nil. recoveredPC := 358]] ifFalse: [recoveredPC := 347].
        ].
        recoveredStep = 347 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 349.
        ].
        recoveredStep = 349 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 350.
        ].
        recoveredStep = 350 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 351.
        ].
        recoveredStep = 351 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 353.
        ].
        recoveredStep = 353 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 356] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 356 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 357.
        ].
        recoveredStep = 357 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredPC := 359.
        ].
        recoveredStep = 359 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 361.
        ].
        recoveredStep = 361 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 364.
        ].
        recoveredStep = 364 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 366.
        ].
        recoveredStep = 366 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 370.
        ].
        recoveredStep = 370 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 371.
        ].
        recoveredStep = 371 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 373.
        ].
        recoveredStep = 373 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 377.
        ].
        recoveredStep = 377 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 379.
        ].
        recoveredStep = 379 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 380.
        ].
        recoveredStep = 380 ifTrue: [
            recoveredStack3 := ' <th> y,x </th> '.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 384.
        ].
        recoveredStep = 384 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 386.
        ].
        recoveredStep = 386 ifTrue: [
            recoveredStack1 := recoveredLocal7.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 389.
        ].
        recoveredStep = 389 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (-1).
            recoveredPC := 390.
        ].
        recoveredStep = 390 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 391.
        ].
        recoveredStep = 391 ifTrue: [
            recoveredStack1 := recoveredLocal13.
            recoveredPC := 393.
        ].
        recoveredStep = 393 ifTrue: [
            recoveredPC := 418.
        ].
        recoveredStep = 396 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 399.
        ].
        recoveredStep = 399 ifTrue: [
            recoveredStack4 := ' <th> '.
            recoveredPC := 401.
        ].
        recoveredStep = 401 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            recoveredStack6 := recoveredLocal15.
            recoveredPC := 404.
        ].
        recoveredStep = 404 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 406.
        ].
        recoveredStep = 406 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifier: (recoveredStack6).
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 410.
        ].
        recoveredStep = 410 ifTrue: [
            recoveredStack5 := ' </th> '.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 414.
        ].
        recoveredStep = 414 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 416.
        ].
        recoveredStep = 416 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 396] ifFalse: [recoveredLocal3 := nil. recoveredPC := 432]] ifFalse: [recoveredPC := 422].
        ].
        recoveredStep = 422 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 423.
        ].
        recoveredStep = 423 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 424.
        ].
        recoveredStep = 424 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 426.
        ].
        recoveredStep = 426 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 427.
        ].
        recoveredStep = 427 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 430] ifFalse: [recoveredPC := 396].
        ].
        recoveredStep = 430 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 431.
        ].
        recoveredStep = 431 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            recoveredPC := 433.
        ].
        recoveredStep = 433 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 436.
        ].
        recoveredStep = 436 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 440.
        ].
        recoveredStep = 440 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 444.
        ].
        recoveredStep = 444 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 447.
        ].
        recoveredStep = 447 ifTrue: [
            recoveredPC := 559.
        ].
        recoveredStep = 450 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 453.
        ].
        recoveredStep = 453 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 457.
        ].
        recoveredStep = 457 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack4 := ' <tr> '.
            recoveredPC := 460.
        ].
        recoveredStep = 460 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 469.
        ].
        recoveredStep = 469 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 472] ifFalse: [recoveredPC := 495].
        ].
        recoveredStep = 472 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 474.
        ].
        recoveredStep = 474 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 475.
        ].
        recoveredStep = 475 ifTrue: [
            recoveredStack4 := ' <td> '.
            recoveredPC := 477.
        ].
        recoveredStep = 477 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 478.
        ].
        recoveredStep = 478 ifTrue: [
            recoveredStack6 := recoveredLocal14.
            recoveredPC := 480.
        ].
        recoveredStep = 480 ifTrue: [
            recoveredStack7 := recoveredLocal8.
            recoveredPC := 482.
        ].
        recoveredStep = 482 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 483.
        ].
        recoveredStep = 483 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifier: (recoveredStack6).
            recoveredPC := 485.
        ].
        recoveredStep = 485 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 487.
        ].
        recoveredStep = 487 ifTrue: [
            recoveredStack5 := ' </td> '.
            recoveredPC := 489.
        ].
        recoveredStep = 489 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 491.
        ].
        recoveredStep = 491 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 493.
        ].
        recoveredStep = 493 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 495.
        ].
        recoveredStep = 495 ifTrue: [
            recoveredStack2 := recoveredLocal7.
            recoveredPC := 497.
        ].
        recoveredStep = 497 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 498.
        ].
        recoveredStep = 498 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (-1).
            recoveredPC := 499.
        ].
        recoveredStep = 499 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 500.
        ].
        recoveredStep = 500 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 502.
        ].
        recoveredStep = 502 ifTrue: [
            recoveredPC := 535.
        ].
        recoveredStep = 506 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 508.
        ].
        recoveredStep = 508 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 509.
        ].
        recoveredStep = 509 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 511.
        ].
        recoveredStep = 511 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 513.
        ].
        recoveredStep = 513 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 514.
        ].
        recoveredStep = 514 ifTrue: [
            recoveredStack5 := ' <td> '.
            recoveredPC := 516.
        ].
        recoveredStep = 516 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 517.
        ].
        recoveredStep = 517 ifTrue: [
            recoveredStack7 := recoveredLocal10.
            recoveredPC := 519.
        ].
        recoveredStep = 519 ifTrue: [
            recoveredStack8 := recoveredLocal3.
            recoveredPC := 520.
        ].
        recoveredStep = 520 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 521.
        ].
        recoveredStep = 521 ifTrue: [
            recoveredStack8 := recoveredLocal2.
            recoveredPC := 522.
        ].
        recoveredStep = 522 ifTrue: [
            recoveredStack7 := (recoveredStack7) at: (recoveredStack8).
            recoveredPC := 523.
        ].
        recoveredStep = 523 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 525.
        ].
        recoveredStep = 525 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 527.
        ].
        recoveredStep = 527 ifTrue: [
            recoveredStack6 := ' </td> '.
            recoveredPC := 529.
        ].
        recoveredStep = 529 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 531.
        ].
        recoveredStep = 531 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 533.
        ].
        recoveredStep = 533 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 535.
        ].
        recoveredStep = 535 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 506] ifFalse: [recoveredLocal2 := nil. recoveredPC := 549]] ifFalse: [recoveredPC := 539].
        ].
        recoveredStep = 539 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 540.
        ].
        recoveredStep = 540 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 541.
        ].
        recoveredStep = 541 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 542.
        ].
        recoveredStep = 542 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 543.
        ].
        recoveredStep = 543 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 544.
        ].
        recoveredStep = 544 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 545.
        ].
        recoveredStep = 545 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 547] ifFalse: [recoveredPC := 506].
        ].
        recoveredStep = 547 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 548.
        ].
        recoveredStep = 548 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 549.
        ].
        recoveredStep = 549 ifTrue: [
            recoveredPC := 550.
        ].
        recoveredStep = 550 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 552.
        ].
        recoveredStep = 552 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 553.
        ].
        recoveredStep = 553 ifTrue: [
            recoveredStack4 := ' </tr> '.
            recoveredPC := 555.
        ].
        recoveredStep = 555 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 557.
        ].
        recoveredStep = 557 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 559.
        ].
        recoveredStep = 559 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 450] ifFalse: [recoveredLocal3 := nil. recoveredPC := 573]] ifFalse: [recoveredPC := 563].
        ].
        recoveredStep = 563 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 564.
        ].
        recoveredStep = 564 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 565.
        ].
        recoveredStep = 565 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 566.
        ].
        recoveredStep = 566 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 567.
        ].
        recoveredStep = 567 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 568.
        ].
        recoveredStep = 568 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 569.
        ].
        recoveredStep = 569 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 571] ifFalse: [recoveredPC := 450].
        ].
        recoveredStep = 571 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 572.
        ].
        recoveredStep = 572 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 573.
        ].
        recoveredStep = 573 ifTrue: [
            recoveredPC := 574.
        ].
        recoveredStep = 574 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 576.
        ].
        recoveredStep = 576 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 577.
        ].
        recoveredStep = 577 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 579.
        ].
        recoveredStep = 579 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 582.
        ].
        recoveredStep = 582 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 584.
        ].
        recoveredStep = 584 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 586.
        ].
        recoveredStep = 586 ifTrue: [
            recoveredPC := 816.
        ].
        recoveredStep = 590 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 592.
        ].
        recoveredStep = 592 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 593.
        ].
        recoveredStep = 593 ifTrue: [
            recoveredStack3 := recoveredLocal18.
            recoveredPC := 595.
        ].
        recoveredStep = 595 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 597.
        ].
        recoveredStep = 597 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 599.
        ].
        recoveredStep = 599 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 601.
        ].
        recoveredStep = 601 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 602.
        ].
        recoveredStep = 602 ifTrue: [
            recoveredStack3 := ' <tr> '.
            recoveredPC := 604.
        ].
        recoveredStep = 604 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 606.
        ].
        recoveredStep = 606 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 608.
        ].
        recoveredStep = 608 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 610.
        ].
        recoveredStep = 610 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 611.
        ].
        recoveredStep = 611 ifTrue: [
            recoveredStack3 := ' <th> y,x </th> '.
            recoveredPC := 613.
        ].
        recoveredStep = 613 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 615.
        ].
        recoveredStep = 615 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 617.
        ].
        recoveredStep = 617 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 619.
        ].
        recoveredStep = 619 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 620.
        ].
        recoveredStep = 620 ifTrue: [
            recoveredStack1 := recoveredLocal15.
            recoveredPC := 622.
        ].
        recoveredStep = 622 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 623.
        ].
        recoveredStep = 623 ifTrue: [
            recoveredPC := 648.
        ].
        recoveredStep = 626 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 628.
        ].
        recoveredStep = 628 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 629.
        ].
        recoveredStep = 629 ifTrue: [
            recoveredStack4 := ' <th> '.
            recoveredPC := 631.
        ].
        recoveredStep = 631 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 632.
        ].
        recoveredStep = 632 ifTrue: [
            recoveredStack6 := recoveredLocal15.
            recoveredPC := 634.
        ].
        recoveredStep = 634 ifTrue: [
            recoveredStack7 := recoveredLocal3.
            recoveredPC := 635.
        ].
        recoveredStep = 635 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 636.
        ].
        recoveredStep = 636 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifier: (recoveredStack6).
            recoveredPC := 638.
        ].
        recoveredStep = 638 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 640.
        ].
        recoveredStep = 640 ifTrue: [
            recoveredStack5 := ' </th> '.
            recoveredPC := 642.
        ].
        recoveredStep = 642 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 644.
        ].
        recoveredStep = 644 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 646.
        ].
        recoveredStep = 646 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 648.
        ].
        recoveredStep = 648 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 626] ifFalse: [recoveredLocal3 := nil. recoveredPC := 662]] ifFalse: [recoveredPC := 652].
        ].
        recoveredStep = 652 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 653.
        ].
        recoveredStep = 653 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 654.
        ].
        recoveredStep = 654 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 655.
        ].
        recoveredStep = 655 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 656.
        ].
        recoveredStep = 656 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 657.
        ].
        recoveredStep = 657 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 658.
        ].
        recoveredStep = 658 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 660] ifFalse: [recoveredPC := 626].
        ].
        recoveredStep = 660 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 661.
        ].
        recoveredStep = 661 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 662.
        ].
        recoveredStep = 662 ifTrue: [
            recoveredPC := 663.
        ].
        recoveredStep = 663 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 665.
        ].
        recoveredStep = 665 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 666.
        ].
        recoveredStep = 666 ifTrue: [
            recoveredStack3 := ' </tr> '.
            recoveredPC := 668.
        ].
        recoveredStep = 668 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredPC := 670.
        ].
        recoveredStep = 670 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 672.
        ].
        recoveredStep = 672 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 674.
        ].
        recoveredStep = 674 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 675.
        ].
        recoveredStep = 675 ifTrue: [
            recoveredStack1 := recoveredLocal12.
            recoveredPC := 677.
        ].
        recoveredStep = 677 ifTrue: [
            recoveredPC := 789.
        ].
        recoveredStep = 680 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 682.
        ].
        recoveredStep = 682 ifTrue: [
            recoveredStack2 := (recoveredStack2) + (1).
            recoveredPC := 683.
        ].
        recoveredStep = 683 ifTrue: [
            recoveredLocal8 := recoveredStack2.
            recoveredPC := 685.
        ].
        recoveredStep = 685 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 687.
        ].
        recoveredStep = 687 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 688.
        ].
        recoveredStep = 688 ifTrue: [
            recoveredStack4 := ' <tr> '.
            recoveredPC := 690.
        ].
        recoveredStep = 690 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 692.
        ].
        recoveredStep = 692 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 694.
        ].
        recoveredStep = 694 ifTrue: [
            recoveredStack2 := recoveredLocal8.
            recoveredPC := 696.
        ].
        recoveredStep = 696 ifTrue: [
            recoveredStack3 := recoveredLocal12.
            recoveredPC := 698.
        ].
        recoveredStep = 698 ifTrue: [
            recoveredStack2 := (recoveredStack2) <= (recoveredStack3).
            recoveredPC := 699.
        ].
        recoveredStep = 699 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 702] ifFalse: [recoveredPC := 725].
        ].
        recoveredStep = 702 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 704.
        ].
        recoveredStep = 704 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 705.
        ].
        recoveredStep = 705 ifTrue: [
            recoveredStack4 := ' <td> '.
            recoveredPC := 707.
        ].
        recoveredStep = 707 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 708.
        ].
        recoveredStep = 708 ifTrue: [
            recoveredStack6 := recoveredLocal14.
            recoveredPC := 710.
        ].
        recoveredStep = 710 ifTrue: [
            recoveredStack7 := recoveredLocal8.
            recoveredPC := 712.
        ].
        recoveredStep = 712 ifTrue: [
            recoveredStack6 := (recoveredStack6) at: (recoveredStack7).
            recoveredPC := 713.
        ].
        recoveredStep = 713 ifTrue: [
            recoveredStack5 := (recoveredStack5) asIdentifier: (recoveredStack6).
            recoveredPC := 715.
        ].
        recoveredStep = 715 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 717.
        ].
        recoveredStep = 717 ifTrue: [
            recoveredStack5 := ' </td> '.
            recoveredPC := 719.
        ].
        recoveredStep = 719 ifTrue: [
            recoveredStack4 := (recoveredStack4) , (recoveredStack5).
            recoveredPC := 721.
        ].
        recoveredStep = 721 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 723.
        ].
        recoveredStep = 723 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 725.
        ].
        recoveredStep = 725 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 727.
        ].
        recoveredStep = 727 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 728.
        ].
        recoveredStep = 728 ifTrue: [
            recoveredStack2 := recoveredLocal13.
            recoveredPC := 730.
        ].
        recoveredStep = 730 ifTrue: [
            recoveredPC := 765.
        ].
        recoveredStep = 734 ifTrue: [
            recoveredStack3 := recoveredLocal9.
            recoveredPC := 736.
        ].
        recoveredStep = 736 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 737.
        ].
        recoveredStep = 737 ifTrue: [
            recoveredLocal9 := recoveredStack3.
            recoveredPC := 739.
        ].
        recoveredStep = 739 ifTrue: [
            recoveredStack3 := recoveredLocal10.
            recoveredPC := 741.
        ].
        recoveredStep = 741 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 742.
        ].
        recoveredStep = 742 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 743.
        ].
        recoveredStep = 743 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 744.
        ].
        recoveredStep = 744 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 745.
        ].
        recoveredStep = 745 ifTrue: [
            recoveredLocal4 := recoveredStack3.
            recoveredPC := 746.
        ].
        recoveredStep = 746 ifTrue: [
            recoveredStack3 := textStream.
            recoveredPC := 748.
        ].
        recoveredStep = 748 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 749.
        ].
        recoveredStep = 749 ifTrue: [
            recoveredStack5 := ' <td> '.
            recoveredPC := 751.
        ].
        recoveredStep = 751 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 752.
        ].
        recoveredStep = 752 ifTrue: [
            recoveredStack7 := recoveredLocal4.
            recoveredPC := 753.
        ].
        recoveredStep = 753 ifTrue: [
            recoveredStack6 := (recoveredStack6) asIdentifier: (recoveredStack7).
            recoveredPC := 755.
        ].
        recoveredStep = 755 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 757.
        ].
        recoveredStep = 757 ifTrue: [
            recoveredStack6 := ' </td> '.
            recoveredPC := 759.
        ].
        recoveredStep = 759 ifTrue: [
            recoveredStack5 := (recoveredStack5) , (recoveredStack6).
            recoveredPC := 761.
        ].
        recoveredStep = 761 ifTrue: [
            (recoveredStack4) nextPutAll: (recoveredStack5).
            recoveredPC := 763.
        ].
        recoveredStep = 763 ifTrue: [
            (recoveredStack3) cr.
            recoveredPC := 765.
        ].
        recoveredStep = 765 ifTrue: [
            (recoveredStack2 isInteger and: [recoveredLocal2 isInteger]) ifTrue: [(recoveredLocal2 + 1 <= recoveredStack2) ifTrue: [recoveredLocal2 := recoveredLocal2 + 1. recoveredPC := 734] ifFalse: [recoveredLocal2 := nil. recoveredPC := 779]] ifFalse: [recoveredPC := 769].
        ].
        recoveredStep = 769 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 770.
        ].
        recoveredStep = 770 ifTrue: [
            recoveredStack4 := recoveredLocal2.
            recoveredPC := 771.
        ].
        recoveredStep = 771 ifTrue: [
            recoveredStack4 := (recoveredStack4) + (1).
            recoveredPC := 772.
        ].
        recoveredStep = 772 ifTrue: [
            recoveredStack5 := recoveredStack4.
            recoveredPC := 773.
        ].
        recoveredStep = 773 ifTrue: [
            recoveredLocal2 := recoveredStack5.
            recoveredPC := 774.
        ].
        recoveredStep = 774 ifTrue: [
            recoveredStack3 := (recoveredStack3) < (recoveredStack4).
            recoveredPC := 775.
        ].
        recoveredStep = 775 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 777] ifFalse: [recoveredPC := 734].
        ].
        recoveredStep = 777 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 778.
        ].
        recoveredStep = 778 ifTrue: [
            recoveredLocal2 := recoveredStack3.
            recoveredPC := 779.
        ].
        recoveredStep = 779 ifTrue: [
            recoveredPC := 780.
        ].
        recoveredStep = 780 ifTrue: [
            recoveredStack2 := textStream.
            recoveredPC := 782.
        ].
        recoveredStep = 782 ifTrue: [
            recoveredStack3 := recoveredStack2.
            recoveredPC := 783.
        ].
        recoveredStep = 783 ifTrue: [
            recoveredStack4 := ' </tr> '.
            recoveredPC := 785.
        ].
        recoveredStep = 785 ifTrue: [
            (recoveredStack3) nextPutAll: (recoveredStack4).
            recoveredPC := 787.
        ].
        recoveredStep = 787 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 789.
        ].
        recoveredStep = 789 ifTrue: [
            (recoveredStack1 isInteger and: [recoveredLocal3 isInteger]) ifTrue: [(recoveredLocal3 + 1 <= recoveredStack1) ifTrue: [recoveredLocal3 := recoveredLocal3 + 1. recoveredPC := 680] ifFalse: [recoveredLocal3 := nil. recoveredPC := 803]] ifFalse: [recoveredPC := 793].
        ].
        recoveredStep = 793 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 794.
        ].
        recoveredStep = 794 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 795.
        ].
        recoveredStep = 795 ifTrue: [
            recoveredStack3 := (recoveredStack3) + (1).
            recoveredPC := 796.
        ].
        recoveredStep = 796 ifTrue: [
            recoveredStack4 := recoveredStack3.
            recoveredPC := 797.
        ].
        recoveredStep = 797 ifTrue: [
            recoveredLocal3 := recoveredStack4.
            recoveredPC := 798.
        ].
        recoveredStep = 798 ifTrue: [
            recoveredStack2 := (recoveredStack2) < (recoveredStack3).
            recoveredPC := 799.
        ].
        recoveredStep = 799 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 801] ifFalse: [recoveredPC := 680].
        ].
        recoveredStep = 801 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 802.
        ].
        recoveredStep = 802 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 803.
        ].
        recoveredStep = 803 ifTrue: [
            recoveredPC := 804.
        ].
        recoveredStep = 804 ifTrue: [
            recoveredStack1 := textStream.
            recoveredPC := 806.
        ].
        recoveredStep = 806 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 807.
        ].
        recoveredStep = 807 ifTrue: [
            recoveredStack3 := recoveredLocal17.
            recoveredPC := 809.
        ].
        recoveredStep = 809 ifTrue: [
            (recoveredStack2) nextPutAll: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 812.
        ].
        recoveredStep = 812 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 814.
        ].
        recoveredStep = 814 ifTrue: [
            (recoveredStack1) cr.
            recoveredPC := 816.
        ].
        recoveredStep = 816 ifTrue: [
            (recoveredStack0) newLine.
            recoveredPC := 818.
        ].
        recoveredStep = 818 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 819.
        ].
        recoveredStep = 819 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

