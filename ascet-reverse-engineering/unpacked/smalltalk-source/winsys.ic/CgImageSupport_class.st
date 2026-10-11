"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"winsys.ic method 0x20000008; bytecode file offset 0x7c350"
!CgImageSupport class methodsFor: 'recovered'!
_PRAGMA_NlsCatCGa
    ^self
! !

"winsys.ic method 0x20000038; bytecode file offset 0x7c350"
!CgImageSupport class methodsFor: 'recovered'!
_PRAGMA_CgTIFFConstants
    ^self
! !

"winsys.ic method 0x20000090; bytecode file offset 0x7c350"
!CgImageSupport class methodsFor: 'recovered'!
_PRAGMA_CgJPEGConstants
    ^self
! !

"winsys.ic method 0x200000d0; bytecode file offset 0x7c350"
!CgImageSupport class methodsFor: 'recovered'!
_PRAGMA_CgJPEGFixedPointConstants
    ^self
! !

"winsys.ic method 0x20000100; bytecode file offset 0x7c350"
!CgImageSupport class methodsFor: 'recovered'!
_PRAGMA_CgJPEGMarkerCodes
    ^self
! !

"winsys.ic method 0x20000ad8; bytecode file offset 0x7ce40"
!CgImageSupport class methodsFor: 'recovered'!
packagerKnownSymbols
    ^#('destroyCallback')
! !

"winsys.ic method 0x200020b4; bytecode file offset 0x7e36c"
!CgImageSupport class methodsFor: 'recovered'!
finalizeSystem
    | recoveredValue0 |
    recoveredValue0 := CgPalette.
    (recoveredValue0) finalizeSystem.
    ^self
! !

"winsys.ic method 0x200061cc; bytecode file offset 0x8239c"
!CgImageSupport class methodsFor: 'recovered'!
libraryName
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := System.
    recoveredValue1 := (recoveredValue0) vmVersionId.
    recoveredValue2 := ('escgi') , (recoveredValue1).
    ^recoveredValue2
! !

"winsys.ic method 0x2000aaa0; bytecode file offset 0x86c74"
!CgImageSupport class methodsFor: 'recovered'!
localize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := NlsCatCGa.
    recoveredValue1 := (self) defaultMessagesLocale.
    (recoveredValue0) relocalizeTo: (recoveredValue1).
    recoveredValue2 := CgFileFormat.
    (recoveredValue2) initializeException.
    ^self
! !

"winsys.ic method 0x2000bc8c; bytecode file offset 0x87e64"
!CgImageSupport class methodsFor: 'recovered'!
initializeSystem
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := PlatformLibrary.
    recoveredValue1 := (self) libraryName.
    (recoveredValue0) mapLogicalName: ('CgImageSupport') toPhysicalName: (recoveredValue1).
    recoveredValue2 := CgPalette.
    (recoveredValue2) initializeSystem.
    ^self
! !

"winsys.ic method 0x2000e510; bytecode file offset 0x8a6e4"
!CgImageSupport class methodsFor: 'recovered'!
removing
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := CgRGBColor.
    (recoveredValue0) black: (nil).
    recoveredValue1 := CgRGBColor.
    (recoveredValue1) white: (nil).
    recoveredValue2 := CgIndexedPalette.
    (recoveredValue2) default: (nil).
    ^self
! !

"winsys.ic method 0x200117e4; bytecode file offset 0x8d9c0"
!CgImageSupport class methodsFor: 'recovered'!
packagingRulesFor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (recoveredValue0) initializeToNilClassVariable: ('SelectedPalettes') inClassNamed: ('CgPalette').
    recoveredValue1 := recoveredArg1.
    (recoveredValue1) replaceClassVariable: ('Default') with: ('CgIndexedPalette new') inClassNamed: ('CgIndexedPalette').
    ^self
! !

"winsys.ic method 0x2001b2e4; bytecode file offset 0x974cc"
!CgImageSupport class methodsFor: 'recovered'!
loaded
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    (self) localize.
    recoveredValue0 := CommonGraphics.
    (recoveredValue0) imageSupport: (self).
    recoveredValue1 := CgRGBColor.
    (recoveredValue1) initializeOnLoad.
    recoveredValue2 := CgIndexedPalette.
    (recoveredValue2) initializeOnLoad.
    recoveredValue3 := CgFileFormat.
    (recoveredValue3) initializeOnLoad.
    recoveredValue4 := CgJPEGFileFormat.
    (recoveredValue4) initializeOnLoad.
    recoveredValue5 := CgJPEGHuffmanTable.
    (recoveredValue5) initializeOnLoad.
    recoveredValue6 := CgJPEGQuantizationTable.
    (recoveredValue6) initializeOnLoad.
    ^self
! !

"winsys.ic method 0x20030d84; bytecode file offset 0xacf8c"
!CgImageSupport class methodsFor: 'recovered'!
epClassReferenceAdjustmentsFor: recoveredArg1 in: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'PR'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := '1EKYSUS'.
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
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) selector.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := 'allFormats'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack2 := CgFileFormat.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 51].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack3 := CgFileFormat.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := (recoveredStack3) subclasses.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := [:block280092a4Arg1 | 
    | block280092a4Value0 block280092a4Value1 |
    block280092a4Value0 := block280092a4Arg1.
    block280092a4Value1 := (block280092a4Value0) name.
    block280092a4Value1
].
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack2 := CgIconFileFormat.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 62] ifFalse: [recoveredPC := 83].
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := CgIconFileFormat.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack3 := (recoveredStack3) allSubclasses.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack4 := [:block280092c8Arg1 | 
    | block280092c8Value0 block280092c8Value1 |
    block280092c8Value0 := block280092c8Arg1.
    block280092c8Value1 := (block280092c8Value0) name.
    block280092c8Value1
].
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 83 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack1 := (recoveredStack1) methodClass.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack2 := CgImageFileFormat.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 94] ifFalse: [recoveredPC := 115].
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack1 := Array.
            recoveredPC := 96.
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack2 := nil.
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack3 := CgImageFileFormat.
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            recoveredStack3 := (recoveredStack3) allSubclasses.
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack4 := [:block280092ecArg1 | 
    | block280092ecValue0 block280092ecValue1 |
    block280092ecValue0 := block280092ecArg1.
    block280092ecValue1 := (block280092ecValue0) name.
    block280092ecValue1
].
            recoveredPC := 103.
        ].
        recoveredStep = 103 ifTrue: [
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack3 := (recoveredStack3) collect: (recoveredStack4).
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack1 := (recoveredStack1) with: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 115 ifTrue: [
            recoveredStack1 := nil.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

