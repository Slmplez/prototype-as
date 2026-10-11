"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000bb8; bytecode file offset 0x8ffcfc"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixBeginGenericModule
    ^self
! !

"ASDBase.ic method 0x20003128; bytecode file offset 0x8ffcfc"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixEndGenericModule
    ^self
! !

"ASDBase.ic method 0x2000d6f4; bytecode file offset 0x90a4b8"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
asEmbeddedString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20024638; bytecode file offset 0x92209c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
defaultExtension
    ^'.six'
! !

"ASDBase.ic method 0x2004e84c; bytecode file offset 0x94d048"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixEndTarget
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2004f464; bytecode file offset 0x94d048"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixEndCodeInfo
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2004f800; bytecode file offset 0x94d048"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixEndFileContainer
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2004fefc; bytecode file offset 0x94d048"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixEndModuleInterface
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20057a48; bytecode file offset 0x956284"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
projectCCodeRootId: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeExpander.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) ileComponentInstanceName: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2005c5dc; bytecode file offset 0x959680"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
appProgramPath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := EtasGeneralDllApi.
    recoveredValue1 := (recoveredValue0) getAppProgramPath.
    recoveredValue2 := (recoveredValue1) asPathname.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20090bb4; bytecode file offset 0x98d690"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
endPlainOutLine
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) asPerlCodeStream.
    (recoveredValue1) endPlainOutLine.
    ^self
! !

"ASDBase.ic method 0x20098124; bytecode file offset 0x995850"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixMarker: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) newlinePutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a32c0; bytecode file offset 0x9a0b4c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
attributeActual: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('actual') valueToBeEmbedded: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a3470; bytecode file offset 0x9a0b4c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
attributeId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('identifier') valueToBeEmbedded: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a39f0; bytecode file offset 0x9a0b4c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
attributeFormal: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('formal') valueToBeEmbedded: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200b342c; bytecode file offset 0x9afe54"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixEndModule
    | recoveredValue0 |
    (self) writeFooter.
    recoveredValue0 := (self) stream.
    (recoveredValue0) close.
    ^self
! !

"ASDBase.ic method 0x200b7e1c; bytecode file offset 0x9b46dc"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
setStream: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) createWithStream: (recoveredValue1).
    (self) stream: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200cb4b4; bytecode file offset 0x9c7db0"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixStartTarget
    (self) setCurrentTag: ('target').
    (self) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200cb4c8; bytecode file offset 0x9c7db0"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixStartCodeInfo
    (self) setCurrentTag: ('codeInfo').
    (self) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200df59c; bytecode file offset 0x9dbe5c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
scoopixContentsOrFilename
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) stream.
    recoveredValue1 := (recoveredValue0) contentsOrFilename.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := (self) stream.
    (recoveredValue2) close.
    recoveredValue3 := recoveredLocal1.
    ^recoveredValue3
! !

"ASDBase.ic method 0x200df8a0; bytecode file offset 0x9dc164"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
projectCCodeFunctionId: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) codeExpander.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) asModuleName: (recoveredValue1).
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := ('_') , (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200dff78; bytecode file offset 0x9dc83c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixEndModuleInfo
    (self) writeFooter.
    (self) writeFooter.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20127dec; bytecode file offset 0xa246b4"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
openStream
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := WriteStream.
    recoveredValue1 := String.
    recoveredValue2 := (recoveredValue1) new: (100).
    recoveredValue3 := (recoveredValue0) on: (recoveredValue2).
    (self) stream: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20152084; bytecode file offset 0xa4e970"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 |
    super initialize.
    (self) init.
    recoveredValue0 := SGBasicWriteStream.
    recoveredValue1 := (recoveredValue0) create.
    (self) stream: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20173ba0; bytecode file offset 0xa70464"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
printFooter: recoveredArg1
    | recoveredValue0 |
    (self) printToStream: ('</').
    recoveredValue0 := recoveredArg1.
    (self) printToStream: (recoveredValue0).
    (self) printToStream: ('>').
    (self) printCr.
    ^self
! !

"ASDBase.ic method 0x20173c2c; bytecode file offset 0xa70520"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
writeTag: recoveredArg1
    | recoveredValue0 |
    (self) printCr.
    (self) printToStream: ('<').
    recoveredValue0 := recoveredArg1.
    (self) printToStream: (recoveredValue0).
    (self) printToStream: ('/>').
    ^self
! !

"ASDBase.ic method 0x20173c44; bytecode file offset 0xa70520"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
printHeaderStart: recoveredArg1
    | recoveredValue0 |
    (self) printCr.
    (self) printToStream: ('<').
    recoveredValue0 := recoveredArg1.
    (self) printToStream: (recoveredValue0).
    (self) printToStream: (' ').
    ^self
! !

"ASDBase.ic method 0x2017e400; bytecode file offset 0xa7acd0"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixStartFileContainer
    (self) setCurrentTag: ('fileContainer').
    (self) writeHeaderStart.
    (self) attribute: ('complete') with: ('false').
    (self) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20187384; bytecode file offset 0xa83c44"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
attribute: recoveredArg1 withNoEntities: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) printToStream: (recoveredValue0).
    (self) printToStream: ('="').
    recoveredValue1 := recoveredArg2.
    (self) printToStream: (recoveredValue1).
    (self) printToStream: ('" ').
    ^self
! !

"ASDBase.ic method 0x201a399c; bytecode file offset 0xaa026c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixModelLinkBase: recoveredArg1
    | recoveredValue0 |
    (self) setCurrentTag: ('modelLinkBase').
    (self) writeHeaderStart.
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('href') with: (recoveredValue0).
    (self) writeHeaderEnd.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201ada78; bytecode file offset 0xaaa39c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixUsage
    (self) setCurrentTag: ('usage').
    (self) writeHeaderStart.
    (self) attribute: ('layoutFamily') with: ('asd:standardLayout').
    (self) writeHeaderEnd.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201adaa0; bytecode file offset 0xaaa39c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixConstitution
    (self) setCurrentTag: ('constitution').
    (self) writeHeaderStart.
    (self) attribute: ('mode') with: ('sourceCode').
    (self) writeHeaderEnd.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201adac8; bytecode file offset 0xaaa39c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixPathBase
    (self) setCurrentTag: ('pathBase').
    (self) writeHeaderStart.
    (self) attribute: ('path') with: ('{{codeDir}}').
    (self) writeHeaderEnd.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201c71b8; bytecode file offset 0xac3a8c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
codeExpander
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SGIlExpander.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    | block280d470cValue0 block280d470cValue1 block280d470cValue2 block280d470cValue3 |
    block280d470cValue0 := SGGeneratorFactory.
    block280d470cValue1 := (block280d470cValue0) create.
    block280d470cValue2 := (block280d470cValue1) codeGeneratorStrategy.
    block280d470cValue3 := (block280d470cValue2) createIleExpander.
    block280d470cValue3
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifNil: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := SGIlExpander.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) current.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201c7594; bytecode file offset 0xac3e60"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
writeFooterNoAttributes
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := tagState.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'headerStartDone'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) ~= (recoveredStack2).
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
            recoveredStack2 := 'no tag set'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) error: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := '/>'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) printToStream: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := 'headerEndDone'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            tagState := recoveredStack0.
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

"ASDBase.ic method 0x20203f68; bytecode file offset 0xb0083c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixProcessor: recoveredArg1 vendor: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    (self) setCurrentTag: ('processor').
    (self) writeHeaderStart.
    recoveredValue0 := recoveredArg2.
    (self) attribute: ('vendor') with: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) attribute: ('model') with: (recoveredValue1).
    (self) writeHeaderEnd.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20205304; bytecode file offset 0xb01bd4"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
intecrioDir
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasGeneralDllApi.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '\INTECRIO-IP\1.0'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'Path'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) getRegClassesKey: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) isError.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 27].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := ''.
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
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202054ac; bytecode file offset 0xb01d84"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
intecrioDirShort
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := String.
    recoveredValue1 := (recoveredValue0) new: (200).
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := OSCall.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) intecrioDir.
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (recoveredValue6) size.
    recoveredValue8 := (recoveredValue7) asUInt32.
    (recoveredValue3) getShortPathName: (recoveredValue4) lpszShortPath: (recoveredValue5) cchBuffer: (recoveredValue8).
    recoveredValue9 := recoveredLocal1.
    recoveredValue10 := (recoveredValue9) trimNull.
    ^recoveredValue10
! !

"ASDBase.ic method 0x2020ce98; bytecode file offset 0xb09770"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixBoard: recoveredArg1
    | recoveredValue0 |
    (self) setCurrentTag: ('board').
    (self) writeHeaderStart.
    (self) attribute: ('vendor') with: ('ETAS GmbH').
    recoveredValue0 := recoveredArg1.
    (self) attribute: ('model') with: (recoveredValue0).
    (self) writeHeaderEnd.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20215524; bytecode file offset 0xb11df0"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
attribute: recoveredArg1 valueToBeEmbedded: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgPerlCode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 17].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := (recoveredStack2) macroCall.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) asEmbeddedString: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgExternalName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 26].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) label.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) withNoEntities: (recoveredStack2).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2024ac58; bytecode file offset 0xb47530"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixHeaderFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    (self) setCurrentTag: ('headerFile').
    (self) writeHeaderStart.
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) fileName.
    (self) attribute: ('name') with: (recoveredBlock5Value1).
    (self) writeHeaderEnd.
    recoveredBlock5Value2 := (self) writeFooter.
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20297d00; bytecode file offset 0xb94614"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixCFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    (self) setCurrentTag: ('file').
    (self) writeHeaderStart.
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) fileName.
    (self) attribute: ('name') with: (recoveredBlock5Value1).
    (self) attribute: ('kind') with: ('body').
    (self) writeHeaderEnd.
    recoveredBlock5Value2 := (self) writeFooter.
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20297d34; bytecode file offset 0xb94614"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixHFiles: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    (self) setCurrentTag: ('file').
    (self) writeHeaderStart.
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) fileName.
    (self) attribute: ('name') with: (recoveredBlock5Value1).
    (self) attribute: ('kind') with: ('header').
    (self) writeHeaderEnd.
    recoveredBlock5Value2 := (self) writeFooter.
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x202da76c; bytecode file offset 0xbd7054"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixTool: recoveredArg1 version: recoveredArg2 options: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) setCurrentTag: ('tool').
    (self) writeHeaderStart.
    (self) attribute: ('kind') with: ('modeler').
    (self) attribute: ('vendor') with: ('ETAS GmbH').
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) putSixToolName: (recoveredValue0) andVersion: (recoveredValue1).
    (self) setCurrentTag: ('configuration').
    (self) writeHeaderStartEnd.
    recoveredValue2 := recoveredArg3.
    (self) putSixToolOptions: (recoveredValue2).
    (self) writeFooter.
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x202eb578; bytecode file offset 0xbe7e64"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixA2lFile: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack3 := 'file'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack2) writeHeaderStart.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack3 := 'name'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'content'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := 'dataDescription'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'format'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := 'ASAM-2MC'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := 'formatVersion'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := '1.5'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) writeHeaderEnd.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202ec2ac; bytecode file offset 0xbe8b94"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixToolOptions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) class.
    recoveredValue2 := (recoveredValue1) intecrioOptions.
    recoveredValue3 := [:recoveredBlock9Arg1 | 
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 recoveredBlock9Value5 recoveredBlock9Value6 |
    (self) setCurrentTag: ('option').
    (self) writeHeaderStart.
    recoveredBlock9Value0 := recoveredBlock9Arg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) asString.
    (self) attribute: ('identifier') with: (recoveredBlock9Value1).
    (self) writeHeaderEnd.
    recoveredBlock9Value2 := recoveredArg1.
    recoveredBlock9Value3 := recoveredBlock9Arg1.
    recoveredBlock9Value4 := (recoveredBlock9Value2) getOption: (recoveredBlock9Value3).
    recoveredBlock9Value5 := (recoveredBlock9Value4) asString.
    (self) printValue: (recoveredBlock9Value5).
    recoveredBlock9Value6 := (self) writeFooter.
    recoveredBlock9Value6
].
    (recoveredValue2) do: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20378f8c; bytecode file offset 0xc7587c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixCodeGeneratorOptions: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) options.
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue1) sortedGroupLabels.
    recoveredValue4 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 |
    recoveredBlock13Value0 := recoveredLocal1.
    recoveredBlock13Value1 := recoveredBlock13Arg1.
    recoveredBlock13Value2 := (recoveredBlock13Value0) sortedCodeGenOptionsGroup: (recoveredBlock13Value1).
    recoveredBlock13Value3 := [:recoveredBlock13Block25Arg1 | 
    | recoveredBlock13Block25Value0 recoveredBlock13Block25Value1 recoveredBlock13Block25Value2 recoveredBlock13Block25Value3 recoveredBlock13Block25Value4 recoveredBlock13Block25Value5 recoveredBlock13Block25Value6 |
    (self) setCurrentTag: ('option').
    (self) writeHeaderStart.
    recoveredBlock13Block25Value0 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Value1 := (recoveredBlock13Block25Value0) id.
    recoveredBlock13Block25Value2 := (recoveredBlock13Block25Value1) asString.
    (self) attribute: ('identifier') with: (recoveredBlock13Block25Value2).
    (self) writeHeaderEnd.
    recoveredBlock13Block25Value3 := recoveredBlock13Block25Arg1.
    recoveredBlock13Block25Value4 := (recoveredBlock13Block25Value3) value.
    recoveredBlock13Block25Value5 := (recoveredBlock13Block25Value4) asString.
    (self) printValue: (recoveredBlock13Block25Value5).
    recoveredBlock13Block25Value6 := (self) writeFooter.
    recoveredBlock13Block25Value6
].
    recoveredBlock13Value4 := (recoveredBlock13Value2) do: (recoveredBlock13Value3).
    recoveredBlock13Value4
].
    (recoveredValue3) do: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x203baf8c; bytecode file offset 0xcb7884"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixStartModule: recoveredArg1 schemaLocation: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 |
    (self) setCurrentTag: ('module').
    (self) writeHeaderStart.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('http://www.etas.com/scoop-ix/') , (recoveredValue0).
    (self) attribute: ('xmlns') with: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := ('http://www.etas.com/scoop-ix/') , (recoveredValue2).
    (self) attribute: ('xmlns:ix') with: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := ('http://www.etas.com/scoop-ix/') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('/modelDomain/ascet').
    (self) attribute: ('xmlns:asd') with: (recoveredValue6).
    (self) attribute: ('xmlns:xsi') with: ('http://www.w3.org/2001/XMLSchema-instance').
    recoveredValue7 := recoveredArg1.
    recoveredValue8 := ('http://www.etas.com/scoop-ix/') , (recoveredValue7).
    recoveredValue9 := (recoveredValue8) , (' ').
    recoveredValue10 := recoveredArg2.
    recoveredValue11 := (recoveredValue9) , (recoveredValue10).
    (self) attribute: ('xsi:schemaLocation') with: (recoveredValue11).
    (self) attribute: ('xmlns:html') with: ('http://www.w3.org/1999/xhtml').
    (self) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x203c05e8; bytecode file offset 0xcbcef0"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixGenerationTool: recoveredArg1 version: recoveredArg2 options: recoveredArg3 buildEnvironmentInfo: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) setCurrentTag: ('tool').
    (self) writeHeaderStart.
    (self) attribute: ('kind') with: ('codeGenerator').
    (self) attribute: ('vendor') with: ('ETAS GmbH').
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    (self) putSixToolName: (recoveredValue0) andVersion: (recoveredValue1).
    (self) setCurrentTag: ('mode').
    (self) writeHeaderStart.
    (self) attribute: ('name') with: ('experiment').
    recoveredValue2 := recoveredArg3.
    recoveredValue3 := (recoveredValue2) codeGenPathName.
    recoveredValue4 := (recoveredValue3) subStrings.
    recoveredValue5 := (recoveredValue4) at: (1).
    (self) attribute: ('value') with: (recoveredValue5).
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) setCurrentTag: ('configuration').
    (self) writeHeaderStartEnd.
    recoveredValue6 := recoveredArg4.
    (self) putSixCodeGeneratorOptions: (recoveredValue6).
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x203d0bcc; bytecode file offset 0xccd4cc"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixTargetToolNamed: recoveredArg1 currentToolLabel: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'tool'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'kind'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'compiler'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := 'GNU-C*'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) match: (recoveredStack1).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 50].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := 'vendor'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'GNU Project'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'family'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := 'GNU Compiler Collection'.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredPC := 63.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'vendor'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := ''.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := 'name'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := 'configuration'.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack1) writeHeaderStartEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) putSixTargetToolConfiguration.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20453fb0; bytecode file offset 0xd508a8"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixTargetToolConfiguration
    (self) setCurrentTag: ('optionKind').
    (self) writeHeaderStart.
    (self) attribute: ('name') with: ('macroDefine').
    (self) attribute: ('prefix') with: ('-D').
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) setCurrentTag: ('optionKind').
    (self) writeHeaderStart.
    (self) attribute: ('name') with: ('includeDirectory').
    (self) attribute: ('prefix') with: ('-I').
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) setCurrentTag: ('option').
    (self) writeHeaderStart.
    (self) attribute: ('kind') with: ('macroDefine').
    (self) attribute: ('name') with: ('EXT_INTEGRATION').
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) setCurrentTag: ('option').
    (self) writeHeaderStart.
    (self) attribute: ('kind') with: ('includeDirectory').
    (self) writeHeaderEnd.
    (self) printPlainValue: ('{{codeDir}}').
    (self) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20457994; bytecode file offset 0xd5428c"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) printToStream: ('<?xml version="1.0" encoding="iso-8859-1" ?>').
    (self) printCr.
    (self) printToStream: ('<!!DOCTYPE module [').
    (self) printCr.
    (self) printToStream: ('    <!!ENTITY szlig "&#223;">').
    (self) printCr.
    (self) printToStream: ('    <!!ENTITY copy "&#169;">').
    (self) printCr.
    (self) printToStream: ('    <!!ENTITY baseTypes-asd SYSTEM ''baseTypes-asd.xml''>').
    (self) printCr.
    (self) printToStream: ('    ]>').
    (self) printCr.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := ('<?xml-stylesheet type="text/xsl" href="') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('"?>').
    (self) printToStream: (recoveredValue2).
    (self) printCr.
    (self) printToStream: ('<!!--').
    (self) printCr.
    (self) printToStream: ('<h1>SCOOP-IX</h1>').
    (self) printCr.
    (self) printToStream: ('<p>').
    (self) printCr.
    (self) printToStream: ('    <strong>Copyright &copy; 2002-2004 ETAS GmbH</strong>, Borsigstra&szlig;e 14, D-70469 Stuttgart. <em>All rights reserved.</em>').
    (self) printCr.
    (self) printToStream: ('</p>').
    (self) printCr.
    (self) printToStream: ('-->').
    (self) printCr.
    ^self
! !

"ASDBase.ic method 0x204b0a14; bytecode file offset 0xdad2fc"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
asExportedString: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ReadWriteStream.
    recoveredValue1 := (recoveredValue0) on: ('').
    recoveredLocal2 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock15Arg1 | 
    | recoveredBlock15Stack0 recoveredBlock15Stack1 recoveredBlock15Stack2 recoveredBlock15Stack3 recoveredBlock15Stack4 recoveredBlock15PC recoveredBlock15Step recoveredBlock15Done recoveredBlock15Result |
    recoveredBlock15Stack0 := self.
    recoveredBlock15PC := 22.
    recoveredBlock15Done := false.
    [recoveredBlock15Done not] whileTrue: [
        recoveredBlock15Step := recoveredBlock15PC.
        recoveredBlock15Step = 22 ifTrue: [
            recoveredBlock15Stack1 := nil.
            recoveredBlock15PC := 23.
        ].
        recoveredBlock15Step = 23 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 24.
        ].
        recoveredBlock15Step = 24 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) value.
            recoveredBlock15PC := 25.
        ].
        recoveredBlock15Step = 25 ifTrue: [
            recoveredBlock15Stack3 := recoveredBlock15Stack2.
            recoveredBlock15PC := 26.
        ].
        recoveredBlock15Step = 26 ifTrue: [
            recoveredLocal1 := recoveredBlock15Stack3.
            recoveredBlock15PC := 29.
        ].
        recoveredBlock15Step = 29 ifTrue: [
            recoveredBlock15Stack3 := 256.
            recoveredBlock15PC := 32.
        ].
        recoveredBlock15Step = 32 ifTrue: [
            recoveredBlock15Stack2 := (recoveredBlock15Stack2) < (recoveredBlock15Stack3).
            recoveredBlock15PC := 33.
        ].
        recoveredBlock15Step = 33 ifTrue: [
            (recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 36] ifFalse: [recoveredBlock15PC := 134].
        ].
        recoveredBlock15Step = 36 ifTrue: [
            recoveredBlock15PC := 37.
        ].
        recoveredBlock15Step = 37 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 40.
        ].
        recoveredBlock15Step = 40 ifTrue: [
            recoveredBlock15Stack2 := 34.
            recoveredBlock15PC := 42.
        ].
        recoveredBlock15Step = 42 ifTrue: [
            (recoveredBlock15Stack1 ~~ recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 56] ifFalse: [recoveredBlock15PC := 46].
        ].
        recoveredBlock15Step = 46 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 49.
        ].
        recoveredBlock15Step = 49 ifTrue: [
            recoveredBlock15Stack2 := '&quot;'.
            recoveredBlock15PC := 51.
        ].
        recoveredBlock15Step = 51 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPutAll: (recoveredBlock15Stack2).
            recoveredBlock15PC := 53.
        ].
        recoveredBlock15Step = 53 ifTrue: [
            recoveredBlock15PC := 134.
        ].
        recoveredBlock15Step = 56 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 59.
        ].
        recoveredBlock15Step = 59 ifTrue: [
            recoveredBlock15Stack2 := 60.
            recoveredBlock15PC := 61.
        ].
        recoveredBlock15Step = 61 ifTrue: [
            (recoveredBlock15Stack1 ~~ recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 74] ifFalse: [recoveredBlock15PC := 64].
        ].
        recoveredBlock15Step = 64 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 67.
        ].
        recoveredBlock15Step = 67 ifTrue: [
            recoveredBlock15Stack2 := '&lt;'.
            recoveredBlock15PC := 69.
        ].
        recoveredBlock15Step = 69 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPutAll: (recoveredBlock15Stack2).
            recoveredBlock15PC := 71.
        ].
        recoveredBlock15Step = 71 ifTrue: [
            recoveredBlock15PC := 134.
        ].
        recoveredBlock15Step = 74 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 77.
        ].
        recoveredBlock15Step = 77 ifTrue: [
            recoveredBlock15Stack2 := 38.
            recoveredBlock15PC := 79.
        ].
        recoveredBlock15Step = 79 ifTrue: [
            (recoveredBlock15Stack1 ~~ recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 92] ifFalse: [recoveredBlock15PC := 82].
        ].
        recoveredBlock15Step = 82 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 85.
        ].
        recoveredBlock15Step = 85 ifTrue: [
            recoveredBlock15Stack2 := '&amp;'.
            recoveredBlock15PC := 87.
        ].
        recoveredBlock15Step = 87 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPutAll: (recoveredBlock15Stack2).
            recoveredBlock15PC := 89.
        ].
        recoveredBlock15Step = 89 ifTrue: [
            recoveredBlock15PC := 134.
        ].
        recoveredBlock15Step = 92 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 95.
        ].
        recoveredBlock15Step = 95 ifTrue: [
            recoveredBlock15Stack2 := 62.
            recoveredBlock15PC := 97.
        ].
        recoveredBlock15Step = 97 ifTrue: [
            (recoveredBlock15Stack1 ~~ recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 110] ifFalse: [recoveredBlock15PC := 100].
        ].
        recoveredBlock15Step = 100 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 103.
        ].
        recoveredBlock15Step = 103 ifTrue: [
            recoveredBlock15Stack2 := '&gt;'.
            recoveredBlock15PC := 105.
        ].
        recoveredBlock15Step = 105 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPutAll: (recoveredBlock15Stack2).
            recoveredBlock15PC := 107.
        ].
        recoveredBlock15Step = 107 ifTrue: [
            recoveredBlock15PC := 134.
        ].
        recoveredBlock15Step = 110 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal1.
            recoveredBlock15PC := 113.
        ].
        recoveredBlock15Step = 113 ifTrue: [
            recoveredBlock15Stack2 := 39.
            recoveredBlock15PC := 115.
        ].
        recoveredBlock15Step = 115 ifTrue: [
            (recoveredBlock15Stack1 ~~ recoveredBlock15Stack2) ifTrue: [recoveredBlock15PC := 128] ifFalse: [recoveredBlock15PC := 118].
        ].
        recoveredBlock15Step = 118 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 121.
        ].
        recoveredBlock15Step = 121 ifTrue: [
            recoveredBlock15Stack2 := '&apos;'.
            recoveredBlock15PC := 123.
        ].
        recoveredBlock15Step = 123 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPutAll: (recoveredBlock15Stack2).
            recoveredBlock15PC := 125.
        ].
        recoveredBlock15Step = 125 ifTrue: [
            recoveredBlock15PC := 134.
        ].
        recoveredBlock15Step = 128 ifTrue: [
            recoveredBlock15Stack1 := recoveredLocal2.
            recoveredBlock15PC := 131.
        ].
        recoveredBlock15Step = 131 ifTrue: [
            recoveredBlock15Stack2 := recoveredBlock15Arg1.
            recoveredBlock15PC := 132.
        ].
        recoveredBlock15Step = 132 ifTrue: [
            recoveredBlock15Stack1 := (recoveredBlock15Stack1) nextPut: (recoveredBlock15Stack2).
            recoveredBlock15PC := 134.
        ].
        recoveredBlock15Step = 134 ifTrue: [
            recoveredBlock15Result := recoveredBlock15Stack1.
            recoveredBlock15Done := true.
        ].
    ].
    recoveredBlock15Result
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := recoveredLocal2.
    recoveredValue5 := (recoveredValue4) contents.
    ^recoveredValue5
! !

"ASDBase.ic method 0x204f4b48; bytecode file offset 0xdf1454"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixDirectoryInformation: recoveredArg1 databasePath: recoveredArg2 outputPath: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'directoryLocations'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := 'scheme'.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'ASCET '.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack5 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := '.'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack5 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := (recoveredStack4) at: (recoveredStack5).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0) writeHeaderEnd.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := (recoveredStack0) intecrioDirShort.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 83] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'directory'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := 'identifier'.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack3 := 'integratorDir'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack2 := 'path'.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack3 := (recoveredStack3) intecrioDirShort.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := 'directory'.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack2 := 'identifier'.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := 'toolDir'.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack2 := 'path'.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack3 := (recoveredStack3) appProgramPath.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := 'directory'.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := 'identifier'.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := 'modelDir'.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack2 := 'path'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack2 := 'directory'.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := 'identifier'.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := 'codeDir'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := 'path'.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204f6d14; bytecode file offset 0xdf3614"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixRationalFunction: recoveredArg1 numerators: recoveredArg2 denominators: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 'conversion'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := 'rationalFunction'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) writeHeaderStartEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack2 := 'numerator'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack0) writeHeaderStart.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 46].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := 'axx'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 64].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'bx'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 90] ifFalse: [recoveredPC := 82].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := 'c'.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack0) writeHeaderEnd.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := 'denominator'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack0) writeHeaderStart.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
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
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 122] ifFalse: [recoveredPC := 114].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := 'dxx'.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 132].
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack1 := 'ex'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 150].
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 'f'.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            (recoveredStack0) writeHeaderEnd.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 166.
        ].
        recoveredStep = 166 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2051e444; bytecode file offset 0xe1ad38"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixToolName: recoveredArg1 andVersion: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := $..
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) allSubStrings: (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) writeHeaderEnd.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := 0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 190].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'version'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) writeHeaderStart.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := 'major'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 64] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := 'minor'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := 2.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 84] ifFalse: [recoveredPC := 184].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := $ .
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 119] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack0 := $-.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack0 := recoveredLocal4.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := 3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack0 := (recoveredStack0) allSubStrings: (recoveredStack1).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := 'revision'.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 140] ifFalse: [recoveredPC := 180].
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1).
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            recoveredStack0 := (recoveredStack0) asString.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack0 := (recoveredStack0) size.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := (recoveredStack0) > (recoveredStack1).
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 158] ifFalse: [recoveredPC := 172].
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack2 := 3.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2).
            recoveredPC := 167.
        ].
        recoveredStep = 167 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) , (recoveredStack1).
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := 'info'.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 176.
        ].
        recoveredStep = 176 ifTrue: [
            (recoveredStack0) attribute: (recoveredStack1) with: (recoveredStack2).
            recoveredPC := 178.
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 181.
        ].
        recoveredStep = 181 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2058e19c; bytecode file offset 0xe8ab18"
!SGAbstractScoopixExpander methodsFor: 'recovered'!
putSixBeginModuleInfo: recoveredArg1 type: recoveredArg2 buildEnvironmentInfo: recoveredArg3
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 |
    recoveredValue0 := ('Rl') == ('Call_75771').
    (self) setCurrentTag: ('moduleInfo').
    (self) writeHeaderStart.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := (recoveredValue1) mdlKey.
    recoveredValue3 := (recoveredValue2) asModuleIdentifier.
    (self) attribute: ('identifier') with: (recoveredValue3).
    (self) writeHeaderEnd.
    (self) setCurrentTag: ('name').
    (self) writeHeaderStartEnd.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue4) projectName.
    (self) printValue: (recoveredValue5).
    (self) writeFooter.
    (self) setCurrentTag: ('modelLink').
    (self) writeHeaderStart.
    recoveredValue6 := recoveredArg1.
    recoveredValue7 := recoveredArg3.
    recoveredValue8 := (recoveredValue7) projectName.
    recoveredValue9 := (recoveredValue6) , (recoveredValue8).
    (self) attribute: ('href') with: (recoveredValue9).
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) setCurrentTag: ('dateTime').
    (self) writeHeaderStart.
    (self) attribute: ('kind') with: ('lastModified').
    recoveredValue10 := recoveredArg3.
    recoveredValue11 := (recoveredValue10) projectSpecificationTimeStampYear.
    (self) attribute: ('year') with: (recoveredValue11).
    recoveredValue12 := recoveredArg3.
    recoveredValue13 := (recoveredValue12) projectSpecificationTimeStampMonth.
    (self) attribute: ('month') with: (recoveredValue13).
    recoveredValue14 := recoveredArg3.
    recoveredValue15 := (recoveredValue14) projectSpecificationTimeStampDay.
    (self) attribute: ('day') with: (recoveredValue15).
    recoveredValue16 := recoveredArg3.
    recoveredValue17 := (recoveredValue16) projectSpecificationTimeStampHour.
    (self) attribute: ('hour') with: (recoveredValue17).
    recoveredValue18 := recoveredArg3.
    recoveredValue19 := (recoveredValue18) projectSpecificationTimeStampMinute.
    (self) attribute: ('minute') with: (recoveredValue19).
    recoveredValue20 := recoveredArg3.
    recoveredValue21 := (recoveredValue20) projectSpecificationTimeStampSecond.
    (self) attribute: ('second') with: (recoveredValue21).
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) setCurrentTag: ('completion').
    (self) writeHeaderStart.
    (self) attribute: ('degree') with: ('full').
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) setCurrentTag: ('suitability').
    (self) writeHeaderStartEnd.
    (self) setCurrentTag: ('application').
    (self) writeHeaderStart.
    (self) attribute: ('domain') with: ('rapidPrototyping').
    (self) attribute: ('addressesAvailable') with: ('true').
    recoveredValue22 := recoveredArg2.
    recoveredValue23 := (self) projectCCodeRootId: (recoveredValue22).
    (self) attribute: ('instanceTreeRootIdentifier') with: (recoveredValue23).
    recoveredValue24 := recoveredArg2.
    recoveredValue25 := (self) projectCCodeFunctionId: (recoveredValue24).
    (self) attribute: ('setGetDeltaTIdentifier') with: (recoveredValue25).
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) writeFooter.
    (self) setCurrentTag: ('user').
    (self) writeHeaderStart.
    recoveredValue26 := recoveredArg3.
    recoveredValue27 := (recoveredValue26) ascetUser.
    (self) attribute: ('lastName') with: (recoveredValue27).
    (self) writeHeaderEnd.
    (self) writeFooter.
    (self) setCurrentTag: ('creators').
    (self) writeHeaderStartEnd.
    (self) setCurrentTag: ('user').
    (self) writeHeaderStart.
    recoveredValue28 := recoveredArg3.
    recoveredValue29 := (recoveredValue28) ascetUser.
    (self) attribute: ('lastName') with: (recoveredValue29).
    (self) writeHeaderEnd.
    (self) writeFooter.
    ^self
! !

