"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200025a8; bytecode file offset 0x8ffcfc"
!ASDXMLEtcOptions methodsFor: 'recovered'!
initDeclarationFiles
    ^self
! !

"ASDBase.ic method 0x20016100; bytecode file offset 0x92209c"
!ASDXMLEtcOptions methodsFor: 'recovered'!
xmlCategory
    ^'HWC-Paths'
! !

"ASDBase.ic method 0x2001a9f0; bytecode file offset 0x92209c"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getPathECCO
    ^'%HWC%\Build\Target\ETarget\%TARGETRELPATH%\tools\ecco-4.3'
! !

"ASDBase.ic method 0x2001cfe8; bytecode file offset 0x92209c"
!ASDXMLEtcOptions methodsFor: 'recovered'!
xmlOperatingSystemCategory
    ^'Operating System'
! !

"ASDBase.ic method 0x20021560; bytecode file offset 0x92209c"
!ASDXMLEtcOptions methodsFor: 'recovered'!
xmlCompilerCategory
    ^'Compiler'
! !

"ASDBase.ic method 0x20043d8c; bytecode file offset 0x9451f8"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getPathTargetRootDirectory
    | recoveredValue0 |
    recoveredValue0 := (self) getPath: ('TargetDirectory').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004502c; bytecode file offset 0x9451f8"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getPathPerl
    | recoveredValue0 |
    recoveredValue0 := (self) getPath: ('Perl').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045bdc; bytecode file offset 0x9451f8"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getHWCMessageDeclarationPath
    | recoveredValue0 |
    recoveredValue0 := (self) getPath: ('HWCMessageDefinition').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20045c6c; bytecode file offset 0x9451f8"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getPathEscape
    | recoveredValue0 |
    recoveredValue0 := (self) getPath: ('Escape').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004615c; bytecode file offset 0x9451f8"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getFileA2lValidator
    | recoveredValue0 |
    recoveredValue0 := (self) getPath: ('A2lValidator').
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004870c; bytecode file offset 0x9451f8"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getHWCInternalMessageDeclarationPath
    | recoveredValue0 |
    recoveredValue0 := (self) getPath: ('HWCInternalMessageDefinition').
    ^recoveredValue0
! !

"ASDBase.ic method 0x20061a78; bytecode file offset 0x95e838"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getPathTargetDirectory
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getPathTargetRootDirectory.
    recoveredValue1 := (recoveredValue0) , ('\%TARGETRELPATH%').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200d7210; bytecode file offset 0x9d3b64"
!ASDXMLEtcOptions methodsFor: 'recovered'!
declarationFile: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) removeDoubleBackslashes.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    (self) declarationFiles: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x200e1cc8; bytecode file offset 0x9de5a4"
!ASDXMLEtcOptions methodsFor: 'recovered'!
resetOptionInterfaceCompatibility
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [].
    recoveredValue1 := (self) optionAt: ('InterfaceCompatibility') putValue: (#[0 0 0 0 0 0 0 0]) ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2012ff74; bytecode file offset 0xa2c834"
!ASDXMLEtcOptions methodsFor: 'recovered'!
optionInterfaceCompatibility
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^#[0 0 0 0 0 0 0 0]
].
    recoveredValue1 := (self) optionAt: ('InterfaceCompatibility') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201562f0; bytecode file offset 0xa52bac"
!ASDXMLEtcOptions methodsFor: 'recovered'!
getPath: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    ^''
].
    recoveredValue2 := (self) optionAt: (recoveredValue0) ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201b0094; bytecode file offset 0xaac964"
!ASDXMLEtcOptions methodsFor: 'recovered'!
copyValuesToDefaultValues
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) options.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280d3e30Arg1 | 
    | block280d3e30Value0 block280d3e30Value1 block280d3e30Value2 block280d3e30Value3 block280d3e30Value4 block280d3e30Value5 block280d3e30Value6 |
    block280d3e30Value0 := block280d3e30Arg1.
    block280d3e30Value1 := (block280d3e30Value0) optionClass.
    block280d3e30Value2 := block280d3e30Arg1.
    block280d3e30Value3 := (block280d3e30Value2) value.
    (block280d3e30Value1) default: (block280d3e30Value3).
    block280d3e30Value4 := block280d3e30Arg1.
    block280d3e30Value5 := (block280d3e30Value4) optionClass.
    block280d3e30Value6 := (block280d3e30Value5) modified: (false).
    block280d3e30Value6
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            (recoveredStack0) do: (recoveredStack1).
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

"ASDBase.ic method 0x2020bde4; bytecode file offset 0xb086ac"
!ASDXMLEtcOptions methodsFor: 'recovered'!
toolPathOptions
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) allOptions.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := true.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := recoveredBlock5Arg1.
            recoveredBlock5PC := 14.
        ].
        recoveredBlock5Step = 14 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) xmlCategory.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := self.
            recoveredBlock5PC := 16.
        ].
        recoveredBlock5Step = 16 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) xmlCompilerCategory.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) = (recoveredBlock5Stack3).
            recoveredBlock5PC := 18.
        ].
        recoveredBlock5Step = 18 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 28] ifFalse: [recoveredBlock5PC := 22].
        ].
        recoveredBlock5Step = 22 ifTrue: [
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 24.
        ].
        recoveredBlock5Step = 24 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) xmlCategory.
            recoveredBlock5PC := 25.
        ].
        recoveredBlock5Step = 25 ifTrue: [
            recoveredBlock5Stack2 := self.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) xmlOperatingSystemCategory.
            recoveredBlock5PC := 27.
        ].
        recoveredBlock5Step = 27 ifTrue: [
            recoveredBlock5Stack1 := (recoveredBlock5Stack1) = (recoveredBlock5Stack2).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    recoveredValue2 := (recoveredValue0) select: (recoveredValue1).
    ^recoveredValue2
! !

