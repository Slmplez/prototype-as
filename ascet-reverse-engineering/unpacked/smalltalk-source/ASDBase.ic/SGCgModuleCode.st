"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20018278; bytecode file offset 0x92209c"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfMake
    ^''
! !

"ASDBase.ic method 0x200229d0; bytecode file offset 0x92209c"
!SGCgModuleCode methodsFor: 'recovered'!
ehooksConversionsKey
    ^'EHooksConversions'
! !

"ASDBase.ic method 0x20024944; bytecode file offset 0x92209c"
!SGCgModuleCode methodsFor: 'recovered'!
ehooksBypassFunctionsKey
    ^'EHooksBypassFunctions'
! !

"ASDBase.ic method 0x2002b3e4; bytecode file offset 0x934580"
!SGCgModuleCode methodsFor: 'recovered'!
applicationHeaderKey
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) applicationHeaderKey.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004775c; bytecode file offset 0x9451f8"
!SGCgModuleCode methodsFor: 'recovered'!
rteCode
    | recoveredValue0 |
    recoveredValue0 := (self) codeSnippetKey: ('RTECode').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004963c; bytecode file offset 0x947128"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfApplicationHeader
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) applicationHeaderKey.
    recoveredValue1 := (self) additionalCodeSnippet: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049a8c; bytecode file offset 0x947128"
!SGCgModuleCode methodsFor: 'recovered'!
ehooksConversions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksConversionsKey.
    recoveredValue1 := (self) codeSnippetKey: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20049cac; bytecode file offset 0x947128"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfOSTemplateFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) osTemplateFileKey.
    recoveredValue1 := (self) additionalCodeSnippet: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a1ac; bytecode file offset 0x947128"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfEHooksDataFile
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksDataSnippetKey.
    recoveredValue1 := (self) additionalCodeSnippet: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004a58c; bytecode file offset 0x947128"
!SGCgModuleCode methodsFor: 'recovered'!
ehooksBypassFunctions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) ehooksBypassFunctionsKey.
    recoveredValue1 := (self) codeSnippetKey: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200626a4; bytecode file offset 0x95f8b0"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfHeader
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeOfDefineHeader.
    recoveredValue1 := (self) codeOfDeclHeader.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20062ed8; bytecode file offset 0x95f8b0"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfModulePreview
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeOfHeader.
    recoveredValue1 := (self) codeOfBody.
    recoveredValue2 := (recoveredValue0) , (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20069e58; bytecode file offset 0x966bdc"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfBody
    | recoveredValue0 |
    recoveredValue0 := body.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a5ec; bytecode file offset 0x967a18"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfDeclHeader
    | recoveredValue0 |
    recoveredValue0 := declHeader.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ba98; bytecode file offset 0x96873c"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfDefineHeader
    | recoveredValue0 |
    recoveredValue0 := defineHeader.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c794; bytecode file offset 0x9692b0"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfInformation
    | recoveredValue0 |
    recoveredValue0 := information.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006d4d4; bytecode file offset 0x96a390"
!SGCgModuleCode methodsFor: 'recovered'!
optimizations
    | recoveredValue0 |
    recoveredValue0 := optimizations.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006dc78; bytecode file offset 0x96a9dc"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfInitClass
    | recoveredValue0 |
    recoveredValue0 := initClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e3cc; bytecode file offset 0x96af48"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfBanner
    | recoveredValue0 |
    recoveredValue0 := banner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f640; bytecode file offset 0x96bf7c"
!SGCgModuleCode methodsFor: 'recovered'!
mcaMappingInfo
    | recoveredValue0 |
    recoveredValue0 := mcaMappingInfo.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f908; bytecode file offset 0x96c1f4"
!SGCgModuleCode methodsFor: 'recovered'!
rtaSimulationSnippets
    | recoveredValue0 |
    recoveredValue0 := rtaSimulationSnippets.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fad0; bytecode file offset 0x96c42c"
!SGCgModuleCode methodsFor: 'recovered'!
additionalCodeSnippets
    | recoveredValue0 |
    recoveredValue0 := additionalCodeSnippets.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fda0; bytecode file offset 0x96c6ac"
!SGCgModuleCode methodsFor: 'recovered'!
cppInput
    | recoveredValue0 |
    recoveredValue0 := cppInput.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ff4c; bytecode file offset 0x96c850"
!SGCgModuleCode methodsFor: 'recovered'!
cppOutput
    | recoveredValue0 |
    recoveredValue0 := cppOutput.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006fff8; bytecode file offset 0x96cb7c"
!SGCgModuleCode methodsFor: 'recovered'!
codeSnippets
    | recoveredValue0 |
    recoveredValue0 := codeSnippets.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007041c; bytecode file offset 0x96ce40"
!SGCgModuleCode methodsFor: 'recovered'!
docFragmentList
    | recoveredValue0 |
    recoveredValue0 := docFragmentList.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200a527c; bytecode file offset 0x9a1dc8"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfApplicationHeader: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) applicationHeaderKey.
    recoveredValue1 := recoveredArg1.
    (self) additionalCodeSnippetsAt: (recoveredValue0) put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200ae278; bytecode file offset 0x9ab034"
!SGCgModuleCode methodsFor: 'recovered'!
codeSnippetKey: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeSnippets.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae3c8; bytecode file offset 0x9ab034"
!SGCgModuleCode methodsFor: 'recovered'!
additionalCodeSnippetsAt: recoveredArg1 put: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) additionalCodeSnippets.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200ae668; bytecode file offset 0x9ab034"
!SGCgModuleCode methodsFor: 'recovered'!
task: recoveredArg1 code: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) rtaSimulationSnippets.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bbfcc; bytecode file offset 0x9b8ddc"
!SGCgModuleCode methodsFor: 'recovered'!
rteCode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) codeSnippets.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('RTECode') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc2b0; bytecode file offset 0x9b8ddc"
!SGCgModuleCode methodsFor: 'recovered'!
taskSymbols: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rtaSimulationSnippets.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('taskSymbols') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc47c; bytecode file offset 0x9b8ddc"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfOILConfiguration: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) rtaSimulationSnippets.
    recoveredValue1 := recoveredArg1.
    (recoveredValue0) at: ('oil') put: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200bc720; bytecode file offset 0x9b94b8"
!SGCgModuleCode methodsFor: 'recovered'!
ehooksBypassFunctions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeSnippets.
    recoveredValue1 := (self) ehooksBypassFunctionsKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200bc9dc; bytecode file offset 0x9b94b8"
!SGCgModuleCode methodsFor: 'recovered'!
ehooksConversions: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) codeSnippets.
    recoveredValue1 := (self) ehooksConversionsKey.
    recoveredValue2 := recoveredArg1.
    (recoveredValue0) at: (recoveredValue1) put: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200c15d0; bytecode file offset 0x9bdf14"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfBody: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    body := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1c24; bytecode file offset 0x9beac8"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfDeclHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    declHeader := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2ad8; bytecode file offset 0x9bf474"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfDefineHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    defineHeader := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3454; bytecode file offset 0x9bfde0"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfInformation: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    information := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3658; bytecode file offset 0x9c058c"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfInternalHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    internalHeader := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c4224; bytecode file offset 0x9c0bf0"
!SGCgModuleCode methodsFor: 'recovered'!
optimizations: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    optimizations := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c44c0; bytecode file offset 0x9c11bc"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfInitClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c49e4; bytecode file offset 0x9c16b0"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfBanner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    banner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c51a0; bytecode file offset 0x9c1afc"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfInlineHeader: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    inlineHeader := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c54f0; bytecode file offset 0x9c1f64"
!SGCgModuleCode methodsFor: 'recovered'!
scoopIXFunctionElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scoopIXFunctions := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c58ac; bytecode file offset 0x9c22c8"
!SGCgModuleCode methodsFor: 'recovered'!
scoopIXDataElements: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scoopIXDataElements := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c5a30; bytecode file offset 0x9c25bc"
!SGCgModuleCode methodsFor: 'recovered'!
mcaMappingInfo: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mcaMappingInfo := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6188; bytecode file offset 0x9c2bec"
!SGCgModuleCode methodsFor: 'recovered'!
cppInput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cppInput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c63cc; bytecode file offset 0x9c2dd0"
!SGCgModuleCode methodsFor: 'recovered'!
cppOutput: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    cppOutput := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c6974; bytecode file offset 0x9c3470"
!SGCgModuleCode methodsFor: 'recovered'!
docFragmentList: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    docFragmentList := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5d60; bytecode file offset 0x9d261c"
!SGCgModuleCode methodsFor: 'recovered'!
resetScoopIXFunctionElements
    super resetScoopIXFunctionElements.
    scoopIXFunctions := nil.
    ^self
! !

"ASDBase.ic method 0x201061bc; bytecode file offset 0xa02a74"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfInternalHeader
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := internalHeader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := internalHeader.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201064e0; bytecode file offset 0xa02da4"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfInlineHeader
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := inlineHeader.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ''.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := inlineHeader.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2012cd9c; bytecode file offset 0xa29840"
!SGCgModuleCode methodsFor: 'recovered'!
taskSymbols
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rtaSimulationSnippets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'taskSymbols'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2012ced0; bytecode file offset 0xa29840"
!SGCgModuleCode methodsFor: 'recovered'!
codeOfOILConfiguration
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rtaSimulationSnippets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := 'oil'.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20133c18; bytecode file offset 0xa305e4"
!SGCgModuleCode methodsFor: 'recovered'!
codeSnippetKey: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) codeSnippets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20133c48; bytecode file offset 0xa305e4"
!SGCgModuleCode methodsFor: 'recovered'!
additionalCodeSnippet: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) additionalCodeSnippets.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ''
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack0 := (recoveredStack0) at: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201524bc; bytecode file offset 0xa4ed78"
!SGCgModuleCode methodsFor: 'recovered'!
scoopIXFunctionElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := scoopIXFunctions.
    recoveredValue1 := [
    ^''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := scoopIXFunctions.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201524e0; bytecode file offset 0xa4ed9c"
!SGCgModuleCode methodsFor: 'recovered'!
scoopIXDataElements
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := scoopIXDataElements.
    recoveredValue1 := [
    ^''
].
    (recoveredValue0) ifNil: (recoveredValue1).
    recoveredValue2 := scoopIXDataElements.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20249cec; bytecode file offset 0xb465b8"
!SGCgModuleCode methodsFor: 'recovered'!
resetGenericModuleCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super resetGenericModuleCode.
    recoveredValue0 := (self) additionalCodeSnippets.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) additionalCodeSnippets.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) put: (nil).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    internalHeader := nil.
    cppInput := nil.
    cppOutput := nil.
    ^self
! !

"ASDBase.ic method 0x20296eb8; bytecode file offset 0xb93780"
!SGCgModuleCode methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    super initialize.
    body := ''.
    declHeader := ''.
    defineHeader := ''.
    mcaMappingInfo := ''.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    rtaSimulationSnippets := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    additionalCodeSnippets := recoveredValue3.
    recoveredValue4 := LookupTable.
    recoveredValue5 := (recoveredValue4) new.
    codeSnippets := recoveredValue5.
    ^self
! !

"ASDBase.ic method 0x202eae28; bytecode file offset 0xbe76f4"
!SGCgModuleCode methodsFor: 'recovered'!
resetModuleCode
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    super resetModuleCode.
    recoveredValue0 := (self) additionalCodeSnippets.
    recoveredValue1 := (recoveredValue0) keys.
    recoveredValue2 := [:recoveredBlock11Arg1 | 
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 |
    recoveredBlock11Value0 := (self) additionalCodeSnippets.
    recoveredBlock11Value1 := recoveredBlock11Arg1.
    recoveredBlock11Value2 := (recoveredBlock11Value0) at: (recoveredBlock11Value1) put: (nil).
    recoveredBlock11Value2
].
    (recoveredValue1) do: (recoveredValue2).
    body := nil.
    defineHeader := nil.
    declHeader := nil.
    inlineHeader := nil.
    internalHeader := nil.
    cppInput := nil.
    cppOutput := nil.
    mcaMappingInfo := nil.
    ^self
! !

