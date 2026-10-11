"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20013d28; bytecode file offset 0x912098"
!SGIleBuilder class methodsFor: 'recovered'!
emptyInterval
    | recoveredValue0 |
    recoveredValue0 := EmptyInterval.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2003d838; bytecode file offset 0x93bf94"
!SGIleBuilder class methodsFor: 'recovered'!
inactiveNodeVisitorSingleton
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlObject.
    recoveredValue1 := (recoveredValue0) inactiveNodeVisitorSingleton.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ef08; bytecode file offset 0x93bf94"
!SGIleBuilder class methodsFor: 'recovered'!
currentIleExpander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005fffc; bytecode file offset 0x95c8b4"
!SGIleBuilder class methodsFor: 'recovered'!
setOptimizationPhase
    Phase := 1.
    ^self
! !

"ASDBase.ic method 0x20060094; bytecode file offset 0x95c94c"
!SGIleBuilder class methodsFor: 'recovered'!
setExpansionPreparationPhase
    Phase := 2.
    ^self
! !

"ASDBase.ic method 0x20088e50; bytecode file offset 0x985708"
!SGIleBuilder class methodsFor: 'recovered'!
isIleExpansionPreparationPhase
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Phase.
    recoveredValue1 := (recoveredValue0) = (2).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200efcb8; bytecode file offset 0x9ec57c"
!SGIleBuilder class methodsFor: 'recovered'!
prepareCodeGeneration
    | recoveredValue0 |
    recoveredValue0 := SGIlObject.
    (recoveredValue0) prepareCodeGeneration.
    IleBooleanType := nil.
    (self) resetCurrent.
    ^self
! !

"ASDBase.ic method 0x200f004c; bytecode file offset 0x9ec914"
!SGIleBuilder class methodsFor: 'recovered'!
initInterval
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := RBInterval.
    recoveredValue1 := (recoveredValue0) createDefault.
    FloatInterval := recoveredValue1.
    recoveredValue2 := RBInterval.
    recoveredValue3 := (recoveredValue2) emptyInterval.
    EmptyInterval := recoveredValue3.
    ^self
! !

"ASDBase.ic method 0x200f6b54; bytecode file offset 0x9f3418"
!SGIleBuilder class methodsFor: 'recovered'!
create
    | recoveredValue0 |
    (self) setOptimizationPhase.
    (self) initInterval.
    recoveredValue0 := super create.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20128370; bytecode file offset 0xa24eb0"
!SGIleBuilder class methodsFor: 'recovered'!
ileBooleanType
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := IleBooleanType.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGCgTypeFactory.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) createBooleanType.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            IleBooleanType := recoveredStack1.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := IleBooleanType.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201315cc; bytecode file offset 0xa2dea0"
!SGIleBuilder class methodsFor: 'recovered'!
optimizationPhaseDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) setOptimizationPhase.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) setExpansionPreparationPhase.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) ensure: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x201315e0; bytecode file offset 0xa2dea0"
!SGIleBuilder class methodsFor: 'recovered'!
expansionPreparationPhaseDo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    (self) setExpansionPreparationPhase.
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := [
    | recoveredBlock7Value0 |
    recoveredBlock7Value0 := (self) setOptimizationPhase.
    recoveredBlock7Value0
].
    recoveredValue2 := (recoveredValue0) ensure: (recoveredValue1).
    ^recoveredValue2
! !

"ASDBase.ic method 0x20607f80; bytecode file offset 0xf049ec"
!SGIleBuilder class methodsFor: 'recovered'!
SpecialCallClassMap
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := SpecialCallClassMap.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 466] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := LookupTable.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) new.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack2 := recoveredStack1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := 'arrayLength'.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack4 := SGIlArrayLengthSpecialCall.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := 'matrixXLength'.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack4 := SGIlMatrixXLengthSpecialCall.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack3 := 'matrixYLength'.
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack4 := SGIlMatrixYLengthSpecialCall.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack3 := 'reserveRes'.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack4 := SGIlReserveResSpecialCall.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := 'releaseRes'.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack4 := SGIlReleaseResSpecialCall.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := 'receiveMsg'.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack4 := SGIlReceiveMessageSpecialCall.
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 56.
        ].
        recoveredStep = 56 ifTrue: [
            recoveredStack3 := 'sendMsg'.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            recoveredStack4 := SGIlSendMessageSpecialCall.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 63.
        ].
        recoveredStep = 63 ifTrue: [
            recoveredStack3 := 'searchOneD'.
            recoveredPC := 65.
        ].
        recoveredStep = 65 ifTrue: [
            recoveredStack4 := SGIlSearch1DSpecialCall.
            recoveredPC := 67.
        ].
        recoveredStep = 67 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 70.
        ].
        recoveredStep = 70 ifTrue: [
            recoveredStack3 := 'interpolateOneD'.
            recoveredPC := 72.
        ].
        recoveredStep = 72 ifTrue: [
            recoveredStack4 := SGIlInterpolate1DSpecialCall.
            recoveredPC := 74.
        ].
        recoveredStep = 74 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 77.
        ].
        recoveredStep = 77 ifTrue: [
            recoveredStack3 := 'getAtOneD'.
            recoveredPC := 79.
        ].
        recoveredStep = 79 ifTrue: [
            recoveredStack4 := SGIlGetAt1DSpecialCall.
            recoveredPC := 81.
        ].
        recoveredStep = 81 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 84.
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack3 := 'getXOneD'.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack4 := SGIlGetX1DSpecialCall.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack3 := 'getValueOneD'.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack4 := SGIlGetValue1DSpecialCall.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 98.
        ].
        recoveredStep = 98 ifTrue: [
            recoveredStack3 := 'getMaxSizeOneD'.
            recoveredPC := 100.
        ].
        recoveredStep = 100 ifTrue: [
            recoveredStack4 := SGIlGetMaxSize1DSpecialCall.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 105.
        ].
        recoveredStep = 105 ifTrue: [
            recoveredStack3 := 'getCurrentSizeOneD'.
            recoveredPC := 107.
        ].
        recoveredStep = 107 ifTrue: [
            recoveredStack4 := SGIlGetCurrentSize1DSpecialCall.
            recoveredPC := 109.
        ].
        recoveredStep = 109 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 112.
        ].
        recoveredStep = 112 ifTrue: [
            recoveredStack3 := 'setXOneD'.
            recoveredPC := 114.
        ].
        recoveredStep = 114 ifTrue: [
            recoveredStack4 := SGIlSetX1DSpecialCall.
            recoveredPC := 116.
        ].
        recoveredStep = 116 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 119.
        ].
        recoveredStep = 119 ifTrue: [
            recoveredStack3 := 'setValueOneD'.
            recoveredPC := 121.
        ].
        recoveredStep = 121 ifTrue: [
            recoveredStack4 := SGIlSetValue1DSpecialCall.
            recoveredPC := 123.
        ].
        recoveredStep = 123 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 126.
        ].
        recoveredStep = 126 ifTrue: [
            recoveredStack3 := 'setCurrentSizeOneD'.
            recoveredPC := 128.
        ].
        recoveredStep = 128 ifTrue: [
            recoveredStack4 := SGIlSetCurrentSize1DSpecialCall.
            recoveredPC := 130.
        ].
        recoveredStep = 130 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 133.
        ].
        recoveredStep = 133 ifTrue: [
            recoveredStack3 := 'searchTwoD'.
            recoveredPC := 135.
        ].
        recoveredStep = 135 ifTrue: [
            recoveredStack4 := SGIlSearch2DSpecialCall.
            recoveredPC := 137.
        ].
        recoveredStep = 137 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 140.
        ].
        recoveredStep = 140 ifTrue: [
            recoveredStack3 := 'getAtTwoD'.
            recoveredPC := 142.
        ].
        recoveredStep = 142 ifTrue: [
            recoveredStack4 := SGIlGetAt2DSpecialCall.
            recoveredPC := 144.
        ].
        recoveredStep = 144 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 147.
        ].
        recoveredStep = 147 ifTrue: [
            recoveredStack3 := 'interpolateTwoD'.
            recoveredPC := 149.
        ].
        recoveredStep = 149 ifTrue: [
            recoveredStack4 := SGIlInterpolate2DSpecialCall.
            recoveredPC := 151.
        ].
        recoveredStep = 151 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 154.
        ].
        recoveredStep = 154 ifTrue: [
            recoveredStack3 := 'getXTwoD'.
            recoveredPC := 156.
        ].
        recoveredStep = 156 ifTrue: [
            recoveredStack4 := SGIlGetX2DSpecialCall.
            recoveredPC := 158.
        ].
        recoveredStep = 158 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 161.
        ].
        recoveredStep = 161 ifTrue: [
            recoveredStack3 := 'getYTwoD'.
            recoveredPC := 163.
        ].
        recoveredStep = 163 ifTrue: [
            recoveredStack4 := SGIlGetY2DSpecialCall.
            recoveredPC := 165.
        ].
        recoveredStep = 165 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 168.
        ].
        recoveredStep = 168 ifTrue: [
            recoveredStack3 := 'getValueTwoD'.
            recoveredPC := 170.
        ].
        recoveredStep = 170 ifTrue: [
            recoveredStack4 := SGIlGetValue2DSpecialCall.
            recoveredPC := 172.
        ].
        recoveredStep = 172 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 175.
        ].
        recoveredStep = 175 ifTrue: [
            recoveredStack3 := 'getMaxSizeXTwoD'.
            recoveredPC := 177.
        ].
        recoveredStep = 177 ifTrue: [
            recoveredStack4 := SGIlGetMaxSizeX2DSpecialCall.
            recoveredPC := 179.
        ].
        recoveredStep = 179 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 182.
        ].
        recoveredStep = 182 ifTrue: [
            recoveredStack3 := 'getMaxSizeYTwoD'.
            recoveredPC := 184.
        ].
        recoveredStep = 184 ifTrue: [
            recoveredStack4 := SGIlGetMaxSizeY2DSpecialCall.
            recoveredPC := 186.
        ].
        recoveredStep = 186 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 189.
        ].
        recoveredStep = 189 ifTrue: [
            recoveredStack3 := 'getCurrentSizeXTwoD'.
            recoveredPC := 191.
        ].
        recoveredStep = 191 ifTrue: [
            recoveredStack4 := SGIlGetCurrentSizeX2DSpecialCall.
            recoveredPC := 193.
        ].
        recoveredStep = 193 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 196.
        ].
        recoveredStep = 196 ifTrue: [
            recoveredStack3 := 'getCurrentSizeYTwoD'.
            recoveredPC := 198.
        ].
        recoveredStep = 198 ifTrue: [
            recoveredStack4 := SGIlGetCurrentSizeY2DSpecialCall.
            recoveredPC := 202.
        ].
        recoveredStep = 202 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 205.
        ].
        recoveredStep = 205 ifTrue: [
            recoveredStack3 := 'setXTwoD'.
            recoveredPC := 208.
        ].
        recoveredStep = 208 ifTrue: [
            recoveredStack4 := SGIlSetX2DSpecialCall.
            recoveredPC := 212.
        ].
        recoveredStep = 212 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 215.
        ].
        recoveredStep = 215 ifTrue: [
            recoveredStack3 := 'setYTwoD'.
            recoveredPC := 218.
        ].
        recoveredStep = 218 ifTrue: [
            recoveredStack4 := SGIlSetY2DSpecialCall.
            recoveredPC := 222.
        ].
        recoveredStep = 222 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 225.
        ].
        recoveredStep = 225 ifTrue: [
            recoveredStack3 := 'setValueTwoD'.
            recoveredPC := 228.
        ].
        recoveredStep = 228 ifTrue: [
            recoveredStack4 := SGIlSetValue2DSpecialCall.
            recoveredPC := 232.
        ].
        recoveredStep = 232 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 235.
        ].
        recoveredStep = 235 ifTrue: [
            recoveredStack3 := 'setCurrentSizeXTwoD'.
            recoveredPC := 238.
        ].
        recoveredStep = 238 ifTrue: [
            recoveredStack4 := SGIlSetCurrentSizeX2DSpecialCall.
            recoveredPC := 242.
        ].
        recoveredStep = 242 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 245.
        ].
        recoveredStep = 245 ifTrue: [
            recoveredStack3 := 'setCurrentSizeYTwoD'.
            recoveredPC := 248.
        ].
        recoveredStep = 248 ifTrue: [
            recoveredStack4 := SGIlSetCurrentSizeY2DSpecialCall.
            recoveredPC := 252.
        ].
        recoveredStep = 252 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 255.
        ].
        recoveredStep = 255 ifTrue: [
            recoveredStack3 := 'searchDistribution'.
            recoveredPC := 258.
        ].
        recoveredStep = 258 ifTrue: [
            recoveredStack4 := SGIlSearchDistributionSpecialCall.
            recoveredPC := 262.
        ].
        recoveredStep = 262 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 265.
        ].
        recoveredStep = 265 ifTrue: [
            recoveredStack3 := 'getXDistribution'.
            recoveredPC := 268.
        ].
        recoveredStep = 268 ifTrue: [
            recoveredStack4 := SGIlGetXDistributionSpecialCall.
            recoveredPC := 272.
        ].
        recoveredStep = 272 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 275.
        ].
        recoveredStep = 275 ifTrue: [
            recoveredStack3 := 'setXDistribution'.
            recoveredPC := 278.
        ].
        recoveredStep = 278 ifTrue: [
            recoveredStack4 := SGIlSetXDistributionSpecialCall.
            recoveredPC := 282.
        ].
        recoveredStep = 282 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 285.
        ].
        recoveredStep = 285 ifTrue: [
            recoveredStack3 := 'getMaxSizeDistribution'.
            recoveredPC := 288.
        ].
        recoveredStep = 288 ifTrue: [
            recoveredStack4 := SGIlGetMaxSizeDistributionSpecialCall.
            recoveredPC := 292.
        ].
        recoveredStep = 292 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 295.
        ].
        recoveredStep = 295 ifTrue: [
            recoveredStack3 := 'getCurrentSizeDistribution'.
            recoveredPC := 298.
        ].
        recoveredStep = 298 ifTrue: [
            recoveredStack4 := SGIlGetCurrentSizeDistributionSpecialCall.
            recoveredPC := 302.
        ].
        recoveredStep = 302 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 305.
        ].
        recoveredStep = 305 ifTrue: [
            recoveredStack3 := 'setCurrentSizeDistribution'.
            recoveredPC := 308.
        ].
        recoveredStep = 308 ifTrue: [
            recoveredStack4 := SGIlSetCurrentSizeDistributionSpecialCall.
            recoveredPC := 312.
        ].
        recoveredStep = 312 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 315.
        ].
        recoveredStep = 315 ifTrue: [
            recoveredStack3 := 'interpolateOneDGroup'.
            recoveredPC := 318.
        ].
        recoveredStep = 318 ifTrue: [
            recoveredStack4 := SGIlInterpolate1DGroupSpecialCall.
            recoveredPC := 322.
        ].
        recoveredStep = 322 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 325.
        ].
        recoveredStep = 325 ifTrue: [
            recoveredStack3 := 'getValueOneDGroup'.
            recoveredPC := 328.
        ].
        recoveredStep = 328 ifTrue: [
            recoveredStack4 := SGIlGetValue1DGroupSpecialCall.
            recoveredPC := 332.
        ].
        recoveredStep = 332 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 335.
        ].
        recoveredStep = 335 ifTrue: [
            recoveredStack3 := 'setValueOneDGroup'.
            recoveredPC := 338.
        ].
        recoveredStep = 338 ifTrue: [
            recoveredStack4 := SGIlSetValue1DGroupSpecialCall.
            recoveredPC := 342.
        ].
        recoveredStep = 342 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 345.
        ].
        recoveredStep = 345 ifTrue: [
            recoveredStack3 := 'getMaxSizeOneDGroup'.
            recoveredPC := 348.
        ].
        recoveredStep = 348 ifTrue: [
            recoveredStack4 := SGIlGetMaxSize1DGroupSpecialCall.
            recoveredPC := 352.
        ].
        recoveredStep = 352 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 355.
        ].
        recoveredStep = 355 ifTrue: [
            recoveredStack3 := 'getCurrentSizeOneDGroup'.
            recoveredPC := 358.
        ].
        recoveredStep = 358 ifTrue: [
            recoveredStack4 := SGIlGetCurrentSize1DGroupSpecialCall.
            recoveredPC := 362.
        ].
        recoveredStep = 362 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 365.
        ].
        recoveredStep = 365 ifTrue: [
            recoveredStack3 := 'setCurrentSizeOneDGroup'.
            recoveredPC := 368.
        ].
        recoveredStep = 368 ifTrue: [
            recoveredStack4 := SGIlSetCurrentSize1DGroupSpecialCall.
            recoveredPC := 372.
        ].
        recoveredStep = 372 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 375.
        ].
        recoveredStep = 375 ifTrue: [
            recoveredStack3 := 'interpolateTwoDGroup'.
            recoveredPC := 378.
        ].
        recoveredStep = 378 ifTrue: [
            recoveredStack4 := SGIlInterpolate2DGroupSpecialCall.
            recoveredPC := 382.
        ].
        recoveredStep = 382 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 385.
        ].
        recoveredStep = 385 ifTrue: [
            recoveredStack3 := 'getValueTwoDGroup'.
            recoveredPC := 388.
        ].
        recoveredStep = 388 ifTrue: [
            recoveredStack4 := SGIlGetValue2DGroupSpecialCall.
            recoveredPC := 392.
        ].
        recoveredStep = 392 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 395.
        ].
        recoveredStep = 395 ifTrue: [
            recoveredStack3 := 'getMaxSizeXTwoDGroup'.
            recoveredPC := 398.
        ].
        recoveredStep = 398 ifTrue: [
            recoveredStack4 := SGIlGetMaxSizeX2DGroupSpecialCall.
            recoveredPC := 402.
        ].
        recoveredStep = 402 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 405.
        ].
        recoveredStep = 405 ifTrue: [
            recoveredStack3 := 'getMaxSizeYTwoDGroup'.
            recoveredPC := 408.
        ].
        recoveredStep = 408 ifTrue: [
            recoveredStack4 := SGIlGetMaxSizeY2DGroupSpecialCall.
            recoveredPC := 412.
        ].
        recoveredStep = 412 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 415.
        ].
        recoveredStep = 415 ifTrue: [
            recoveredStack3 := 'getCurrentSizeXTwoDGroup'.
            recoveredPC := 418.
        ].
        recoveredStep = 418 ifTrue: [
            recoveredStack4 := SGIlGetCurrentSizeX2DGroupSpecialCall.
            recoveredPC := 422.
        ].
        recoveredStep = 422 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 425.
        ].
        recoveredStep = 425 ifTrue: [
            recoveredStack3 := 'getCurrentSizeYTwoDGroup'.
            recoveredPC := 428.
        ].
        recoveredStep = 428 ifTrue: [
            recoveredStack4 := SGIlGetCurrentSizeY2DGroupSpecialCall.
            recoveredPC := 432.
        ].
        recoveredStep = 432 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 435.
        ].
        recoveredStep = 435 ifTrue: [
            recoveredStack3 := 'setValueTwoDGroup'.
            recoveredPC := 438.
        ].
        recoveredStep = 438 ifTrue: [
            recoveredStack4 := SGIlSetValue2DGroupSpecialCall.
            recoveredPC := 442.
        ].
        recoveredStep = 442 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 445.
        ].
        recoveredStep = 445 ifTrue: [
            recoveredStack3 := 'setCurrentSizeXTwoDGroup'.
            recoveredPC := 448.
        ].
        recoveredStep = 448 ifTrue: [
            recoveredStack4 := SGIlSetCurrentSizeX2DGroupSpecialCall.
            recoveredPC := 452.
        ].
        recoveredStep = 452 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredStack2 := recoveredStack1.
            recoveredPC := 455.
        ].
        recoveredStep = 455 ifTrue: [
            recoveredStack3 := 'setCurrentSizeYTwoDGroup'.
            recoveredPC := 458.
        ].
        recoveredStep = 458 ifTrue: [
            recoveredStack4 := SGIlSetCurrentSizeY2DGroupSpecialCall.
            recoveredPC := 462.
        ].
        recoveredStep = 462 ifTrue: [
            (recoveredStack2) at: (recoveredStack3) put: (recoveredStack4).
            recoveredPC := 464.
        ].
        recoveredStep = 464 ifTrue: [
            SpecialCallClassMap := recoveredStack1.
            recoveredPC := 466.
        ].
        recoveredStep = 466 ifTrue: [
            recoveredStack1 := SpecialCallClassMap.
            recoveredPC := 468.
        ].
        recoveredStep = 468 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

