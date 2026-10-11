"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20020d74; bytecode file offset 0x92209c"
!SGIaObject methodsFor: 'recovered'!
shortPrintString
    ^''
! !

"ASDBase.ic method 0x20036634; bytecode file offset 0x934580"
!SGIaObject methodsFor: 'recovered'!
reserveTempStream
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (recoveredValue0) reserveTempStream.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ef98; bytecode file offset 0x93bf94"
!SGIaObject methodsFor: 'recovered'!
expander
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGIlExpander.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003f438; bytecode file offset 0x93bf94"
!SGIaObject methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2005bdc4; bytecode file offset 0x958ab0"
!SGIaObject methodsFor: 'recovered'!
signalFatal
    | recoveredValue0 |
    recoveredValue0 := ExSGCgFatal.
    (recoveredValue0) signal.
    ^self
! !

"ASDBase.ic method 0x2005cc94; bytecode file offset 0x959680"
!SGIaObject methodsFor: 'recovered'!
generator
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := SGGeneratorFactory.
    recoveredValue1 := (recoveredValue0) create.
    recoveredValue2 := (recoveredValue1) codeGeneratorStrategy.
    ^recoveredValue2
! !

"ASDBase.ic method 0x200738f8; bytecode file offset 0x970b34"
!SGIaObject methodsFor: 'recovered'!
source
    ^nil
! !

"ASDBase.ic method 0x200dc234; bytecode file offset 0x9d8b80"
!SGIaObject methodsFor: 'recovered'!
iaFatalNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg2.
    recoveredValue3 := (recoveredValue1) with: (recoveredValue2).
    (self) iaFatalWithDisplay: (recoveredValue0) args: (recoveredValue3).
    ^self
! !

"ASDBase.ic method 0x2010fb98; bytecode file offset 0xa0c4d4"
!SGIaObject methodsFor: 'recovered'!
iaWarningNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (nil) category: ('Ia') source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x2010fc10; bytecode file offset 0xa0c4d4"
!SGIaObject methodsFor: 'recovered'!
iaInfoNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (self) source.
    (recoveredValue0) infoNo: (recoveredValue1) args: (nil) category: ('Ia') source: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x20147b1c; bytecode file offset 0xa443e4"
!SGIaObject methodsFor: 'recovered'!
iaFatalWithDisplay: recoveredArg1 args: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (self) source.
    (recoveredValue1) errorNo: (recoveredValue2) args: (recoveredValue3) category: ('Ia') source: (recoveredValue4).
    (recoveredValue0) fatalWithDisplay.
    ^self
! !

"ASDBase.ic method 0x2015759c; bytecode file offset 0xa53fc8"
!SGIaObject methodsFor: 'recovered'!
iaInfoNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) infoNo: (recoveredValue1) args: (recoveredValue4) category: ('Ia') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x2015765c; bytecode file offset 0xa53fc8"
!SGIaObject methodsFor: 'recovered'!
iaWarningNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue4) category: ('Ia') source: (recoveredValue5).
    ^self
! !

"ASDBase.ic method 0x20179810; bytecode file offset 0xa7623c"
!SGIaObject methodsFor: 'recovered'!
iaWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue5) category: ('Ia') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20179950; bytecode file offset 0xa7623c"
!SGIaObject methodsFor: 'recovered'!
iaInfoNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4).
    recoveredValue6 := (self) source.
    (recoveredValue0) infoNo: (recoveredValue1) args: (recoveredValue5) category: ('Ia') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x20198638; bytecode file offset 0xa94f24"
!SGIaObject methodsFor: 'recovered'!
iaWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5).
    recoveredValue7 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue6) category: ('Ia') source: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x201b75b4; bytecode file offset 0xab3f00"
!SGIaObject methodsFor: 'recovered'!
iaWarningNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (self) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue7) category: ('Ia') source: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x201b7614; bytecode file offset 0xab3f00"
!SGIaObject methodsFor: 'recovered'!
iaInfoNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4 with: recoveredArg5
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 recoveredValue8 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := recoveredArg3.
    recoveredValue5 := recoveredArg4.
    recoveredValue6 := recoveredArg5.
    recoveredValue7 := (recoveredValue2) with: (recoveredValue3) with: (recoveredValue4) with: (recoveredValue5) with: (recoveredValue6).
    recoveredValue8 := (self) source.
    (recoveredValue0) infoNo: (recoveredValue1) args: (recoveredValue7) category: ('Ia') source: (recoveredValue8).
    ^self
! !

"ASDBase.ic method 0x2026f100; bytecode file offset 0xb6b9d4"
!SGIaObject methodsFor: 'recovered'!
iaInfoNo: recoveredArg1 with: recoveredArg2 with: recoveredArg3 with: recoveredArg4
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredStack5 recoveredStack6 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := 13.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1 ~~ recoveredStack2) ifTrue: [recoveredPC := 20] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg2.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'sm'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) equals: (recoveredStack2).
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) errorHandler.
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack2 := Array.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            recoveredStack3 := recoveredArg2.
            recoveredPC := 25.
        ].
        recoveredStep = 25 ifTrue: [
            recoveredStack4 := recoveredArg3.
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            recoveredStack5 := recoveredArg4.
            recoveredPC := 27.
        ].
        recoveredStep = 27 ifTrue: [
            recoveredStack2 := (recoveredStack2) with: (recoveredStack3) with: (recoveredStack4) with: (recoveredStack5).
            recoveredPC := 30.
        ].
        recoveredStep = 30 ifTrue: [
            recoveredStack3 := 'Ia'.
            recoveredPC := 32.
        ].
        recoveredStep = 32 ifTrue: [
            recoveredStack4 := self.
            recoveredPC := 33.
        ].
        recoveredStep = 33 ifTrue: [
            recoveredStack4 := (recoveredStack4) source.
            recoveredPC := 35.
        ].
        recoveredStep = 35 ifTrue: [
            (recoveredStack0) infoNo: (recoveredStack1) args: (recoveredStack2) category: (recoveredStack3) source: (recoveredStack4).
            recoveredPC := 38.
        ].
        recoveredStep = 38 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 39.
        ].
        recoveredStep = 39 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

