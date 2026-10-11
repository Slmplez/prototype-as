"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20069838; bytecode file offset 0x966bdc"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
arXmlFileFragmentTable
    | recoveredValue0 |
    recoveredValue0 := arXmlFileFragmentTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006a87c; bytecode file offset 0x967a18"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
autosarSettings
    | recoveredValue0 |
    recoveredValue0 := autosarSettings.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006b3f0; bytecode file offset 0x96873c"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
toBeProcessedSOsTable
    | recoveredValue0 |
    recoveredValue0 := toBeProcessedSOsTable.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c664; bytecode file offset 0x9692b0"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
swComponentNode
    | recoveredValue0 |
    recoveredValue0 := swComponentNode.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20083438; bytecode file offset 0x97fe64"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
ascetTypesIdentifier: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) , ('ASCET_TYPES').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200ae7e8; bytecode file offset 0x9ab0a8"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
arFilenameCategory: recoveredArg1 componentInfo: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) autosarSettings.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue2) bannerInfos.
    recoveredValue4 := (recoveredValue0) arFilenameCategory: (recoveredValue1) binding: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x200c1f54; bytecode file offset 0x9beac8"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
autosarSettings: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    autosarSettings := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c306c; bytecode file offset 0x9bfde0"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
swComponentNode: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    swComponentNode := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200fdbd0; bytecode file offset 0x9fa490"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
makeARComponentNode: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) swComponentNode: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    super makeARComponentNode: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x20151ae0; bytecode file offset 0xa4e3a4"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    super initialize.
    recoveredValue0 := LookupTable.
    recoveredValue1 := (recoveredValue0) new.
    toBeProcessedSOsTable := recoveredValue1.
    recoveredValue2 := LookupTable.
    recoveredValue3 := (recoveredValue2) new.
    arXmlFileFragmentTable := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x20187fa8; bytecode file offset 0xa84874"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
addFragment: recoveredArg1 fileName: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlFileFragmentTable.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    | block280d0908Value0 block280d0908Value1 |
    block280d0908Value0 := OrderedCollection.
    block280d0908Value1 := (block280d0908Value0) new.
    block280d0908Value1
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) add: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2034b9ec; bytecode file offset 0xc482cc"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
makeNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) toBeProcessedSOsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) componentKey.
    recoveredValue3 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 recoveredBlock9Value3 recoveredBlock9Value4 |
    recoveredBlock9Value0 := recoveredArg1.
    recoveredBlock9Value1 := (recoveredBlock9Value0) mdlClassInterface.
    recoveredBlock9Value2 := (recoveredBlock9Value1) docFragmentList.
    recoveredBlock9Value3 := [:recoveredBlock9Block21Arg1 | 
    | recoveredBlock9Block21Value0 recoveredBlock9Block21Value1 recoveredBlock9Block21Value2 |
    recoveredBlock9Block21Value0 := recoveredBlock9Block21Arg1.
    recoveredBlock9Block21Value1 := [:recoveredBlock9Block21Block29Arg1 | 
    | recoveredBlock9Block21Block29Local1 recoveredBlock9Block21Block29Value0 recoveredBlock9Block21Block29Value1 recoveredBlock9Block21Block29Value2 recoveredBlock9Block21Block29Value3 recoveredBlock9Block21Block29Value4 recoveredBlock9Block21Block29Value5 recoveredBlock9Block21Block29Value6 recoveredBlock9Block21Block29Value7 recoveredBlock9Block21Block29Value8 |
    recoveredBlock9Block21Block29Value0 := recoveredBlock9Block21Block29Arg1.
    recoveredBlock9Block21Block29Value1 := (recoveredBlock9Block21Block29Value0) fileCategory.
    recoveredBlock9Block21Block29Value2 := recoveredArg1.
    recoveredBlock9Block21Block29Value3 := (recoveredBlock9Block21Block29Value2) mdlClassInterface.
    recoveredBlock9Block21Block29Value4 := (recoveredBlock9Block21Block29Value3) componentInfo.
    recoveredBlock9Block21Block29Value5 := (self) arFilenameCategory: (recoveredBlock9Block21Block29Value1) componentInfo: (recoveredBlock9Block21Block29Value4).
    recoveredBlock9Block21Block29Local1 := recoveredBlock9Block21Block29Value5.
    recoveredBlock9Block21Block29Value6 := recoveredBlock9Block21Block29Arg1.
    recoveredBlock9Block21Block29Value7 := recoveredBlock9Block21Block29Local1.
    recoveredBlock9Block21Block29Value8 := (self) addFragment: (recoveredBlock9Block21Block29Value6) fileName: (recoveredBlock9Block21Block29Value7).
    recoveredBlock9Block21Block29Value8
].
    recoveredBlock9Block21Value2 := (recoveredBlock9Block21Value0) do: (recoveredBlock9Block21Value1).
    recoveredBlock9Block21Value2
].
    recoveredBlock9Value4 := (recoveredBlock9Value2) ifNotNil: (recoveredBlock9Value3).
    recoveredBlock9Value4
].
    (recoveredValue0) at: (recoveredValue2) ifAbsentPut: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2035b260; bytecode file offset 0xc57b44"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
makeProjectNode: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) toBeProcessedSOsTable.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) componentKey.
    recoveredValue3 := (self) ascetTypesIdentifier: (recoveredValue2).
    recoveredValue4 := [
    | recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 |
    recoveredBlock11Value0 := recoveredArg1.
    recoveredBlock11Value1 := (recoveredBlock11Value0) mdlClassInterface.
    recoveredBlock11Value2 := (recoveredBlock11Value1) docFragmentList.
    recoveredBlock11Value3 := [:recoveredBlock11Block24Arg1 | 
    | recoveredBlock11Block24Value0 recoveredBlock11Block24Value1 recoveredBlock11Block24Value2 |
    recoveredBlock11Block24Value0 := recoveredBlock11Block24Arg1.
    recoveredBlock11Block24Value1 := [:recoveredBlock11Block24Block31Arg1 | 
    | recoveredBlock11Block24Block31Local1 recoveredBlock11Block24Block31Value0 recoveredBlock11Block24Block31Value1 recoveredBlock11Block24Block31Value2 recoveredBlock11Block24Block31Value3 recoveredBlock11Block24Block31Value4 recoveredBlock11Block24Block31Value5 recoveredBlock11Block24Block31Value6 recoveredBlock11Block24Block31Value7 recoveredBlock11Block24Block31Value8 |
    recoveredBlock11Block24Block31Value0 := recoveredBlock11Block24Block31Arg1.
    recoveredBlock11Block24Block31Value1 := (recoveredBlock11Block24Block31Value0) fileCategory.
    recoveredBlock11Block24Block31Value2 := recoveredArg1.
    recoveredBlock11Block24Block31Value3 := (recoveredBlock11Block24Block31Value2) mdlClassInterface.
    recoveredBlock11Block24Block31Value4 := (recoveredBlock11Block24Block31Value3) componentInfo.
    recoveredBlock11Block24Block31Value5 := (self) arFilenameCategory: (recoveredBlock11Block24Block31Value1) componentInfo: (recoveredBlock11Block24Block31Value4).
    recoveredBlock11Block24Block31Local1 := recoveredBlock11Block24Block31Value5.
    recoveredBlock11Block24Block31Value6 := recoveredBlock11Block24Block31Arg1.
    recoveredBlock11Block24Block31Value7 := recoveredBlock11Block24Block31Local1.
    recoveredBlock11Block24Block31Value8 := (self) addFragment: (recoveredBlock11Block24Block31Value6) fileName: (recoveredBlock11Block24Block31Value7).
    recoveredBlock11Block24Block31Value8
].
    recoveredBlock11Block24Value2 := (recoveredBlock11Block24Value0) do: (recoveredBlock11Block24Value1).
    recoveredBlock11Block24Value2
].
    recoveredBlock11Value4 := (recoveredBlock11Value2) ifNotNil: (recoveredBlock11Value3).
    recoveredBlock11Value4
].
    (recoveredValue0) at: (recoveredValue3) ifAbsentPut: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20417484; bytecode file offset 0xd13d94"
!SGRTEDocSourceCollector methodsFor: 'recovered'!
getAllRequiresSources
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := OrderedCollection.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredLocal2 := recoveredStack1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) arXmlFileFragmentTable.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [:recoveredBlock11Arg1 :recoveredBlock11Arg2 | 
    | recoveredBlock11Local1 recoveredBlock11Value0 recoveredBlock11Value1 recoveredBlock11Value2 recoveredBlock11Value3 recoveredBlock11Value4 recoveredBlock11Value5 recoveredBlock11Value6 recoveredBlock11Value7 recoveredBlock11Value8 recoveredBlock11Value9 recoveredBlock11Value10 recoveredBlock11Value11 recoveredBlock11Value12 recoveredBlock11Value13 recoveredBlock11Value14 recoveredBlock11Value15 recoveredBlock11Value16 recoveredBlock11Value17 recoveredBlock11Value18 recoveredBlock11Value19 recoveredBlock11Value20 recoveredBlock11Value21 |
    recoveredBlock11Value0 := SGAbstractAutosarXmlGenerator.
    recoveredBlock11Value1 := SGGeneratorFactory.
    recoveredBlock11Value2 := (recoveredBlock11Value1) create.
    recoveredBlock11Value3 := (recoveredBlock11Value2) genContext.
    recoveredBlock11Value4 := (recoveredBlock11Value0) createAutosarXmlGenerator: (recoveredBlock11Value3).
    recoveredLocal1 := recoveredBlock11Value4.
    recoveredBlock11Value5 := recoveredLocal1.
    recoveredBlock11Value6 := recoveredBlock11Arg2.
    recoveredBlock11Value7 := (recoveredBlock11Value5) createARXmlDocFromFragments: (recoveredBlock11Value6).
    recoveredLocal3 := recoveredBlock11Value7.
    recoveredBlock11Value8 := recoveredLocal2.
    recoveredBlock11Value9 := SGRTESourceObject.
    recoveredBlock11Value10 := recoveredBlock11Arg1.
    recoveredBlock11Value11 := (self) swComponentNode.
    recoveredBlock11Value12 := (recoveredBlock11Value11) rteDescription.
    recoveredBlock11Value13 := (self) swComponentNode.
    recoveredBlock11Value14 := (recoveredBlock11Value13) makeModuleRTESource.
    recoveredBlock11Value15 := (recoveredBlock11Value9) fileName: (recoveredBlock11Value10) description: (recoveredBlock11Value12) userReference: (recoveredBlock11Value14) sourceCollector: (self).
    recoveredBlock11Value16 := recoveredBlock11Value15.
    recoveredBlock11Value17 := TGDomHandle.
    recoveredBlock11Value18 := recoveredLocal3.
    recoveredBlock11Value19 := (recoveredBlock11Value17) create: (recoveredBlock11Value18).
    (recoveredBlock11Value16) rteSourceHandle: (recoveredBlock11Value19).
    recoveredBlock11Value20 := recoveredBlock11Value15.
    recoveredBlock11Local1 := recoveredBlock11Value20.
    recoveredBlock11Value21 := (recoveredBlock11Value8) add: (recoveredBlock11Value15).
    recoveredBlock11Value21
].
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            (recoveredStack0) keysAndValuesDo: (recoveredStack1).
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := [:block280fb988Arg1 :block280fb988Arg2 | 
    | block280fb988Value0 block280fb988Value1 block280fb988Value2 block280fb988Value3 block280fb988Value4 |
    block280fb988Value0 := block280fb988Arg1.
    block280fb988Value1 := (block280fb988Value0) filename.
    block280fb988Value2 := block280fb988Arg2.
    block280fb988Value3 := (block280fb988Value2) filename.
    block280fb988Value4 := (block280fb988Value1) < (block280fb988Value3).
    block280fb988Value4
].
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack0 := (recoveredStack0) asSortedCollection: (recoveredStack1).
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := (recoveredStack0) asArray.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

