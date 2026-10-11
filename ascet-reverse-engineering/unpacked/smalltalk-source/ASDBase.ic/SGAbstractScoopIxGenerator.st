"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20000cd8; bytecode file offset 0x8ffcfc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endFunctionElements
    ^self
! !

"ASDBase.ic method 0x20001990; bytecode file offset 0x8ffcfc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endDataElements
    ^self
! !

"ASDBase.ic method 0x20001e18; bytecode file offset 0x8ffcfc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginCInterfaceType
    ^self
! !

"ASDBase.ic method 0x20002f48; bytecode file offset 0x8ffcfc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endCInterfaceType
    ^self
! !

"ASDBase.ic method 0x200046a0; bytecode file offset 0x90206c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixUsageCharacteristic: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2000a4d8; bytecode file offset 0x908be4"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
currentMdlComponentInterface
    | recoveredValue0 |
    recoveredValue0 := (self) mdlInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016304; bytecode file offset 0x92209c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
positiveInfinityValue
    ^'1.e+37'
! !

"ASDBase.ic method 0x2001e59c; bytecode file offset 0x92209c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
minusInfinityValue
    ^'-1.e+37'
! !

"ASDBase.ic method 0x200249ec; bytecode file offset 0x92209c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
exportedFilesMarker
    ^'EXPORTED_FILES_MARKER'
! !

"ASDBase.ic method 0x2002567c; bytecode file offset 0x92209c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
inactiveAppMode
    ^'inactive'
! !

"ASDBase.ic method 0x2002a064; bytecode file offset 0x934580"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
fileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMdlComponentInterface.
    recoveredValue1 := (recoveredValue0) fileName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002a784; bytecode file offset 0x934580"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
scoopixContentsOrFilename
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) scoopixContentsOrFilename.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002bda4; bytecode file offset 0x934580"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
scoopixSettings
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) context.
    recoveredValue1 := (recoveredValue0) scoopixSettings.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200307a4; bytecode file offset 0x934580"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
importList
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) context.
    recoveredValue1 := (recoveredValue0) importsTable.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200350b4; bytecode file offset 0x934580"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) sixAdapter.
    recoveredValue1 := (recoveredValue0) generator.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f548; bytecode file offset 0x93bf94"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
ileExpander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200537c0; bytecode file offset 0x9505d0"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixElementUsageAttributes: recoveredArg1
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005505c; bytecode file offset 0x952a9c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
visitMdlNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlAcceptNodeVisitor: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20063814; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endStructMember
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20063824; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endMessageAccess
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20063834; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endGenericModule
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) putSixEndGenericModule.
    ^self
! !

"ASDBase.ic method 0x200638f4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixConstitution
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) putSixConstitution.
    ^self
! !

"ASDBase.ic method 0x20063a14; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endDataElement
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20063bd4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endUsageAxis
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20063db4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endRunTimeInfo
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064054; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginGenericModule
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) putSixBeginGenericModule.
    ^self
! !

"ASDBase.ic method 0x200642b4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endUsageCharcteristic
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064304; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endDependency
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064404; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endCInterface
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064584; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endCodeInfo
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) putSixEndCodeInfo.
    ^self
! !

"ASDBase.ic method 0x200646e4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endBaseDefinition
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064844; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endModuleInterface
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) putSixEndModuleInterface.
    ^self
! !

"ASDBase.ic method 0x20064894; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endStructDefinition
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064b44; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endDefinitions
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064be4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endImplementation
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064bf4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endElementUsage
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064d04; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endModelKind
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064d54; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endCFunctionInterface
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064ec4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginCodeInfo
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) putSixStartCodeInfo.
    ^self
! !

"ASDBase.ic method 0x20064ee4; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endModule
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) putSixEndModule.
    ^self
! !

"ASDBase.ic method 0x20064f24; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endModelLocation
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20064f64; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endModelOrigin
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20065094; bytecode file offset 0x961970"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
endFunctionElement
    | recoveredValue0 |
    recoveredValue0 := (self) expander.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x200668dc; bytecode file offset 0x963428"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
expander
    | recoveredValue0 |
    recoveredValue0 := expander.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20066cb4; bytecode file offset 0x9646f8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
mdlInterface
    | recoveredValue0 |
    recoveredValue0 := mdlInterface.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200689fc; bytecode file offset 0x965b90"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
context
    | recoveredValue0 |
    recoveredValue0 := context.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069310; bytecode file offset 0x966bdc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
sixAdapter
    | recoveredValue0 |
    recoveredValue0 := sixAdapter.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074a4c; bytecode file offset 0x9757c8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
isEnabled
    ^true
! !

"ASDBase.ic method 0x2007eb24; bytecode file offset 0x97c330"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
supportsCStructDefinition
    ^false
! !

"ASDBase.ic method 0x2008d044; bytecode file offset 0x989db0"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixInnerPathNode
    | recoveredValue0 |
    recoveredValue0 := (self) currentMdlComponentInterface.
    (self) putSixInnerPathNode: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20091620; bytecode file offset 0x98e0cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x20094c4c; bytecode file offset 0x991570"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixType: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) putSixType: (recoveredValue0) width: (nil).
    ^self
! !

"ASDBase.ic method 0x2009fe3c; bytecode file offset 0x99c9e0"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixCFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) currentMdlComponentInterface.
    recoveredValue1 := (recoveredValue0) fileName.
    (self) putSixCFile: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a14b4; bytecode file offset 0x99dfb8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixFileMarker
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) exportedFilesMarker.
    (recoveredValue0) putSixMarker: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a97e8; bytecode file offset 0x9a60e4"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
currentGeneratedModuleCode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) scoopIXFunctionElementsInfo.
    (recoveredValue0) scoopIXFunctionElements: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200be644; bytecode file offset 0x9bb178"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
expander: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    expander := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200be908; bytecode file offset 0x9bc0b4"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
mdlInterface: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlInterface := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bfb04; bytecode file offset 0x9bd228"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
context: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    context := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1160; bytecode file offset 0x9bdf14"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
sixAdapter: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sixAdapter := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d9fe0; bytecode file offset 0x9d68a0"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixHeaderFileList: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) putSixPathBase.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) putSixHeaderFiles: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200e3890; bytecode file offset 0x9e0274"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginResourceAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('resourceAccess').
    (recoveredValue0) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200e38a8; bytecode file offset 0x9e0274"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginElementUsage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('usage').
    (recoveredValue0) writeHeaderStart.
    ^self
! !

"ASDBase.ic method 0x200e38d8; bytecode file offset 0x9e0274"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginUsageAxis
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('axis').
    (recoveredValue0) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200e3908; bytecode file offset 0x9e0274"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginModelLocation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('modelLocation').
    (recoveredValue0) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200e3920; bytecode file offset 0x9e0274"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginImplementation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('implementation').
    (recoveredValue0) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200e3938; bytecode file offset 0x9e0274"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginRunTimeInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('runTimeInfo').
    (recoveredValue0) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200e3968; bytecode file offset 0x9e0274"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginMessageAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('messageAccess').
    (recoveredValue0) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200e39b0; bytecode file offset 0x9e0274"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginDefinitions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('definitions').
    (recoveredValue0) writeHeaderStartEnd.
    ^self
! !

"ASDBase.ic method 0x200e3b60; bytecode file offset 0x9e0454"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixBaseTypeUsage
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) putSixUsage.
    (recoveredValue0) printToStream: ('&baseTypes-asd;').
    ^self
! !

"ASDBase.ic method 0x2010f4b0; bytecode file offset 0xa0bd78"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixTypeWidth: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) asString.
    (recoveredValue0) setCurrentTag: ('width') attribute: ('value') value: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20141674; bytecode file offset 0xa3df70"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
projectInterface
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) importList.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) projectInterface.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^nil
! !

"ASDBase.ic method 0x20163800; bytecode file offset 0xa600c8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
scoopIXFunctionElementsInfo
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := (recoveredBlock5Value0) stream.
    recoveredBlock5Value2 := (recoveredBlock5Value1) contents.
    ^recoveredBlock5Value2
].
    (recoveredValue0) ifNotNil: (recoveredValue1).
    ^''
! !

"ASDBase.ic method 0x20166d50; bytecode file offset 0xa6365c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginCInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('dataCInterface').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20166d70; bytecode file offset 0xa6365c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixModelName: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('name').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStartEnd.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) printValue: (recoveredValue4).
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20166d90; bytecode file offset 0xa6365c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginCFunctionInterface: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('functionCInterface').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20170cbc; bytecode file offset 0xa6d58c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginModuleInterface
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('interface').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStartEnd.
    recoveredValue3 := (self) scoopixSettings.
    recoveredValue4 := (recoveredValue3) modelLinkBase.
    (recoveredValue0) putSixModelLinkBase: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20176a90; bytecode file offset 0xa7335c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginElementUsage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('usage').
    (recoveredValue0) writeHeaderStart.
    recoveredValue2 := recoveredArg1.
    (self) putSixElementUsageAttributes: (recoveredValue2).
    recoveredValue3 := (self) expander.
    (recoveredValue3) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20176ea8; bytecode file offset 0xa73778"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixDestinationPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) context.
    recoveredValue2 := (recoveredValue1) buildEnvironmentInfo.
    recoveredValue3 := (recoveredValue2) ascetVersion.
    recoveredValue4 := (self) context.
    recoveredValue5 := (recoveredValue4) buildEnvironmentInfo.
    recoveredValue6 := (recoveredValue5) databaseLocation.
    recoveredValue7 := (recoveredValue6) asPathname.
    recoveredValue8 := recoveredArg1.
    (recoveredValue0) putSixDirectoryInformation: (recoveredValue3) databasePath: (recoveredValue7) outputPath: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x20181118; bytecode file offset 0xa7d9e8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginModule
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) scoopixSettings.
    recoveredValue3 := (recoveredValue2) styleSheetFullFilename.
    (recoveredValue1) putSixHeader: (recoveredValue3).
    recoveredValue4 := (self) scoopixSettings.
    recoveredValue5 := (recoveredValue4) versionSchemaString.
    recoveredValue6 := (self) scoopixSettings.
    recoveredValue7 := (recoveredValue6) schemaLocationFullFilename.
    (recoveredValue0) putSixStartModule: (recoveredValue5) schemaLocation: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20185ce4; bytecode file offset 0xa82644"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginModelOrigin: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('modelOrigin').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('identifier') with: (recoveredValue4).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20185d08; bytecode file offset 0xa82644"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginDependency: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('dependency').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('formula') with: (recoveredValue4).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20185d2c; bytecode file offset 0xa82644"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginFunctionElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('functionElement').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('interfaceKind') with: (recoveredValue4).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20185d50; bytecode file offset 0xa82644"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginStructMember: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('structMember').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('identifier') with: (recoveredValue4).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x20185d74; bytecode file offset 0xa82644"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginUsageCharcteristic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('characteristic').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('kind') with: (recoveredValue4).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x201952c8; bytecode file offset 0xa91bbc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixCDefinitionLocationBaseRef: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('baseRef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201952ec; bytecode file offset 0xa91bbc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixNoAxisPtsRef: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('noAxisPtsRef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x20197888; bytecode file offset 0xa94144"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixPathLeafNodeKind: recoveredArg1 names: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 |
    recoveredBlock7Value0 := recoveredArg1.
    recoveredBlock7Value1 := recoveredBlock7Arg1.
    recoveredBlock7Value2 := (self) putSixPathNodeKind: (recoveredBlock7Value0) name: (recoveredBlock7Value1).
    recoveredBlock7Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201a6dd8; bytecode file offset 0xaa36d4"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginDataElement: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('dataElement').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asString.
    (recoveredValue3) attribute: ('interfaceKind') with: (recoveredValue5).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x201a6e00; bytecode file offset 0xaa36d4"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginBaseDefinition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('baseDef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) label.
    (recoveredValue3) attribute: ('identifier') with: (recoveredValue5).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x201b46e0; bytecode file offset 0xab10cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixFPUUsage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('FPUUsage').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('value') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b4708; bytecode file offset 0xab10cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixCInitPlainValue: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('initValue').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('value') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b4730; bytecode file offset 0xab10cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixHFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('headerFile').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('name') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b4758; bytecode file offset 0xab10cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixConversionRef: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('conversionRef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('name') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b4780; bytecode file offset 0xab10cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixCDefinitionLocationMemberRef: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('memberRef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('identifier') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b47a8; bytecode file offset 0xab10cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixModelLink: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('modelLink').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('href') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b47d0; bytecode file offset 0xab10cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixTerminateTaskUsage: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('TerminateTaskUsage').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('value') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b47f8; bytecode file offset 0xab10cc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixCFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('fileOrigin').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('name') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b64dc; bytecode file offset 0xab2dac"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixCDefinitionLocation: recoveredArg1 member: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('definitionLocation').
    (recoveredValue0) writeHeaderStartEnd.
    recoveredValue2 := recoveredArg1.
    (self) putSixCDefinitionLocationBaseRef: (recoveredValue2).
    recoveredValue3 := recoveredArg2.
    (self) putSixCDefinitionLocationMemberRef: (recoveredValue3).
    recoveredValue4 := (self) expander.
    (recoveredValue4) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201b6790; bytecode file offset 0xab3054"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixMessageAccess: recoveredArg1 direction: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [:recoveredBlock7Arg1 | 
    | recoveredBlock7Value0 recoveredBlock7Value1 recoveredBlock7Value2 recoveredBlock7Value3 recoveredBlock7Value4 |
    recoveredBlock7Value0 := recoveredBlock7Arg1.
    recoveredBlock7Value1 := (recoveredBlock7Value0) varDecl.
    recoveredBlock7Value2 := (recoveredBlock7Value1) genSixCName.
    recoveredBlock7Value3 := recoveredArg2.
    recoveredBlock7Value4 := (self) putSixMessageAccess: (recoveredBlock7Value2) direction: (recoveredBlock7Value3).
    recoveredBlock7Value4
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201cfb3c; bytecode file offset 0xacc40c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixFileContainerCFiles: recoveredArg1 hFiles: recoveredArg2 asapFile: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) putSixStartFileContainer.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) putSixPathBase.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) putSixCFiles: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) putSixHFiles: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg3.
    (recoveredValue7) putSixA2lFile: (recoveredValue8).
    (recoveredValue0) putSixEndFileContainer.
    ^self
! !

"ASDBase.ic method 0x201dc0f4; bytecode file offset 0xad89c8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixFormalOperand: recoveredArg1 actualOperand: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('formulaOperand').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeFormal: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) attributeActual: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201e96dc; bytecode file offset 0xae5fb0"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginModelKind: recoveredArg1 visibility: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('modelKind').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('kind') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) attribute: ('visibility') with: (recoveredValue6).
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x201f5858; bytecode file offset 0xaf2130"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginStructDefinition: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('structDef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('name') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) attribute: ('kind') with: ('struct').
    (recoveredValue0) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x201f7670; bytecode file offset 0xaf3fcc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixDistanceRef: recoveredArg1 dimension: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('distanceRef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) attribute: ('dimension') with: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201f769c; bytecode file offset 0xaf3fcc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixNoAxisPtsRef: recoveredArg1 dimension: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('noAxisPtsRef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) attribute: ('dimension') with: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201f76c8; bytecode file offset 0xaf3fcc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixOffsetRef: recoveredArg1 dimension: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('offsetRef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) attribute: ('dimension') with: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201f76f4; bytecode file offset 0xaf3fcc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixCharacteristicAxisRef: recoveredArg1 dimension: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('axisRef').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) attribute: ('dimension') with: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x201f7740; bytecode file offset 0xaf4018"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixMessageAccess: recoveredArg1 direction: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('message').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg2.
    (recoveredValue5) attribute: (recoveredValue6) with: ('true').
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2020e428; bytecode file offset 0xb0ad04"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixPredecessor: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('predecessor').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attributeId: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (true) asString.
    (recoveredValue5) attribute: ('immediate') with: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2020e478; bytecode file offset 0xb0ad54"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixInnerPathNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('pathNode').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) mdlClassType.
    recoveredValue5 := (recoveredValue4) mdlLabel.
    (recoveredValue0) attribute: ('name') with: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (recoveredValue6) genSixKind: (self).
    recoveredValue7 := (self) expander.
    (recoveredValue7) writeFooter.
    ^self
! !

"ASDBase.ic method 0x202101e4; bytecode file offset 0xb0caa8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixPath: recoveredArg1 innerNodes: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) isMdlClassVarDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Value0 recoveredBlock19Value1 |
    recoveredBlock19Value0 := recoveredBlock19Arg1.
    recoveredBlock19Value1 := (self) putSixInnerPathNode: (recoveredBlock19Value0).
    recoveredBlock19Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20210290; bytecode file offset 0xb0cb68"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixPathNodeKind: recoveredArg1 name: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('pathNode').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg2.
    (recoveredValue3) attribute: ('name') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) attribute: ('kind') with: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    (recoveredValue7) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2021d6e8; bytecode file offset 0xb19fc8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixZeroExclusion: recoveredArg1 impl: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('zeroExcluded').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) attributes.
    recoveredValue6 := (recoveredValue5) isCgAttrZeroIncluded.
    recoveredValue7 := (recoveredValue6) not.
    recoveredValue8 := (recoveredValue7) asString.
    (recoveredValue3) attribute: ('value') with: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2023e5fc; bytecode file offset 0xb3aec8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixTask: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlSoftwareTask.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixSoftwareTask: (recoveredStack2).
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
            recoveredStack1 := (recoveredStack1) isMdlInitTask.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) genSixInitTask: (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlEventTask.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
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
            recoveredStack1 := (recoveredStack1) genSixEventTask: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20240c14; bytecode file offset 0xb3d4f0"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixFlowDirectionIn: recoveredArg1 out: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('flowDirection').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := (recoveredValue4) asString.
    (recoveredValue3) attribute: ('in') with: (recoveredValue5).
    recoveredValue6 := recoveredValue0.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := (recoveredValue7) asString.
    (recoveredValue6) attribute: ('out') with: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2024b844; bytecode file offset 0xb48128"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixEventTask: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('execution').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) attribute: ('trigger') with: ('interrupt').
    recoveredValue4 := recoveredValue0.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := (recoveredValue5) prio.
    recoveredValue7 := (recoveredValue6) asString.
    (recoveredValue4) attribute: ('priority') with: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    (recoveredValue8) writeHeaderEnd.
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x2027766c; bytecode file offset 0xb73f50"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixScheduling: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'scheduling'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack2 := 'mode'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) attributes.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack3 := (recoveredStack3) isCgAttrSchedulingCooperative.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 'cooperative'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'preemptive'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202860d8; bytecode file offset 0xb829b0"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
beginElementUsage: recoveredArg1 value: recoveredArg2 virtual: recoveredArg3 variant: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('usage').
    (recoveredValue0) writeHeaderStart.
    recoveredValue2 := (self) expander.
    recoveredValue3 := recoveredValue2.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := recoveredArg2.
    recoveredValue6 := (recoveredValue5) asString.
    (recoveredValue3) attribute: (recoveredValue4) with: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg3.
    recoveredValue9 := (recoveredValue8) asString.
    (recoveredValue7) attribute: ('virtual') with: (recoveredValue9).
    recoveredValue10 := recoveredArg4.
    recoveredValue11 := (recoveredValue10) asString.
    (recoveredValue2) attribute: ('variant') with: (recoveredValue11).
    recoveredValue12 := (self) expander.
    (recoveredValue12) writeHeaderEnd.
    ^self
! !

"ASDBase.ic method 0x2029bd60; bytecode file offset 0xb98648"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixInitTask: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) opModes.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) inactiveAppMode.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) includes: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'termination'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredPC := 21.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'initialization'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'execution'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'trigger'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202b592c; bytecode file offset 0xbb2200"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixSignature: recoveredArg1 return: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('signature').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStartEnd.
    recoveredValue3 := recoveredValue0.
    (recoveredValue3) setCurrentTag: ('return').
    recoveredValue4 := recoveredValue0.
    (recoveredValue4) writeHeaderStartEnd.
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) setCurrentTag: ('type').
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) writeHeaderStartEnd.
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) writeTag: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    (recoveredValue9) writeFooter.
    recoveredValue10 := recoveredValue0.
    (recoveredValue10) writeFooter.
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := recoveredArg1.
    (recoveredValue11) writeTag: (recoveredValue12).
    (recoveredValue0) writeFooter.
    ^self
! !

"ASDBase.ic method 0x202d0e04; bytecode file offset 0xbcd6e0"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixPathParameterName: recoveredArg1 value: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg2.
    recoveredValue1 := [
    ^self
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) expander.
    recoveredValue3 := recoveredValue2.
    (recoveredValue3) setCurrentTag: ('pathParameter').
    recoveredValue4 := recoveredValue2.
    (recoveredValue4) writeHeaderStart.
    recoveredValue5 := recoveredValue2.
    recoveredValue6 := recoveredArg1.
    (recoveredValue5) attribute: ('name') with: (recoveredValue6).
    recoveredValue7 := recoveredValue2.
    recoveredValue8 := recoveredArg2.
    (recoveredValue7) attribute: ('value') with: (recoveredValue8).
    recoveredValue9 := recoveredValue2.
    (recoveredValue9) writeHeaderEnd.
    (recoveredValue2) writeFooter.
    ^self
! !

"ASDBase.ic method 0x202e11d8; bytecode file offset 0xbddac4"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixControllerTarget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) putSixStartTarget.
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) context.
    recoveredValue4 := (recoveredValue3) platform.
    recoveredValue5 := (recoveredValue4) target.
    recoveredValue6 := (recoveredValue5) targetLabel.
    (recoveredValue2) putSixProcessor: (recoveredValue6) vendor: ('ETAS GmbH').
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) context.
    recoveredValue9 := (recoveredValue8) platform.
    recoveredValue10 := (recoveredValue9) target.
    recoveredValue11 := (recoveredValue10) targetType.
    (recoveredValue7) putSixBoard: (recoveredValue11).
    recoveredValue12 := recoveredValue0.
    recoveredValue13 := (self) context.
    recoveredValue14 := (recoveredValue13) platform.
    recoveredValue15 := (recoveredValue14) compilerTool.
    recoveredValue16 := (recoveredValue15) toolLabel.
    recoveredValue17 := (self) context.
    recoveredValue18 := (recoveredValue17) platform.
    recoveredValue19 := (recoveredValue18) compilerTool.
    recoveredValue20 := (recoveredValue19) toolLabel.
    (recoveredValue12) putSixTargetToolNamed: (recoveredValue16) currentToolLabel: (recoveredValue20).
    (recoveredValue0) putSixEndTarget.
    ^self
! !

"ASDBase.ic method 0x202e2d48; bytecode file offset 0xbdf62c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixResourceAccess: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('resourceAccess').
    (recoveredValue0) writeHeaderStartEnd.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := [:recoveredBlock13Arg1 | 
    | recoveredBlock13Value0 recoveredBlock13Value1 recoveredBlock13Value2 recoveredBlock13Value3 recoveredBlock13Value4 recoveredBlock13Value5 recoveredBlock13Value6 recoveredBlock13Value7 recoveredBlock13Value8 |
    recoveredBlock13Value0 := (self) expander.
    recoveredBlock13Value1 := recoveredBlock13Value0.
    (recoveredBlock13Value1) setCurrentTag: ('resource').
    recoveredBlock13Value2 := recoveredBlock13Value0.
    (recoveredBlock13Value2) writeHeaderStart.
    recoveredBlock13Value3 := recoveredBlock13Value0.
    recoveredBlock13Value4 := recoveredBlock13Arg1.
    recoveredBlock13Value5 := (recoveredBlock13Value4) varDecl.
    recoveredBlock13Value6 := (recoveredBlock13Value5) mdlLabel.
    (recoveredBlock13Value3) attributeId: (recoveredBlock13Value6).
    recoveredBlock13Value7 := recoveredBlock13Value0.
    (recoveredBlock13Value7) writeHeaderEnd.
    recoveredBlock13Value8 := (recoveredBlock13Value0) writeFooter.
    recoveredBlock13Value8
].
    (recoveredValue2) do: (recoveredValue3).
    recoveredValue4 := (self) expander.
    (recoveredValue4) writeFooter.
    ^self
! !

"ASDBase.ic method 0x203057ec; bytecode file offset 0xc020dc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixAnnotations: recoveredArg1
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
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 54].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'annotation'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) writeHeaderStartEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'ix:documentation'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack2) writeHeaderStart.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack3 := 'xmlns'.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := 'http://www.w3.org/1999/xhtml'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack3 := 'lang'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'en-US'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack2) writeHeaderEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack2) printValue: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack2) writeFooter.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20334144; bytecode file offset 0xc30a34"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixModuleInfo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) scoopixSettings.
    recoveredValue3 := (recoveredValue2) modelLinkBase.
    recoveredValue4 := (self) context.
    recoveredValue5 := (recoveredValue4) importsTable.
    recoveredValue6 := (recoveredValue5) mdlProjectInterface.
    recoveredValue7 := (recoveredValue6) mdlClassType.
    recoveredValue8 := (self) context.
    recoveredValue9 := (recoveredValue8) buildEnvironmentInfo.
    (recoveredValue1) putSixBeginModuleInfo: (recoveredValue3) type: (recoveredValue7) buildEnvironmentInfo: (recoveredValue9).
    recoveredValue10 := recoveredValue0.
    recoveredValue11 := (self) context.
    recoveredValue12 := (recoveredValue11) buildEnvironmentInfo.
    recoveredValue13 := (recoveredValue12) ascetVersion.
    recoveredValue14 := (self) context.
    recoveredValue15 := (recoveredValue14) mdSettings.
    (recoveredValue10) putSixTool: ('ASCET') version: (recoveredValue13) options: (recoveredValue15).
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := recoveredArg1.
    recoveredValue18 := (self) context.
    recoveredValue19 := (recoveredValue18) buildEnvironmentInfo.
    recoveredValue20 := (recoveredValue19) ascetVersion.
    recoveredValue21 := (self) context.
    recoveredValue22 := (recoveredValue21) mdSettings.
    recoveredValue23 := (self) context.
    recoveredValue24 := (recoveredValue23) buildEnvironmentInfo.
    (recoveredValue16) putSixGenerationTool: (recoveredValue17) version: (recoveredValue20) options: (recoveredValue22) buildEnvironmentInfo: (recoveredValue24).
    (recoveredValue0) putSixEndModuleInfo.
    ^self
! !

"ASDBase.ic method 0x20356004; bytecode file offset 0xc528ec"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixArithmeticTypeImplementation: recoveredArg1 implementation: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBInterval.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) sixImplTypeValueRange.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) left.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) sixImplTypeValueRange.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack3 := (recoveredStack3) right.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) left: (recoveredStack2) right: (recoveredStack3).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) putSixValueRange: (recoveredStack1).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlVarDecl.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 28].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 34].
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) isIleComplexBaseType.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlComponentClassType.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlBoolean.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 48].
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) mdlComponentClassType.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack0 := (recoveredStack0) isMdlEnumType.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 63] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlVarDecl.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack0) genSixSaturation: (recoveredStack1) impl: (recoveredStack2).
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20375bf0; bytecode file offset 0xc724e8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixExperimentalTarget
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) putSixStartTarget.
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) putSixProcessor: ('MPC750') vendor: ('Motorola').
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) context.
    recoveredValue5 := (recoveredValue4) platform.
    recoveredValue6 := (recoveredValue5) target.
    recoveredValue7 := (recoveredValue6) targetType.
    (recoveredValue3) putSixBoard: (recoveredValue7).
    recoveredValue8 := recoveredValue0.
    recoveredValue9 := (self) context.
    recoveredValue10 := (recoveredValue9) platform.
    recoveredValue11 := (recoveredValue10) compilerTool.
    recoveredValue12 := (recoveredValue11) toolLabel.
    (recoveredValue8) putSixTargetToolNamed: ('GNU C Compiler for Embedded PowerPC target') currentToolLabel: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    (recoveredValue13) putSixEndTarget.
    recoveredValue14 := recoveredValue0.
    (recoveredValue14) putSixStartTarget.
    recoveredValue15 := recoveredValue0.
    (recoveredValue15) putSixBoard: ('INTECRIO Generic Experimental Target').
    recoveredValue16 := recoveredValue0.
    recoveredValue17 := (self) context.
    recoveredValue18 := (recoveredValue17) platform.
    recoveredValue19 := (recoveredValue18) compilerTool.
    recoveredValue20 := (recoveredValue19) toolLabel.
    (recoveredValue16) putSixTargetToolNamed: ('GNU C Compiler') currentToolLabel: (recoveredValue20).
    (recoveredValue0) putSixEndTarget.
    ^self
! !

"ASDBase.ic method 0x2037ab8c; bytecode file offset 0xc7747c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixValueRange: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) minusInfinityValue.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 20.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) left.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) isInfinite.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) positiveInfinityValue.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack1 := (recoveredStack1) right.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) asString.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack2 := 'valueRange'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := 'min'.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack2 := 'max'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20391dc8; bytecode file offset 0xc8e6b8"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixType: recoveredArg1 width: recoveredArg2
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
            recoveredStack2 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isString.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := (recoveredStack1) asCType.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack1) writeHeaderStartEnd.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'typeRef'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := 'name'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            (recoveredStack0) setCurrentTag: (recoveredStack1) attribute: (recoveredStack2) value: (recoveredStack3).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := [:recoveredBlock46Arg1 | 
    | recoveredBlock46Value0 recoveredBlock46Value1 recoveredBlock46Value2 recoveredBlock46Value3 |
    recoveredBlock46Value0 := (self) expander.
    recoveredBlock46Value1 := recoveredArg2.
    recoveredBlock46Value2 := (recoveredBlock46Value1) asString.
    recoveredBlock46Value3 := (recoveredBlock46Value0) setCurrentTag: ('width') attribute: ('value') value: (recoveredBlock46Value2).
    recoveredBlock46Value3
].
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2039de90; bytecode file offset 0xc9a788"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixElement: recoveredArg1 pseudoAddress: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'KP_BLOB'.
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
            recoveredStack1 := (recoveredStack1) isMdlParameter.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCalibration.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := 'DP_BLOB'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'address'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := 'kind'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack3 := 'pseudo'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := 'BLOB'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack2 := 'kind'.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := 'device'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := 'E_TARGET'.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack1) printPlainValue: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203b5320; bytecode file offset 0xcb1c14"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixEnumDefinition: recoveredArg1 enumerationMap: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) setCurrentTag: ('conversion').
    recoveredValue2 := recoveredValue0.
    (recoveredValue2) writeHeaderStart.
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) attribute: ('name') with: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    (recoveredValue5) writeHeaderEnd.
    recoveredValue6 := recoveredValue0.
    (recoveredValue6) setCurrentTag: ('enumeration').
    (recoveredValue0) writeHeaderStartEnd.
    recoveredValue7 := recoveredArg2.
    recoveredValue8 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 recoveredBlock30Value5 recoveredBlock30Value6 recoveredBlock30Value7 recoveredBlock30Value8 recoveredBlock30Value9 recoveredBlock30Value10 recoveredBlock30Value11 |
    recoveredBlock30Value0 := (self) expander.
    recoveredBlock30Value1 := recoveredBlock30Value0.
    (recoveredBlock30Value1) setCurrentTag: ('enumerator').
    recoveredBlock30Value2 := recoveredBlock30Value0.
    (recoveredBlock30Value2) writeHeaderStart.
    recoveredBlock30Value3 := recoveredBlock30Value0.
    recoveredBlock30Value4 := recoveredBlock30Arg1.
    recoveredBlock30Value5 := (recoveredBlock30Value4) enumeratorName.
    (recoveredBlock30Value3) attribute: ('name') with: (recoveredBlock30Value5).
    recoveredBlock30Value6 := recoveredBlock30Value0.
    recoveredBlock30Value7 := recoveredBlock30Arg1.
    recoveredBlock30Value8 := (recoveredBlock30Value7) enumeratorCode.
    recoveredBlock30Value9 := (recoveredBlock30Value8) asString.
    (recoveredBlock30Value6) attribute: ('value') with: (recoveredBlock30Value9).
    recoveredBlock30Value10 := recoveredBlock30Value0.
    (recoveredBlock30Value10) writeHeaderEnd.
    recoveredBlock30Value11 := (recoveredBlock30Value0) writeFooter.
    recoveredBlock30Value11
].
    (recoveredValue7) do: (recoveredValue8).
    recoveredValue9 := (self) expander.
    recoveredValue10 := recoveredValue9.
    (recoveredValue10) writeFooter.
    (recoveredValue9) writeFooter.
    ^self
! !

"ASDBase.ic method 0x203d0648; bytecode file offset 0xcccf48"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixSoftwareTask: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlTimerTask.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 37].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'period'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) writeHeaderStart.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'value'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack4 := (recoveredStack4) period.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack4 := (recoveredStack4) asSecondsFromMicroSeconds.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack2) writeHeaderEnd.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack2 := 'execution'.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := 'trigger'.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack3 := (recoveredStack3) isMdlTimerTask.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            (recoveredStack3) ifTrue: [recoveredPC := 54] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack3 := 'timer'.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredPC := 62.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 'software'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 'priority'.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack3 := (recoveredStack3) prio.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack0) genSixScheduling: (recoveredStack1).
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

"ASDBase.ic method 0x203e3c34; bytecode file offset 0xce0524"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixTaskConstraint: recoveredArg1 taskListContainingProcess: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [:block280f86a0Arg1 :block280f86a0Arg2 | 
    | block280f86a0Value0 block280f86a0Value1 block280f86a0Value2 block280f86a0Value3 block280f86a0Value4 |
    block280f86a0Value0 := block280f86a0Arg1.
    block280f86a0Value1 := (block280f86a0Value0) errLabel.
    block280f86a0Value2 := block280f86a0Arg2.
    block280f86a0Value3 := (block280f86a0Value2) errLabel.
    block280f86a0Value4 := (block280f86a0Value1) < (block280f86a0Value3).
    block280f86a0Value4
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) asSortedCollection: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) expander.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 28.
        ].
        recoveredBlock19Step = 28 ifTrue: [
            recoveredBlock19Stack2 := 'constraint'.
            recoveredBlock19PC := 30.
        ].
        recoveredBlock19Step = 30 ifTrue: [
            (recoveredBlock19Stack1) setCurrentTag: (recoveredBlock19Stack2).
            recoveredBlock19PC := 32.
        ].
        recoveredBlock19Step = 32 ifTrue: [
            (recoveredBlock19Stack0) writeHeaderStartEnd.
            recoveredBlock19PC := 34.
        ].
        recoveredBlock19Step = 34 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 36.
        ].
        recoveredBlock19Step = 36 ifTrue: [
            (recoveredBlock19Stack0) genSixTask: (recoveredBlock19Stack1).
            recoveredBlock19PC := 38.
        ].
        recoveredBlock19Step = 38 ifTrue: [
            recoveredBlock19Stack0 := recoveredBlock19Arg1.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) processSeq.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack0 := recoveredLocal1.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) indexOf: (recoveredBlock19Stack1).
            recoveredBlock19PC := 52.
        ].
        recoveredBlock19Step = 52 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredLocal2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 56.
        ].
        recoveredBlock19Step = 56 ifTrue: [
            recoveredBlock19Stack1 := 1.
            recoveredBlock19PC := 58.
        ].
        recoveredBlock19Step = 58 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) > (recoveredBlock19Stack1).
            recoveredBlock19PC := 59.
        ].
        recoveredBlock19Step = 59 ifTrue: [
            (recoveredBlock19Stack0) ifTrue: [recoveredBlock19PC := 62] ifFalse: [recoveredBlock19PC := 80].
        ].
        recoveredBlock19Step = 62 ifTrue: [
            recoveredBlock19Stack0 := recoveredLocal1.
            recoveredBlock19PC := 65.
        ].
        recoveredBlock19Step = 65 ifTrue: [
            recoveredBlock19Stack1 := recoveredLocal2.
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) + (-1).
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) at: (recoveredBlock19Stack1).
            recoveredBlock19PC := 71.
        ].
        recoveredBlock19Step = 71 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 73.
        ].
        recoveredBlock19Step = 73 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) genSixCName.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            (recoveredBlock19Stack0) putSixPredecessor: (recoveredBlock19Stack1).
            recoveredBlock19PC := 78.
        ].
        recoveredBlock19Step = 78 ifTrue: [
            recoveredBlock19Stack0 := nil.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack0.
            recoveredBlock19PC := 80.
        ].
        recoveredBlock19Step = 80 ifTrue: [
            recoveredBlock19Stack0 := self.
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) expander.
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            recoveredBlock19Stack0 := (recoveredBlock19Stack0) writeFooter.
            recoveredBlock19PC := 84.
        ].
        recoveredBlock19Step = 84 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack0.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20426bcc; bytecode file offset 0xd234bc"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
putSixCInitValue: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := 'initValue'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) writeHeaderStartEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'arrayInitValues'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack1) writeHeaderStartEnd.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := [:recoveredBlock28Arg1 | 
    | recoveredBlock28Stack0 recoveredBlock28Stack1 recoveredBlock28Stack2 recoveredBlock28Stack3 recoveredBlock28PC recoveredBlock28Step recoveredBlock28Done recoveredBlock28Result |
    recoveredBlock28Stack0 := self.
    recoveredBlock28PC := 34.
    recoveredBlock28Done := false.
    [recoveredBlock28Done not] whileTrue: [
        recoveredBlock28Step := recoveredBlock28PC.
        recoveredBlock28Step = 34 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 35.
        ].
        recoveredBlock28Step = 35 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) isCollection.
            recoveredBlock28PC := 36.
        ].
        recoveredBlock28Step = 36 ifTrue: [
            (recoveredBlock28Stack1) ifTrue: [recoveredBlock28PC := 40] ifFalse: [recoveredBlock28PC := 58].
        ].
        recoveredBlock28Step = 40 ifTrue: [
            recoveredBlock28Stack1 := recoveredBlock28Arg1.
            recoveredBlock28PC := 41.
        ].
        recoveredBlock28Step = 41 ifTrue: [
            recoveredBlock28Stack2 := [:recoveredBlock28Block41Arg1 | 
    | recoveredBlock28Block41Value0 recoveredBlock28Block41Value1 |
    recoveredBlock28Block41Value0 := recoveredBlock28Block41Arg1.
    recoveredBlock28Block41Value1 := (self) putSixCInitValue: (recoveredBlock28Block41Value0).
    recoveredBlock28Block41Value1
].
            recoveredBlock28PC := 52.
        ].
        recoveredBlock28Step = 52 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) do: (recoveredBlock28Stack2).
            recoveredBlock28PC := 54.
        ].
        recoveredBlock28Step = 54 ifTrue: [
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 58 ifTrue: [
            recoveredBlock28Stack1 := self.
            recoveredBlock28PC := 59.
        ].
        recoveredBlock28Step = 59 ifTrue: [
            recoveredBlock28Stack2 := recoveredBlock28Arg1.
            recoveredBlock28PC := 60.
        ].
        recoveredBlock28Step = 60 ifTrue: [
            recoveredBlock28Stack1 := (recoveredBlock28Stack1) putSixCInitValue: (recoveredBlock28Stack2).
            recoveredBlock28PC := 62.
        ].
        recoveredBlock28Step = 62 ifTrue: [
            recoveredBlock28Result := recoveredBlock28Stack1.
            recoveredBlock28Done := true.
        ].
    ].
    recoveredBlock28Result
].
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            (recoveredStack1) do: (recoveredStack2).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack2) writeFooter.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredStack1 := (recoveredStack1) plainValue.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) isNumber.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 88].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            (recoveredStack1) putSixCInitPlainValue: (recoveredStack2).
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) isBoolean.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := (recoveredStack2) asInteger.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack2 := (recoveredStack2) asString.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) putSixCInitPlainValue: (recoveredStack2).
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20441e3c; bytecode file offset 0xd3e738"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixModelTypeInfo: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgDistributionType.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlComponentClassType.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) expander.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) generateScoopIX: (recoveredStack2).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack2 := 'width'.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack3 := 'value'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack4 := (recoveredStack4) maxSize.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2) attribute: (recoveredStack3) value: (recoveredStack4).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMatrix.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 46] ifFalse: [recoveredPC := 104].
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlComponentClassType.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack2 := (recoveredStack2) expander.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack1) generateScoopIX: (recoveredStack2).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack3 := 'width'.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) writeHeaderStart.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'value'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack4 := (recoveredStack4) maxXSize.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) writeHeaderEnd.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            (recoveredStack2) writeFooter.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack3 := 'width'.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            (recoveredStack2) writeHeaderStart.
            recoveredStack2 := recoveredStack1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack3 := 'value'.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack4 := (recoveredStack4) maxYSize.
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack4 := (recoveredStack4) asString.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            (recoveredStack2) attribute: (recoveredStack3) with: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            (recoveredStack2) writeHeaderEnd.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredPC := 109.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack2 := (recoveredStack2) expander.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) generateScoopIX: (recoveredStack2).
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2045a9a4; bytecode file offset 0xd572b4"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixSaturation: recoveredArg1 impl: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) getImplType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isRBInteger.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := 'automatic'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlCharTable.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 24] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrLimitOverflow.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrPlainLimitAssignment.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrAutomaticResolution.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 75] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) attributes.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrReduceResolution.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 66] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := 'reduce'.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 75.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := 'keep'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredStack0 := (recoveredStack0) expander.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := 'saturation'.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack1) setCurrentTag: (recoveredStack2).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredStack1 := recoveredStack0.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := 'value'.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack2 := 'resolution'.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack2 := 'assignment'.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack3 := recoveredLocal1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := (recoveredStack3) asString.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) attribute: (recoveredStack2) with: (recoveredStack3).
            recoveredStack1 := recoveredStack0.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            (recoveredStack1) writeHeaderEnd.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            (recoveredStack0) writeFooter.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20473b50; bytecode file offset 0xd70470"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixModelType: recoveredArg1 type: recoveredArg2 impl: recoveredArg3
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
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isVectoredType.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlArray.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlMatrix.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgVariantArray.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 49].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := 10.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := 'variant size element "'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack4 := (recoveredStack4) errLabel.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := '" not supported for SCOOP-IX generation'.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) , (recoveredStack4).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := 'change specification'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) mdlSemErrNo: (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlResource.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 123] ifFalse: [recoveredPC := 56].
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack3 := 'modelType'.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            (recoveredStack2) setCurrentTag: (recoveredStack3).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack1) writeHeaderStart.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) genSixModelTypeInfo: (recoveredStack2).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack2 := 'Call_2007400400'.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := (recoveredStack1) generator.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack2 := (recoveredStack2) notNil.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlVarNeedsImpl: (recoveredStack2).
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 86] ifFalse: [recoveredPC := 118].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBoolean.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 94].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := (recoveredStack1) isIleComplexBaseType.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 102] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlClass.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdlComponentClassType.
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlBoolean.
            recoveredPC := 108.
        ].
        recoveredStep = 108 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 112].
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack2 := recoveredArg3.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack2 := (recoveredStack2) sixModelTypeValueRange.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack1) putSixValueRange: (recoveredStack2).
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack1 := (recoveredStack1) expander.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            (recoveredStack1) writeFooter.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20483acc; bytecode file offset 0xd803c4"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixFlowDirection: recoveredArg1
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
            recoveredStack1 := (recoveredStack1) isMdlMessage.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 127].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInstVarDecl.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 116] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) projectInterface.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) getMsgUsageInfo: (recoveredStack2).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPureFlowDirectionSend.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 32] ifFalse: [recoveredPC := 108].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPureFlowDirectionReceive.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 102].
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack1 := (recoveredStack1) usage.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 50] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := (recoveredStack1) context.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) mdSettings.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) ignoreInternalMessages.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 60].
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) usage.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack1 := (recoveredStack1) size.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) > (recoveredStack2).
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 72] ifFalse: [recoveredPC := 74].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := 'Rl'.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := 'Call_62378'.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlInstVarDecl.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 86].
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) scope.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) optimizations.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgProject.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 98] ifFalse: [recoveredPC := 96].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredPC := 104.
        ].
        recoveredStep = 102 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredPC := 116.
        ].
        recoveredStep = 108 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) isPureFlowDirectionReceive.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 114] ifFalse: [recoveredPC := 116].
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack3 := recoveredLocal2.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            (recoveredStack1) putSixFlowDirectionIn: (recoveredStack2) out: (recoveredStack3).
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 125.
        ].
        recoveredStep = 125 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c9fdc; bytecode file offset 0xdc694c"
!SGAbstractScoopIxGenerator methodsFor: 'recovered'!
genSixFunctionElement: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlProcessDecl.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := ('Rl') == ('Call_62533').
    (self) beginFunctionElement: ('export').
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue3) genSixCName.
    (self) beginCFunctionInterface: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    recoveredValue6 := (recoveredValue5) mdlClass.
    recoveredValue7 := (recoveredValue6) label.
    recoveredValue8 := recoveredLocal1.
    recoveredValue9 := (recoveredValue8) mdlClass.
    recoveredValue10 := (recoveredValue9) label.
    (self) putSixSignature: (recoveredValue7) return: (recoveredValue10).
    (self) putSixCFile.
    (self) endCFunctionInterface.
    recoveredValue11 := recoveredArg1.
    recoveredValue12 := (recoveredValue11) originalId.
    (self) beginModelOrigin: (recoveredValue12).
    recoveredValue13 := recoveredLocal1.
    recoveredValue14 := (recoveredValue13) mdlLabel.
    (self) putSixModelName: (recoveredValue14).
    recoveredValue15 := recoveredArg1.
    recoveredValue16 := (recoveredValue15) originalId.
    (self) putSixModelLink: (recoveredValue16).
    (self) beginModelLocation.
    (self) putSixInnerPathNode.
    recoveredValue17 := recoveredLocal1.
    recoveredValue18 := (recoveredValue17) mdlLabel.
    (self) putSixPathNodeKind: ('asd:process') name: (recoveredValue18).
    (self) endModelLocation.
    recoveredValue19 := recoveredLocal1.
    recoveredValue20 := (recoveredValue19) genSixModelKind.
    recoveredValue21 := recoveredLocal1.
    recoveredValue22 := (recoveredValue21) genSixVisibility.
    (self) beginModelKind: (recoveredValue20) visibility: (recoveredValue22).
    (self) endModelKind.
    (self) beginRunTimeInfo.
    recoveredValue23 := recoveredLocal1.
    recoveredValue24 := (recoveredValue23) attributes.
    recoveredValue25 := (recoveredValue24) isCgAttrFloatUsage.
    recoveredValue26 := (recoveredValue25) printString.
    (self) putSixFPUUsage: (recoveredValue26).
    (self) putSixTerminateTaskUsage: ('false').
    (self) beginMessageAccess.
    recoveredValue27 := recoveredArg1.
    recoveredValue28 := (recoveredValue27) sndMessages.
    (self) genSixMessageAccess: (recoveredValue28) direction: ('send').
    recoveredValue29 := recoveredArg1.
    recoveredValue30 := (recoveredValue29) rcvMessages.
    (self) genSixMessageAccess: (recoveredValue30) direction: ('receive').
    (self) endMessageAccess.
    recoveredValue31 := recoveredLocal1.
    recoveredValue32 := (recoveredValue31) usedResources.
    (self) putSixResourceAccess: (recoveredValue32).
    recoveredValue33 := recoveredLocal1.
    recoveredValue34 := recoveredArg1.
    recoveredValue35 := (recoveredValue34) taskList.
    (self) genSixTaskConstraint: (recoveredValue33) taskListContainingProcess: (recoveredValue35).
    (self) endRunTimeInfo.
    (self) endModelOrigin.
    (self) endFunctionElement.
    ^self
! !

