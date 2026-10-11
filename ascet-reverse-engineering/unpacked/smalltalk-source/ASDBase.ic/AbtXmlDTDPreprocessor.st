"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2006fc80; bytecode file offset 0x96c6ac"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
dtd
    | recoveredValue0 |
    recoveredValue0 := dtd.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fecc; bytecode file offset 0x96c850"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
outputStream
    | recoveredValue0 |
    recoveredValue0 := outputStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009b804; bytecode file offset 0x998128"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
newWriteStream
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new.
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c6178; bytecode file offset 0x9c2bec"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
dtd: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    dtd := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6384; bytecode file offset 0x9c2dd0"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
outputStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    outputStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2025db80; bytecode file offset 0xb5a464"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
preprocess: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := (self) newWriteStream.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := AbtXmlDTDPreprocessor.
    recoveredValue2 := (self) dtd.
    recoveredValue3 := (recoveredValue1) usingDTD: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredArg1.
    (recoveredValue4) inputStream: (recoveredValue5).
    recoveredValue6 := recoveredValue3.
    recoveredValue7 := (self) vastHandler.
    (recoveredValue6) vastHandler: (recoveredValue7).
    recoveredValue8 := recoveredValue3.
    recoveredValue9 := (self) entityResolver.
    (recoveredValue8) entityResolver: (recoveredValue9).
    recoveredValue10 := recoveredLocal1.
    recoveredValue11 := (recoveredValue3) outputStream: (recoveredValue10).
    recoveredLocal2 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    (recoveredValue12) preprocess.
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) contents.
    ^recoveredValue14
! !

"ASDBase.ic method 0x202ba7ec; bytecode file offset 0xbb70c8"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
replaceParameterEntityReferenceTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) dtd.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := REFC.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) upToAll: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) parameterEntityNamed: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) isAssociation.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 22].
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
            recoveredStack0 := (recoveredStack0) entityContentsFor: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 45] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := ReadStream.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) preprocess: (recoveredStack2).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20430ab4; bytecode file offset 0xd2d3ac"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
parseParameterEntityDeclaration
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) inputStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := ReadStream.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := $>.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) upTo: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) on: (recoveredStack1).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) inputStream: (recoveredStack1).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) newWriteStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := $%.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := $%.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekFor: (recoveredStack1).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 44] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack0) replaceParameterEntityReferenceTo: (recoveredStack1).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := CRO.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekForAll: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 76].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := AbtXmlAbstractParser.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := $;.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) upTo: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack1 := (recoveredStack1) characterForReference: (recoveredStack2).
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredPC := 82.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 87] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := ReadStream.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) contents.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack1 := (recoveredStack1) on: (recoveredStack2).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack0) inputStream: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack0) parseEntityDeclaration.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            (recoveredStack0) inputStream: (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20522cb8; bytecode file offset 0xe1f5c4"
!AbtXmlDTDPreprocessor methodsFor: 'recovered'!
preprocess
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) newWriteStream.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := $<.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekFor: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := $!!.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekFor: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 122].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekForComment.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := '-->'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) skipToAll: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputStream.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) newWriteStream.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) notEmpty.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 60] ifFalse: [recoveredPC := 71].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputStream.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) newWriteStream.
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
            recoveredStack1 := 'ENTITY'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekForAll: (recoveredStack1).
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 80] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := $%.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekNextNonSeparatorFor: (recoveredStack1).
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) parseParameterEntityDeclaration.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredPC := 111.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := MDO.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack2 := 'ENTITY'.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack1 := Space.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredPC := 119.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := MDO.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredPC := 128.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := $<.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := $%.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) peekFor: (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) peek.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) isLetter.
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 148] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputStream.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 152.
        ].
        recoveredStep = 152 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 157.
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := (recoveredStack0) newWriteStream.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) outputStream.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack0) replaceParameterEntityReferenceTo: (recoveredStack1).
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredPC := 174.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack1 := (recoveredStack1) next.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack0) nextPut: (recoveredStack1).
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) atEnd.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 180] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 194] ifFalse: [recoveredPC := 186].
        ].
        recoveredStep = 186 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack0 := (recoveredStack0) outputStream.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack1 := (recoveredStack1) contents.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

