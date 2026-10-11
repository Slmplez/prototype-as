"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20016f88; bytecode file offset 0x92209c"
!SGBreakGO methodsFor: 'recovered'!
visualCallBackImage
    ^'ControlsBreak'
! !

"ASDBase.ic method 0x200182fc; bytecode file offset 0x92209c"
!SGBreakGO methodsFor: 'recovered'!
xmlType
    ^'Break'
! !

"ASDBase.ic method 0x2008c244; bytecode file offset 0x988b68"
!SGBreakGO methodsFor: 'recovered'!
visualCallBackString
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) getPositionString.
    recoveredValue1 := ('Break ') , (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200f9a14; bytecode file offset 0x9f62dc"
!SGBreakGO methodsFor: 'recovered'!
defaultAreaStyle
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := super defaultAreaStyle.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := DefaultLineStyle.
    recoveredValue3 := (recoveredValue2) color.
    (recoveredValue1) color: (recoveredValue3).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20104f94; bytecode file offset 0xa01850"
!SGBreakGO methodsFor: 'recovered'!
defaultSize
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := PinDistance.
    recoveredValue1 := (recoveredValue0) // (2).
    recoveredValue2 := PinDistance.
    recoveredValue3 := (recoveredValue2) // (2).
    recoveredValue4 := (recoveredValue1) @ (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x2018badc; bytecode file offset 0xa883b8"
!SGBreakGO methodsFor: 'recovered'!
buildLogic: recoveredArg1 for: recoveredArg2
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 recoveredValue9 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) identifier.
    recoveredValue2 := methods.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue0) blockIdBreak: (recoveredValue1) methods: (recoveredValue2) hierarchy: (recoveredValue3).
    recoveredLocal1 := recoveredValue4.
    recoveredValue5 := recoveredArg1.
    recoveredValue6 := recoveredLocal1.
    recoveredValue7 := (self) methods.
    recoveredValue8 := recoveredArg2.
    recoveredValue9 := (self) buildInterfaceLogic: (recoveredValue5) block: (recoveredValue6) methods: (recoveredValue7) for: (recoveredValue8).
    ^recoveredValue9
! !

"ASDBase.ic method 0x202dd46c; bytecode file offset 0xbd9d70"
!SGBreakGO methodsFor: 'recovered'!
fitToRaster: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) getPosition.
    recoveredValue2 := (recoveredValue0) rasterPoint: (recoveredValue1).
    (self) moveTo: (recoveredValue2).
    recoveredValue3 := (self) frameGO.
    recoveredValue4 := recoveredArg1.
    (recoveredValue3) fitToRasterX: (recoveredValue4).
    recoveredValue5 := (self) frameGO.
    recoveredValue6 := (recoveredValue5) logicFrame.
    recoveredLocal1 := recoveredValue6.
    recoveredValue7 := (self) connectorGOs.
    recoveredValue8 := [:recoveredBlock29Arg1 | 
    | recoveredBlock29Value0 recoveredBlock29Value1 recoveredBlock29Value2 recoveredBlock29Value3 |
    recoveredBlock29Value0 := recoveredBlock29Arg1.
    recoveredBlock29Value1 := recoveredArg1.
    recoveredBlock29Value2 := recoveredLocal1.
    recoveredBlock29Value3 := (recoveredBlock29Value0) fitToRaster: (recoveredBlock29Value1) rectangle: (recoveredBlock29Value2).
    recoveredBlock29Value3
].
    (recoveredValue7) do: (recoveredValue8).
    ^self
! !

