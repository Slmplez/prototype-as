"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20007850; bytecode file offset 0x908be4"
!SGPreviewCodeInEditorCommand methodsFor: 'recovered'!
previewANSICCode
    | recoveredValue0 |
    recoveredValue0 := (self) isCodeNatureANSIC.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2000a4a8; bytecode file offset 0x908be4"
!SGPreviewCodeInEditorCommand methodsFor: 'recovered'!
previewECCOCode
    | recoveredValue0 |
    recoveredValue0 := (self) isCodeNatureECCO.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024a28; bytecode file offset 0x92209c"
!SGPreviewCodeInEditorCommand methodsFor: 'recovered'!
copFileName
    ^'cop.c'
! !

"ASDBase.ic method 0x200e1ecc; bytecode file offset 0x9de890"
!SGPreviewCodeInEditorCommand methodsFor: 'recovered'!
label
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) codeNature.
    recoveredValue1 := (recoveredValue0) asString.
    recoveredValue2 := ('Preview ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' code').
    ^recoveredValue3
! !

"ASDBase.ic method 0x201c9564; bytecode file offset 0xac5e34"
!SGPreviewCodeInEditorCommand methodsFor: 'recovered'!
checkRestrictions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) previewECCOCode.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 25].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 25] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := 'CommandNotSupported'.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'production target required'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
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

"ASDBase.ic method 0x20231c9c; bytecode file offset 0xb2e574"
!SGPreviewCodeInEditorCommand methodsFor: 'recovered'!
checkAPICommandRestrictions
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super checkAPICommandRestrictions.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) previewECCOCode.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 33].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentBuildCache.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) isControllerVariant.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 33] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := 'CommandNotSupported'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) label.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'production target required'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack0) fatalError: (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20286a94; bytecode file offset 0xb83370"
!SGPreviewCodeInEditorCommand methodsFor: 'recovered'!
viewFile
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) viewPath.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) copFileName.
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
            recoveredStack0 := ASDExternalToolsOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) instance.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionUseASCIIEditor.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := markerLineNumber.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := (recoveredStack2) max: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) viewFile: (recoveredStack1) lineNumber: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) target.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) viewFile: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20535178; bytecode file offset 0xe31aa0"
!SGPreviewCodeInEditorCommand methodsFor: 'recovered'!
placeAnsiCCodeFindMarker: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredLocal5 recoveredLocal6 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGLmManager.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWriteStream.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) cSources.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Stack0 recoveredBlock14Stack1 recoveredBlock14Stack2 recoveredBlock14Stack3 recoveredBlock14PC recoveredBlock14Step recoveredBlock14Done recoveredBlock14Result |
    recoveredBlock14Stack0 := self.
    recoveredBlock14PC := 20.
    recoveredBlock14Done := false.
    [recoveredBlock14Done not] whileTrue: [
        recoveredBlock14Step := recoveredBlock14PC.
        recoveredBlock14Step = 20 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) previewECCOCode.
            recoveredBlock14PC := 21.
        ].
        recoveredBlock14Step = 21 ifTrue: [
            (recoveredBlock14Stack0) ifTrue: [recoveredBlock14PC := 24] ifFalse: [recoveredBlock14PC := 66].
        ].
        recoveredBlock14Step = 24 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal5.
            recoveredBlock14PC := 27.
        ].
        recoveredBlock14Step = 27 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) asPerlCodeStream.
            recoveredBlock14PC := 29.
        ].
        recoveredBlock14Step = 29 ifTrue: [
            recoveredLocal6 := recoveredBlock14Stack0.
            recoveredBlock14PC := 32.
        ].
        recoveredBlock14Step = 32 ifTrue: [
            recoveredBlock14Stack0 := recoveredBlock14Arg1.
            recoveredBlock14PC := 33.
        ].
        recoveredBlock14Step = 33 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 34.
        ].
        recoveredBlock14Step = 34 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal6.
            recoveredBlock14PC := 37.
        ].
        recoveredBlock14Step = 37 ifTrue: [
            (recoveredBlock14Stack1) completeDbSourceOn: (recoveredBlock14Stack2).
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 40.
        ].
        recoveredBlock14Step = 40 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal6.
            recoveredBlock14PC := 43.
        ].
        recoveredBlock14Step = 43 ifTrue: [
            (recoveredBlock14Stack1) completeBemIHSourceOn: (recoveredBlock14Stack2).
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 46.
        ].
        recoveredBlock14Step = 46 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal6.
            recoveredBlock14PC := 49.
        ].
        recoveredBlock14Step = 49 ifTrue: [
            (recoveredBlock14Stack1) completeBemHSourceOn: (recoveredBlock14Stack2).
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 52.
        ].
        recoveredBlock14Step = 52 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal6.
            recoveredBlock14PC := 55.
        ].
        recoveredBlock14Step = 55 ifTrue: [
            (recoveredBlock14Stack1) completeBemInlineSourceOn: (recoveredBlock14Stack2).
            recoveredBlock14PC := 57.
        ].
        recoveredBlock14Step = 57 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal6.
            recoveredBlock14PC := 60.
        ].
        recoveredBlock14Step = 60 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) completeBemCSourceOn: (recoveredBlock14Stack1).
            recoveredBlock14PC := 62.
        ].
        recoveredBlock14Step = 62 ifTrue: [
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 66 ifTrue: [
            recoveredBlock14Stack0 := recoveredLocal5.
            recoveredBlock14PC := 69.
        ].
        recoveredBlock14Step = 69 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) asAnsiCCodeStream.
            recoveredBlock14PC := 71.
        ].
        recoveredBlock14Step = 71 ifTrue: [
            recoveredLocal6 := recoveredBlock14Stack0.
            recoveredBlock14PC := 74.
        ].
        recoveredBlock14Step = 74 ifTrue: [
            recoveredBlock14Stack0 := recoveredBlock14Arg1.
            recoveredBlock14PC := 75.
        ].
        recoveredBlock14Step = 75 ifTrue: [
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 76.
        ].
        recoveredBlock14Step = 76 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal6.
            recoveredBlock14PC := 79.
        ].
        recoveredBlock14Step = 79 ifTrue: [
            (recoveredBlock14Stack1) completeIHSourceOn: (recoveredBlock14Stack2).
            recoveredBlock14Stack1 := recoveredBlock14Stack0.
            recoveredBlock14PC := 82.
        ].
        recoveredBlock14Step = 82 ifTrue: [
            recoveredBlock14Stack2 := recoveredLocal6.
            recoveredBlock14PC := 85.
        ].
        recoveredBlock14Step = 85 ifTrue: [
            (recoveredBlock14Stack1) completeHSourceOn: (recoveredBlock14Stack2).
            recoveredBlock14PC := 87.
        ].
        recoveredBlock14Step = 87 ifTrue: [
            recoveredBlock14Stack1 := recoveredLocal6.
            recoveredBlock14PC := 90.
        ].
        recoveredBlock14Step = 90 ifTrue: [
            recoveredBlock14Stack0 := (recoveredBlock14Stack0) completeCSourceOn: (recoveredBlock14Stack1).
            recoveredBlock14PC := 92.
        ].
        recoveredBlock14Step = 92 ifTrue: [
            recoveredBlock14Result := recoveredBlock14Stack0.
            recoveredBlock14Done := true.
        ].
    ].
    recoveredBlock14Result
].
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := -1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            markerLineNumber := recoveredStack1.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := SGLmManager.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := (recoveredStack1) createWriteStream.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredPC := 179.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack1 := (recoveredStack1) nextLine.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) + (1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := 'ASCET CODE PREVIEW MARKER'.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack1 := (recoveredStack1) indexOfSubCollection: (recoveredStack2) startingAt: (recoveredStack3).
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 156] ifFalse: [recoveredPC := 164].
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            markerLineNumber := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredPC := 175.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredStack1 := recoveredLocal5.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack2) cr.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack1 := (recoveredStack1) atEnd.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 186] ifFalse: [recoveredPC := 126].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := (recoveredStack0) hostAccess.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := (recoveredStack1) viewPath.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack2 := (recoveredStack2) copFileName.
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 201.
        ].
        recoveredStep = 201 ifTrue: [
            (recoveredStack0) writeFile: (recoveredStack1) contents: (recoveredStack2).
            recoveredPC := 203.
        ].
        recoveredStep = 203 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 204.
        ].
        recoveredStep = 204 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

