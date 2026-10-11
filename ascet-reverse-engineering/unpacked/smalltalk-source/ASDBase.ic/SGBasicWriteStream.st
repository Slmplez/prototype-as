"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002978; bytecode file offset 0x8ffcfc"
!SGBasicWriteStream methodsFor: 'recovered'!
asWrappedUpCodeStream
    ^self
! !

"ASDBase.ic method 0x2000b2a0; bytecode file offset 0x908be4"
!SGBasicWriteStream methodsFor: 'recovered'!
stream
    | recoveredValue0 |
    recoveredValue0 := (self) writeStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20028244; bytecode file offset 0x934580"
!SGBasicWriteStream methodsFor: 'recovered'!
space
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := (recoveredValue0) space.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20029384; bytecode file offset 0x934580"
!SGBasicWriteStream methodsFor: 'recovered'!
collectionForStreamCopy
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := (recoveredValue0) collectionForStreamCopy.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a214; bytecode file offset 0x934580"
!SGBasicWriteStream methodsFor: 'recovered'!
position
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := (recoveredValue0) position.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002dcd4; bytecode file offset 0x934580"
!SGBasicWriteStream methodsFor: 'recovered'!
contentsOrFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := (recoveredValue0) contentsOrFilename.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200327b4; bytecode file offset 0x934580"
!SGBasicWriteStream methodsFor: 'recovered'!
isEmpty
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := (recoveredValue0) isEmpty.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032c34; bytecode file offset 0x934580"
!SGBasicWriteStream methodsFor: 'recovered'!
contents
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := (recoveredValue0) contents.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200334d4; bytecode file offset 0x934580"
!SGBasicWriteStream methodsFor: 'recovered'!
reset
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := (recoveredValue0) reset.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200530d0; bytecode file offset 0x9505d0"
!SGBasicWriteStream methodsFor: 'recovered'!
newlineForStream: recoveredArg1
    (self) newline.
    ^self
! !

"ASDBase.ic method 0x2005b85c; bytecode file offset 0x958548"
!SGBasicWriteStream methodsFor: 'recovered'!
asAnsiCCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGAnsiCCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b86c; bytecode file offset 0x958548"
!SGBasicWriteStream methodsFor: 'recovered'!
asParseProtocolStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGParseProtocolStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b88c; bytecode file offset 0x958548"
!SGBasicWriteStream methodsFor: 'recovered'!
asExternalMakeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGExternalMakeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005b9ec; bytecode file offset 0x958548"
!SGBasicWriteStream methodsFor: 'recovered'!
asESDLCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGESDLCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005ba0c; bytecode file offset 0x958548"
!SGBasicWriteStream methodsFor: 'recovered'!
asMonitorStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bafc; bytecode file offset 0x958548"
!SGBasicWriteStream methodsFor: 'recovered'!
asDebugStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGDebugStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bb9c; bytecode file offset 0x958548"
!SGBasicWriteStream methodsFor: 'recovered'!
asXmlCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGXmlCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bc6c; bytecode file offset 0x958548"
!SGBasicWriteStream methodsFor: 'recovered'!
asPerlCodeStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGPerlCodeStream.
    recoveredValue1 := (recoveredValue0) createWithStream: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005d1e4; bytecode file offset 0x959af0"
!SGBasicWriteStream methodsFor: 'recovered'!
close
    | recoveredValue0 |
    recoveredValue0 := writeStream.
    (recoveredValue0) close.
    ^self
! !

"ASDBase.ic method 0x200640d4; bytecode file offset 0x961970"
!SGBasicWriteStream methodsFor: 'recovered'!
flush
    | recoveredValue0 |
    recoveredValue0 := (self) writeStream.
    (recoveredValue0) flush.
    ^self
! !

"ASDBase.ic method 0x200644d4; bytecode file offset 0x961970"
!SGBasicWriteStream methodsFor: 'recovered'!
setToEnd
    | recoveredValue0 |
    recoveredValue0 := (self) writeStream.
    (recoveredValue0) setToEnd.
    ^self
! !

"ASDBase.ic method 0x20064514; bytecode file offset 0x961970"
!SGBasicWriteStream methodsFor: 'recovered'!
cr
    | recoveredValue0 |
    recoveredValue0 := (self) writeStream.
    (recoveredValue0) cr.
    ^self
! !

"ASDBase.ic method 0x20065abc; bytecode file offset 0x963428"
!SGBasicWriteStream methodsFor: 'recovered'!
writeStream
    | recoveredValue0 |
    recoveredValue0 := writeStream.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200679a4; bytecode file offset 0x9646f8"
!SGBasicWriteStream methodsFor: 'recovered'!
indentLevel
    | recoveredValue0 |
    recoveredValue0 := indentLevel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20067edc; bytecode file offset 0x965b90"
!SGBasicWriteStream methodsFor: 'recovered'!
indentString
    | recoveredValue0 |
    recoveredValue0 := currentIndentationString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200729e0; bytecode file offset 0x96f3cc"
!SGBasicWriteStream methodsFor: 'recovered'!
indentSize
    ^3
! !

"ASDBase.ic method 0x20097844; bytecode file offset 0x995850"
!SGBasicWriteStream methodsFor: 'recovered'!
nextPutAll: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097cf4; bytecode file offset 0x995850"
!SGBasicWriteStream methodsFor: 'recovered'!
growBy: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) growBy: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20097d04; bytecode file offset 0x995850"
!SGBasicWriteStream methodsFor: 'recovered'!
nextPutAllFromStream: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextPutAllFromStream: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200981d4; bytecode file offset 0x995850"
!SGBasicWriteStream methodsFor: 'recovered'!
nextPut: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) nextPut: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2009b770; bytecode file offset 0x99803c"
!SGBasicWriteStream methodsFor: 'recovered'!
newline
    (self) cr.
    (self) nextPutAllLineIndent.
    ^self
! !

"ASDBase.ic method 0x200a8a30; bytecode file offset 0x9a5300"
!SGBasicWriteStream methodsFor: 'recovered'!
indentLevel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    indentLevel := recoveredValue0.
    (self) calculateIndentation.
    ^self
! !

"ASDBase.ic method 0x200ae4f8; bytecode file offset 0x9ab034"
!SGBasicWriteStream methodsFor: 'recovered'!
nextPutAll: recoveredArg1 escape: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) nextPutAll: (recoveredValue1) escape: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200b36c0; bytecode file offset 0x9aff80"
!SGBasicWriteStream methodsFor: 'recovered'!
numOfLines
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) position: (0).
    recoveredValue2 := (recoveredValue0) countLines.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200b5514; bytecode file offset 0x9b1df0"
!SGBasicWriteStream methodsFor: 'recovered'!
createNewInstance
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) indentLevel.
    (recoveredValue2) indentLevel: (recoveredValue3).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200be814; bytecode file offset 0x9bb178"
!SGBasicWriteStream methodsFor: 'recovered'!
writeStream: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    writeStream := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200ce314; bytecode file offset 0x9cabcc"
!SGBasicWriteStream methodsFor: 'recovered'!
decIndent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := indentLevel.
    recoveredValue1 := (recoveredValue0) + (-1).
    indentLevel := recoveredValue1.
    (self) calculateIndentation.
    ^self
! !

"ASDBase.ic method 0x200ce330; bytecode file offset 0x9cabe8"
!SGBasicWriteStream methodsFor: 'recovered'!
incIndent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := indentLevel.
    recoveredValue1 := (recoveredValue0) + (1).
    indentLevel := recoveredValue1.
    (self) calculateIndentation.
    ^self
! !

"ASDBase.ic method 0x200de984; bytecode file offset 0x9db320"
!SGBasicWriteStream methodsFor: 'recovered'!
next: recoveredArg1 putAll: recoveredArg2 startingAt: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) writeStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := recoveredArg3.
    (recoveredValue0) next: (recoveredValue1) putAll: (recoveredValue2) startingAt: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2011cbb0; bytecode file offset 0xa19484"
!SGBasicWriteStream methodsFor: 'recovered'!
initialize
    super initialize.
    indentLevel := 0.
    (self) calculateIndentation.
    ^self
! !

"ASDBase.ic method 0x2011dcb0; bytecode file offset 0xa1a578"
!SGBasicWriteStream methodsFor: 'recovered'!
asAnnotatedCodeStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := SGAnnotatedCodeStream.
    recoveredValue1 := (self) writeStream.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue0) createWithStream: (recoveredValue1) withExpander: (recoveredValue2).
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := (self) indentLevel.
    (recoveredValue4) indentLevel: (recoveredValue5).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2012919c; bytecode file offset 0xa25a54"
!SGBasicWriteStream methodsFor: 'recovered'!
nextPutAllLineIndent
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := indentLevel.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := currentIndentationString.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) nextPutAll: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202890a0; bytecode file offset 0xb85970"
!SGBasicWriteStream methodsFor: 'recovered'!
nextPutAll: recoveredArg1 fillChar: recoveredArg2 to: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg3.
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
            recoveredStack1 := (recoveredStack1) - (recoveredStack2).
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeStream.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) < (recoveredStack1).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeStream.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) space.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) writeStream.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := String.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) new: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) atAllPut: (recoveredStack2).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack0) nextPutAll: (recoveredStack1).
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

"ASDBase.ic method 0x202c84ac; bytecode file offset 0xbc4d84"
!SGBasicWriteStream methodsFor: 'recovered'!
calculateIndentation
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) indentLevel.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack0 ~~ recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := ''.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            currentIndentationString := recoveredStack0.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := 0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) indentSize.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := (recoveredStack2) indentLevel.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) * (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) max: (recoveredStack1).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := Locale.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) current.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) preferredStringClass.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) new: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := $ .
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) atAllPut: (recoveredStack1).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            currentIndentationString := recoveredStack0.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

