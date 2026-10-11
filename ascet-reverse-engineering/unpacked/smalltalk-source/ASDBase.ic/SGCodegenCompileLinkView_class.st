"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001de04; bytecode file offset 0x92209c"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
monitorFileNameDeveloperLanguage
    ^'ASCETMonitor_Developer.log'
! !

"ASDBase.ic method 0x2001f400; bytecode file offset 0x92209c"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
defaultFileName
    ^'CodeGeneration.log'
! !

"ASDBase.ic method 0x2003c998; bytecode file offset 0x93bf94"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
MonitorFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) MonitorFileName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cde8; bytecode file offset 0x93bf94"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
LastUsedLogFilePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) LastUsedLogFilePath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003cec8; bytecode file offset 0x93bf94"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
monitorFileName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) monitorFileName.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003eb38; bytecode file offset 0x93bf94"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
defaultLogFilePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) defaultLogFilePath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003efe8; bytecode file offset 0x93bf94"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
LogFilePath
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := (recoveredValue0) LogFilePath.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200628fc; bytecode file offset 0x95f8b0"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
defaultMonitorFileName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultLogFilePath.
    recoveredValue1 := (self) monitorFileName.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062ec4; bytecode file offset 0x95f8b0"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
completeMonitorFileNameDeveloperLanguage
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) defaultLogFilePath.
    recoveredValue1 := (self) monitorFileNameDeveloperLanguage.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20091f40; bytecode file offset 0x98e9dc"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
LogFilePath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) LogFilePath: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20092060; bytecode file offset 0x98e9dc"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
MonitorFileName: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) MonitorFileName: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200920f0; bytecode file offset 0x98e9dc"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
LastUsedLogFilePath: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGMonitorStreamDummy.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) LastUsedLogFilePath: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x2014de08; bytecode file offset 0xa4a6c8"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
closeInstance
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := instance.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := instance.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) allowShutDown.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            super closeInstance.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201637a0; bytecode file offset 0xa60064"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
lastUsedLogFilePath
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) LastUsedLogFilePath.
    recoveredValue1 := [
    | recoveredBlock5Value0 recoveredBlock5Value1 |
    recoveredBlock5Value0 := SGMonitorStreamDummy.
    recoveredBlock5Value1 := (recoveredBlock5Value0) defaultLogFilePath.
    ^recoveredBlock5Value1
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := (self) LastUsedLogFilePath.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016ec30; bytecode file offset 0xa6b4f8"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
pageLabelDictionary
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Dictionary.
    recoveredValue1 := (recoveredValue0) new.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) at: (1) put: ('Codegeneration').
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) at: (2) put: ('Compile / Link').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017e5f0; bytecode file offset 0xa7aeb4"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
createDefaultWindowConfiguration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBWindowConfiguration.
    recoveredValue1 := (self) printString.
    recoveredValue2 := (self) createDefaultLayoutConfigurationFactorX: (3) y: (5).
    recoveredValue3 := (recoveredValue0) createWithName: (recoveredValue1) windowClass: (nil) layoutConfiguration: (recoveredValue2) contentsConfiguration: (nil) childConfigurations: (nil) versionString: (nil).
    ^recoveredValue3
! !

"ASDBase.ic method 0x203a5430; bytecode file offset 0xca1d1c"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
deleteMonitorFile: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := CfsFileDescriptor.
    recoveredValue1 := (self) completeMonitorFileNameDeveloperLanguage.
    (recoveredValue0) remove: (recoveredValue1).
    recoveredValue2 := CfsDirectoryDescriptor.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) fileExtension.
    recoveredValue5 := recoveredValue4.
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := ('*.') , (recoveredValue4).
    recoveredValue7 := (self) defaultLogFilePath.
    recoveredValue8 := (recoveredValue2) findFiles: (recoveredValue6) in: (recoveredValue7).
    recoveredValue9 := [:recoveredBlock30Arg1 | 
    | recoveredBlock30Value0 recoveredBlock30Value1 recoveredBlock30Value2 recoveredBlock30Value3 recoveredBlock30Value4 |
    recoveredBlock30Value0 := recoveredBlock30Arg1.
    recoveredBlock30Value1 := (recoveredBlock30Value0) dName.
    recoveredBlock30Value2 := recoveredArg1.
    recoveredBlock30Value3 := (recoveredBlock30Value2) fileNameOnly.
    recoveredBlock30Value4 := (recoveredBlock30Value1) startsWithIgnoreCase: (recoveredBlock30Value3).
    recoveredBlock30Value4
].
    recoveredValue10 := (recoveredValue8) select: (recoveredValue9).
    recoveredLocal2 := recoveredValue10.
    recoveredValue11 := recoveredLocal2.
    recoveredValue12 := [:recoveredBlock55Arg1 | 
    | recoveredBlock55Value0 recoveredBlock55Value1 recoveredBlock55Value2 recoveredBlock55Value3 recoveredBlock55Value4 recoveredBlock55Value5 |
    recoveredBlock55Value0 := CfsFileDescriptor.
    recoveredBlock55Value1 := (self) defaultLogFilePath.
    recoveredBlock55Value2 := recoveredBlock55Arg1.
    recoveredBlock55Value3 := (recoveredBlock55Value2) dName.
    recoveredBlock55Value4 := (recoveredBlock55Value1) , (recoveredBlock55Value3).
    recoveredBlock55Value5 := (recoveredBlock55Value0) remove: (recoveredBlock55Value4).
    recoveredBlock55Value5
].
    (recoveredValue11) do: (recoveredValue12).
    ^self
! !

"ASDBase.ic method 0x204160ac; bytecode file offset 0xd129a8"
!SGCodegenCompileLinkView class methodsFor: 'recovered'!
updateForMonitorFile: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := recoveredArg1.
    recoveredLocal1 := recoveredValue0.
    recoveredValue1 := CfsWriteFileStream.
    recoveredValue2 := (self) defaultLogFilePath.
    recoveredValue3 := recoveredLocal1.
    recoveredValue4 := (recoveredValue2) , (recoveredValue3).
    recoveredValue5 := (recoveredValue1) openAppend: (recoveredValue4).
    recoveredValue6 := [:recoveredBlock19Arg1 | 
    | recoveredBlock19Local1 recoveredBlock19Local2 recoveredBlock19Stack0 recoveredBlock19Stack1 recoveredBlock19Stack2 recoveredBlock19Stack3 recoveredBlock19Stack4 recoveredBlock19Stack5 recoveredBlock19Stack6 recoveredBlock19PC recoveredBlock19Step recoveredBlock19Done recoveredBlock19Result |
    recoveredBlock19Stack0 := self.
    recoveredBlock19PC := 26.
    recoveredBlock19Done := false.
    [recoveredBlock19Done not] whileTrue: [
        recoveredBlock19Step := recoveredBlock19PC.
        recoveredBlock19Step = 26 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 27.
        ].
        recoveredBlock19Step = 27 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) isCfsError.
            recoveredBlock19PC := 29.
        ].
        recoveredBlock19Step = 29 ifTrue: [
            (recoveredBlock19Stack1) ifTrue: [recoveredBlock19PC := 32] ifFalse: [recoveredBlock19PC := 86].
        ].
        recoveredBlock19Step = 32 ifTrue: [
            recoveredBlock19Stack1 := recoveredArg1.
            recoveredBlock19PC := 35.
        ].
        recoveredBlock19Step = 35 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) fileNameOnly.
            recoveredBlock19PC := 37.
        ].
        recoveredBlock19Step = 37 ifTrue: [
            recoveredBlock19Stack2 := CfsDirectoryDescriptor.
            recoveredBlock19PC := 39.
        ].
        recoveredBlock19Step = 39 ifTrue: [
            recoveredBlock19Stack3 := '*.'.
            recoveredBlock19PC := 41.
        ].
        recoveredBlock19Step = 41 ifTrue: [
            recoveredBlock19Stack4 := recoveredArg1.
            recoveredBlock19PC := 44.
        ].
        recoveredBlock19Step = 44 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) fileExtension.
            recoveredBlock19PC := 46.
        ].
        recoveredBlock19Step = 46 ifTrue: [
            recoveredBlock19Stack5 := recoveredBlock19Stack4.
            recoveredBlock19PC := 47.
        ].
        recoveredBlock19Step = 47 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack5.
            recoveredBlock19PC := 48.
        ].
        recoveredBlock19Step = 48 ifTrue: [
            recoveredBlock19Stack3 := (recoveredBlock19Stack3) , (recoveredBlock19Stack4).
            recoveredBlock19PC := 49.
        ].
        recoveredBlock19Step = 49 ifTrue: [
            recoveredBlock19Stack4 := self.
            recoveredBlock19PC := 50.
        ].
        recoveredBlock19Step = 50 ifTrue: [
            recoveredBlock19Stack4 := (recoveredBlock19Stack4) defaultLogFilePath.
            recoveredBlock19PC := 51.
        ].
        recoveredBlock19Step = 51 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) findFiles: (recoveredBlock19Stack3) in: (recoveredBlock19Stack4).
            recoveredBlock19PC := 53.
        ].
        recoveredBlock19Step = 53 ifTrue: [
            recoveredBlock19Stack3 := [:block280fb868Arg1 | 
    | block280fb868Value0 block280fb868Value1 block280fb868Value2 |
    block280fb868Value0 := block280fb868Arg1.
    block280fb868Value1 := (block280fb868Value0) dName.
    block280fb868Value2 := (block280fb868Value1) fileNameOnly.
    block280fb868Value2
].
            recoveredBlock19PC := 55.
        ].
        recoveredBlock19Step = 55 ifTrue: [
            recoveredBlock19PC := 64.
        ].
        recoveredBlock19Step = 64 ifTrue: [
            recoveredBlock19Stack2 := (recoveredBlock19Stack2) collect: (recoveredBlock19Stack3).
            recoveredBlock19PC := 66.
        ].
        recoveredBlock19Step = 66 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) uniqueStringFor: (recoveredBlock19Stack2).
            recoveredBlock19PC := 68.
        ].
        recoveredBlock19Step = 68 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack1.
            recoveredBlock19PC := 69.
        ].
        recoveredBlock19Step = 69 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Local1.
            recoveredBlock19PC := 70.
        ].
        recoveredBlock19Step = 70 ifTrue: [
            recoveredBlock19Stack2 := '.'.
            recoveredBlock19PC := 72.
        ].
        recoveredBlock19Step = 72 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 73.
        ].
        recoveredBlock19Step = 73 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Local2.
            recoveredBlock19PC := 74.
        ].
        recoveredBlock19Step = 74 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) , (recoveredBlock19Stack2).
            recoveredBlock19PC := 75.
        ].
        recoveredBlock19Step = 75 ifTrue: [
            recoveredBlock19Stack2 := recoveredBlock19Stack1.
            recoveredBlock19PC := 76.
        ].
        recoveredBlock19Step = 76 ifTrue: [
            recoveredLocal1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 79.
        ].
        recoveredBlock19Step = 79 ifTrue: [
            recoveredBlock19Stack2 := nil.
            recoveredBlock19PC := 80.
        ].
        recoveredBlock19Step = 80 ifTrue: [
            recoveredBlock19Stack3 := recoveredBlock19Stack2.
            recoveredBlock19PC := 81.
        ].
        recoveredBlock19Step = 81 ifTrue: [
            recoveredBlock19Local2 := recoveredBlock19Stack3.
            recoveredBlock19PC := 82.
        ].
        recoveredBlock19Step = 82 ifTrue: [
            recoveredBlock19Local1 := recoveredBlock19Stack2.
            recoveredBlock19PC := 83.
        ].
        recoveredBlock19Step = 83 ifTrue: [
            recoveredBlock19PC := 89.
        ].
        recoveredBlock19Step = 86 ifTrue: [
            recoveredBlock19Stack1 := recoveredBlock19Arg1.
            recoveredBlock19PC := 87.
        ].
        recoveredBlock19Step = 87 ifTrue: [
            recoveredBlock19Stack1 := (recoveredBlock19Stack1) close.
            recoveredBlock19PC := 89.
        ].
        recoveredBlock19Step = 89 ifTrue: [
            recoveredBlock19Result := recoveredBlock19Stack1.
            recoveredBlock19Done := true.
        ].
    ].
    recoveredBlock19Result
].
    (recoveredValue5) ifNotNil: (recoveredValue6).
    recoveredValue7 := recoveredLocal1.
    (self) MonitorFileName: (recoveredValue7).
    ^self
! !

