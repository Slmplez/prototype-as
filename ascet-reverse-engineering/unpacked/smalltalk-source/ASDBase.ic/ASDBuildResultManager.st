"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f364; bytecode file offset 0x90bc70"
!ASDBuildResultManager methodsFor: 'recovered'!
readGenericComponentSourceFromNode: recoveredArg1 context: recoveredArg2
    ^nil
! !

"ASDBase.ic method 0x20015854; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
timestampAttributeName
    ^'timestamp'
! !

"ASDBase.ic method 0x20016f04; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
typeObjectFile
    ^'object'
! !

"ASDBase.ic method 0x20018158; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
typeHCodeFile
    ^'hcode'
! !

"ASDBase.ic method 0x2001817c; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
typeASMCodeFile
    ^'asmcode'
! !

"ASDBase.ic method 0x200182f0; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
typeCCodeFile
    ^'ccode'
! !

"ASDBase.ic method 0x2001919c; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
unitTagName
    ^'unit'
! !

"ASDBase.ic method 0x2001a2dc; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
generateCommandTagName
    ^'generate'
! !

"ASDBase.ic method 0x2001bbb4; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
filesTagName
    ^'files'
! !

"ASDBase.ic method 0x2001d6c0; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
messageTagName
    ^'message'
! !

"ASDBase.ic method 0x2001ee60; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
typeLibraryFile
    ^'library'
! !

"ASDBase.ic method 0x2002000c; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
fileTagName
    ^'file'
! !

"ASDBase.ic method 0x20024cbc; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
compileCommandTagName
    ^'compile'
! !

"ASDBase.ic method 0x200252f8; bytecode file offset 0x92209c"
!ASDBuildResultManager methodsFor: 'recovered'!
optionsAttributeName
    ^'options'
! !

"ASDBase.ic method 0x20026df4; bytecode file offset 0x923928"
!ASDBuildResultManager methodsFor: 'recovered'!
messagesTagName
    ^'messages'
! !

"ASDBase.ic method 0x2002a744; bytecode file offset 0x934580"
!ASDBuildResultManager methodsFor: 'recovered'!
hostAccess
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeManager.
    recoveredValue1 := (recoveredValue0) hostAccess.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003d728; bytecode file offset 0x93bf94"
!ASDBuildResultManager methodsFor: 'recovered'!
codeManager
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCodeManager.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ec38; bytecode file offset 0x93bf94"
!ASDBuildResultManager methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20048f24; bytecode file offset 0x9457e0"
!ASDBuildResultManager methodsFor: 'recovered'!
resetFiles
    files := nil.
    ^self
! !

"ASDBase.ic method 0x2004948c; bytecode file offset 0x947128"
!ASDBuildResultManager methodsFor: 'recovered'!
objectCodeTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) compileCommandTagName.
    recoveredValue1 := (self) timeStampsAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004967c; bytecode file offset 0x947128"
!ASDBuildResultManager methodsFor: 'recovered'!
compileOptionsCRC
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) compileCommandTagName.
    recoveredValue1 := (self) optionsCRCAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049adc; bytecode file offset 0x947128"
!ASDBuildResultManager methodsFor: 'recovered'!
asmCodeFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) typeASMCodeFile.
    recoveredValue1 := (self) filesAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049f4c; bytecode file offset 0x947128"
!ASDBuildResultManager methodsFor: 'recovered'!
cCodeFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) typeCCodeFile.
    recoveredValue1 := (self) filesAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049fec; bytecode file offset 0x947128"
!ASDBuildResultManager methodsFor: 'recovered'!
hCodeFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) typeHCodeFile.
    recoveredValue1 := (self) filesAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a0ec; bytecode file offset 0x947128"
!ASDBuildResultManager methodsFor: 'recovered'!
objectCodeFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) typeObjectFile.
    recoveredValue1 := (self) filesAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a11c; bytecode file offset 0x947128"
!ASDBuildResultManager methodsFor: 'recovered'!
generateTimeStamp
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generateCommandTagName.
    recoveredValue1 := (self) timeStampsAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a64c; bytecode file offset 0x947128"
!ASDBuildResultManager methodsFor: 'recovered'!
libraryFiles
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) typeLibraryFile.
    recoveredValue1 := (self) filesAt: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20062550; bytecode file offset 0x95f8b0"
!ASDBuildResultManager methodsFor: 'recovered'!
applicationTimeStamp
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) generateTimeStamp.
    recoveredValue1 := (self) objectCodeTimeStamp.
    recoveredValue2 := (recoveredValue0) max: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x2006615c; bytecode file offset 0x963428"
!ASDBuildResultManager methodsFor: 'recovered'!
xmlDocument
    | recoveredValue0 |
    recoveredValue0 := xmlDocument.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20069350; bytecode file offset 0x966bdc"
!ASDBuildResultManager methodsFor: 'recovered'!
destinationPath
    | recoveredValue0 |
    recoveredValue0 := destinationPath.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20091800; bytecode file offset 0x98e0cc"
!ASDBuildResultManager methodsFor: 'recovered'!
initialize
    super initialize.
    ^self
! !

"ASDBase.ic method 0x20093860; bytecode file offset 0x9904ac"
!ASDBuildResultManager methodsFor: 'recovered'!
compileOptionsCRC: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) compileCommandTagName.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) optionsCRCAt: (recoveredValue0) put: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x200a0a10; bytecode file offset 0x99d3ac"
!ASDBuildResultManager methodsFor: 'recovered'!
touch
    (self) resetXmlDocument.
    (self) resetFiles.
    ^self
! !

"ASDBase.ic method 0x200a530c; bytecode file offset 0x9a1dc8"
!ASDBuildResultManager methodsFor: 'recovered'!
objectCodeTimeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) compileCommandTagName.
    recoveredValue1 := recoveredArg1.
    (self) timeStampsAt: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200a545c; bytecode file offset 0x9a1dc8"
!ASDBuildResultManager methodsFor: 'recovered'!
generateTimeStamp: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) generateCommandTagName.
    recoveredValue1 := recoveredArg1.
    (self) timeStampsAt: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200be2ac; bytecode file offset 0x9bb178"
!ASDBuildResultManager methodsFor: 'recovered'!
xmlDocument: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    xmlDocument := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1158; bytecode file offset 0x9bdf14"
!ASDBuildResultManager methodsFor: 'recovered'!
destinationPath: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    destinationPath := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c8a74; bytecode file offset 0x9c5380"
!ASDBuildResultManager methodsFor: 'recovered'!
filesAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    recoveredValue2 := [].
    recoveredValue3 := (self) filesAt: (recoveredValue0) put: (recoveredValue1) ifFail: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x20127230; bytecode file offset 0xa23af8"
!ASDBuildResultManager methodsFor: 'recovered'!
readASCETLinkSourceFromNode: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getAttribute: ('ascetLink').
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := SGLmASCETLinkSource.
    recoveredValue3 := (recoveredValue2) create.
    recoveredValue4 := recoveredValue3.
    recoveredValue5 := recoveredLocal1.
    (recoveredValue4) ascetLink: (recoveredValue5).
    ^recoveredValue3
! !

"ASDBase.ic method 0x2013ab24; bytecode file offset 0xa373e0"
!ASDBuildResultManager methodsFor: 'recovered'!
commands
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := commands.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initializeCommands.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := commands.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2013ad88; bytecode file offset 0xa37644"
!ASDBuildResultManager methodsFor: 'recovered'!
files
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := files.
    recoveredValue1 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) initializeFilesTable.
    recoveredBlock6Value0
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := files.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20146614; bytecode file offset 0xa42f4c"
!ASDBuildResultManager methodsFor: 'recovered'!
filesAt: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) files.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280cc684Value0 block280cc684Value1 |
    block280cc684Value0 := OrderedCollection.
    block280cc684Value1 := (block280cc684Value0) new.
    block280cc684Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsentPut: (recoveredStack2).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201473a8; bytecode file offset 0xa43cb8"
!ASDBuildResultManager methodsFor: 'recovered'!
addObjectFile: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) typeObjectFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) filesAt: (recoveredValue0) put: (recoveredValue1) ifFail: (recoveredValue2).
    recoveredValue3 := (self) typeObjectFile.
    recoveredValue4 := recoveredArg1.
    (self) updateXmlDocumentFilesType: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201473bc; bytecode file offset 0xa43cb8"
!ASDBuildResultManager methodsFor: 'recovered'!
addCCodeFile: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) typeCCodeFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) filesAt: (recoveredValue0) put: (recoveredValue1) ifFail: (recoveredValue2).
    recoveredValue3 := (self) typeCCodeFile.
    recoveredValue4 := recoveredArg1.
    (self) updateXmlDocumentFilesType: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201473d0; bytecode file offset 0xa43cb8"
!ASDBuildResultManager methodsFor: 'recovered'!
addLibraryFile: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) typeLibraryFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) filesAt: (recoveredValue0) put: (recoveredValue1) ifFail: (recoveredValue2).
    recoveredValue3 := (self) typeLibraryFile.
    recoveredValue4 := recoveredArg1.
    (self) updateXmlDocumentFilesType: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201473e4; bytecode file offset 0xa43cb8"
!ASDBuildResultManager methodsFor: 'recovered'!
addASMCodeFile: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) typeASMCodeFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) filesAt: (recoveredValue0) put: (recoveredValue1) ifFail: (recoveredValue2).
    recoveredValue3 := (self) typeASMCodeFile.
    recoveredValue4 := recoveredArg1.
    (self) updateXmlDocumentFilesType: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201473f8; bytecode file offset 0xa43cb8"
!ASDBuildResultManager methodsFor: 'recovered'!
addHCodeFile: recoveredArg1 ifFail: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) typeHCodeFile.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (self) filesAt: (recoveredValue0) put: (recoveredValue1) ifFail: (recoveredValue2).
    recoveredValue3 := (self) typeHCodeFile.
    recoveredValue4 := recoveredArg1.
    (self) updateXmlDocumentFilesType: (recoveredValue3) put: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20154d24; bytecode file offset 0xa51608"
!ASDBuildResultManager methodsFor: 'recovered'!
optionsCRCAt: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) commandsAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionsAttributeName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20154d40; bytecode file offset 0xa51608"
!ASDBuildResultManager methodsFor: 'recovered'!
timeStampsAt: recoveredArg1
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
            recoveredStack0 := (recoveredStack0) commandsAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) timestampAttributeName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := [
    0
].
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2015b10c; bytecode file offset 0xa579f0"
!ASDBuildResultManager methodsFor: 'recovered'!
timeStampsAt: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) commandsAt: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue1) attributes.
    recoveredValue4 := (self) timestampAttributeName.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) updateXmlDocumentCommandInfo: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2015b128; bytecode file offset 0xa579f0"
!ASDBuildResultManager methodsFor: 'recovered'!
optionsCRCAt: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) commandsAt: (recoveredValue0).
    recoveredValue2 := recoveredValue1.
    recoveredLocal1 := recoveredValue2.
    recoveredValue3 := (recoveredValue1) attributes.
    recoveredValue4 := (self) optionsAttributeName.
    recoveredValue5 := recoveredArg2.
    (recoveredValue3) at: (recoveredValue4) put: (recoveredValue5).
    recoveredValue6 := recoveredLocal1.
    (self) updateXmlDocumentCommandInfo: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20190f48; bytecode file offset 0xa8d814"
!ASDBuildResultManager methodsFor: 'recovered'!
resetXmlDocument
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) xmlDocumentClass.
    recoveredValue2 := (recoveredValue1) new.
    xmlDocument := recoveredValue2.
    recoveredValue3 := xmlDocument.
    recoveredValue4 := xmlDocument.
    recoveredValue5 := (self) class.
    recoveredValue6 := (recoveredValue5) xmlDocumentClass.
    recoveredValue7 := (recoveredValue6) rootNodeName.
    recoveredValue8 := (recoveredValue4) createElement: (recoveredValue7).
    (recoveredValue3) addTag: (recoveredValue8).
    recoveredValue9 := xmlDocument.
    ^recoveredValue9
! !

"ASDBase.ic method 0x20196874; bytecode file offset 0xa93138"
!ASDBuildResultManager methodsFor: 'recovered'!
commandsAt: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) commands.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := [
    | recoveredBlock8Value0 recoveredBlock8Value1 recoveredBlock8Value2 |
    recoveredBlock8Value0 := ASDCommandInfo.
    recoveredBlock8Value1 := recoveredArg1.
    recoveredBlock8Value2 := (recoveredBlock8Value0) create: (recoveredBlock8Value1).
    recoveredBlock8Value2
].
    recoveredValue3 := (recoveredValue0) at: (recoveredValue1) ifAbsentPut: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x201bec14; bytecode file offset 0xabb4d8"
!ASDBuildResultManager methodsFor: 'recovered'!
filesAt: recoveredArg1 put: recoveredArg2 ifFail: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) filesAt: (recoveredStack1).
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) includes: (recoveredStack1).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := recoveredArg3.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) value.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredPC := 24.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2028c9c8; bytecode file offset 0xb892a0"
!ASDBuildResultManager methodsFor: 'recovered'!
xmlDocumentNodeFiles
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlDocument.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block280e2248Arg1 | 
    | block280e2248Value0 block280e2248Value1 block280e2248Value2 |
    block280e2248Value0 := block280e2248Arg1.
    block280e2248Value1 := (block280e2248Value0) name.
    block280e2248Value2 := (block280e2248Value1) = ('files').
    block280e2248Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 |
    recoveredBlock19Value0 := (self) xmlDocument.
    recoveredBlock19Value1 := (recoveredBlock19Value0) createElement: ('files').
    recoveredBlock19Local1 := recoveredBlock19Value1.
    recoveredBlock19Value2 := (self) xmlDocument.
    recoveredBlock19Value3 := (recoveredBlock19Value2) rootTag.
    recoveredBlock19Value4 := recoveredBlock19Local1.
    (recoveredBlock19Value3) appendChild: (recoveredBlock19Value4).
    recoveredBlock19Value5 := recoveredBlock19Local1.
    recoveredBlock19Value5
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202c6ea4; bytecode file offset 0xbc3774"
!ASDBuildResultManager methodsFor: 'recovered'!
readSingleSourceFromNode: recoveredArg1 context: recoveredArg2
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'fileSource'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 18].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) readFileSourceFromNode: (recoveredStack2) context: (recoveredStack3).
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
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := 'genericComponentSource'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) readGenericComponentSourceFromNode: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack2 := 'ascetLinkSource'.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 46].
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
            recoveredStack1 := (recoveredStack1) readASCETLinkSourceFromNode: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20381a44; bytecode file offset 0xc7e324"
!ASDBuildResultManager methodsFor: 'recovered'!
updateXmlDocumentFilesType: recoveredArg1 put: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 |
    recoveredValue0 := (self) xmlDocumentNodeFiles.
    recoveredLocal3 := recoveredValue0.
    recoveredValue1 := (self) xmlDocument.
    recoveredValue2 := (self) fileTagName.
    recoveredValue3 := (recoveredValue1) createElement: (recoveredValue2).
    recoveredLocal2 := recoveredValue3.
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := [
    | recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 |
    recoveredBlock19Value0 := recoveredLocal2.
    recoveredBlock19Value1 := recoveredArg1.
    recoveredBlock19Value2 := (recoveredBlock19Value1) asLowercase.
    recoveredBlock19Value3 := (recoveredBlock19Value0) setAttribute: ('type') value: (recoveredBlock19Value2).
    recoveredBlock19Value3
].
    (recoveredValue4) notNil: (recoveredValue5).
    recoveredValue6 := recoveredLocal3.
    recoveredValue7 := recoveredLocal2.
    (recoveredValue6) appendChild: (recoveredValue7).
    recoveredValue8 := (self) xmlDocument.
    recoveredValue9 := recoveredArg2.
    recoveredValue10 := (recoveredValue9) asString.
    recoveredValue11 := (recoveredValue8) createTextNode: (recoveredValue10).
    recoveredLocal1 := recoveredValue11.
    recoveredValue12 := recoveredLocal2.
    recoveredValue13 := recoveredLocal1.
    (recoveredValue12) appendChild: (recoveredValue13).
    ^self
! !

"ASDBase.ic method 0x20436dac; bytecode file offset 0xd336a4"
!ASDBuildResultManager methodsFor: 'recovered'!
initializeCommands
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    commands := recoveredValue1.
    recoveredValue2 := (self) xmlDocument.
    recoveredValue3 := (recoveredValue2) getElementsByTagName: ('command').
    recoveredLocal1 := recoveredValue3.
    recoveredValue4 := recoveredLocal1.
    recoveredValue5 := [:recoveredBlock16Arg1 | 
    | recoveredBlock16Local1 recoveredBlock16Local2 recoveredBlock16Local3 recoveredBlock16Stack0 recoveredBlock16Stack1 recoveredBlock16Stack2 recoveredBlock16Stack3 recoveredBlock16Stack4 recoveredBlock16PC recoveredBlock16Step recoveredBlock16Done recoveredBlock16Result |
    recoveredBlock16Stack0 := self.
    recoveredBlock16PC := 22.
    recoveredBlock16Done := false.
    [recoveredBlock16Done not] whileTrue: [
        recoveredBlock16Step := recoveredBlock16PC.
        recoveredBlock16Step = 22 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 23.
        ].
        recoveredBlock16Step = 23 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 24.
        ].
        recoveredBlock16Step = 24 ifTrue: [
            recoveredBlock16Stack3 := 'type'.
            recoveredBlock16PC := 26.
        ].
        recoveredBlock16Step = 26 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getAttributeNode: (recoveredBlock16Stack3).
            recoveredBlock16PC := 28.
        ].
        recoveredBlock16Step = 28 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 29.
        ].
        recoveredBlock16Step = 29 ifTrue: [
            recoveredBlock16Local3 := recoveredBlock16Stack3.
            recoveredBlock16PC := 30.
        ].
        recoveredBlock16Step = 30 ifTrue: [
            (recoveredBlock16Stack2 == nil) ifTrue: [recoveredBlock16PC := 102] ifFalse: [recoveredBlock16PC := 34].
        ].
        recoveredBlock16Step = 34 ifTrue: [
            recoveredBlock16PC := 35.
        ].
        recoveredBlock16Step = 35 ifTrue: [
            recoveredBlock16Stack1 := ASDCommandInfo.
            recoveredBlock16PC := 37.
        ].
        recoveredBlock16Step = 37 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local3.
            recoveredBlock16PC := 38.
        ].
        recoveredBlock16Step = 38 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) value.
            recoveredBlock16PC := 40.
        ].
        recoveredBlock16Step = 40 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) create: (recoveredBlock16Stack2).
            recoveredBlock16PC := 42.
        ].
        recoveredBlock16Step = 42 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack1.
            recoveredBlock16PC := 43.
        ].
        recoveredBlock16Step = 43 ifTrue: [
            recoveredBlock16Stack1 := commands.
            recoveredBlock16PC := 45.
        ].
        recoveredBlock16Step = 45 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Local1.
            recoveredBlock16PC := 46.
        ].
        recoveredBlock16Step = 46 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) id.
            recoveredBlock16PC := 48.
        ].
        recoveredBlock16Step = 48 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local1.
            recoveredBlock16PC := 49.
        ].
        recoveredBlock16Step = 49 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 51.
        ].
        recoveredBlock16Step = 51 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Arg1.
            recoveredBlock16PC := 52.
        ].
        recoveredBlock16Step = 52 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 53.
        ].
        recoveredBlock16Step = 53 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) timestampAttributeName.
            recoveredBlock16PC := 55.
        ].
        recoveredBlock16Step = 55 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) getAttributeNode: (recoveredBlock16Stack2).
            recoveredBlock16PC := 57.
        ].
        recoveredBlock16Step = 57 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Stack1.
            recoveredBlock16PC := 58.
        ].
        recoveredBlock16Step = 58 ifTrue: [
            recoveredBlock16Local3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 59.
        ].
        recoveredBlock16Step = 59 ifTrue: [
            (recoveredBlock16Stack1 == nil) ifTrue: [recoveredBlock16PC := 75] ifFalse: [recoveredBlock16PC := 62].
        ].
        recoveredBlock16Step = 62 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 63.
        ].
        recoveredBlock16Step = 63 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) attributes.
            recoveredBlock16PC := 65.
        ].
        recoveredBlock16Step = 65 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 66.
        ].
        recoveredBlock16Step = 66 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) timestampAttributeName.
            recoveredBlock16PC := 68.
        ].
        recoveredBlock16Step = 68 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local3.
            recoveredBlock16PC := 69.
        ].
        recoveredBlock16Step = 69 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) value.
            recoveredBlock16PC := 71.
        ].
        recoveredBlock16Step = 71 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) asInteger.
            recoveredBlock16PC := 73.
        ].
        recoveredBlock16Step = 73 ifTrue: [
            (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 75.
        ].
        recoveredBlock16Step = 75 ifTrue: [
            recoveredBlock16Stack1 := nil.
            recoveredBlock16PC := 76.
        ].
        recoveredBlock16Step = 76 ifTrue: [
            recoveredBlock16Stack2 := recoveredBlock16Arg1.
            recoveredBlock16PC := 77.
        ].
        recoveredBlock16Step = 77 ifTrue: [
            recoveredBlock16Stack3 := self.
            recoveredBlock16PC := 78.
        ].
        recoveredBlock16Step = 78 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) optionsAttributeName.
            recoveredBlock16PC := 80.
        ].
        recoveredBlock16Step = 80 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) getAttributeNode: (recoveredBlock16Stack3).
            recoveredBlock16PC := 82.
        ].
        recoveredBlock16Step = 82 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Stack2.
            recoveredBlock16PC := 83.
        ].
        recoveredBlock16Step = 83 ifTrue: [
            recoveredBlock16Local3 := recoveredBlock16Stack3.
            recoveredBlock16PC := 84.
        ].
        recoveredBlock16Step = 84 ifTrue: [
            (recoveredBlock16Stack2 == nil) ifTrue: [recoveredBlock16PC := 100] ifFalse: [recoveredBlock16PC := 88].
        ].
        recoveredBlock16Step = 88 ifTrue: [
            recoveredBlock16PC := 89.
        ].
        recoveredBlock16Step = 89 ifTrue: [
            recoveredBlock16Stack1 := recoveredBlock16Local1.
            recoveredBlock16PC := 90.
        ].
        recoveredBlock16Step = 90 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) attributes.
            recoveredBlock16PC := 92.
        ].
        recoveredBlock16Step = 92 ifTrue: [
            recoveredBlock16Stack2 := self.
            recoveredBlock16PC := 93.
        ].
        recoveredBlock16Step = 93 ifTrue: [
            recoveredBlock16Stack2 := (recoveredBlock16Stack2) optionsAttributeName.
            recoveredBlock16PC := 95.
        ].
        recoveredBlock16Step = 95 ifTrue: [
            recoveredBlock16Stack3 := recoveredBlock16Local3.
            recoveredBlock16PC := 96.
        ].
        recoveredBlock16Step = 96 ifTrue: [
            recoveredBlock16Stack3 := (recoveredBlock16Stack3) value.
            recoveredBlock16PC := 98.
        ].
        recoveredBlock16Step = 98 ifTrue: [
            recoveredBlock16Stack1 := (recoveredBlock16Stack1) at: (recoveredBlock16Stack2) put: (recoveredBlock16Stack3).
            recoveredBlock16PC := 100.
        ].
        recoveredBlock16Step = 100 ifTrue: [
            recoveredBlock16Stack2 := nil.
            recoveredBlock16PC := 101.
        ].
        recoveredBlock16Step = 101 ifTrue: [
            recoveredBlock16Local1 := recoveredBlock16Stack2.
            recoveredBlock16PC := 102.
        ].
        recoveredBlock16Step = 102 ifTrue: [
            recoveredBlock16Result := recoveredBlock16Stack1.
            recoveredBlock16Done := true.
        ].
    ].
    recoveredBlock16Result
].
    (recoveredValue4) do: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x204a7ed4; bytecode file offset 0xda47cc"
!ASDBuildResultManager methodsFor: 'recovered'!
updateXmlDocumentCommandInfo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlDocument.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := [:block28104f14Arg1 | 
    | block28104f14Value0 block28104f14Value1 block28104f14Value2 |
    block28104f14Value0 := block28104f14Arg1.
    block28104f14Value1 := (block28104f14Value0) name.
    block28104f14Value2 := (block28104f14Value1) = ('administration').
    block28104f14Value2
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock19Local1 recoveredBlock19Value0 recoveredBlock19Value1 recoveredBlock19Value2 recoveredBlock19Value3 recoveredBlock19Value4 recoveredBlock19Value5 |
    recoveredBlock19Value0 := (self) xmlDocument.
    recoveredBlock19Value1 := (recoveredBlock19Value0) createElement: ('administration').
    recoveredBlock19Local1 := recoveredBlock19Value1.
    recoveredBlock19Value2 := (self) xmlDocument.
    recoveredBlock19Value3 := (recoveredBlock19Value2) rootTag.
    recoveredBlock19Value4 := recoveredBlock19Local1.
    (recoveredBlock19Value3) appendChild: (recoveredBlock19Value4).
    recoveredBlock19Value5 := recoveredBlock19Local1.
    recoveredBlock19Value5
].
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Stack0 recoveredBlock49Stack1 recoveredBlock49Stack2 recoveredBlock49Stack3 recoveredBlock49Stack4 recoveredBlock49PC recoveredBlock49Step recoveredBlock49Done recoveredBlock49Result |
    recoveredBlock49Stack0 := self.
    recoveredBlock49PC := 56.
    recoveredBlock49Done := false.
    [recoveredBlock49Done not] whileTrue: [
        recoveredBlock49Step := recoveredBlock49PC.
        recoveredBlock49Step = 56 ifTrue: [
            recoveredBlock49Stack1 := false.
            recoveredBlock49PC := 57.
        ].
        recoveredBlock49Step = 57 ifTrue: [
            recoveredBlock49Stack2 := recoveredBlock49Arg1.
            recoveredBlock49PC := 58.
        ].
        recoveredBlock49Step = 58 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) name.
            recoveredBlock49PC := 60.
        ].
        recoveredBlock49Step = 60 ifTrue: [
            recoveredBlock49Stack3 := 'command'.
            recoveredBlock49PC := 62.
        ].
        recoveredBlock49Step = 62 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) = (recoveredBlock49Stack3).
            recoveredBlock49PC := 63.
        ].
        recoveredBlock49Step = 63 ifTrue: [
            (recoveredBlock49Stack2) ifTrue: [recoveredBlock49PC := 66] ifFalse: [recoveredBlock49PC := 78].
        ].
        recoveredBlock49Step = 66 ifTrue: [
            recoveredBlock49PC := 67.
        ].
        recoveredBlock49Step = 67 ifTrue: [
            recoveredBlock49Stack1 := recoveredBlock49Arg1.
            recoveredBlock49PC := 68.
        ].
        recoveredBlock49Step = 68 ifTrue: [
            recoveredBlock49Stack2 := 'type'.
            recoveredBlock49PC := 70.
        ].
        recoveredBlock49Step = 70 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) getAttribute: (recoveredBlock49Stack2).
            recoveredBlock49PC := 72.
        ].
        recoveredBlock49Step = 72 ifTrue: [
            recoveredBlock49Stack2 := recoveredArg1.
            recoveredBlock49PC := 75.
        ].
        recoveredBlock49Step = 75 ifTrue: [
            recoveredBlock49Stack2 := (recoveredBlock49Stack2) id.
            recoveredBlock49PC := 77.
        ].
        recoveredBlock49Step = 77 ifTrue: [
            recoveredBlock49Stack1 := (recoveredBlock49Stack1) = (recoveredBlock49Stack2).
            recoveredBlock49PC := 78.
        ].
        recoveredBlock49Step = 78 ifTrue: [
            recoveredBlock49Result := recoveredBlock49Stack1.
            recoveredBlock49Done := true.
        ].
    ].
    recoveredBlock49Result
].
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock79Local1 recoveredBlock79Value0 recoveredBlock79Value1 recoveredBlock79Value2 recoveredBlock79Value3 recoveredBlock79Value4 recoveredBlock79Value5 recoveredBlock79Value6 recoveredBlock79Value7 |
    recoveredBlock79Value0 := (self) xmlDocument.
    recoveredBlock79Value1 := (recoveredBlock79Value0) createElement: ('command').
    recoveredBlock79Local1 := recoveredBlock79Value1.
    recoveredBlock79Value2 := recoveredBlock79Local1.
    recoveredBlock79Value3 := recoveredArg1.
    recoveredBlock79Value4 := (recoveredBlock79Value3) id.
    (recoveredBlock79Value2) setAttribute: ('type') value: (recoveredBlock79Value4).
    recoveredBlock79Value5 := recoveredLocal2.
    recoveredBlock79Value6 := recoveredBlock79Local1.
    (recoveredBlock79Value5) appendChild: (recoveredBlock79Value6).
    recoveredBlock79Value7 := recoveredBlock79Local1.
    recoveredBlock79Value7
].
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 118.
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 120.
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := [:recoveredBlock120Arg1 :recoveredBlock120Arg2 | 
    | recoveredBlock120Value0 recoveredBlock120Value1 recoveredBlock120Value2 recoveredBlock120Value3 recoveredBlock120Value4 |
    recoveredBlock120Value0 := recoveredLocal1.
    recoveredBlock120Value1 := recoveredBlock120Arg1.
    recoveredBlock120Value2 := recoveredBlock120Arg2.
    recoveredBlock120Value3 := (recoveredBlock120Value2) asString.
    recoveredBlock120Value4 := (recoveredBlock120Value0) setAttribute: (recoveredBlock120Value1) value: (recoveredBlock120Value3).
    recoveredBlock120Value4
].
            recoveredPC := 136.
        ].
        recoveredStep = 136 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204bf584; bytecode file offset 0xdbbe88"
!ASDBuildResultManager methodsFor: 'recovered'!
readMessages: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlDocument.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 12] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
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
            recoveredStack0 := (recoveredStack0) xmlDocument.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := (recoveredStack0) first.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) name.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) messagesTagName.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) equals: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 38] ifFalse: [recoveredPC := 36].
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := [:recoveredBlock42Arg1 | 
    | recoveredBlock42Local1 recoveredBlock42Local2 recoveredBlock42Local3 recoveredBlock42Stack0 recoveredBlock42Stack1 recoveredBlock42Stack2 recoveredBlock42Stack3 recoveredBlock42Stack4 recoveredBlock42Stack5 recoveredBlock42PC recoveredBlock42Step recoveredBlock42Done recoveredBlock42Result |
    recoveredBlock42Stack0 := self.
    recoveredBlock42PC := 48.
    recoveredBlock42Done := false.
    [recoveredBlock42Done not] whileTrue: [
        recoveredBlock42Step := recoveredBlock42PC.
        recoveredBlock42Step = 48 ifTrue: [
            recoveredBlock42Stack1 := nil.
            recoveredBlock42PC := 49.
        ].
        recoveredBlock42Step = 49 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 50.
        ].
        recoveredBlock42Step = 50 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) name.
            recoveredBlock42PC := 52.
        ].
        recoveredBlock42Step = 52 ifTrue: [
            recoveredBlock42Stack3 := self.
            recoveredBlock42PC := 53.
        ].
        recoveredBlock42Step = 53 ifTrue: [
            recoveredBlock42Stack3 := (recoveredBlock42Stack3) unitTagName.
            recoveredBlock42PC := 55.
        ].
        recoveredBlock42Step = 55 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) equals: (recoveredBlock42Stack3).
            recoveredBlock42PC := 57.
        ].
        recoveredBlock42Step = 57 ifTrue: [
            (recoveredBlock42Stack2) ifTrue: [recoveredBlock42PC := 60] ifFalse: [recoveredBlock42PC := 144].
        ].
        recoveredBlock42Step = 60 ifTrue: [
            recoveredBlock42PC := 61.
        ].
        recoveredBlock42Step = 61 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 62.
        ].
        recoveredBlock42Step = 62 ifTrue: [
            recoveredBlock42Stack2 := 'id'.
            recoveredBlock42PC := 64.
        ].
        recoveredBlock42Step = 64 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) getAttribute: (recoveredBlock42Stack2).
            recoveredBlock42PC := 66.
        ].
        recoveredBlock42Step = 66 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) asString.
            recoveredBlock42PC := 68.
        ].
        recoveredBlock42Step = 68 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Stack1.
            recoveredBlock42PC := 69.
        ].
        recoveredBlock42Step = 69 ifTrue: [
            recoveredBlock42Local2 := recoveredBlock42Stack2.
            recoveredBlock42PC := 70.
        ].
        recoveredBlock42Step = 70 ifTrue: [
            recoveredBlock42Stack2 := self.
            recoveredBlock42PC := 71.
        ].
        recoveredBlock42Step = 71 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) errorHandler.
            recoveredBlock42PC := 73.
        ].
        recoveredBlock42Step = 73 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) currentUnitId.
            recoveredBlock42PC := 75.
        ].
        recoveredBlock42Step = 75 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) equals: (recoveredBlock42Stack2).
            recoveredBlock42PC := 77.
        ].
        recoveredBlock42Step = 77 ifTrue: [
            (recoveredBlock42Stack1) ifTrue: [recoveredBlock42PC := 80] ifFalse: [recoveredBlock42PC := 100].
        ].
        recoveredBlock42Step = 80 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 81.
        ].
        recoveredBlock42Step = 81 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) contents.
            recoveredBlock42PC := 82.
        ].
        recoveredBlock42Step = 82 ifTrue: [
            recoveredBlock42Stack2 := [:recoveredBlock42Block82Arg1 | 
    | recoveredBlock42Block82Value0 recoveredBlock42Block82Value1 recoveredBlock42Block82Value2 |
    recoveredBlock42Block82Value0 := recoveredBlock42Block82Arg1.
    recoveredBlock42Block82Value1 := recoveredArg1.
    recoveredBlock42Block82Value2 := (self) readUnitsFromNode: (recoveredBlock42Block82Value0) context: (recoveredBlock42Block82Value1).
    recoveredBlock42Block82Value2
].
            recoveredBlock42PC := 95.
        ].
        recoveredBlock42Step = 95 ifTrue: [
            (recoveredBlock42Stack1) do: (recoveredBlock42Stack2).
            recoveredBlock42PC := 97.
        ].
        recoveredBlock42Step = 97 ifTrue: [
            recoveredBlock42PC := 139.
        ].
        recoveredBlock42Step = 100 ifTrue: [
            recoveredBlock42Stack1 := self.
            recoveredBlock42PC := 101.
        ].
        recoveredBlock42Step = 101 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 102.
        ].
        recoveredBlock42Step = 102 ifTrue: [
            recoveredBlock42Stack3 := recoveredArg1.
            recoveredBlock42PC := 105.
        ].
        recoveredBlock42Step = 105 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) readMessageSourceFromNode: (recoveredBlock42Stack2) context: (recoveredBlock42Stack3).
            recoveredBlock42PC := 107.
        ].
        recoveredBlock42Step = 107 ifTrue: [
            recoveredBlock42Local1 := recoveredBlock42Stack1.
            recoveredBlock42PC := 108.
        ].
        recoveredBlock42Step = 108 ifTrue: [
            recoveredBlock42Stack1 := self.
            recoveredBlock42PC := 109.
        ].
        recoveredBlock42Step = 109 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) errorHandler.
            recoveredBlock42PC := 111.
        ].
        recoveredBlock42Step = 111 ifTrue: [
            recoveredBlock42Stack2 := recoveredBlock42Arg1.
            recoveredBlock42PC := 112.
        ].
        recoveredBlock42Step = 112 ifTrue: [
            recoveredBlock42Stack3 := 'label'.
            recoveredBlock42PC := 114.
        ].
        recoveredBlock42Step = 114 ifTrue: [
            recoveredBlock42Stack2 := (recoveredBlock42Stack2) getAttribute: (recoveredBlock42Stack3).
            recoveredBlock42PC := 116.
        ].
        recoveredBlock42Step = 116 ifTrue: [
            recoveredBlock42Stack3 := recoveredBlock42Local2.
            recoveredBlock42PC := 117.
        ].
        recoveredBlock42Step = 117 ifTrue: [
            recoveredBlock42Stack4 := recoveredBlock42Local1.
            recoveredBlock42PC := 118.
        ].
        recoveredBlock42Step = 118 ifTrue: [
            (recoveredBlock42Stack1) beginUnit: (recoveredBlock42Stack2) id: (recoveredBlock42Stack3) source: (recoveredBlock42Stack4).
            recoveredBlock42PC := 121.
        ].
        recoveredBlock42Step = 121 ifTrue: [
            recoveredBlock42Stack1 := recoveredBlock42Arg1.
            recoveredBlock42PC := 122.
        ].
        recoveredBlock42Step = 122 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) contents.
            recoveredBlock42PC := 123.
        ].
        recoveredBlock42Step = 123 ifTrue: [
            recoveredBlock42Stack2 := [:recoveredBlock42Block123Arg1 | 
    | recoveredBlock42Block123Value0 recoveredBlock42Block123Value1 recoveredBlock42Block123Value2 |
    recoveredBlock42Block123Value0 := recoveredBlock42Block123Arg1.
    recoveredBlock42Block123Value1 := recoveredArg1.
    recoveredBlock42Block123Value2 := (self) readUnitsFromNode: (recoveredBlock42Block123Value0) context: (recoveredBlock42Block123Value1).
    recoveredBlock42Block123Value2
].
            recoveredBlock42PC := 137.
        ].
        recoveredBlock42Step = 137 ifTrue: [
            (recoveredBlock42Stack1) do: (recoveredBlock42Stack2).
            recoveredBlock42PC := 139.
        ].
        recoveredBlock42Step = 139 ifTrue: [
            recoveredBlock42Stack1 := self.
            recoveredBlock42PC := 140.
        ].
        recoveredBlock42Step = 140 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) errorHandler.
            recoveredBlock42PC := 142.
        ].
        recoveredBlock42Step = 142 ifTrue: [
            recoveredBlock42Stack1 := (recoveredBlock42Stack1) endUnit.
            recoveredBlock42PC := 144.
        ].
        recoveredBlock42Step = 144 ifTrue: [
            recoveredBlock42Result := recoveredBlock42Stack1.
            recoveredBlock42Done := true.
        ].
    ].
    recoveredBlock42Result
].
            recoveredPC := 145.
        ].
        recoveredStep = 145 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 148.
        ].
        recoveredStep = 148 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204c9c20; bytecode file offset 0xdc650c"
!ASDBuildResultManager methodsFor: 'recovered'!
readMessageSourceFromNode: recoveredArg1 context: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) contents.
    recoveredValue2 := [:recoveredBlock8Arg1 | 
    | recoveredBlock8Local1 recoveredBlock8Local2 recoveredBlock8Local3 recoveredBlock8Stack0 recoveredBlock8Stack1 recoveredBlock8Stack2 recoveredBlock8Stack3 recoveredBlock8Stack4 recoveredBlock8PC recoveredBlock8Step recoveredBlock8Done recoveredBlock8Result |
    recoveredBlock8Stack0 := self.
    recoveredBlock8PC := 14.
    recoveredBlock8Done := false.
    [recoveredBlock8Done not] whileTrue: [
        recoveredBlock8Step := recoveredBlock8PC.
        recoveredBlock8Step = 14 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 17.
        ].
        recoveredBlock8Step = 17 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) name.
            recoveredBlock8PC := 18.
        ].
        recoveredBlock8Step = 18 ifTrue: [
            recoveredBlock8Stack2 := 'multiSource'.
            recoveredBlock8PC := 20.
        ].
        recoveredBlock8Step = 20 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) equals: (recoveredBlock8Stack2).
            recoveredBlock8PC := 21.
        ].
        recoveredBlock8Step = 21 ifTrue: [
            (recoveredBlock8Stack1) ifTrue: [recoveredBlock8PC := 24] ifFalse: [recoveredBlock8PC := 138].
        ].
        recoveredBlock8Step = 24 ifTrue: [
            recoveredBlock8Stack1 := OrderedCollection.
            recoveredBlock8PC := 26.
        ].
        recoveredBlock8Step = 26 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) new.
            recoveredBlock8PC := 28.
        ].
        recoveredBlock8Step = 28 ifTrue: [
            recoveredBlock8Local2 := recoveredBlock8Stack1.
            recoveredBlock8PC := 31.
        ].
        recoveredBlock8Step = 31 ifTrue: [
            recoveredBlock8Stack1 := OrderedCollection.
            recoveredBlock8PC := 33.
        ].
        recoveredBlock8Step = 33 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) new.
            recoveredBlock8PC := 35.
        ].
        recoveredBlock8Step = 35 ifTrue: [
            recoveredBlock8Local1 := recoveredBlock8Stack1.
            recoveredBlock8PC := 38.
        ].
        recoveredBlock8Step = 38 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Arg1.
            recoveredBlock8PC := 41.
        ].
        recoveredBlock8Step = 41 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) contents.
            recoveredBlock8PC := 42.
        ].
        recoveredBlock8Step = 42 ifTrue: [
            recoveredBlock8Stack2 := [:recoveredBlock8Block42Arg1 | 
    | recoveredBlock8Block42Local1 recoveredBlock8Block42Stack0 recoveredBlock8Block42Stack1 recoveredBlock8Block42Stack2 recoveredBlock8Block42Stack3 recoveredBlock8Block42Stack4 recoveredBlock8Block42PC recoveredBlock8Block42Step recoveredBlock8Block42Done recoveredBlock8Block42Result |
    recoveredBlock8Block42Stack0 := self.
    recoveredBlock8Block42PC := 48.
    recoveredBlock8Block42Done := false.
    [recoveredBlock8Block42Done not] whileTrue: [
        recoveredBlock8Block42Step := recoveredBlock8Block42PC.
        recoveredBlock8Block42Step = 48 ifTrue: [
            recoveredBlock8Block42Stack1 := recoveredBlock8Block42Arg1.
            recoveredBlock8Block42PC := 51.
        ].
        recoveredBlock8Block42Step = 51 ifTrue: [
            recoveredBlock8Block42Stack1 := (recoveredBlock8Block42Stack1) name.
            recoveredBlock8Block42PC := 52.
        ].
        recoveredBlock8Block42Step = 52 ifTrue: [
            recoveredBlock8Block42Stack2 := 'entry'.
            recoveredBlock8Block42PC := 54.
        ].
        recoveredBlock8Block42Step = 54 ifTrue: [
            recoveredBlock8Block42Stack1 := (recoveredBlock8Block42Stack1) = (recoveredBlock8Block42Stack2).
            recoveredBlock8Block42PC := 55.
        ].
        recoveredBlock8Block42Step = 55 ifTrue: [
            (recoveredBlock8Block42Stack1) ifTrue: [recoveredBlock8Block42PC := 58] ifFalse: [recoveredBlock8Block42PC := 110].
        ].
        recoveredBlock8Block42Step = 58 ifTrue: [
            recoveredBlock8Block42Stack1 := recoveredBlock8Local2.
            recoveredBlock8Block42PC := 61.
        ].
        recoveredBlock8Block42Step = 61 ifTrue: [
            recoveredBlock8Block42Stack2 := recoveredBlock8Block42Arg1.
            recoveredBlock8Block42PC := 64.
        ].
        recoveredBlock8Block42Step = 64 ifTrue: [
            recoveredBlock8Block42Stack3 := 'name'.
            recoveredBlock8Block42PC := 66.
        ].
        recoveredBlock8Block42Step = 66 ifTrue: [
            recoveredBlock8Block42Stack2 := (recoveredBlock8Block42Stack2) getAttribute: (recoveredBlock8Block42Stack3).
            recoveredBlock8Block42PC := 68.
        ].
        recoveredBlock8Block42Step = 68 ifTrue: [
            recoveredBlock8Block42Stack2 := (recoveredBlock8Block42Stack2) asString.
            recoveredBlock8Block42PC := 70.
        ].
        recoveredBlock8Block42Step = 70 ifTrue: [
            (recoveredBlock8Block42Stack1) add: (recoveredBlock8Block42Stack2).
            recoveredBlock8Block42PC := 72.
        ].
        recoveredBlock8Block42Step = 72 ifTrue: [
            recoveredBlock8Block42Stack1 := recoveredBlock8Block42Arg1.
            recoveredBlock8Block42PC := 75.
        ].
        recoveredBlock8Block42Step = 75 ifTrue: [
            recoveredBlock8Block42Stack1 := (recoveredBlock8Block42Stack1) contents.
            recoveredBlock8Block42PC := 76.
        ].
        recoveredBlock8Block42Step = 76 ifTrue: [
            recoveredBlock8Block42Stack2 := [:recoveredBlock8Block42Block76Arg1 | 
    | recoveredBlock8Block42Block76Value0 recoveredBlock8Block42Block76Value1 recoveredBlock8Block42Block76Value2 recoveredBlock8Block42Block76Value3 |
    recoveredBlock8Block42Block76Value0 := recoveredBlock8Block42Block76Arg1.
    recoveredBlock8Block42Block76Value1 := recoveredArg2.
    recoveredBlock8Block42Block76Value2 := (self) readSingleSourceFromNode: (recoveredBlock8Block42Block76Value0) context: (recoveredBlock8Block42Block76Value1).
    recoveredBlock8Block42Block76Value3 := recoveredBlock8Block42Block76Value2.
    recoveredBlock8Block42Local1 := recoveredBlock8Block42Block76Value3.
    recoveredBlock8Block42Block76Value2
].
            recoveredBlock8Block42PC := 93.
        ].
        recoveredBlock8Block42Step = 93 ifTrue: [
            (recoveredBlock8Block42Stack1) do: (recoveredBlock8Block42Stack2).
            recoveredBlock8Block42PC := 95.
        ].
        recoveredBlock8Block42Step = 95 ifTrue: [
            recoveredBlock8Block42Stack1 := recoveredBlock8Local1.
            recoveredBlock8Block42PC := 98.
        ].
        recoveredBlock8Block42Step = 98 ifTrue: [
            recoveredBlock8Block42Stack2 := recoveredBlock8Block42Local1.
            recoveredBlock8Block42PC := 101.
        ].
        recoveredBlock8Block42Step = 101 ifTrue: [
            recoveredBlock8Block42Stack1 := (recoveredBlock8Block42Stack1) add: (recoveredBlock8Block42Stack2).
            recoveredBlock8Block42PC := 103.
        ].
        recoveredBlock8Block42Step = 103 ifTrue: [
            recoveredBlock8Block42Stack2 := nil.
            recoveredBlock8Block42PC := 104.
        ].
        recoveredBlock8Block42Step = 104 ifTrue: [
            recoveredBlock8Block42Local1 := recoveredBlock8Block42Stack2.
            recoveredBlock8Block42PC := 107.
        ].
        recoveredBlock8Block42Step = 107 ifTrue: [
            recoveredBlock8Block42PC := 123.
        ].
        recoveredBlock8Block42Step = 110 ifTrue: [
            recoveredBlock8Block42Stack1 := self.
            recoveredBlock8Block42PC := 111.
        ].
        recoveredBlock8Block42Step = 111 ifTrue: [
            recoveredBlock8Block42Stack2 := recoveredBlock8Block42Arg1.
            recoveredBlock8Block42PC := 114.
        ].
        recoveredBlock8Block42Step = 114 ifTrue: [
            recoveredBlock8Block42Stack3 := recoveredArg2.
            recoveredBlock8Block42PC := 117.
        ].
        recoveredBlock8Block42Step = 117 ifTrue: [
            recoveredBlock8Block42Stack1 := (recoveredBlock8Block42Stack1) readSingleSourceFromNode: (recoveredBlock8Block42Stack2) context: (recoveredBlock8Block42Stack3).
            recoveredBlock8Block42PC := 119.
        ].
        recoveredBlock8Block42Step = 119 ifTrue: [
            recoveredBlock8Block42Stack2 := recoveredBlock8Block42Stack1.
            recoveredBlock8Block42PC := 120.
        ].
        recoveredBlock8Block42Step = 120 ifTrue: [
            recoveredBlock8Local3 := recoveredBlock8Block42Stack2.
            recoveredBlock8Block42PC := 123.
        ].
        recoveredBlock8Block42Step = 123 ifTrue: [
            recoveredBlock8Block42Result := recoveredBlock8Block42Stack1.
            recoveredBlock8Block42Done := true.
        ].
    ].
    recoveredBlock8Block42Result
].
            recoveredBlock8PC := 124.
        ].
        recoveredBlock8Step = 124 ifTrue: [
            (recoveredBlock8Stack1) do: (recoveredBlock8Stack2).
            recoveredBlock8PC := 126.
        ].
        recoveredBlock8Step = 126 ifTrue: [
            recoveredBlock8Stack1 := recoveredBlock8Local3.
            recoveredBlock8PC := 129.
        ].
        recoveredBlock8Step = 129 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Local1.
            recoveredBlock8PC := 132.
        ].
        recoveredBlock8Step = 132 ifTrue: [
            recoveredBlock8Stack3 := recoveredBlock8Local2.
            recoveredBlock8PC := 135.
        ].
        recoveredBlock8Step = 135 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) createMultiSource: (recoveredBlock8Stack2) labels: (recoveredBlock8Stack3).
            recoveredBlock8PC := 137.
        ].
        recoveredBlock8Step = 137 ifTrue: [
            ^recoveredBlock8Stack1
        ].
        recoveredBlock8Step = 138 ifTrue: [
            recoveredBlock8Stack1 := self.
            recoveredBlock8PC := 139.
        ].
        recoveredBlock8Step = 139 ifTrue: [
            recoveredBlock8Stack2 := recoveredBlock8Arg1.
            recoveredBlock8PC := 142.
        ].
        recoveredBlock8Step = 142 ifTrue: [
            recoveredBlock8Stack3 := recoveredArg2.
            recoveredBlock8PC := 145.
        ].
        recoveredBlock8Step = 145 ifTrue: [
            recoveredBlock8Stack1 := (recoveredBlock8Stack1) readSingleSourceFromNode: (recoveredBlock8Stack2) context: (recoveredBlock8Stack3).
            recoveredBlock8PC := 147.
        ].
        recoveredBlock8Step = 147 ifTrue: [
            ^recoveredBlock8Stack1
        ].
    ].
    recoveredBlock8Result
].
    (recoveredValue1) do: (recoveredValue2).
    ^nil
! !

"ASDBase.ic method 0x204cf7b8; bytecode file offset 0xdcc0cc"
!ASDBuildResultManager methodsFor: 'recovered'!
initializeFilesTable
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            files := recoveredStack1.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlDocument.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) isEmpty.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := (recoveredStack0) xmlDocument.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := (recoveredStack0) rootTag.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := [:recoveredBlock25Arg1 | 
    | recoveredBlock25Value0 recoveredBlock25Value1 recoveredBlock25Value2 recoveredBlock25Value3 |
    recoveredBlock25Value0 := recoveredBlock25Arg1.
    recoveredBlock25Value1 := (recoveredBlock25Value0) name.
    recoveredBlock25Value2 := (self) filesTagName.
    recoveredBlock25Value3 := (recoveredBlock25Value1) equals: (recoveredBlock25Value2).
    recoveredBlock25Value3
].
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack2 := [
    ^self
].
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := (recoveredStack0) contents.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := [:recoveredBlock59Arg1 | 
    | recoveredBlock59Local1 recoveredBlock59Stack0 recoveredBlock59Stack1 recoveredBlock59Stack2 recoveredBlock59Stack3 recoveredBlock59Stack4 recoveredBlock59PC recoveredBlock59Step recoveredBlock59Done recoveredBlock59Result |
    recoveredBlock59Stack0 := self.
    recoveredBlock59PC := 66.
    recoveredBlock59Done := false.
    [recoveredBlock59Done not] whileTrue: [
        recoveredBlock59Step := recoveredBlock59PC.
        recoveredBlock59Step = 66 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 67.
        ].
        recoveredBlock59Step = 67 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 68.
        ].
        recoveredBlock59Step = 68 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) name.
            recoveredBlock59PC := 70.
        ].
        recoveredBlock59Step = 70 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 71.
        ].
        recoveredBlock59Step = 71 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) fileTagName.
            recoveredBlock59PC := 73.
        ].
        recoveredBlock59Step = 73 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) equals: (recoveredBlock59Stack3).
            recoveredBlock59PC := 75.
        ].
        recoveredBlock59Step = 75 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 78] ifFalse: [recoveredBlock59PC := 150].
        ].
        recoveredBlock59Step = 78 ifTrue: [
            recoveredBlock59PC := 79.
        ].
        recoveredBlock59Step = 79 ifTrue: [
            recoveredBlock59Stack1 := nil.
            recoveredBlock59PC := 80.
        ].
        recoveredBlock59Step = 80 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Arg1.
            recoveredBlock59PC := 81.
        ].
        recoveredBlock59Step = 81 ifTrue: [
            recoveredBlock59Stack3 := 'type'.
            recoveredBlock59PC := 83.
        ].
        recoveredBlock59Step = 83 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) getAttributeNode: (recoveredBlock59Stack3).
            recoveredBlock59PC := 85.
        ].
        recoveredBlock59Step = 85 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) asString.
            recoveredBlock59PC := 87.
        ].
        recoveredBlock59Step = 87 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) asLowercase.
            recoveredBlock59PC := 89.
        ].
        recoveredBlock59Step = 89 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Stack2.
            recoveredBlock59PC := 90.
        ].
        recoveredBlock59Step = 90 ifTrue: [
            recoveredBlock59Local1 := recoveredBlock59Stack3.
            recoveredBlock59PC := 91.
        ].
        recoveredBlock59Step = 91 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 92.
        ].
        recoveredBlock59Step = 92 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) typeCCodeFile.
            recoveredBlock59PC := 94.
        ].
        recoveredBlock59Step = 94 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) equals: (recoveredBlock59Stack3).
            recoveredBlock59PC := 96.
        ].
        recoveredBlock59Step = 96 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 140] ifFalse: [recoveredBlock59PC := 100].
        ].
        recoveredBlock59Step = 100 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local1.
            recoveredBlock59PC := 101.
        ].
        recoveredBlock59Step = 101 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 102.
        ].
        recoveredBlock59Step = 102 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) typeHCodeFile.
            recoveredBlock59PC := 104.
        ].
        recoveredBlock59Step = 104 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) equals: (recoveredBlock59Stack3).
            recoveredBlock59PC := 106.
        ].
        recoveredBlock59Step = 106 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 140] ifFalse: [recoveredBlock59PC := 110].
        ].
        recoveredBlock59Step = 110 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local1.
            recoveredBlock59PC := 111.
        ].
        recoveredBlock59Step = 111 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 112.
        ].
        recoveredBlock59Step = 112 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) typeASMCodeFile.
            recoveredBlock59PC := 114.
        ].
        recoveredBlock59Step = 114 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) equals: (recoveredBlock59Stack3).
            recoveredBlock59PC := 116.
        ].
        recoveredBlock59Step = 116 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 140] ifFalse: [recoveredBlock59PC := 120].
        ].
        recoveredBlock59Step = 120 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local1.
            recoveredBlock59PC := 121.
        ].
        recoveredBlock59Step = 121 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 122.
        ].
        recoveredBlock59Step = 122 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) typeObjectFile.
            recoveredBlock59PC := 124.
        ].
        recoveredBlock59Step = 124 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) equals: (recoveredBlock59Stack3).
            recoveredBlock59PC := 126.
        ].
        recoveredBlock59Step = 126 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 140] ifFalse: [recoveredBlock59PC := 130].
        ].
        recoveredBlock59Step = 130 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local1.
            recoveredBlock59PC := 131.
        ].
        recoveredBlock59Step = 131 ifTrue: [
            recoveredBlock59Stack3 := self.
            recoveredBlock59PC := 132.
        ].
        recoveredBlock59Step = 132 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) typeLibraryFile.
            recoveredBlock59PC := 134.
        ].
        recoveredBlock59Step = 134 ifTrue: [
            recoveredBlock59Stack2 := (recoveredBlock59Stack2) equals: (recoveredBlock59Stack3).
            recoveredBlock59PC := 136.
        ].
        recoveredBlock59Step = 136 ifTrue: [
            (recoveredBlock59Stack2) ifTrue: [recoveredBlock59PC := 140] ifFalse: [recoveredBlock59PC := 150].
        ].
        recoveredBlock59Step = 140 ifTrue: [
            recoveredBlock59PC := 141.
        ].
        recoveredBlock59Step = 141 ifTrue: [
            recoveredBlock59Stack1 := self.
            recoveredBlock59PC := 142.
        ].
        recoveredBlock59Step = 142 ifTrue: [
            recoveredBlock59Stack2 := recoveredBlock59Local1.
            recoveredBlock59PC := 143.
        ].
        recoveredBlock59Step = 143 ifTrue: [
            recoveredBlock59Stack3 := recoveredBlock59Arg1.
            recoveredBlock59PC := 144.
        ].
        recoveredBlock59Step = 144 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) getContentText.
            recoveredBlock59PC := 146.
        ].
        recoveredBlock59Step = 146 ifTrue: [
            recoveredBlock59Stack3 := (recoveredBlock59Stack3) data.
            recoveredBlock59PC := 148.
        ].
        recoveredBlock59Step = 148 ifTrue: [
            recoveredBlock59Stack1 := (recoveredBlock59Stack1) filesAt: (recoveredBlock59Stack2) put: (recoveredBlock59Stack3).
            recoveredBlock59PC := 150.
        ].
        recoveredBlock59Step = 150 ifTrue: [
            recoveredBlock59Result := recoveredBlock59Stack1.
            recoveredBlock59Done := true.
        ].
    ].
    recoveredBlock59Result
].
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x204e4dcc; bytecode file offset 0xde1700"
!ASDBuildResultManager methodsFor: 'recovered'!
readFileSourceFromNode: recoveredArg1 context: recoveredArg2
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
            recoveredStack2 := 'fileName'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredLocal6 := recoveredStack1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := 'line'.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredLocal5 := recoveredStack1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack2 := 'column'.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := 1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack1 := (recoveredStack1) max: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredLocal4 := recoveredStack1.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack1 := TGReturnMessage.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := ''.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) createMessage: (recoveredStack2).
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := recoveredLocal5.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack1) lineNumber: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack2 := recoveredLocal4.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack1) columnNumber: (recoveredStack2).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) userFileNames.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack2 := (recoveredStack2) asUppercase.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := [].
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack1 := (recoveredStack1) at: (recoveredStack2) ifAbsent: (recoveredStack3).
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 68.
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 101] ifFalse: [recoveredPC := 72].
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack1 := (recoveredStack1) fileName.
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 82] ifFalse: [recoveredPC := 98].
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := (recoveredStack1) hostAccess.
            recoveredPC := 85.
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack1 := (recoveredStack1) getWorkingPath.
            recoveredPC := 87.
        ].
        recoveredStep = 87 ifTrue: [
            recoveredStack1 := (recoveredStack1) asPathname.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack2 := recoveredLocal6.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredPC := 101.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack1 := recoveredLocal6.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 151] ifFalse: [recoveredPC := 106].
        ].
        recoveredStep = 106 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            (recoveredStack1) setUserSource.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack2 := recoveredLocal2.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            (recoveredStack1) fileName: (recoveredStack2).
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack1 := (recoveredStack1) hostAccess.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            recoveredStack2 := recoveredLocal3.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            recoveredStack2 := (recoveredStack2) fileName.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := [:block28108b68Arg1 | 
    nil
].
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack1 := (recoveredStack1) getFileStream: (recoveredStack2) ifFail: (recoveredStack3).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 149] ifFalse: [recoveredPC := 134].
        ].
        recoveredStep = 134 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            (recoveredStack1) setValidFileReference.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack3 := recoveredLocal3.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := (recoveredStack3) lineNumber.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack2 := (recoveredStack2) getLine: (recoveredStack3).
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack1) lineString: (recoveredStack2).
            recoveredPC := 146.
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            (recoveredStack1) close.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeManager.
            recoveredPC := 153.
        ].
        recoveredStep = 153 ifTrue: [
            recoveredStack1 := recoveredLocal3.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack2 := (recoveredStack2) sourceObject.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack3 := nil.
            recoveredPC := 159.
        ].
        recoveredStep = 159 ifTrue: [
            recoveredStack0 := (recoveredStack0) sourceFor: (recoveredStack1) in: (recoveredStack2) allSources: (recoveredStack3).
            recoveredPC := 162.
        ].
        recoveredStep = 162 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20593c20; bytecode file offset 0xe90534"
!ASDBuildResultManager methodsFor: 'recovered'!
readUnitsFromNode: recoveredArg1 context: recoveredArg2
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) unitTagName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 92].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := (recoveredStack1) readMessageSourceFromNode: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack3 := 'label'.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAttribute: (recoveredStack3).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack4 := 'id'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack3 := (recoveredStack3) getAttribute: (recoveredStack4).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack4 := recoveredLocal1.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack5 := [
    | recoveredBlock45Value0 recoveredBlock45Value1 recoveredBlock45Value2 recoveredBlock45Value3 |
    recoveredBlock45Value0 := recoveredArg1.
    recoveredBlock45Value1 := (recoveredBlock45Value0) contents.
    recoveredBlock45Value2 := [:recoveredBlock45Block57Arg1 | 
    | recoveredBlock45Block57Local1 recoveredBlock45Block57Value0 recoveredBlock45Block57Value1 recoveredBlock45Block57Value2 |
    recoveredBlock45Block57Value0 := recoveredBlock45Block57Arg1.
    recoveredBlock45Block57Value1 := recoveredArg2.
    recoveredBlock45Block57Value2 := (self) readUnitsFromNode: (recoveredBlock45Block57Value0) context: (recoveredBlock45Block57Value1).
    recoveredBlock45Block57Value2
].
    recoveredBlock45Value3 := (recoveredBlock45Value1) do: (recoveredBlock45Value2).
    recoveredBlock45Value3
].
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack1) collectMessagesInSubUnit: (recoveredStack2) id: (recoveredStack3) source: (recoveredStack4) do: (recoveredStack5).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 83.
        ].
        recoveredStep = 83 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredPC := 280.
        ].
        recoveredStep = 92 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack1 := (recoveredStack1) name.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack2 := (recoveredStack2) messageTagName.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 104] ifFalse: [recoveredPC := 280].
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack2 := 'type'.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            recoveredStack1 := (recoveredStack1) getAttribute: (recoveredStack2).
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredLocal2 := recoveredStack2.
            recoveredPC := 115.
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 117.
        ].
        recoveredStep = 117 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 120] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 120 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 124.
        ].
        recoveredStep = 124 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 127.
        ].
        recoveredStep = 127 ifTrue: [
            recoveredStack1 := (recoveredStack1) readMessageSourceFromNode: (recoveredStack2) context: (recoveredStack3).
            recoveredPC := 129.
        ].
        recoveredStep = 129 ifTrue: [
            recoveredLocal3 := recoveredStack1.
            recoveredPC := 132.
        ].
        recoveredStep = 132 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack2 := 'fatal'.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 142] ifFalse: [recoveredPC := 168].
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 143.
        ].
        recoveredStep = 143 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := 'text'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAttribute: (recoveredStack3).
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack4 := 'id'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack3 := (recoveredStack3) getAttribute: (recoveredStack4).
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            (recoveredStack1) addFatal: (recoveredStack2) id: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredStack2 := 'error'.
            recoveredPC := 173.
        ].
        recoveredStep = 173 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 178] ifFalse: [recoveredPC := 204].
        ].
        recoveredStep = 178 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack3 := 'text'.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAttribute: (recoveredStack3).
            recoveredPC := 187.
        ].
        recoveredStep = 187 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack4 := 'id'.
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            recoveredStack3 := (recoveredStack3) getAttribute: (recoveredStack4).
            recoveredPC := 194.
        ].
        recoveredStep = 194 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            (recoveredStack1) addError: (recoveredStack2) id: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 200.
        ].
        recoveredStep = 200 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 204 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 207.
        ].
        recoveredStep = 207 ifTrue: [
            recoveredStack2 := 'warning'.
            recoveredPC := 209.
        ].
        recoveredStep = 209 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 211.
        ].
        recoveredStep = 211 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 214] ifFalse: [recoveredPC := 240].
        ].
        recoveredStep = 214 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 216.
        ].
        recoveredStep = 216 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 219.
        ].
        recoveredStep = 219 ifTrue: [
            recoveredStack3 := 'text'.
            recoveredPC := 221.
        ].
        recoveredStep = 221 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAttribute: (recoveredStack3).
            recoveredPC := 223.
        ].
        recoveredStep = 223 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 226.
        ].
        recoveredStep = 226 ifTrue: [
            recoveredStack4 := 'id'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack3 := (recoveredStack3) getAttribute: (recoveredStack4).
            recoveredPC := 230.
        ].
        recoveredStep = 230 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 233.
        ].
        recoveredStep = 233 ifTrue: [
            (recoveredStack1) addWarning: (recoveredStack2) id: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 236.
        ].
        recoveredStep = 236 ifTrue: [
            recoveredPC := 272.
        ].
        recoveredStep = 240 ifTrue: [
            recoveredStack1 := recoveredLocal2.
            recoveredPC := 243.
        ].
        recoveredStep = 243 ifTrue: [
            recoveredStack2 := 'info'.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 247.
        ].
        recoveredStep = 247 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 250] ifFalse: [recoveredPC := 272].
        ].
        recoveredStep = 250 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 251.
        ].
        recoveredStep = 251 ifTrue: [
            recoveredStack1 := (recoveredStack1) errorHandler.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := 'text'.
            recoveredPC := 257.
        ].
        recoveredStep = 257 ifTrue: [
            recoveredStack2 := (recoveredStack2) getAttribute: (recoveredStack3).
            recoveredPC := 259.
        ].
        recoveredStep = 259 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            recoveredStack4 := 'id'.
            recoveredPC := 264.
        ].
        recoveredStep = 264 ifTrue: [
            recoveredStack3 := (recoveredStack3) getAttribute: (recoveredStack4).
            recoveredPC := 266.
        ].
        recoveredStep = 266 ifTrue: [
            recoveredStack4 := recoveredLocal3.
            recoveredPC := 269.
        ].
        recoveredStep = 269 ifTrue: [
            (recoveredStack1) addInfo: (recoveredStack2) id: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 273.
        ].
        recoveredStep = 273 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 274.
        ].
        recoveredStep = 274 ifTrue: [
            recoveredLocal3 := recoveredStack2.
            recoveredPC := 277.
        ].
        recoveredStep = 277 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 280.
        ].
        recoveredStep = 280 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

