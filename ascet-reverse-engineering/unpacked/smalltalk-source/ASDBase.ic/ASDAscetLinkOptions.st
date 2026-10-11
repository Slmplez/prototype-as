"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20024d34; bytecode file offset 0x92209c"
!ASDAscetLinkOptions methodsFor: 'recovered'!
iniFileSection
    ^'ASCET Link'
! !

"ASDBase.ic method 0x20187198; bytecode file offset 0xa83a6c"
!ASDAscetLinkOptions methodsFor: 'recovered'!
readIniFile: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Value0 recoveredBlock5Value1 recoveredBlock5Value2 |
    recoveredBlock5Value0 := recoveredBlock5Arg1.
    recoveredBlock5Value1 := recoveredArg1.
    recoveredBlock5Value2 := (self) readOption: (recoveredBlock5Value0) completePath: (recoveredBlock5Value1).
    recoveredBlock5Value2
].
    (recoveredValue0) do: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201af398; bytecode file offset 0xaabc68"
!ASDAscetLinkOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    super initialize.
    recoveredValue1 := (self) options.
    recoveredValue2 := recoveredValue1.
    recoveredValue3 := (self) initializeAscetLinkGroup.
    (recoveredValue2) add: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x20200118; bytecode file offset 0xafcc28"
!ASDAscetLinkOptions methodsFor: 'recovered'!
optionUseQuoteInsteadDoubleQuote
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d8ea0Arg1 | 
    | block280d8ea0Value0 block280d8ea0Value1 block280d8ea0Value2 |
    block280d8ea0Value0 := block280d8ea0Arg1.
    block280d8ea0Value1 := (block280d8ea0Value0) attributeName.
    block280d8ea0Value2 := (block280d8ea0Value1) = ('UseQuotesInsteadDoubleQuote').
    block280d8ea0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^false
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20200404; bytecode file offset 0xafcfec"
!ASDAscetLinkOptions methodsFor: 'recovered'!
optionDestinationAsToken
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d914cArg1 | 
    | block280d914cValue0 block280d914cValue1 block280d914cValue2 |
    block280d914cValue0 := block280d914cArg1.
    block280d914cValue1 := (block280d914cValue0) attributeName.
    block280d914cValue2 := (block280d914cValue1) = ('DestinationAsToken').
    block280d914cValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20200668; bytecode file offset 0xafcfec"
!ASDAscetLinkOptions methodsFor: 'recovered'!
optionOnlyUseQuotesWhenNeeded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d93b0Arg1 | 
    | block280d93b0Value0 block280d93b0Value1 block280d93b0Value2 |
    block280d93b0Value0 := block280d93b0Arg1.
    block280d93b0Value1 := (block280d93b0Value0) attributeName.
    block280d93b0Value2 := (block280d93b0Value1) = ('OnlyUseQuotesWhenNeeded').
    block280d93b0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202006f8; bytecode file offset 0xafcfec"
!ASDAscetLinkOptions methodsFor: 'recovered'!
optionIncludeOID
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d9440Arg1 | 
    | block280d9440Value0 block280d9440Value1 block280d9440Value2 |
    block280d9440Value0 := block280d9440Arg1.
    block280d9440Value1 := (block280d9440Value0) attributeName.
    block280d9440Value2 := (block280d9440Value1) = ('UseOID').
    block280d9440Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2025e564; bytecode file offset 0xb5aeb8"
!ASDAscetLinkOptions methodsFor: 'recovered'!
initializeUseStartStop
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (recoveredValue1) label: ('Use Start/Stop') description: ('Use the start line-start column/stop line-start column keywords to describe text fragments instead of using column&line and length') toolTip: ('Start line-start column/stop line-start column keywords') value: (false) default: (false) group: ('Integration\ASCET Link') visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue3 := (self) userOptionFile.
    recoveredValue4 := (recoveredValue0) xmlCategory: ('ToolSettings\ASCETLink') attributeName: ('UseStartStop') oldName: ('UseStartStop') optionClass: (recoveredValue2) optionFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025e59c; bytecode file offset 0xb5aeb8"
!ASDAscetLinkOptions methodsFor: 'recovered'!
initializeOnlyUseQuotesInsteadDoubleQuote
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (recoveredValue1) label: ('Use &&quot; Instead of "') description: ('Using &amp;quot; instead of double quotes for parameters in ascet links e.g. action=&amp;quot;select&amp;quot; instead action="select".') toolTip: ('Using &&quot; instead of "') value: (false) default: (false) group: ('Integration\ASCET Link') visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue3 := (self) userOptionFile.
    recoveredValue4 := (recoveredValue0) xmlCategory: ('ToolSettings\ASCETLink') attributeName: ('UseQuotesInsteadDoubleQuote') oldName: ('UseQuotesInsteadDoubleQuote') optionClass: (recoveredValue2) optionFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025e5d4; bytecode file offset 0xb5aeb8"
!ASDAscetLinkOptions methodsFor: 'recovered'!
initializeDestinationAsToken
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (recoveredValue1) label: ('Destination as token') description: ('The default path for workspaces and databases will be used when creating and performing a link') toolTip: ('Information about the default data storage location') value: (false) default: (false) group: ('Integration\ASCET Link') visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue3 := (self) userOptionFile.
    recoveredValue4 := (recoveredValue0) xmlCategory: ('ToolSettings\ASCETLink') attributeName: ('DestinationAsToken') oldName: ('DestinationAsToken') optionClass: (recoveredValue2) optionFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025e634; bytecode file offset 0xb5af18"
!ASDAscetLinkOptions methodsFor: 'recovered'!
initializeOnlyUseQuotesWhenNeeded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (recoveredValue1) label: ('Use Quotes When Needed') description: ('Create the links by using quotes only if there are needed. When a value including a blank then quotes are used at beginning and end.') toolTip: ('Quotes are only used when needed') value: (true) default: (true) group: ('Integration\ASCET Link') visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue3 := (self) userOptionFile.
    recoveredValue4 := (recoveredValue0) xmlCategory: ('ToolSettings\ASCETLink') attributeName: ('OnlyUseQuotesWhenNeeded') oldName: ('OnlyUseQuotesWhenNeeded') optionClass: (recoveredValue2) optionFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025e854; bytecode file offset 0xb5b13c"
!ASDAscetLinkOptions methodsFor: 'recovered'!
initializeUseOID
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (recoveredValue1) label: ('Use OID') description: ('Create the links by using the component OID instead of the folder path name in the component manager') toolTip: ('The component OID is used instead of the folder path name') value: (false) default: (false) group: ('Integration\ASCET Link') visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue3 := (self) userOptionFile.
    recoveredValue4 := (recoveredValue0) xmlCategory: ('ToolSettings\ASCETLink') attributeName: ('UseOID') oldName: ('IncludeDataStorage') optionClass: (recoveredValue2) optionFile: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x202605c0; bytecode file offset 0xb5ce98"
!ASDAscetLinkOptions methodsFor: 'recovered'!
optionIncludeDataStorage
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PROD105089'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:block280df95cArg1 | 
    | block280df95cValue0 block280df95cValue1 block280df95cValue2 |
    block280df95cValue0 := block280df95cArg1.
    block280df95cValue1 := (block280df95cValue0) attributeName.
    block280df95cValue2 := (block280df95cValue1) = ('IncludeDataStorage').
    block280df95cValue2
].
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := [
    ^true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029fa70; bytecode file offset 0xb9c35c"
!ASDAscetLinkOptions methodsFor: 'recovered'!
initializeIncludeDataStorage
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ('ASCETLINKS') = ('PROD105089').
    recoveredValue1 := EtasXMLOptionEntry.
    recoveredValue2 := EtasBooleanOption.
    recoveredValue3 := (recoveredValue2) label: ('Include Data Storage ') description: ('Add the information about the data storage when creating a link') toolTip: ('Information about the data storage') value: (false) default: (false) group: ('Integration\ASCET Link') visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue1) xmlCategory: ('ToolSettings\ASCETLink') attributeName: ('IncludeDataStorage') oldName: ('IncludeDataStorage') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    ^recoveredValue5
! !

"ASDBase.ic method 0x20308cb8; bytecode file offset 0xc05594"
!ASDAscetLinkOptions methodsFor: 'recovered'!
readOption: recoveredArg1 completePath: recoveredArg2
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := WinProfile.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) create.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack2 := (recoveredStack2) oldName.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack3 := (recoveredStack3) iniFileSection.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack4 := recoveredArg2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) readEntry: (recoveredStack2) in: (recoveredStack3) from: (recoveredStack4).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack2.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) notEmpty.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 22] ifFalse: [recoveredPC := 52].
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := 'true'.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 35].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack2 := true.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := 'false'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 42] ifFalse: [recoveredPC := 47].
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack2 := false.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := (recoveredStack1) value: (recoveredStack2).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack2 := recoveredLocal1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlValue: (recoveredStack2).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203aa320; bytecode file offset 0xca6c24"
!ASDAscetLinkOptions methodsFor: 'recovered'!
initializeAscetLinkGroup
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'ASCETLINKS'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'PROD105089'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'AscetLinkGroup'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack5 := 'ASCET Link'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack6 := 'Settings for ascet:/// Link'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack7 := 'Settings for ascet:/// Link'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack10 := 'Integration'.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) changeable: (recoveredStack5).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeIncludeDataStorage.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeDestinationAsToken.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 76.
        ].
        recoveredStep = 76 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

