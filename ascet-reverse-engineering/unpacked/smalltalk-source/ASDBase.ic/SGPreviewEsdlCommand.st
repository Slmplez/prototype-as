"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20017084; bytecode file offset 0x92209c"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
nodesForModuleGeneration
    ^#()
! !

"ASDBase.ic method 0x20018c08; bytecode file offset 0x92209c"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
sourcesForECCOGeneration
    ^#()
! !

"ASDBase.ic method 0x2001a420; bytecode file offset 0x92209c"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
copFileName
    ^'cop.cs'
! !

"ASDBase.ic method 0x2001dcb4; bytecode file offset 0x92209c"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
copProjectName
    ^'esdlpreview.csproj'
! !

"ASDBase.ic method 0x20020ffc; bytecode file offset 0x92209c"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
nodesForInitInstGeneration
    ^#()
! !

"ASDBase.ic method 0x2006c774; bytecode file offset 0x9692b0"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
esdlCode
    | recoveredValue0 |
    recoveredValue0 := esdlCode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2009bc64; bytecode file offset 0x998660"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
nodesForESDLGeneration
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) makeGraph.
    recoveredValue2 := (recoveredValue1) topNode.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200c2f14; bytecode file offset 0x9bfde0"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
esdlCode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    esdlCode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20154e74; bytecode file offset 0xa51744"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
prepareCodeGenerationIfFail: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    super prepareCodeGenerationIfFail: (recoveredValue0).
    recoveredValue1 := SGGeneratorFactory.
    recoveredValue2 := (recoveredValue1) create.
    (recoveredValue2) activateBlockToEsdlGenerationStrategy.
    recoveredValue3 := SGESDLCodeStream.
    (recoveredValue3) prepareCodeGeneration.
    ^self
! !

"ASDBase.ic method 0x202a81bc; bytecode file offset 0xba4a90"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
viewFile
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := CfsStat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack2 := (recoveredStack2) viewPath.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack3 := (recoveredStack3) copProjectName.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) exists: (recoveredStack2).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack2 := (recoveredStack2) viewPath.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) copProjectName.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) viewFile: (recoveredStack2) lineNumber: (recoveredStack3).
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredPC := 45.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := (recoveredStack1) target.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack2 := (recoveredStack2) viewPath.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := (recoveredStack3) copFileName.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack3 := 1.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            (recoveredStack1) viewFile: (recoveredStack2) lineNumber: (recoveredStack3).
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x203396b0; bytecode file offset 0xc35f9c"
!SGPreviewEsdlCommand methodsFor: 'recovered'!
placeESDLCodeFindMarker: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredLocal4 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) createWriteStream.
    recoveredLocal4 := recoveredValue1.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue2) esdlSources.
    recoveredValue4 := [:recoveredBlock14Arg1 | 
    | recoveredBlock14Value0 recoveredBlock14Value1 recoveredBlock14Value2 recoveredBlock14Value3 |
    recoveredBlock14Value0 := recoveredLocal4.
    recoveredBlock14Value1 := (recoveredBlock14Value0) asESDLCodeStream.
    recoveredBlock14Value2 := recoveredBlock14Arg1.
    recoveredBlock14Value3 := (recoveredBlock14Value1) nextPutAll: (recoveredBlock14Value2).
    recoveredBlock14Value3
].
    (recoveredValue3) do: (recoveredValue4).
    recoveredValue5 := recoveredLocal4.
    recoveredValue6 := (recoveredValue5) contents.
    (self) esdlCode: (recoveredValue6).
    recoveredValue7 := (self) viewPath.
    recoveredValue8 := (self) copFileName.
    recoveredValue9 := (recoveredValue7) , (recoveredValue8).
    recoveredLocal3 := recoveredValue9.
    recoveredValue10 := (self) target.
    recoveredValue11 := recoveredLocal3.
    recoveredValue12 := (self) esdlCode.
    (recoveredValue10) putCodeIntoFile: (recoveredValue11) code: (recoveredValue12).
    ^self
! !

