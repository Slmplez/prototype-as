"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003b78; bytecode file offset 0x90206c"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
attribute: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20008fcc; bytecode file offset 0x908be4"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
getReferencedAxisPts
    | recoveredValue0 |
    recoveredValue0 := (self) curveAxisRef.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2001913c; bytecode file offset 0x92209c"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
attribute
    ^'CURVE_AXIS'
! !

"ASDBase.ic method 0x2003a328; bytecode file offset 0x938608"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
setReferencedAxisPts: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) curveAxisRef: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2004cbf0; bytecode file offset 0x9495f8"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
extendedLimits
    | recoveredValue0 |
    recoveredValue0 := (self) at: (11).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004cd60; bytecode file offset 0x949804"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
curveAxisRef
    | recoveredValue0 |
    recoveredValue0 := (self) at: (12).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20075ccc; bytecode file offset 0x9757c8"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
isCurveAxis
    ^true
! !

"ASDBase.ic method 0x200a764c; bytecode file offset 0x9a3fd0"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
extendedLimits: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (11) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200a7844; bytecode file offset 0x9a4138"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
curveAxisRef: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (12) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x20120014; bytecode file offset 0xa1c8f0"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
allAxisPointOrCurveAxisFrom: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) characteristic.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := [:block280c8ef8Arg1 | 
    | block280c8ef8Value0 block280c8ef8Value1 |
    block280c8ef8Value0 := block280c8ef8Arg1.
    block280c8ef8Value1 := (block280c8ef8Value0) isCurveAxis.
    block280c8ef8Value1
].
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := (recoveredStack1) select: (recoveredStack2).
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2020c4d0; bytecode file offset 0xb08dbc"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
setFileDefaults
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            super setFileDefaults.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) curveAxisRef.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := [:block280d9fecArg1 | 
    | block280d9fecStack0 block280d9fecStack1 block280d9fecStack2 block280d9fecStack3 block280d9fecPC block280d9fecStep block280d9fecDone block280d9fecResult |
    block280d9fecStack0 := self.
    block280d9fecPC := 4.
    block280d9fecDone := false.
    [block280d9fecDone not] whileTrue: [
        block280d9fecStep := block280d9fecPC.
        block280d9fecStep = 4 ifTrue: [
            block280d9fecStack1 := nil.
            block280d9fecPC := 5.
        ].
        block280d9fecStep = 5 ifTrue: [
            block280d9fecStack2 := block280d9fecArg1.
            block280d9fecPC := 6.
        ].
        block280d9fecStep = 6 ifTrue: [
            block280d9fecStack2 := (block280d9fecStack2) isString.
            block280d9fecPC := 8.
        ].
        block280d9fecStep = 8 ifTrue: [
            (block280d9fecStack2) ifTrue: [block280d9fecPC := 15] ifFalse: [block280d9fecPC := 12].
        ].
        block280d9fecStep = 12 ifTrue: [
            block280d9fecPC := 13.
        ].
        block280d9fecStep = 13 ifTrue: [
            block280d9fecStack1 := block280d9fecArg1.
            block280d9fecPC := 14.
        ].
        block280d9fecStep = 14 ifTrue: [
            block280d9fecStack1 := (block280d9fecStack1) setFileDefaults.
            block280d9fecPC := 15.
        ].
        block280d9fecStep = 15 ifTrue: [
            block280d9fecResult := block280d9fecStack1.
            block280d9fecDone := true.
        ].
    ].
    block280d9fecResult
].
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0) ifNotNil: (recoveredStack1).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20233830; bytecode file offset 0xb30104"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
addTo: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super addTo: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) curveAxisRef.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) isASAP2.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 24].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := (recoveredStack1) curveAxisRef.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) addCharacteristic: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredPC := 33.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack1 := SCASAP2MissingCharacteristic.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            recoveredStack2 := (recoveredStack2) curveAxisRef.
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack1 := (recoveredStack1) , (recoveredStack2).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) monitorWarning: (recoveredStack1).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x202a54bc; bytecode file offset 0xba1d94"
!ASAP2BytesCurveAxisDescription methodsFor: 'recovered'!
copyChildrenAndAddToProject: recoveredArg1
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            super copyChildrenAndAddToProject: (recoveredStack1).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPtsRef.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortName.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) axisPointNamed: (recoveredStack1).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack1 := (recoveredStack1) axisPtsRef.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            recoveredStack1 := (recoveredStack1) shortName.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack0 := (recoveredStack0) characteristicNamed: (recoveredStack1).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 28.
        ].
        recoveredStep = 28 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 39] ifFalse: [recoveredPC := 32].
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := (recoveredStack0) curveAxisRef.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 36.
        ].
        recoveredStep = 36 ifTrue: [
            recoveredStack0 := (recoveredStack0) copyAndAddToProject: (recoveredStack1).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredLocal1 := recoveredStack0.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 41.
        ].
        recoveredStep = 41 ifTrue: [
            (recoveredStack0) curveAxisRef: (recoveredStack1).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

