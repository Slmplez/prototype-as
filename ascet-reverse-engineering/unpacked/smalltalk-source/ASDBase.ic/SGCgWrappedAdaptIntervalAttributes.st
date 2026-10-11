"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200275d0; bytecode file offset 0x924260"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrComponent
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) componentAttributes.
    recoveredValue1 := (recoveredValue0) notNil.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200282d4; bytecode file offset 0x934580"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrZeroIncluded
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrZeroIncluded.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002c714; bytecode file offset 0x934580"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrReduceResolution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrReduceResolution.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e484; bytecode file offset 0x934580"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrLimitOverflow
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrLimitOverflow.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002e724; bytecode file offset 0x934580"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrAdditional
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrAdditional.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2002fa84; bytecode file offset 0x934580"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrAutomaticResolution
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrAutomaticResolution.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20032dc4; bytecode file offset 0x934580"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrPlainLimitAssignment
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrPlainLimitAssignment.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200332f4; bytecode file offset 0x934580"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrFloatGoal
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    recoveredValue1 := (recoveredValue0) isCgAttrFloatGoal.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004df04; bytecode file offset 0x94d048"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrReference
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004e588; bytecode file offset 0x94d048"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cachingAutomatic
    (self) cachingOff.
    ^self
! !

"ASDBase.ic method 0x2004eeb8; bytecode file offset 0x94d048"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrDeprecatedCClassReference
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004f650; bytecode file offset 0x94d048"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrReference
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004fe30; bytecode file offset 0x94d048"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoReference
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2004ffa4; bytecode file offset 0x94d048"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
adaptIntervalAttributes
    (self) subclassResponsibility.
    ^self
! !

"ASDBase.ic method 0x2005e654; bytecode file offset 0x95af24"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cachingOn
    caching := 'On'.
    ^self
! !

"ASDBase.ic method 0x2005e66c; bytecode file offset 0x95af24"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cachingOff
    caching := 'Off'.
    ^self
! !

"ASDBase.ic method 0x20063904; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrLimitOverflow
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrLimitOverflow.
    ^self
! !

"ASDBase.ic method 0x200639e4; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrZeroIncluded
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrZeroIncluded.
    ^self
! !

"ASDBase.ic method 0x20063c04; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoFloatGoal
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrNoFloatGoal.
    ^self
! !

"ASDBase.ic method 0x20063dd4; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrLimitAssignment
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrLimitAssignment.
    ^self
! !

"ASDBase.ic method 0x20064074; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrReduceResolution
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrReduceResolution.
    ^self
! !

"ASDBase.ic method 0x200640b4; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrAutomaticResolution
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrAutomaticResolution.
    ^self
! !

"ASDBase.ic method 0x200643a4; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoLimitOverflow
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrNoLimitOverflow.
    ^self
! !

"ASDBase.ic method 0x200643c4; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrSpecificResolution
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrSpecificResolution.
    ^self
! !

"ASDBase.ic method 0x20064744; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrNoLimitAssignment
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrNoLimitAssignment.
    ^self
! !

"ASDBase.ic method 0x20064864; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrFloatGoal
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrFloatGoal.
    ^self
! !

"ASDBase.ic method 0x20064d94; bytecode file offset 0x961970"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
cgAttrKeepResolution
    | recoveredValue0 |
    recoveredValue0 := (self) adaptIntervalAttributes.
    (recoveredValue0) cgAttrKeepResolution.
    ^self
! !

"ASDBase.ic method 0x2006d6dc; bytecode file offset 0x96a390"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
errLabel
    | recoveredValue0 |
    recoveredValue0 := errLabel.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006e50c; bytecode file offset 0x96af48"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
componentAttributes
    | recoveredValue0 |
    recoveredValue0 := componentAttributes.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20073f50; bytecode file offset 0x970b34"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
directAccessAttributes
    ^nil
! !

"ASDBase.ic method 0x2007da94; bytecode file offset 0x97c330"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrConstant
    ^false
! !

"ASDBase.ic method 0x2007f14c; bytecode file offset 0x97c330"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrParameter
    ^false
! !

"ASDBase.ic method 0x2008b8a8; bytecode file offset 0x988178"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCachingOn
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := caching.
    recoveredValue1 := (recoveredValue0) == ('On').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2008b8c0; bytecode file offset 0x988178"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCachingOff
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := caching.
    recoveredValue1 := (recoveredValue0) == ('Off').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200c3ef4; bytecode file offset 0x9c0bf0"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
errLabel: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    errLabel := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c493c; bytecode file offset 0x9c16b0"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
componentAttributes: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    componentAttributes := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f2454; bytecode file offset 0x9eedc0"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
isCgAttrComponentNoReference
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) isCgAttrComponent.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 14].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) isCgAttrReference.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) not.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011c78c; bytecode file offset 0xa19050"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
initialize
    super initialize.
    errLabel := ''.
    (self) cachingOff.
    ^self
! !

"ASDBase.ic method 0x201539ec; bytecode file offset 0xa502b0"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
printErrLabelOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: (' (').
    recoveredValue2 := recoveredValue0.
    recoveredValue3 := (self) errLabel.
    (recoveredValue2) nextPutAll: (recoveredValue3).
    (recoveredValue0) nextPutAll: (')').
    ^self
! !

"ASDBase.ic method 0x20184a80; bytecode file offset 0xa8134c"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
printOnIntervalAttributes: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    (recoveredValue1) nextPutAll: ('[').
    (recoveredValue0) cr.
    recoveredValue2 := (self) adaptIntervalAttributes.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) printOn: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    (recoveredValue4) nextPutAll: (']').
    ^self
! !

"ASDBase.ic method 0x201f5658; bytecode file offset 0xaf1f28"
!SGCgWrappedAdaptIntervalAttributes methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    super printOn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := recoveredValue1.
    (recoveredValue2) cr.
    recoveredValue3 := recoveredValue1.
    (recoveredValue3) nextPutAll: ('Caching: ').
    recoveredValue4 := caching.
    recoveredValue5 := (recoveredValue4) asString.
    (recoveredValue1) nextPutAll: (recoveredValue5).
    recoveredValue6 := recoveredArg1.
    (self) printOnIntervalAttributes: (recoveredValue6).
    ^self
! !

