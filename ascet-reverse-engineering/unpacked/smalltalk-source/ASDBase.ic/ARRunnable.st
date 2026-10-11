"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004d88; bytecode file offset 0x90206c"
!ARRunnable methodsFor: 'recovered'!
writeXMLSideEffectFreeAttribute: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x2006ef14; bytecode file offset 0x96b8a0"
!ARRunnable methodsFor: 'recovered'!
canBeInvokedConcurrently
    | recoveredValue0 |
    recoveredValue0 := canBeInvokedConcurrently.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006f038; bytecode file offset 0x96bc1c"
!ARRunnable methodsFor: 'recovered'!
minimumStartTime
    | recoveredValue0 |
    recoveredValue0 := minimumStartTime.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20074c0c; bytecode file offset 0x9757c8"
!ARRunnable methodsFor: 'recovered'!
supportsCanBeInvokedConcurrently
    ^true
! !

"ASDBase.ic method 0x20074c1c; bytecode file offset 0x9757c8"
!ARRunnable methodsFor: 'recovered'!
isRunnable
    ^true
! !

"ASDBase.ic method 0x2007786c; bytecode file offset 0x9757c8"
!ARRunnable methodsFor: 'recovered'!
supportsMinimumStartTime
    ^true
! !

"ASDBase.ic method 0x20079564; bytecode file offset 0x97c330"
!ARRunnable methodsFor: 'recovered'!
isMethod
    ^false
! !

"ASDBase.ic method 0x2007c594; bytecode file offset 0x97c330"
!ARRunnable methodsFor: 'recovered'!
supportsConvert
    ^false
! !

"ASDBase.ic method 0x200c5570; bytecode file offset 0x9c1f64"
!ARRunnable methodsFor: 'recovered'!
canBeInvokedConcurrently: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    canBeInvokedConcurrently := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200e9d94; bytecode file offset 0x9e664c"
!ARRunnable methodsFor: 'recovered'!
minimumStartTime: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) isFloat.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            minimumStartTime := recoveredStack1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20108ee8; bytecode file offset 0xa05848"
!ARRunnable methodsFor: 'recovered'!
visualCallBackImage
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isRealizedMethodSignature.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 11].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := 'GeneralRunnableRealized'.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := 'GeneralRunnable'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2011c808; bytecode file offset 0xa190c8"
!ARRunnable methodsFor: 'recovered'!
initialize
    super initialize.
    canBeInvokedConcurrently := false.
    minimumStartTime := #[0 0 0 0 0 0 0 0].
    ^self
! !

"ASDBase.ic method 0x2013b890; bytecode file offset 0xa3814c"
!ARRunnable methodsFor: 'recovered'!
xmlTag
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := realizedSignature.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 'RunnableSignature'.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := 'RealizedRunnableSignature'.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x20176764; bytecode file offset 0xa73050"
!ARRunnable methodsFor: 'recovered'!
overwriteWith: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := recoveredArg1.
    super overwriteWith: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue1) canBeInvokedConcurrently.
    (self) canBeInvokedConcurrently: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (recoveredValue3) minimumStartTime.
    (self) minimumStartTime: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x20176930; bytecode file offset 0xa731fc"
!ARRunnable methodsFor: 'recovered'!
duplicateTo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    super duplicateTo: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) canBeInvokedConcurrently.
    (recoveredValue1) canBeInvokedConcurrently: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := (self) minimumStartTime.
    (recoveredValue3) minimumStartTime: (recoveredValue4).
    recoveredValue5 := recoveredArg1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x201b62f0; bytecode file offset 0xab2bbc"
!ARRunnable methodsFor: 'recovered'!
internalWriteXMLSpecific: recoveredArg1 owner: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredArg2.
    super internalWriteXMLSpecific: (recoveredValue0) owner: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := canBeInvokedConcurrently.
    (recoveredValue2) attr: ('canBeInvokedConcurrently') boolean: (recoveredValue3).
    recoveredValue4 := recoveredArg1.
    recoveredValue5 := minimumStartTime.
    (recoveredValue4) attr: ('minimumStartTime') double: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20334254; bytecode file offset 0xc30b18"
!ARRunnable methodsFor: 'recovered'!
replaceAliasNames: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedSignature.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 59] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedSignature.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := 1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) realizedSignature.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack4 := 1.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock18Value0 recoveredBlock18Value1 |
    recoveredBlock18Value0 := (self) realizedSignature.
    recoveredBlock18Value1 := (recoveredBlock18Value0) at: (1).
    recoveredBlock18Value1
].
            recoveredPC := 29.
        ].
        recoveredStep = 29 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 31.
        ].
        recoveredStep = 31 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 34.
        ].
        recoveredStep = 34 ifTrue: [
            recoveredStack0 := (recoveredStack0) realizedSignature.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            recoveredStack1 := 2.
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            recoveredStack3 := (recoveredStack3) realizedSignature.
            recoveredPC := 40.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack4 := 2.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack3 := (recoveredStack3) at: (recoveredStack4).
            recoveredPC := 43.
        ].
        recoveredStep = 43 ifTrue: [
            recoveredStack4 := [
    | recoveredBlock43Value0 recoveredBlock43Value1 |
    recoveredBlock43Value0 := (self) realizedSignature.
    recoveredBlock43Value1 := (recoveredBlock43Value0) at: (2).
    recoveredBlock43Value1
].
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            recoveredStack2 := (recoveredStack2) at: (recoveredStack3) ifAbsent: (recoveredStack4).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            (recoveredStack0) at: (recoveredStack1) put: (recoveredStack2).
            recoveredPC := 59.
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 60.
        ].
        recoveredStep = 60 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x2042fe4c; bytecode file offset 0xd2c73c"
!ARRunnable methodsFor: 'recovered'!
convertTo: recoveredArg1
    | recoveredLocal1 recoveredLocal2 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := super convertTo: (recoveredStack1).
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := [
    ^nil
].
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            (recoveredStack0) ifNil: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsCanBeInvokedConcurrently.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 30] ifFalse: [recoveredPC := 40].
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack1 := canBeInvokedConcurrently.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) canBeInvokedConcurrently: (recoveredStack1).
            recoveredPC := 37.
        ].
        recoveredStep = 37 ifTrue: [
            recoveredPC := 59.
        ].
        recoveredStep = 40 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 42.
        ].
        recoveredStep = 42 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 44.
        ].
        recoveredStep = 44 ifTrue: [
            recoveredStack1 := 'Method Conversion: Cannot keep "Can be Invoked Concurrently" flag of %1 (%2)!!'.
            recoveredPC := 46.
        ].
        recoveredStep = 46 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 47.
        ].
        recoveredStep = 47 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 49.
        ].
        recoveredStep = 49 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 50.
        ].
        recoveredStep = 50 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 51.
        ].
        recoveredStep = 51 ifTrue: [
            recoveredStack3 := (recoveredStack3) ascetLink: (recoveredStack4).
            recoveredPC := 53.
        ].
        recoveredStep = 53 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 55.
        ].
        recoveredStep = 55 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 57.
        ].
        recoveredStep = 57 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 58.
        ].
        recoveredStep = 58 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 59 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 62.
        ].
        recoveredStep = 62 ifTrue: [
            recoveredStack0 := (recoveredStack0) supportsMinimumStartTime.
            recoveredPC := 64.
        ].
        recoveredStep = 64 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 68] ifFalse: [recoveredPC := 78].
        ].
        recoveredStep = 68 ifTrue: [
            recoveredStack0 := recoveredArg1.
            recoveredPC := 71.
        ].
        recoveredStep = 71 ifTrue: [
            recoveredStack1 := minimumStartTime.
            recoveredPC := 73.
        ].
        recoveredStep = 73 ifTrue: [
            (recoveredStack0) minimumStartTime: (recoveredStack1).
            recoveredPC := 75.
        ].
        recoveredStep = 75 ifTrue: [
            recoveredPC := 103.
        ].
        recoveredStep = 78 ifTrue: [
            recoveredStack0 := minimumStartTime.
            recoveredPC := 80.
        ].
        recoveredStep = 80 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 103] ifFalse: [recoveredPC := 84].
        ].
        recoveredStep = 84 ifTrue: [
            recoveredStack0 := SGMonitorStreamDummy.
            recoveredPC := 86.
        ].
        recoveredStep = 86 ifTrue: [
            recoveredStack0 := (recoveredStack0) create.
            recoveredPC := 88.
        ].
        recoveredStep = 88 ifTrue: [
            recoveredStack1 := 'Method Conversion: Cannot keep "Minimum Start Time" value of %1 (%2)!!'.
            recoveredPC := 90.
        ].
        recoveredStep = 90 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 91.
        ].
        recoveredStep = 91 ifTrue: [
            recoveredStack2 := (recoveredStack2) methodName.
            recoveredPC := 93.
        ].
        recoveredStep = 93 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 94.
        ].
        recoveredStep = 94 ifTrue: [
            recoveredStack4 := nil.
            recoveredPC := 95.
        ].
        recoveredStep = 95 ifTrue: [
            recoveredStack3 := (recoveredStack3) ascetLink: (recoveredStack4).
            recoveredPC := 97.
        ].
        recoveredStep = 97 ifTrue: [
            recoveredStack1 := (recoveredStack1) bindWith: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 99.
        ].
        recoveredStep = 99 ifTrue: [
            (recoveredStack0) addWarningText: (recoveredStack1).
            recoveredPC := 101.
        ].
        recoveredStep = 101 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 102.
        ].
        recoveredStep = 102 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 103 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 104.
        ].
        recoveredStep = 104 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

