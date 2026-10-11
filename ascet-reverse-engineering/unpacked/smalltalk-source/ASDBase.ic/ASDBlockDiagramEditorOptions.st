"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200069f8; bytecode file offset 0x908be4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
gridTypeStringCollection
    | recoveredValue0 |
    recoveredValue0 := (self) gridTypeValueCollection.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20016afc; bytecode file offset 0x92209c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
userSize
    ^'Userdefined'
! !

"ASDBase.ic method 0x20019910; bytecode file offset 0x92209c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
dinA5Size
    ^'A5 (148x210)'
! !

"ASDBase.ic method 0x2001a864; bytecode file offset 0x92209c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
landscape
    ^'Landscape'
! !

"ASDBase.ic method 0x2001c22c; bytecode file offset 0x92209c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
portrait
    ^'Portrait'
! !

"ASDBase.ic method 0x2001e0bc; bytecode file offset 0x92209c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
letterSize
    ^'Letter (216x279)'
! !

"ASDBase.ic method 0x20022cb8; bytecode file offset 0x92209c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
defaultGridType
    ^'Points'
! !

"ASDBase.ic method 0x20023138; bytecode file offset 0x92209c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
legalSize
    ^'Legal (216x355)'
! !

"ASDBase.ic method 0x20026fb0; bytecode file offset 0x923928"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
dinA4Size
    ^'A4 (210x297)'
! !

"ASDBase.ic method 0x20035f24; bytecode file offset 0x934580"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
groupString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) class.
    recoveredValue1 := (recoveredValue0) groupString.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2007a40c; bytecode file offset 0x97c330"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFlexibleClassLayoutGlobalActive
    ^false
! !

"ASDBase.ic method 0x200cc624; bytecode file offset 0x9c8f90"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
paperOrientationValueCollection
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) landscape.
    recoveredValue2 := (self) portrait.
    recoveredValue3 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2).
    ^recoveredValue3
! !

"ASDBase.ic method 0x200e3000; bytecode file offset 0x9df8b8"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
defaultDrawingAreaSize
    | recoveredValue0 |
    recoveredValue0 := (2000) @ (2000).
    ^recoveredValue0
! !

"ASDBase.ic method 0x201046d0; bytecode file offset 0xa00fd0"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
drawingAreaSizeStringCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('2000 @ 2000') with: ('5000 @ 5000') with: ('10000 @ 10000').
    ^recoveredValue1
! !

"ASDBase.ic method 0x201046ec; bytecode file offset 0xa00fd0"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
gridTypeValueCollection
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('Points') with: ('Lines') with: ('Invisible').
    ^recoveredValue1
! !

"ASDBase.ic method 0x201177a4; bytecode file offset 0xa1408c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultFlexibleClassLayout
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'DefaultFlexibleClassLayoutAttribute'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    false
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011ccbc; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterControls
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterControls') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011ccdc; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionSequenceUseGaps
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('SequenceUseGaps') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011ccfc; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterConnections
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterConnections') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cd0c; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterComments
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterComments') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cd1c; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterLiterals
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterLiterals') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cd5c; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionBDEScalingBehaviourPredefined
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('ExtendedScalingBehaviourPredefined') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cd6c; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDisplayConnectionPortSelectionBox
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('DisplayConnectionPortSelectionBox') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cd8c; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterPrimitiveElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterPrimitiveElements') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cddc; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterImplCasts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterImplCasts') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cdfc; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterShowPositions
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterShowPositions') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011ce2c; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterInOutPorts
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterInOutPorts') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011ce3c; bytecode file offset 0xa19708"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterOperators
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^false
].
    recoveredValue1 := (self) optionAt: ('FilterOperators') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cef0; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterComplexElements
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('FilterComplexElements') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cf10; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionOverlappingShow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('OverlappingShow') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cf30; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultBlockLayoutShowIcon
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('DefaultBlockLayoutShowIcon') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cf60; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionHandleMissingConnections
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('HandleMissingConnections') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cf80; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionPageBorderShow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('PageBorderShow') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cfa0; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionShowParameterValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('ShowParamValues') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cfc0; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultBlockLayoutShowPinNames
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('DefaultBlockLayoutShowPinNames') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011cfd0; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionWatermarkShow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('WatermarkShow') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d020; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionPageNumberShow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('PageNumberShow') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d070; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultBlockLayoutShowComponentName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('DefaultBlockLayoutShowComponentName') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d0c0; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionShowConstantValues
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('ShowConstValues') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d230; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionFilterHierarchies
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('FilterHierarchies') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d270; bytecode file offset 0xa19b6c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultBlockLayoutShowElementName
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^true
].
    recoveredValue1 := (self) optionAt: ('DefaultBlockLayoutShowElementName') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d2fc; bytecode file offset 0xa19c5c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionGridType
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) defaultGridType.
    ^recoveredBlock6Value0
].
    recoveredValue1 := (self) optionAt: ('GridType') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2011d34c; bytecode file offset 0xa19c5c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionPaperOrientation
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (self) landscape.
    ^recoveredBlock6Value0
].
    recoveredValue1 := (self) optionAt: ('PaperOrientation') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2012ffe4; bytecode file offset 0xa2c8a0"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionWatermarkSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    ^20
].
    recoveredValue1 := (self) optionAt: ('WatermarkSize') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2014103c; bytecode file offset 0xa3d8fc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionUndoBufferSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^0
].
    recoveredValue1 := (self) optionAt: ('UndoBufferSize') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20141064; bytecode file offset 0xa3d960"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionSequenceStepSize
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^1
].
    recoveredValue1 := (self) optionAt: ('SequenceStepSize') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20141078; bytecode file offset 0xa3d960"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionSequenceOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^1
].
    recoveredValue1 := (self) optionAt: ('SequenceOffset') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2014108c; bytecode file offset 0xa3d960"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionGridSizeVertical
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^1
].
    recoveredValue1 := (self) optionAt: ('GridSizeVertical') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201410a0; bytecode file offset 0xa3d960"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionGridSizeHorizontal
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^1
].
    recoveredValue1 := (self) optionAt: ('GridSizeHorizontal') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    ^recoveredValue2
! !

"ASDBase.ic method 0x201634f4; bytecode file offset 0xa5fdb4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionUserPaperSizeY
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^297
].
    recoveredValue1 := (self) optionAt: ('UserPaperSizeY') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    ^recoveredValue2
! !

"ASDBase.ic method 0x20163520; bytecode file offset 0xa5fde0"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionUserPaperSizeX
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^210
].
    recoveredValue1 := (self) optionAt: ('UserPaperSizeX') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    ^recoveredValue2
! !

"ASDBase.ic method 0x2016354c; bytecode file offset 0xa5fe78"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionGraphicalCommentsFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) fontManager.
    recoveredBlock6Value1 := (recoveredBlock6Value0) fontTiny.
    recoveredBlock6Value2 := (recoveredBlock6Value1) fontStruct.
    recoveredBlock6Value3 := (recoveredBlock6Value2) logicalFontDescription.
    ^recoveredBlock6Value3
].
    recoveredValue1 := (self) optionAt: ('GraphicalCommentsFont') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016356c; bytecode file offset 0xa5fe78"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionGraphicalNamesFont
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 recoveredBlock6Value1 recoveredBlock6Value2 recoveredBlock6Value3 |
    recoveredBlock6Value0 := (self) fontManager.
    recoveredBlock6Value1 := (recoveredBlock6Value0) fontTiny.
    recoveredBlock6Value2 := (recoveredBlock6Value1) fontStruct.
    recoveredBlock6Value3 := (recoveredBlock6Value2) logicalFontDescription.
    ^recoveredBlock6Value3
].
    recoveredValue1 := (self) optionAt: ('GraphicalNamesFont') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2016e508; bytecode file offset 0xa6adfc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
paperSizeValueCollection
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := Array.
    recoveredValue1 := (self) dinA5Size.
    recoveredValue2 := (self) dinA4Size.
    recoveredValue3 := (self) letterSize.
    recoveredValue4 := (self) legalSize.
    recoveredValue5 := (self) userSize.
    recoveredValue6 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20173628; bytecode file offset 0xa6ff04"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultBlockLayoutDefSizeVertical
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    ^12
].
    recoveredValue1 := (self) optionAt: ('DefaultBlockLayoutDefSizeVertical') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := PinDistance.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20173640; bytecode file offset 0xa6ff04"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultBlockLayoutDefSizeHorizontal
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := [
    ^12
].
    recoveredValue1 := (self) optionAt: ('DefaultBlockLayoutDefSizeHorizontal') ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) asInteger.
    recoveredValue3 := PinDistance.
    recoveredValue4 := (recoveredValue2) * (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201836b0; bytecode file offset 0xa7ff74"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionShowSystemConstantValues
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := ('hw') == ('call_82943').
    recoveredValue1 := [
    ^true
].
    recoveredValue2 := (self) optionAt: ('ShowSystemConstValues') ifAbsent: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201a36b0; bytecode file offset 0xa9ff70"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDrawingAreaSize
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := [
    | recoveredBlock6Value0 |
    recoveredBlock6Value0 := (2000) @ (2000).
    ^recoveredBlock6Value0
].
    recoveredValue1 := (self) optionAt: ('DrawingAreaSize') ifAbsent: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x201cae90; bytecode file offset 0xac77fc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionWatermarkColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := CgRGBColor.
    recoveredBlock9Value1 := (recoveredBlock9Value0) lightGray.
    ^recoveredBlock9Value1
].
    recoveredValue2 := (self) optionAt: ('BDEWatermarkColor') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := (recoveredValue0) fromOSRGB: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201caeb0; bytecode file offset 0xac77fc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionBDEOverlappingColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := CgRGBColor.
    recoveredBlock9Value1 := (recoveredBlock9Value0) red.
    ^recoveredBlock9Value1
].
    recoveredValue2 := (self) optionAt: ('BDEOverlappingColor') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := (recoveredValue0) fromOSRGB: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201caed0; bytecode file offset 0xac77fc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultBlockLayoutColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := CgRGBColor.
    recoveredBlock9Value1 := (recoveredBlock9Value0) white.
    ^recoveredBlock9Value1
].
    recoveredValue2 := (self) optionAt: ('DefaultBlockLayoutColor') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := (recoveredValue0) fromOSRGB: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201caef0; bytecode file offset 0xac77fc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionBDEBackgroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := CgRGBColor.
    recoveredBlock9Value1 := (recoveredBlock9Value0) white.
    ^recoveredBlock9Value1
].
    recoveredValue2 := (self) optionAt: ('BDEBackgroundColor') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := (recoveredValue0) fromOSRGB: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201caf10; bytecode file offset 0xac77fc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionBDEGridColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := CgRGBColor.
    recoveredBlock9Value1 := (recoveredBlock9Value0) darkGray.
    ^recoveredBlock9Value1
].
    recoveredValue2 := (self) optionAt: ('BDEGridColor') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := (recoveredValue0) fromOSRGB: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201caf30; bytecode file offset 0xac77fc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionBDECommentLineColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 |
    recoveredBlock9Value0 := CgRGBColor.
    recoveredBlock9Value1 := (recoveredBlock9Value0) green.
    ^recoveredBlock9Value1
].
    recoveredValue2 := (self) optionAt: ('BDECommentLineColor') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := (recoveredValue0) fromOSRGB: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201d81b4; bytecode file offset 0xad4aa8"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionBDESelectionMarkerColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := CgRGBColor.
    recoveredBlock9Value1 := (recoveredBlock9Value0) blue.
    recoveredBlock9Value2 := (recoveredBlock9Value1) asOSRGB.
    ^recoveredBlock9Value2
].
    recoveredValue2 := (self) optionAt: ('BDESelectionMarkerColor') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := (recoveredValue0) fromOSRGB: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x201d81d8; bytecode file offset 0xad4aa8"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionBDEInactiveSelectionMarkerColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := CgRGBColor.
    recoveredValue1 := [
    | recoveredBlock9Value0 recoveredBlock9Value1 recoveredBlock9Value2 |
    recoveredBlock9Value0 := CgRGBColor.
    recoveredBlock9Value1 := (recoveredBlock9Value0) lightGray.
    recoveredBlock9Value2 := (recoveredBlock9Value1) asOSRGB.
    ^recoveredBlock9Value2
].
    recoveredValue2 := (self) optionAt: ('BDEInactiveSelectionMarkerColor') ifAbsent: (recoveredValue1).
    recoveredValue3 := (recoveredValue2) asInteger.
    recoveredValue4 := (recoveredValue0) fromOSRGB: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2021ca24; bytecode file offset 0xb192f0"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionSequenceStepSize: recoveredArg1
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
            recoveredStack1 := [:block280db888Arg1 | 
    | block280db888Value0 block280db888Value1 block280db888Value2 |
    block280db888Value0 := block280db888Arg1.
    block280db888Value1 := (block280db888Value0) attributeName.
    block280db888Value2 := (block280db888Value1) = ('SequenceStepSize').
    block280db888Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            (recoveredStack0) value: (recoveredStack1).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2022f794; bytecode file offset 0xb2c054"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
drawingAreaSizeValueCollection
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := Array.
    recoveredValue1 := (2000) @ (2000).
    recoveredValue2 := (5000) @ (5000).
    recoveredValue3 := (10000) @ (10000).
    recoveredValue4 := (recoveredValue0) with: (recoveredValue1) with: (recoveredValue2) with: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2025a580; bytecode file offset 0xb56e50"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionConnectionsRoundedRadius
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280df644Arg1 | 
    | block280df644Value0 block280df644Value1 block280df644Value2 |
    block280df644Value0 := block280df644Arg1.
    block280df644Value1 := (block280df644Value0) attributeName.
    block280df644Value2 := (block280df644Value1) = ('ConnectionLineRadius').
    block280df644Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    ^5
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20268bc0; bytecode file offset 0xb655f4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterImplCasts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Implementation Casts') description: ('Show Implementation Casts in the Navigation Tree') toolTip: ('Show Implementation Casts in the Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterImplCasts') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20268bf8; bytecode file offset 0xb655f4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterLiterals
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Literals') description: ('Show Literals in the Navigation Tree') toolTip: ('Show Literals in the Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterLiterals') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20268c30; bytecode file offset 0xb655f4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterComments
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Comments') description: ('Show comments in Navigation Tree') toolTip: ('Show comments in Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterComments') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20268c68; bytecode file offset 0xb655f4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterPrimitiveElements
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Primitive Elements') description: ('Show Primitive Elements in the Navigation Tree') toolTip: ('Show Primitive Elements in the Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterPrimitiveElements') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20268ca0; bytecode file offset 0xb655f4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterInOutPorts
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show In/Out Ports') description: ('Show In/Out Ports in the Navigation Tree') toolTip: ('Show In/Out Ports in the Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterInOutPorts') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20268cd8; bytecode file offset 0xb655f4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterShowPositions
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Positions') description: ('Show Positions of Elements in the Navigation Tree') toolTip: ('Show Positions of Elements in the Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterShowPositions') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20268d10; bytecode file offset 0xb655f4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterConnections
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Connections') description: ('Show Connections in the Navigation Tree') toolTip: ('Show Connections in the Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterConnections') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20268e78; bytecode file offset 0xb65e24"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultBlockLayoutShowComponentName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringDefaultBlockLayout.
    recoveredValue4 := (recoveredValue1) label: ('Show Component Name') description: ('Show component name') toolTip: ('Show component name') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultBlockLayoutShowComponentName') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20268f58; bytecode file offset 0xb65e24"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterHierarchies
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Hierarchies') description: ('Show Hierarchies in the Navigation Tree') toolTip: ('Show Hierarchies in the Navigation Tree') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterHierarchies') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20269000; bytecode file offset 0xb65e24"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterComplexElements
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Complex Elements') description: ('Show Complex Elements in the Navigation Tree') toolTip: ('Show Complex Elements in the Navigation Tree') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterComplexElements') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202693b8; bytecode file offset 0xb65e24"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultBlockLayoutShowIcon
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringDefaultBlockLayout.
    recoveredValue4 := (recoveredValue1) label: ('Show Icon') description: ('Show icon') toolTip: ('Show icon') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultBlockLayoutShowIcon') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20269498; bytecode file offset 0xb65e24"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultBlockLayoutShowElementName
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringDefaultBlockLayout.
    recoveredValue4 := (recoveredValue1) label: ('Show Element Name') description: ('Show element name') toolTip: ('Show element name') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultBlockLayoutShowElementName') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202695a0; bytecode file offset 0xb65f00"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterOperators
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Operators') description: ('Show Operators (+, -, *, /, ...) in the Navigation Tree') toolTip: ('Show Operators in the Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterOperators') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202695dc; bytecode file offset 0xb65f00"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFilterControls
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringNavigationFilter.
    recoveredValue4 := (recoveredValue1) label: ('Show Controls') description: ('Show Controls (IF, WHILE, SWITCH) in the Navigation Tree') toolTip: ('Show Controls in the Navigation Tree') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FilterControls') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x20269618; bytecode file offset 0xb65f00"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultFlexibleClassLayoutAttribute
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringDefaultBlockLayout.
    recoveredValue4 := (recoveredValue1) label: ('Set Flexible Class Layout for new Components') description: ('Default value for the flexible class layout attribute when creating a new components') toolTip: ('Flexible Class Layout Default Value') value: (false) default: (false) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultFlexibleClassLayoutAttribute') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026967c; bytecode file offset 0xb65f64"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultBlockLayoutShowPinNames
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringDefaultBlockLayout.
    recoveredValue4 := (recoveredValue1) label: ('Show Pin Names') description: ('Show pins names') toolTip: ('Show pin names') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultBlockLayoutShowPinNames') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026bb08; bytecode file offset 0xb683dc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionPaperSizeString
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
            recoveredStack1 := [:block280e02ecArg1 | 
    | block280e02ecValue0 block280e02ecValue1 block280e02ecValue2 |
    block280e02ecValue0 := block280e02ecArg1.
    block280e02ecValue1 := (block280e02ecValue0) attributeName.
    block280e02ecValue2 := (block280e02ecValue1) = ('PaperSize').
    block280e02ecValue2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (210) @ (297).
    ^recoveredBlock16Value0
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2026f314; bytecode file offset 0xb6bbf4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeOverlappingShow
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Show Overlapping') description: ('Show overlapping of blocks') toolTip: ('Show overlapping of blocks') value: (true) default: (true) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('OverlappingShow') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026f370; bytecode file offset 0xb6bc54"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializePageNumberShow
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Show Page Number') description: ('Show the page number in the BDE') toolTip: ('Show Page Number in BDE') value: (false) default: (false) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('PageNumberShow') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026f3d0; bytecode file offset 0xb6bd24"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeShowConstantValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Show Constant Values') description: ('Show constant values in BDE') toolTip: ('Show Constant Values in BDE') value: (true) default: (true) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('ShowConstValues') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026f408; bytecode file offset 0xb6bd24"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializePageBorderShow
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Show Page Border') description: ('Show the page border in the BDE') toolTip: ('Show Page Border in BDE') value: (true) default: (true) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('PageBorderShow') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2026f440; bytecode file offset 0xb6bd24"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeHandleMissingConnections
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Show Missing Pins and Connections') description: ('If activated, all pins of complex elements that are not available anymore (e.g. because the method was deleted or is hidden in the default layout) and all lines connected to such pins will be shown in red instead of being removed automatically.<br/><br/><b>Note:</b> As not all information are available for such pins, the graphical representation of the pin itself might differ.<br/><br/>This function is intended to give a hint that something outside the component has changed and will affect the graphical specification of the component.<br/>If pins or connections are displayed as missing it is recommended to either adjust the specification manually or to activate "Flexible Class Layout" for the affected component(s).<br/><br/>However, code generation might fail if any element is/was connected to a missing pin.') toolTip: ('Show missing pins and connections in red instead of removing them') value: (true) default: (true) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (self) userOptionFile.
    recoveredValue5 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('HandleMissingConnections') optionClass: (recoveredValue3) optionFile: (recoveredValue4).
    recoveredLocal1 := recoveredValue5.
    recoveredValue6 := recoveredLocal1.
    ^recoveredValue6
! !

"ASDBase.ic method 0x2028fbcc; bytecode file offset 0xb8c49c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
matchingDrawingAreaSize: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) drawingAreaSizeValueCollection.
    recoveredValue1 := [:recoveredBlock5Arg1 | 
    | recoveredBlock5Stack0 recoveredBlock5Stack1 recoveredBlock5Stack2 recoveredBlock5Stack3 recoveredBlock5Stack4 recoveredBlock5Stack5 recoveredBlock5PC recoveredBlock5Step recoveredBlock5Done recoveredBlock5Result |
    recoveredBlock5Stack0 := self.
    recoveredBlock5PC := 12.
    recoveredBlock5Done := false.
    [recoveredBlock5Done not] whileTrue: [
        recoveredBlock5Step := recoveredBlock5PC.
        recoveredBlock5Step = 12 ifTrue: [
            recoveredBlock5Stack1 := nil.
            recoveredBlock5PC := 13.
        ].
        recoveredBlock5Step = 13 ifTrue: [
            recoveredBlock5Stack2 := Rectangle.
            recoveredBlock5PC := 15.
        ].
        recoveredBlock5Step = 15 ifTrue: [
            recoveredBlock5Stack3 := 0.
            recoveredBlock5PC := 17.
        ].
        recoveredBlock5Step = 17 ifTrue: [
            recoveredBlock5Stack4 := 0.
            recoveredBlock5PC := 19.
        ].
        recoveredBlock5Step = 19 ifTrue: [
            recoveredBlock5Stack3 := (recoveredBlock5Stack3) @ (recoveredBlock5Stack4).
            recoveredBlock5PC := 20.
        ].
        recoveredBlock5Step = 20 ifTrue: [
            recoveredBlock5Stack4 := recoveredBlock5Arg1.
            recoveredBlock5PC := 21.
        ].
        recoveredBlock5Step = 21 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) origin: (recoveredBlock5Stack3) corner: (recoveredBlock5Stack4).
            recoveredBlock5PC := 23.
        ].
        recoveredBlock5Step = 23 ifTrue: [
            recoveredBlock5Stack3 := recoveredArg1.
            recoveredBlock5PC := 26.
        ].
        recoveredBlock5Step = 26 ifTrue: [
            recoveredBlock5Stack2 := (recoveredBlock5Stack2) containsRectangle: (recoveredBlock5Stack3).
            recoveredBlock5PC := 28.
        ].
        recoveredBlock5Step = 28 ifTrue: [
            (recoveredBlock5Stack2) ifTrue: [recoveredBlock5PC := 32] ifFalse: [recoveredBlock5PC := 35].
        ].
        recoveredBlock5Step = 32 ifTrue: [
            recoveredBlock5PC := 33.
        ].
        recoveredBlock5Step = 33 ifTrue: [
            recoveredBlock5Stack1 := recoveredBlock5Arg1.
            recoveredBlock5PC := 34.
        ].
        recoveredBlock5Step = 34 ifTrue: [
            ^recoveredBlock5Stack1
        ].
        recoveredBlock5Step = 35 ifTrue: [
            recoveredBlock5Result := recoveredBlock5Stack1.
            recoveredBlock5Done := true.
        ].
    ].
    recoveredBlock5Result
].
    (recoveredValue0) do: (recoveredValue1).
    recoveredValue2 := (self) drawingAreaSizeValueCollection.
    recoveredValue3 := (recoveredValue2) last.
    ^recoveredValue3
! !

"ASDBase.ic method 0x20295778; bytecode file offset 0xb92064"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeSequenceUseGaps
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue2) , ('\Sequencing').
    recoveredValue4 := (recoveredValue1) label: ('Use Gaps') description: ('Use gaps in sequence numbers') toolTip: ('Use gaps in sequence numbers') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('SequenceUseGaps') oldName: ('UseGaps') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x202957e4; bytecode file offset 0xb920d4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFlexibleClassLayoutGlobalActive
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := ('All reusable components will activate their flexible mechanism\ for the class layout - regardless to the local setting in the layout editor. ') , ('\If this option is disabled, the flexible mechanism for a single component can be activated in its layout editor.').
    recoveredValue3 := (self) groupString.
    recoveredValue4 := (recoveredValue1) label: ('Activate flexible layout global') description: (recoveredValue2) toolTip: ('Global activation for flexible layout') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('FlexibleClassLayoutGlobalActive') oldName: ('FlexibleLayoutGlobalActive') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    ^recoveredValue6
! !

"ASDBase.ic method 0x2029a1a8; bytecode file offset 0xb96a94"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeShowParameterValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasBooleanOption.
    recoveredValue2 := ('Show parameter values in BDE.') , ('For Calibration Interfaces show selected Data Set Name.').
    recoveredValue3 := (self) groupString.
    recoveredValue4 := (recoveredValue1) label: ('Show Parameter Values') description: (recoveredValue2) toolTip: ('Show Parameter Values in BDE') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('ShowParamValues') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x2029b4c8; bytecode file offset 0xb97d8c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionDefaultFlexibleClassLayoutConversion
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'DefaultFlexibleClassLayoutConversion'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [
    ^nil
].
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionAt: (recoveredStack1) ifAbsent: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := 'Activate'.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 28] ifFalse: [recoveredPC := 30].
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack0 := true.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := 'Deactivate'.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 40] ifFalse: [recoveredPC := 42].
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := false.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2029f420; bytecode file offset 0xb9bd08"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDisplayConnectionPortSelectionBox
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EditorSettings\BlockDiagram'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'DisplayConnectionPortSelectionBox'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Display Connection Port Selection Box'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Only in Connection Mode: With the mouse over the diagram elements there is an extra selection box showed for the selection of the connection ports.'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Display the Connection Port Selection Box'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := true.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := true.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := true.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x202ac834; bytecode file offset 0xba9120"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeShowSystemConstantValues
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ('hw') == ('call_82943').
    recoveredValue1 := EtasXMLOptionEntry.
    recoveredValue2 := EtasBooleanOption.
    recoveredValue3 := (self) groupString.
    recoveredValue4 := (recoveredValue2) label: ('Show System Constant Values') description: ('Show system constant values in BDE') toolTip: ('Show System Constant Values in BDE') value: (true) default: (true) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue1) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('ShowSystemConstValues') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    ^recoveredValue7
! !

"ASDBase.ic method 0x202b72fc; bytecode file offset 0xbb3bd0"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionSelectionMarkerSize
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block280e50b0Arg1 | 
    | block280e50b0Value0 block280e50b0Value1 block280e50b0Value2 |
    block280e50b0Value0 := block280e50b0Arg1.
    block280e50b0Value1 := (block280e50b0Value0) attributeName.
    block280e50b0Value2 := (block280e50b0Value1) = ('SelectionMarkerSize').
    block280e50b0Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (5) @ (5).
    ^recoveredBlock16Value0
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202d6dc8; bytecode file offset 0xbd36b8"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultBlockLayoutColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) white.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) white.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) class.
    recoveredValue9 := (recoveredValue8) groupStringDefaultBlockLayout.
    recoveredValue10 := (recoveredValue1) label: ('Fill Color') description: ('Default fill color for blocks') toolTip: ('Default fill color for blocks') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue9) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultBlockLayoutColor') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202e071c; bytecode file offset 0xbdd010"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultFlexibleClassLayoutConversion
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasEnumerationOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringDefaultBlockLayout.
    recoveredValue4 := (recoveredValue1) label: ('Flexible Class Layout Conversion Default') description: ('When converting old models (<6.2.0) the Flexible Class Layout flag needs to be set according to the former usage of this feature.<br/>Select ''Activate'', to force the Flexible Class Layout flag to be set for all converted components. Select ''Deactivate'' to force the flag to be cleared. If the former setting should be kept choose ''Keep''.<br/><b>Note:</b>If the flag is not set correctly it may result in a damage of graphical specifications!!') toolTip: ('Flexible Class Layout Conversion Default') value: ('Keep') default: ('Keep') group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) valueCollection: (#('Keep' 'Activate' 'Deactivate')).
    recoveredValue6 := (recoveredValue4) stringCollection: (#('Keep' 'Activate' 'Deactivate')).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultFlexibleClassLayoutConversion') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202e0a58; bytecode file offset 0xbdd344"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeSelectionMarkerSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Selection Marker Size (px)') description: ('Size of the selection marker in graphic pane') toolTip: ('Size of the selection marker in graphic pane') value: (5) default: (5) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) min: (1).
    recoveredValue5 := (recoveredValue3) max: (5).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('SelectionMarkerSize') oldName: ('MarkerSize') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202e9988; bytecode file offset 0xbe6280"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeBDEInactiveSelectionMarkerColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) lightGray.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) lightGray.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue8) , ('\Colors').
    recoveredValue10 := (recoveredValue1) label: ('Inactive Selection Marker Color') description: ('Selection Marker color of the graphic pane for not changeable objects') toolTip: ('Selection Marker color of the graphic pane for ot changeable objects') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue9) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('BDEInactiveSelectionMarkerColor') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202f2dd4; bytecode file offset 0xbef6c0"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeGridSizeHorizontal
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringGrid.
    recoveredValue4 := (recoveredValue1) label: ('Grid Spacing Horizontal') description: ('Grid spacing horizontal (multiple of pin distance)') toolTip: ('Grid spacing horizontal (multiple of pin distance)') value: (1) default: (1) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) min: (1).
    recoveredValue6 := (recoveredValue4) max: (100).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('GridSizeHorizontal') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202f2e4c; bytecode file offset 0xbef778"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultBlockLayoutDefSizeVertical
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringDefaultBlockLayout.
    recoveredValue4 := (recoveredValue1) label: ('Default Block Height') description: ('Default height of blocks') toolTip: ('Default height of blocks') value: (12) default: (12) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) min: (1).
    recoveredValue6 := (recoveredValue4) max: (100).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultBlockLayoutDefSizeVertical') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202f2e8c; bytecode file offset 0xbef778"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDefaultBlockLayoutDefSizeHorizontal
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringDefaultBlockLayout.
    recoveredValue4 := (recoveredValue1) label: ('Default Block Width') description: ('Default width of blocks') toolTip: ('Default width of blocks') value: (12) default: (12) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) min: (1).
    recoveredValue6 := (recoveredValue4) max: (100).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DefaultBlockLayoutDefSizeHorizontal') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202f2ffc; bytecode file offset 0xbef8ec"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeGridSizeVertical
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) class.
    recoveredValue3 := (recoveredValue2) groupStringGrid.
    recoveredValue4 := (recoveredValue1) label: ('Grid Spacing Vertical') description: ('Grid spacing  vertical (multiple of pin distance)') toolTip: ('Grid spacing vertical (multiple of pin distance)') value: (1) default: (1) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) min: (1).
    recoveredValue6 := (recoveredValue4) max: (100).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('GridSizeVertical') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x202f33cc; bytecode file offset 0xbefcb8"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeUndoBufferSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Size of Undo Buffer') description: ('Number of actions that can be undone with Undo') toolTip: ('Number of actions that can be undone with Undo') value: (50) default: (50) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := recoveredValue3.
    (recoveredValue4) min: (0).
    recoveredValue5 := (recoveredValue3) max: (100).
    recoveredValue6 := (self) userOptionFile.
    recoveredValue7 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('UndoBufferSize') oldName: ('Undobuffersize') optionClass: (recoveredValue5) optionFile: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x202fb3ec; bytecode file offset 0xbf7e14"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeBDEOverlappingColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) red.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) red.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue8) , ('\Colors').
    recoveredValue10 := (recoveredValue1) label: ('Intersection Color') description: ('Intersection color for representing overlapping blocks') toolTip: ('Intersection color for representing overlapping blocks') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue9) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('BDEOverlappingColor') oldName: ('Intersectioncolor') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202fb438; bytecode file offset 0xbf7e14"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeBDEGridColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) darkGray.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) darkGray.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue8) , ('\Colors').
    recoveredValue10 := (recoveredValue1) label: ('Grid Color') description: ('Grid color of the graphic pane') toolTip: ('Grid color of the graphic pane') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue9) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('BDEGridColor') oldName: ('Gridcolor') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202fb484; bytecode file offset 0xbf7e14"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeBDEBackgroundColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) white.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) white.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue8) , ('\Colors').
    recoveredValue10 := (recoveredValue1) label: ('Background Color') description: ('Background color of the graphic pane') toolTip: ('Background color of the graphic pane') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue9) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('BDEBackgroundColor') oldName: ('Backgroundcolor') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202fb4d0; bytecode file offset 0xbf7e14"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeBDECommentLineColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) green.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) green.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue8) , ('\Colors').
    recoveredValue10 := (recoveredValue1) label: ('Comment Line Color') description: ('Comment Line color of the graphic pane') toolTip: ('Comment Line color of the graphic pane') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue9) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('BDECommentLineColor') oldName: ('Commentlinecolor') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x202fb51c; bytecode file offset 0xbf7e14"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeBDESelectionMarkerColor
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasColorOption.
    recoveredValue2 := CgRGBColor.
    recoveredValue3 := (recoveredValue2) blue.
    recoveredValue4 := (recoveredValue3) asOSRGB.
    recoveredValue5 := CgRGBColor.
    recoveredValue6 := (recoveredValue5) blue.
    recoveredValue7 := (recoveredValue6) asOSRGB.
    recoveredValue8 := (self) groupString.
    recoveredValue9 := (recoveredValue8) , ('\Colors').
    recoveredValue10 := (recoveredValue1) label: ('Selection Marker Color') description: ('Selection Marker color of the graphic pane for changeable objects') toolTip: ('Selection Marker color of the graphic pane for changeable objects') value: (recoveredValue4) default: (recoveredValue7) group: (recoveredValue9) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('BDESelectionMarkerColor') oldName: ('Markercolor') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20303d18; bytecode file offset 0xc0060c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeSequenceStepSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue2) , ('\Sequencing').
    recoveredValue4 := (recoveredValue1) label: ('Sequence Step Size') description: ('Size of the sequence step in block diagram editor') toolTip: ('Size of the sequence step in block diagram editor') value: (5) default: (5) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) min: (1).
    recoveredValue6 := (recoveredValue4) max: (100000).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('SequenceStepSize') oldName: ('SequenceStepSize') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x20303d98; bytecode file offset 0xc0068c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeSequenceOffset
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue2) , ('\Sequencing').
    recoveredValue4 := (recoveredValue1) label: ('Sequence Shift Offset') description: ('Offset value for shifting Sequence Calls') toolTip: ('Offset value for shifting Sequence Calls') value: (10) default: (10) group: (recoveredValue3) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue5 := recoveredValue4.
    (recoveredValue5) min: (1).
    recoveredValue6 := (recoveredValue4) max: (100000).
    recoveredValue7 := (self) userOptionFile.
    recoveredValue8 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('SequenceOffset') oldName: ('SequenceOffset') optionClass: (recoveredValue6) optionFile: (recoveredValue7).
    ^recoveredValue8
! !

"ASDBase.ic method 0x203164e0; bytecode file offset 0xc12ddc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeWatermarkShow
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasContainerOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue1) label: ('Show Watermark') description: ('Show Watermarks (e.g. the currently selected View) in BDE') toolTip: ('Show Watermarks in BDE') value: (true) default: (true) group: (recoveredValue2) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue4 := (recoveredValue3) changeable: (true).
    recoveredValue5 := (self) userOptionFile.
    recoveredValue6 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('WatermarkShow') oldName: ('ShowWatermark') optionClass: (recoveredValue4) optionFile: (recoveredValue5).
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := recoveredLocal1.
    recoveredValue8 := (recoveredValue7) optionClass.
    recoveredValue9 := (recoveredValue8) options.
    recoveredValue10 := recoveredValue9.
    recoveredValue11 := (self) initializeWatermarkSize.
    (recoveredValue10) add: (recoveredValue11).
    recoveredValue12 := recoveredLocal1.
    ^recoveredValue12
! !

"ASDBase.ic method 0x2031ad48; bytecode file offset 0xc17638"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeConnectionsRoundedRadius
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EditorSettings\BlockDiagram'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ConnectionLineRadius'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'ConnectionLineRadius'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasNumericOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Connection Lines Corner Radius (px)'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Corner radius of rounded connections (0 means no rounded corners)'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Connection Line Corner Radius in Pixel'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := 5.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := 5.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := (recoveredStack11) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack12 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack13 := [
    true
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack14 := 'USER'.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack15 := nil.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack7 := 0.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            (recoveredStack6) min: (recoveredStack7).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := 50.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack5 := (recoveredStack5) max: (recoveredStack6).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := (recoveredStack6) userOptionFile.
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20322f98; bytecode file offset 0xc1f8dc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializePaperSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasEnumerationOption.
    recoveredValue2 := (self) dinA4Size.
    recoveredValue3 := (self) dinA4Size.
    recoveredValue4 := (self) groupString.
    recoveredValue5 := (recoveredValue4) , ('\Paper Size').
    recoveredValue6 := (recoveredValue1) label: ('Paper Size') description: ('Size of the paper frame in the graphic pane') toolTip: ('Size of the paper frame in the graphic pane') value: (recoveredValue2) default: (recoveredValue3) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) paperSizeValueCollection.
    (recoveredValue7) valueCollection: (recoveredValue8).
    recoveredValue9 := (self) paperSizeValueCollection.
    recoveredValue10 := (recoveredValue6) stringCollection: (recoveredValue9).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('PaperSize') oldName: ('PaperSize') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20322fe4; bytecode file offset 0xc1f8dc"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializePaperOrientation
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasEnumerationOption.
    recoveredValue2 := (self) landscape.
    recoveredValue3 := (self) landscape.
    recoveredValue4 := (self) groupString.
    recoveredValue5 := (recoveredValue4) , ('\Paper Size').
    recoveredValue6 := (recoveredValue1) label: ('Paper Orientation') description: ('Orientation of the paper frame in the graphic pane') toolTip: ('Orientation of the paper frame in the graphic pane') value: (recoveredValue2) default: (recoveredValue3) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) paperOrientationValueCollection.
    (recoveredValue7) valueCollection: (recoveredValue8).
    recoveredValue9 := (self) paperOrientationValueCollection.
    recoveredValue10 := (recoveredValue6) stringCollection: (recoveredValue9).
    recoveredValue11 := (self) userOptionFile.
    recoveredValue12 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('PaperOrientation') oldName: ('PaperOrientation') optionClass: (recoveredValue10) optionFile: (recoveredValue11).
    ^recoveredValue12
! !

"ASDBase.ic method 0x20323208; bytecode file offset 0xc1fb54"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeGraphicalCommentsFont
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasFontOption.
    recoveredValue2 := (self) fontManager.
    recoveredValue3 := (recoveredValue2) fontTiny.
    recoveredValue4 := (recoveredValue3) fontStruct.
    recoveredValue5 := (recoveredValue4) logicalFontDescription.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := (self) fontManager.
    recoveredValue8 := (recoveredValue7) fontTiny.
    recoveredValue9 := (recoveredValue8) fontStruct.
    recoveredValue10 := (recoveredValue9) logicalFontDescription.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := (recoveredValue1) label: ('BDE Graphical Comments') description: ('BDE font for graphial comments.\Will not be scaled on Windows large fonts!!') toolTip: ('BDE font for graphial comments.') value: (recoveredValue6) default: (recoveredValue11) group: ('Appearance\Fonts') visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue13 := (self) userOptionFile.
    recoveredValue14 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('GraphicalCommentsFont') oldName: ('Graphicalcomments') optionClass: (recoveredValue12) optionFile: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x20323258; bytecode file offset 0xc1fb54"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeGraphicalNamesFont
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasFontOption.
    recoveredValue2 := (self) fontManager.
    recoveredValue3 := (recoveredValue2) fontTiny.
    recoveredValue4 := (recoveredValue3) fontStruct.
    recoveredValue5 := (recoveredValue4) logicalFontDescription.
    recoveredValue6 := (recoveredValue5) printString.
    recoveredValue7 := (self) fontManager.
    recoveredValue8 := (recoveredValue7) fontTiny.
    recoveredValue9 := (recoveredValue8) fontStruct.
    recoveredValue10 := (recoveredValue9) logicalFontDescription.
    recoveredValue11 := (recoveredValue10) printString.
    recoveredValue12 := (recoveredValue1) label: ('BDE Graphical Names') description: ('BDE font for graphial names.\Will not be scaled on Windows large fonts!!') toolTip: ('BDE font for graphial names.') value: (recoveredValue6) default: (recoveredValue11) group: ('Appearance\Fonts') visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue13 := (self) userOptionFile.
    recoveredValue14 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('GraphicalNamesFont') oldName: ('Graphicalnames') optionClass: (recoveredValue12) optionFile: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x20332f8c; bytecode file offset 0xc2f880"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeBDEScalingBehaviourPredefined
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EditorSettings\BlockDiagram'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'ExtendedScalingBehaviourPredefined'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasBooleanOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Extended scaling behaviour of predefined blocks'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Extended scaling behaviour of predefined blocks'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Extended scaling behaviour of predefined blocks'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := false.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := false.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := self.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack10 := (recoveredStack10) groupString.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack11 := [
    | block280ecf1cValue0 block280ecf1cValue1 block280ecf1cValue2 block280ecf1cValue3 |
    block280ecf1cValue0 := EtasXMLDefinedOptions.
    block280ecf1cValue1 := (block280ecf1cValue0) instance.
    block280ecf1cValue2 := (block280ecf1cValue1) getOption: ('ExtendedScalingBehaviourPredefined') fromCategory: ('BlockDiagram').
    block280ecf1cValue3 := (block280ecf1cValue2) notNil.
    block280ecf1cValue3
].
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 54.
        ].
        recoveredStep = 54 ifTrue: [
            recoveredStack5 := self.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack5 := (recoveredStack5) userOptionFile.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20351e44; bytecode file offset 0xc4e740"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeWatermarkSize
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EditorSettings\BlockDiagram'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'WatermarkSize'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'WatermarkSize'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasNumericOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Watermark Size (px)'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Fontsize of the  Watermark in BDE'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Size of the Watermark'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := 20.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack10 := 20.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack11 := (recoveredStack11) groupString.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack12 := true.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack13 := [
    | block280ef148Value0 block280ef148Value1 block280ef148Value2 |
    block280ef148Value0 := ASDBlockDiagramEditorOptions.
    block280ef148Value1 := (block280ef148Value0) instance.
    block280ef148Value2 := (block280ef148Value1) optionWatermarkShow.
    block280ef148Value2
].
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack14 := 'USER'.
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack15 := nil.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack6 := recoveredStack5.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack7 := 1.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            (recoveredStack6) min: (recoveredStack7).
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack6 := 200.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) max: (recoveredStack6).
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := (recoveredStack6) userOptionFile.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20359034; bytecode file offset 0xc5593c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeBDEWatermarkColor
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredStack16 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'EditorSettings\BlockDiagram'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'BDEWatermarkColor'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := 'WatermarkColor'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := EtasColorOption.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Watermark Color'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Color for the watermark in the BDE'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := 'Color for the watermark in the BDE'.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack9 := CgRGBColor.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack9 := (recoveredStack9) lightGray.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack9 := (recoveredStack9) asOSRGB.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack10 := CgRGBColor.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack10 := (recoveredStack10) lightGray.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack10 := (recoveredStack10) asOSRGB.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack11 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack11 := (recoveredStack11) groupString.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack12 := '\Colors'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack11 := (recoveredStack11) , (recoveredStack12).
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack12 := true.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack13 := [
    | block280efe38Value0 block280efe38Value1 block280efe38Value2 |
    block280efe38Value0 := ASDBlockDiagramEditorOptions.
    block280efe38Value1 := (block280efe38Value0) instance.
    block280efe38Value2 := (block280efe38Value1) optionWatermarkShow.
    block280efe38Value2
].
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack14 := 'USER'.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack15 := nil.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack5 := (recoveredStack5) label: (recoveredStack6) description: (recoveredStack7) toolTip: (recoveredStack8) value: (recoveredStack9) default: (recoveredStack10) group: (recoveredStack11) visible: (recoveredStack12) sensitive: (recoveredStack13) type: (recoveredStack14) userField: (recoveredStack15).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack6 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack6 := (recoveredStack6) userOptionFile.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) oldName: (recoveredStack4) optionClass: (recoveredStack5) optionFile: (recoveredStack6).
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20383fb0; bytecode file offset 0xc808ac"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeFontGroup
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredStack7 recoveredStack8 recoveredStack9 recoveredStack10 recoveredStack11 recoveredStack12 recoveredStack13 recoveredStack14 recoveredStack15 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := EtasXMLOptionEntry.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'ToolSettings'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := 'BDEFonts'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack4 := EtasContainerOption.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack5 := 'Fonts'.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack6 := 'Settings for Fonts'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack7 := 'Settings for Fonts'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack8 := nil.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack9 := nil.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack10 := 'Appearance\Fonts'.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack11 := [
    true
].
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack12 := [
    true
].
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack13 := 'USER'.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack14 := nil.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            recoveredStack4 := (recoveredStack4) label: (recoveredStack5) description: (recoveredStack6) toolTip: (recoveredStack7) value: (recoveredStack8) default: (recoveredStack9) group: (recoveredStack10) visible: (recoveredStack11) sensitive: (recoveredStack12) type: (recoveredStack13) userField: (recoveredStack14).
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack5 := false.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack4 := (recoveredStack4) changeable: (recoveredStack5).
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack5 := nil.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack1 := (recoveredStack1) xmlCategory: (recoveredStack2) attributeName: (recoveredStack3) optionClass: (recoveredStack4) optionFile: (recoveredStack5).
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 52.
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) optionClass.
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack1 := (recoveredStack1) options.
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeGraphicalCommentsFont.
            recoveredPC := 61.
        ].
        recoveredStep = 61 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack3 := (recoveredStack3) initializeGraphicalNamesFont.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) add: (recoveredStack3).
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x203a0fc0; bytecode file offset 0xc9d8c4"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeUserPaperSizeX
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue2) , ('\Paper Size').
    recoveredValue4 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredBlock36Value0 := ASDBlockDiagramEditorOptions.
    recoveredBlock36Value1 := (recoveredBlock36Value0) instance.
    recoveredBlock36Value2 := (recoveredBlock36Value1) optionPaperSizeString.
    recoveredBlock36Value3 := (self) userSize.
    recoveredBlock36Value4 := (recoveredBlock36Value2) = (recoveredBlock36Value3).
    recoveredBlock36Value4
].
    recoveredValue5 := (recoveredValue1) label: ('User Size Width (mm)') description: ('Width for user defined Page Size') toolTip: ('Width for user defined Page Size') value: (210) default: (210) group: (recoveredValue3) visible: (true) sensitive: (recoveredValue4) type: ('USER') userField: (nil).
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) min: (1).
    recoveredValue7 := (recoveredValue5) max: (1000).
    recoveredValue8 := (self) userOptionFile.
    recoveredValue9 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('UserPaperSizeX') oldName: ('UserPaperSizeWidth') optionClass: (recoveredValue7) optionFile: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x203a1068; bytecode file offset 0xc9d970"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeUserPaperSizeY
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasNumericOption.
    recoveredValue2 := (self) groupString.
    recoveredValue3 := (recoveredValue2) , ('\Paper Size').
    recoveredValue4 := [
    | recoveredBlock36Value0 recoveredBlock36Value1 recoveredBlock36Value2 recoveredBlock36Value3 recoveredBlock36Value4 |
    recoveredBlock36Value0 := ASDBlockDiagramEditorOptions.
    recoveredBlock36Value1 := (recoveredBlock36Value0) instance.
    recoveredBlock36Value2 := (recoveredBlock36Value1) optionPaperSizeString.
    recoveredBlock36Value3 := (self) userSize.
    recoveredBlock36Value4 := (recoveredBlock36Value2) = (recoveredBlock36Value3).
    recoveredBlock36Value4
].
    recoveredValue5 := (recoveredValue1) label: ('User Size Height (mm)') description: ('Height for user defined Page Size') toolTip: ('Width for userdefined Page Size') value: (297) default: (297) group: (recoveredValue3) visible: (true) sensitive: (recoveredValue4) type: ('USER') userField: (nil).
    recoveredValue6 := recoveredValue5.
    (recoveredValue6) min: (1).
    recoveredValue7 := (recoveredValue5) max: (1000).
    recoveredValue8 := (self) userOptionFile.
    recoveredValue9 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('UserPaperSizeY') oldName: ('UserPaperSizeHeight') optionClass: (recoveredValue7) optionFile: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x20439e78; bytecode file offset 0xd36780"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeGridType
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasEnumerationOption.
    recoveredValue2 := (self) defaultGridType.
    recoveredValue3 := (self) defaultGridType.
    recoveredValue4 := (self) class.
    recoveredValue5 := (recoveredValue4) groupStringGrid.
    recoveredValue6 := (recoveredValue1) label: ('Grid Format') description: ('Defines how the grid is displayed') toolTip: ('Defines how the grid is displayed') value: (recoveredValue2) default: (recoveredValue3) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (nil).
    recoveredValue7 := recoveredValue6.
    recoveredValue8 := (self) gridTypeValueCollection.
    (recoveredValue7) valueCollection: (recoveredValue8).
    recoveredValue9 := recoveredValue6.
    recoveredValue10 := (self) gridTypeStringCollection.
    (recoveredValue9) stringCollection: (recoveredValue10).
    recoveredValue11 := [:recoveredBlock49Arg1 | 
    | recoveredBlock49Local1 recoveredBlock49Value0 recoveredBlock49Value1 recoveredBlock49Value2 recoveredBlock49Value3 |
    recoveredBlock49Value0 := (self) defaultGridType.
    recoveredBlock49Local1 := recoveredBlock49Value0.
    recoveredBlock49Value1 := (self) gridTypeValueCollection.
    recoveredBlock49Value2 := [:recoveredBlock49Block64Arg1 | 
    | recoveredBlock49Block64Stack0 recoveredBlock49Block64Stack1 recoveredBlock49Block64Stack2 recoveredBlock49Block64Stack3 recoveredBlock49Block64Stack4 recoveredBlock49Block64PC recoveredBlock49Block64Step recoveredBlock49Block64Done recoveredBlock49Block64Result |
    recoveredBlock49Block64Stack0 := nil.
    recoveredBlock49Block64PC := 70.
    recoveredBlock49Block64Done := false.
    [recoveredBlock49Block64Done not] whileTrue: [
        recoveredBlock49Block64Step := recoveredBlock49Block64PC.
        recoveredBlock49Block64Step = 70 ifTrue: [
            recoveredBlock49Block64Stack1 := nil.
            recoveredBlock49Block64PC := 71.
        ].
        recoveredBlock49Block64Step = 71 ifTrue: [
            recoveredBlock49Block64Stack2 := recoveredBlock49Block64Arg1.
            recoveredBlock49Block64PC := 72.
        ].
        recoveredBlock49Block64Step = 72 ifTrue: [
            recoveredBlock49Block64Stack2 := (recoveredBlock49Block64Stack2) asString.
            recoveredBlock49Block64PC := 74.
        ].
        recoveredBlock49Block64Step = 74 ifTrue: [
            recoveredBlock49Block64Stack2 := (recoveredBlock49Block64Stack2) zapBlanks.
            recoveredBlock49Block64PC := 76.
        ].
        recoveredBlock49Block64Step = 76 ifTrue: [
            recoveredBlock49Block64Stack3 := recoveredBlock49Arg1.
            recoveredBlock49Block64PC := 79.
        ].
        recoveredBlock49Block64Step = 79 ifTrue: [
            recoveredBlock49Block64Stack3 := (recoveredBlock49Block64Stack3) zapBlanks.
            recoveredBlock49Block64PC := 81.
        ].
        recoveredBlock49Block64Step = 81 ifTrue: [
            recoveredBlock49Block64Stack2 := (recoveredBlock49Block64Stack2) = (recoveredBlock49Block64Stack3).
            recoveredBlock49Block64PC := 82.
        ].
        recoveredBlock49Block64Step = 82 ifTrue: [
            (recoveredBlock49Block64Stack2) ifTrue: [recoveredBlock49Block64PC := 86] ifFalse: [recoveredBlock49Block64PC := 92].
        ].
        recoveredBlock49Block64Step = 86 ifTrue: [
            recoveredBlock49Block64PC := 87.
        ].
        recoveredBlock49Block64Step = 87 ifTrue: [
            recoveredBlock49Block64Stack1 := recoveredBlock49Block64Arg1.
            recoveredBlock49Block64PC := 88.
        ].
        recoveredBlock49Block64Step = 88 ifTrue: [
            recoveredBlock49Block64Stack2 := recoveredBlock49Block64Stack1.
            recoveredBlock49Block64PC := 89.
        ].
        recoveredBlock49Block64Step = 89 ifTrue: [
            recoveredBlock49Local1 := recoveredBlock49Block64Stack2.
            recoveredBlock49Block64PC := 92.
        ].
        recoveredBlock49Block64Step = 92 ifTrue: [
            recoveredBlock49Block64Result := recoveredBlock49Block64Stack1.
            recoveredBlock49Block64Done := true.
        ].
    ].
    recoveredBlock49Block64Result
].
    (recoveredBlock49Value1) do: (recoveredBlock49Value2).
    recoveredBlock49Value3 := recoveredBlock49Local1.
    recoveredBlock49Value3
].
    recoveredValue12 := (recoveredValue6) xmlConversionBlock: (recoveredValue11).
    recoveredValue13 := (self) userOptionFile.
    recoveredValue14 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('GridType') optionClass: (recoveredValue12) optionFile: (recoveredValue13).
    ^recoveredValue14
! !

"ASDBase.ic method 0x204e073c; bytecode file offset 0xddd074"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initializeDrawingAreaSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 |
    recoveredValue0 := EtasXMLOptionEntry.
    recoveredValue1 := EtasEnumerationOption.
    recoveredValue2 := (self) defaultDrawingAreaSize.
    recoveredValue3 := (self) defaultDrawingAreaSize.
    recoveredValue4 := (self) groupString.
    recoveredValue5 := (recoveredValue4) , ('\Paper Size').
    recoveredValue6 := [:recoveredBlock35Arg1 | 
    | recoveredBlock35Stack0 recoveredBlock35Stack1 recoveredBlock35Stack2 recoveredBlock35Stack3 recoveredBlock35Stack4 recoveredBlock35PC recoveredBlock35Step recoveredBlock35Done recoveredBlock35Result |
    recoveredBlock35Stack0 := self.
    recoveredBlock35PC := 42.
    recoveredBlock35Done := false.
    [recoveredBlock35Done not] whileTrue: [
        recoveredBlock35Step := recoveredBlock35PC.
        recoveredBlock35Step = 42 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 43.
        ].
        recoveredBlock35Step = 43 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 44.
        ].
        recoveredBlock35Step = 44 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) widget.
            recoveredBlock35PC := 46.
        ].
        recoveredBlock35Step = 46 ifTrue: [
            (recoveredBlock35Stack2 == nil) ifTrue: [recoveredBlock35PC := 87] ifFalse: [recoveredBlock35PC := 50].
        ].
        recoveredBlock35Step = 50 ifTrue: [
            recoveredBlock35Stack2 := recoveredBlock35Arg1.
            recoveredBlock35PC := 51.
        ].
        recoveredBlock35Step = 51 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) value.
            recoveredBlock35PC := 53.
        ].
        recoveredBlock35Step = 53 ifTrue: [
            recoveredBlock35Stack3 := self.
            recoveredBlock35PC := 54.
        ].
        recoveredBlock35Step = 54 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) defaultDrawingAreaSize.
            recoveredBlock35PC := 56.
        ].
        recoveredBlock35Step = 56 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) ~= (recoveredBlock35Stack3).
            recoveredBlock35PC := 57.
        ].
        recoveredBlock35Step = 57 ifTrue: [
            (recoveredBlock35Stack2) ifTrue: [recoveredBlock35PC := 60] ifFalse: [recoveredBlock35PC := 87].
        ].
        recoveredBlock35Step = 60 ifTrue: [
            recoveredBlock35PC := 61.
        ].
        recoveredBlock35Step = 61 ifTrue: [
            recoveredBlock35Stack1 := nil.
            recoveredBlock35PC := 62.
        ].
        recoveredBlock35Step = 62 ifTrue: [
            recoveredBlock35Stack2 := RBUserQuestion.
            recoveredBlock35PC := 64.
        ].
        recoveredBlock35Step = 64 ifTrue: [
            recoveredBlock35Stack3 := 'Note: If a size > 2000 @ 2000 px is selected, components may be displayed\incompletely in ASCET versions < V5.2.1!!'.
            recoveredBlock35PC := 66.
        ].
        recoveredBlock35Step = 66 ifTrue: [
            recoveredBlock35Stack3 := (recoveredBlock35Stack3) withCrs.
            recoveredBlock35PC := 68.
        ].
        recoveredBlock35Step = 68 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) confirm: (recoveredBlock35Stack3).
            recoveredBlock35PC := 70.
        ].
        recoveredBlock35Step = 70 ifTrue: [
            recoveredBlock35Stack3 := recoveredBlock35Stack2.
            recoveredBlock35PC := 71.
        ].
        recoveredBlock35Step = 71 ifTrue: [
            (recoveredBlock35Stack3) okCancel.
            recoveredBlock35PC := 73.
        ].
        recoveredBlock35Step = 73 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) prompt.
            recoveredBlock35PC := 75.
        ].
        recoveredBlock35Step = 75 ifTrue: [
            (recoveredBlock35Stack2 ~~ nil) ifTrue: [recoveredBlock35PC := 87] ifFalse: [recoveredBlock35PC := 78].
        ].
        recoveredBlock35Step = 78 ifTrue: [
            recoveredBlock35PC := 79.
        ].
        recoveredBlock35Step = 79 ifTrue: [
            recoveredBlock35Stack1 := recoveredBlock35Arg1.
            recoveredBlock35PC := 80.
        ].
        recoveredBlock35Step = 80 ifTrue: [
            recoveredBlock35Stack2 := self.
            recoveredBlock35PC := 81.
        ].
        recoveredBlock35Step = 81 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) drawingAreaSizeStringCollection.
            recoveredBlock35PC := 83.
        ].
        recoveredBlock35Step = 83 ifTrue: [
            recoveredBlock35Stack2 := (recoveredBlock35Stack2) first.
            recoveredBlock35PC := 85.
        ].
        recoveredBlock35Step = 85 ifTrue: [
            recoveredBlock35Stack1 := (recoveredBlock35Stack1) value: (recoveredBlock35Stack2).
            recoveredBlock35PC := 87.
        ].
        recoveredBlock35Step = 87 ifTrue: [
            recoveredBlock35Result := recoveredBlock35Stack1.
            recoveredBlock35Done := true.
        ].
    ].
    recoveredBlock35Result
].
    recoveredValue7 := (recoveredValue1) label: ('Drawing Area Size (px)') description: ('Defines the drawing size in pixel that shall be used for all graphical editors (Block Diagram, Statemachine, Project).\Opened editors have to be reopened to apply the changes.\Note: If a size > 2000x2000 px is selected, components may be displayed incompletely in ASCET versions < V5.2.1!!') toolTip: ('Size of the drawing area in pixel') value: (recoveredValue2) default: (recoveredValue3) group: (recoveredValue5) visible: (true) sensitive: (true) type: ('USER') userField: (recoveredValue6).
    recoveredValue8 := recoveredValue7.
    recoveredValue9 := (self) drawingAreaSizeValueCollection.
    (recoveredValue8) valueCollection: (recoveredValue9).
    recoveredValue10 := recoveredValue7.
    recoveredValue11 := (self) drawingAreaSizeStringCollection.
    (recoveredValue10) stringCollection: (recoveredValue11).
    recoveredValue12 := [:recoveredBlock103Arg1 | 
    | recoveredBlock103Local1 recoveredBlock103Value0 recoveredBlock103Value1 recoveredBlock103Value2 recoveredBlock103Value3 |
    recoveredBlock103Value0 := (self) defaultDrawingAreaSize.
    recoveredBlock103Local1 := recoveredBlock103Value0.
    recoveredBlock103Value1 := (self) drawingAreaSizeValueCollection.
    recoveredBlock103Value2 := [:recoveredBlock103Block118Arg1 | 
    | recoveredBlock103Block118Stack0 recoveredBlock103Block118Stack1 recoveredBlock103Block118Stack2 recoveredBlock103Block118Stack3 recoveredBlock103Block118Stack4 recoveredBlock103Block118PC recoveredBlock103Block118Step recoveredBlock103Block118Done recoveredBlock103Block118Result |
    recoveredBlock103Block118Stack0 := nil.
    recoveredBlock103Block118PC := 124.
    recoveredBlock103Block118Done := false.
    [recoveredBlock103Block118Done not] whileTrue: [
        recoveredBlock103Block118Step := recoveredBlock103Block118PC.
        recoveredBlock103Block118Step = 124 ifTrue: [
            recoveredBlock103Block118Stack1 := nil.
            recoveredBlock103Block118PC := 125.
        ].
        recoveredBlock103Block118Step = 125 ifTrue: [
            recoveredBlock103Block118Stack2 := recoveredBlock103Block118Arg1.
            recoveredBlock103Block118PC := 126.
        ].
        recoveredBlock103Block118Step = 126 ifTrue: [
            recoveredBlock103Block118Stack2 := (recoveredBlock103Block118Stack2) asString.
            recoveredBlock103Block118PC := 128.
        ].
        recoveredBlock103Block118Step = 128 ifTrue: [
            recoveredBlock103Block118Stack2 := (recoveredBlock103Block118Stack2) zapBlanks.
            recoveredBlock103Block118PC := 130.
        ].
        recoveredBlock103Block118Step = 130 ifTrue: [
            recoveredBlock103Block118Stack3 := recoveredBlock103Arg1.
            recoveredBlock103Block118PC := 133.
        ].
        recoveredBlock103Block118Step = 133 ifTrue: [
            recoveredBlock103Block118Stack3 := (recoveredBlock103Block118Stack3) zapBlanks.
            recoveredBlock103Block118PC := 135.
        ].
        recoveredBlock103Block118Step = 135 ifTrue: [
            recoveredBlock103Block118Stack2 := (recoveredBlock103Block118Stack2) = (recoveredBlock103Block118Stack3).
            recoveredBlock103Block118PC := 136.
        ].
        recoveredBlock103Block118Step = 136 ifTrue: [
            (recoveredBlock103Block118Stack2) ifTrue: [recoveredBlock103Block118PC := 140] ifFalse: [recoveredBlock103Block118PC := 146].
        ].
        recoveredBlock103Block118Step = 140 ifTrue: [
            recoveredBlock103Block118PC := 141.
        ].
        recoveredBlock103Block118Step = 141 ifTrue: [
            recoveredBlock103Block118Stack1 := recoveredBlock103Block118Arg1.
            recoveredBlock103Block118PC := 142.
        ].
        recoveredBlock103Block118Step = 142 ifTrue: [
            recoveredBlock103Block118Stack2 := recoveredBlock103Block118Stack1.
            recoveredBlock103Block118PC := 143.
        ].
        recoveredBlock103Block118Step = 143 ifTrue: [
            recoveredBlock103Local1 := recoveredBlock103Block118Stack2.
            recoveredBlock103Block118PC := 146.
        ].
        recoveredBlock103Block118Step = 146 ifTrue: [
            recoveredBlock103Block118Result := recoveredBlock103Block118Stack1.
            recoveredBlock103Block118Done := true.
        ].
    ].
    recoveredBlock103Block118Result
].
    (recoveredBlock103Value1) do: (recoveredBlock103Value2).
    recoveredBlock103Value3 := recoveredBlock103Local1.
    recoveredBlock103Value3
].
    recoveredValue13 := (recoveredValue7) xmlConversionBlock: (recoveredValue12).
    recoveredValue14 := (self) userOptionFile.
    recoveredValue15 := (recoveredValue0) xmlCategory: ('EditorSettings\BlockDiagram') attributeName: ('DrawingAreaSize') optionClass: (recoveredValue13) optionFile: (recoveredValue14).
    ^recoveredValue15
! !

"ASDBase.ic method 0x2053ae34; bytecode file offset 0xe37730"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
optionPaperSize
    | recoveredLocal1 recoveredLocal2 recoveredLocal3 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) allOptions.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := [:block2810ddf4Arg1 | 
    | block2810ddf4Value0 block2810ddf4Value1 block2810ddf4Value2 |
    block2810ddf4Value0 := block2810ddf4Arg1.
    block2810ddf4Value1 := (block2810ddf4Value0) attributeName.
    block2810ddf4Value2 := (block2810ddf4Value1) = ('PaperSize').
    block2810ddf4Value2
].
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack2 := [
    | recoveredBlock16Value0 |
    recoveredBlock16Value0 := (210) @ (297).
    ^recoveredBlock16Value0
].
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) detect: (recoveredStack1) ifNone: (recoveredStack2).
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionClass.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack0 := (recoveredStack0) value.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredLocal3 := recoveredStack0.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 45.
        ].
        recoveredStep = 45 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack1 := (recoveredStack1) dinA4Size.
            recoveredPC := 48.
        ].
        recoveredStep = 48 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 52] ifFalse: [recoveredPC := 63].
        ].
        recoveredStep = 52 ifTrue: [
            recoveredStack0 := 210.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack1 := 297.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 66.
        ].
        recoveredStep = 66 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            recoveredStack1 := (recoveredStack1) dinA5Size.
            recoveredPC := 69.
        ].
        recoveredStep = 69 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 74] ifFalse: [recoveredPC := 85].
        ].
        recoveredStep = 74 ifTrue: [
            recoveredStack0 := 148.
            recoveredPC := 78.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack1 := 210.
            recoveredPC := 82.
        ].
        recoveredStep = 82 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 85 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 89.
        ].
        recoveredStep = 89 ifTrue: [
            recoveredStack1 := (recoveredStack1) dinA5Size.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 92.
        ].
        recoveredStep = 92 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 96] ifFalse: [recoveredPC := 107].
        ].
        recoveredStep = 96 ifTrue: [
            recoveredStack0 := 216.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack1 := 279.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 106.
        ].
        recoveredStep = 106 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 110.
        ].
        recoveredStep = 110 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 111.
        ].
        recoveredStep = 111 ifTrue: [
            recoveredStack1 := (recoveredStack1) legalSize.
            recoveredPC := 113.
        ].
        recoveredStep = 113 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 118] ifFalse: [recoveredPC := 129].
        ].
        recoveredStep = 118 ifTrue: [
            recoveredStack0 := 216.
            recoveredPC := 122.
        ].
        recoveredStep = 122 ifTrue: [
            recoveredStack1 := 355.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 129 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 131.
        ].
        recoveredStep = 131 ifTrue: [
            recoveredStack1 := 'Call_64278'.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 134.
        ].
        recoveredStep = 134 ifTrue: [
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 138.
        ].
        recoveredStep = 138 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 139.
        ].
        recoveredStep = 139 ifTrue: [
            recoveredStack1 := (recoveredStack1) letterSize.
            recoveredPC := 141.
        ].
        recoveredStep = 141 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 146] ifFalse: [recoveredPC := 157].
        ].
        recoveredStep = 146 ifTrue: [
            recoveredStack0 := 216.
            recoveredPC := 150.
        ].
        recoveredStep = 150 ifTrue: [
            recoveredStack1 := 279.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 157 ifTrue: [
            recoveredStack0 := recoveredLocal3.
            recoveredPC := 160.
        ].
        recoveredStep = 160 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack1 := (recoveredStack1) userSize.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack0 := (recoveredStack0) = (recoveredStack1).
            recoveredPC := 164.
        ].
        recoveredStep = 164 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 168] ifFalse: [recoveredPC := 193].
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 169.
        ].
        recoveredStep = 169 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionUserPaperSizeX.
            recoveredPC := 171.
        ].
        recoveredStep = 171 ifTrue: [
            recoveredLocal2 := recoveredStack0.
            recoveredPC := 174.
        ].
        recoveredStep = 174 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack0 := (recoveredStack0) optionUserPaperSizeY.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 180.
        ].
        recoveredStep = 180 ifTrue: [
            recoveredStack0 := recoveredLocal2.
            recoveredPC := 183.
        ].
        recoveredStep = 183 ifTrue: [
            recoveredStack0 := (recoveredStack0) asInteger.
            recoveredPC := 185.
        ].
        recoveredStep = 185 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 188.
        ].
        recoveredStep = 188 ifTrue: [
            recoveredStack1 := (recoveredStack1) asInteger.
            recoveredPC := 190.
        ].
        recoveredStep = 190 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 192.
        ].
        recoveredStep = 192 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 193 ifTrue: [
            recoveredStack0 := 'Kli'.
            recoveredPC := 195.
        ].
        recoveredStep = 195 ifTrue: [
            recoveredStack1 := 'Call_64278'.
            recoveredPC := 197.
        ].
        recoveredStep = 197 ifTrue: [
            recoveredStack0 := (recoveredStack0) == (recoveredStack1).
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredPC := 199.
        ].
        recoveredStep = 199 ifTrue: [
            recoveredStack0 := 210.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            recoveredStack1 := 297.
            recoveredPC := 206.
        ].
        recoveredStep = 206 ifTrue: [
            recoveredStack0 := (recoveredStack0) @ (recoveredStack1).
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x205c1e84; bytecode file offset 0xebe81c"
!ASDBlockDiagramEditorOptions methodsFor: 'recovered'!
initialize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 recoveredValue10 recoveredValue11 recoveredValue12 recoveredValue13 recoveredValue14 recoveredValue15 recoveredValue16 recoveredValue17 recoveredValue18 recoveredValue19 recoveredValue20 recoveredValue21 recoveredValue22 recoveredValue23 recoveredValue24 recoveredValue25 recoveredValue26 recoveredValue27 recoveredValue28 recoveredValue29 recoveredValue30 recoveredValue31 recoveredValue32 recoveredValue33 recoveredValue34 recoveredValue35 recoveredValue36 recoveredValue37 recoveredValue38 recoveredValue39 recoveredValue40 recoveredValue41 recoveredValue42 recoveredValue43 recoveredValue44 recoveredValue45 recoveredValue46 recoveredValue47 recoveredValue48 recoveredValue49 recoveredValue50 recoveredValue51 recoveredValue52 recoveredValue53 recoveredValue54 recoveredValue55 recoveredValue56 recoveredValue57 recoveredValue58 recoveredValue59 recoveredValue60 recoveredValue61 recoveredValue62 recoveredValue63 recoveredValue64 recoveredValue65 recoveredValue66 recoveredValue67 recoveredValue68 recoveredValue69 recoveredValue70 recoveredValue71 recoveredValue72 recoveredValue73 recoveredValue74 recoveredValue75 recoveredValue76 recoveredValue77 recoveredValue78 recoveredValue79 recoveredValue80 recoveredValue81 recoveredValue82 recoveredValue83 recoveredValue84 recoveredValue85 recoveredValue86 recoveredValue87 recoveredValue88 recoveredValue89 recoveredValue90 recoveredValue91 recoveredValue92 recoveredValue93 recoveredValue94 recoveredValue95 recoveredValue96 recoveredValue97 recoveredValue98 recoveredValue99 recoveredValue100 recoveredValue101 recoveredValue102 recoveredValue103 recoveredValue104 recoveredValue105 recoveredValue106 |
    super initialize.
    recoveredValue0 := (self) options.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) initializeUndoBufferSize.
    (recoveredValue1) add: (recoveredValue2).
    recoveredValue3 := recoveredValue0.
    recoveredValue4 := (self) initializeDrawingAreaSize.
    (recoveredValue3) add: (recoveredValue4).
    recoveredValue5 := recoveredValue0.
    recoveredValue6 := (self) initializeSelectionMarkerSize.
    (recoveredValue5) add: (recoveredValue6).
    recoveredValue7 := recoveredValue0.
    recoveredValue8 := (self) initializeConnectionsRoundedRadius.
    (recoveredValue7) add: (recoveredValue8).
    recoveredValue9 := recoveredValue0.
    recoveredValue10 := (self) initializeDisplayConnectionPortSelectionBox.
    (recoveredValue9) add: (recoveredValue10).
    recoveredValue11 := recoveredValue0.
    recoveredValue12 := (self) initializeWatermarkShow.
    (recoveredValue11) add: (recoveredValue12).
    recoveredValue13 := recoveredValue0.
    recoveredValue14 := (self) initializePageNumberShow.
    (recoveredValue13) add: (recoveredValue14).
    recoveredValue15 := recoveredValue0.
    recoveredValue16 := (self) initializePageBorderShow.
    (recoveredValue15) add: (recoveredValue16).
    recoveredValue17 := recoveredValue0.
    recoveredValue18 := (self) initializeShowParameterValues.
    (recoveredValue17) add: (recoveredValue18).
    recoveredValue19 := recoveredValue0.
    recoveredValue20 := (self) initializeShowConstantValues.
    (recoveredValue19) add: (recoveredValue20).
    recoveredValue21 := recoveredValue0.
    recoveredValue22 := (self) initializeShowSystemConstantValues.
    (recoveredValue21) add: (recoveredValue22).
    recoveredValue23 := recoveredValue0.
    recoveredValue24 := (self) initializeHandleMissingConnections.
    (recoveredValue23) add: (recoveredValue24).
    recoveredValue25 := recoveredValue0.
    recoveredValue26 := (self) initializeOverlappingShow.
    (recoveredValue25) add: (recoveredValue26).
    recoveredValue27 := recoveredValue0.
    recoveredValue28 := (self) initializeGraphicalCommentsFont.
    (recoveredValue27) add: (recoveredValue28).
    recoveredValue29 := recoveredValue0.
    recoveredValue30 := (self) initializeGraphicalNamesFont.
    (recoveredValue29) add: (recoveredValue30).
    recoveredValue31 := recoveredValue0.
    recoveredValue32 := (self) initializeFilterConnections.
    (recoveredValue31) add: (recoveredValue32).
    recoveredValue33 := recoveredValue0.
    recoveredValue34 := (self) initializeFilterOperators.
    (recoveredValue33) add: (recoveredValue34).
    recoveredValue35 := recoveredValue0.
    recoveredValue36 := (self) initializeFilterControls.
    (recoveredValue35) add: (recoveredValue36).
    recoveredValue37 := recoveredValue0.
    recoveredValue38 := (self) initializeFilterPrimitiveElements.
    (recoveredValue37) add: (recoveredValue38).
    recoveredValue39 := recoveredValue0.
    recoveredValue40 := (self) initializeFilterComplexElements.
    (recoveredValue39) add: (recoveredValue40).
    recoveredValue41 := recoveredValue0.
    recoveredValue42 := (self) initializeFilterHierarchies.
    (recoveredValue41) add: (recoveredValue42).
    recoveredValue43 := recoveredValue0.
    recoveredValue44 := (self) initializeFilterComments.
    (recoveredValue43) add: (recoveredValue44).
    recoveredValue45 := recoveredValue0.
    recoveredValue46 := (self) initializeFilterInOutPorts.
    (recoveredValue45) add: (recoveredValue46).
    recoveredValue47 := recoveredValue0.
    recoveredValue48 := (self) initializeFilterImplCasts.
    (recoveredValue47) add: (recoveredValue48).
    recoveredValue49 := recoveredValue0.
    recoveredValue50 := (self) initializeFilterLiterals.
    (recoveredValue49) add: (recoveredValue50).
    recoveredValue51 := recoveredValue0.
    recoveredValue52 := (self) initializeFilterShowPositions.
    (recoveredValue51) add: (recoveredValue52).
    recoveredValue53 := recoveredValue0.
    recoveredValue54 := (self) initializeBDEBackgroundColor.
    (recoveredValue53) add: (recoveredValue54).
    recoveredValue55 := recoveredValue0.
    recoveredValue56 := (self) initializeBDEGridColor.
    (recoveredValue55) add: (recoveredValue56).
    recoveredValue57 := recoveredValue0.
    recoveredValue58 := (self) initializeBDECommentLineColor.
    (recoveredValue57) add: (recoveredValue58).
    recoveredValue59 := recoveredValue0.
    recoveredValue60 := (self) initializeBDESelectionMarkerColor.
    (recoveredValue59) add: (recoveredValue60).
    recoveredValue61 := recoveredValue0.
    recoveredValue62 := (self) initializeBDEInactiveSelectionMarkerColor.
    (recoveredValue61) add: (recoveredValue62).
    recoveredValue63 := recoveredValue0.
    recoveredValue64 := (self) initializeBDEWatermarkColor.
    (recoveredValue63) add: (recoveredValue64).
    recoveredValue65 := recoveredValue0.
    recoveredValue66 := (self) initializeBDEOverlappingColor.
    (recoveredValue65) add: (recoveredValue66).
    recoveredValue67 := recoveredValue0.
    recoveredValue68 := (self) initializeDefaultBlockLayoutColor.
    (recoveredValue67) add: (recoveredValue68).
    recoveredValue69 := recoveredValue0.
    recoveredValue70 := (self) initializeDefaultBlockLayoutShowPinNames.
    (recoveredValue69) add: (recoveredValue70).
    recoveredValue71 := recoveredValue0.
    recoveredValue72 := (self) initializeDefaultBlockLayoutShowIcon.
    (recoveredValue71) add: (recoveredValue72).
    recoveredValue73 := recoveredValue0.
    recoveredValue74 := (self) initializeDefaultBlockLayoutShowComponentName.
    (recoveredValue73) add: (recoveredValue74).
    recoveredValue75 := recoveredValue0.
    recoveredValue76 := (self) initializeDefaultBlockLayoutShowElementName.
    (recoveredValue75) add: (recoveredValue76).
    recoveredValue77 := recoveredValue0.
    recoveredValue78 := (self) initializeDefaultBlockLayoutDefSizeHorizontal.
    (recoveredValue77) add: (recoveredValue78).
    recoveredValue79 := recoveredValue0.
    recoveredValue80 := (self) initializeDefaultBlockLayoutDefSizeVertical.
    (recoveredValue79) add: (recoveredValue80).
    recoveredValue81 := recoveredValue0.
    recoveredValue82 := (self) initializeDefaultFlexibleClassLayoutConversion.
    (recoveredValue81) add: (recoveredValue82).
    recoveredValue83 := recoveredValue0.
    recoveredValue84 := (self) initializeDefaultFlexibleClassLayoutAttribute.
    (recoveredValue83) add: (recoveredValue84).
    recoveredValue85 := recoveredValue0.
    recoveredValue86 := (self) initializeBDEScalingBehaviourPredefined.
    (recoveredValue85) add: (recoveredValue86).
    recoveredValue87 := recoveredValue0.
    recoveredValue88 := (self) initializeGridType.
    (recoveredValue87) add: (recoveredValue88).
    recoveredValue89 := recoveredValue0.
    recoveredValue90 := (self) initializeGridSizeHorizontal.
    (recoveredValue89) add: (recoveredValue90).
    recoveredValue91 := recoveredValue0.
    recoveredValue92 := (self) initializeGridSizeVertical.
    (recoveredValue91) add: (recoveredValue92).
    recoveredValue93 := recoveredValue0.
    recoveredValue94 := (self) initializeSequenceOffset.
    (recoveredValue93) add: (recoveredValue94).
    recoveredValue95 := recoveredValue0.
    recoveredValue96 := (self) initializeSequenceStepSize.
    (recoveredValue95) add: (recoveredValue96).
    recoveredValue97 := recoveredValue0.
    recoveredValue98 := (self) initializeSequenceUseGaps.
    (recoveredValue97) add: (recoveredValue98).
    recoveredValue99 := recoveredValue0.
    recoveredValue100 := (self) initializePaperSize.
    (recoveredValue99) add: (recoveredValue100).
    recoveredValue101 := recoveredValue0.
    recoveredValue102 := (self) initializeUserPaperSizeX.
    (recoveredValue101) add: (recoveredValue102).
    recoveredValue103 := recoveredValue0.
    recoveredValue104 := (self) initializeUserPaperSizeY.
    (recoveredValue103) add: (recoveredValue104).
    recoveredValue105 := recoveredValue0.
    recoveredValue106 := (self) initializePaperOrientation.
    (recoveredValue105) add: (recoveredValue106).
    ^self
! !

