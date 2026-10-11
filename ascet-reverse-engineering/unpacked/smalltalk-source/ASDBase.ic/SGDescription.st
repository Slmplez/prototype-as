"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2002be04; bytecode file offset 0x934580"
!SGDescription methodsFor: 'recovered'!
isVersion
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) dbObject.
    recoveredValue1 := (recoveredValue0) isVersion.
    ^recoveredValue1
! !

"ASDBase.ic method 0x2003ec18; bytecode file offset 0x93bf94"
!SGDescription methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGLmManager.
    recoveredValue1 := (recoveredValue0) errorHandler.
    ^recoveredValue1
! !

"ASDBase.ic method 0x200e4440; bytecode file offset 0x9e0d78"
!SGDescription methodsFor: 'recovered'!
modifiedWithoutTimeStamp
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack0) setModify.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201212fc; bytecode file offset 0xa1dbe0"
!SGDescription methodsFor: 'recovered'!
fatalExpect: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := Array.
    recoveredValue2 := recoveredArg1.
    recoveredValue3 := (recoveredValue1) with: ('OS') with: (recoveredValue2).
    recoveredValue4 := (recoveredValue0) fatalNo: (1) args: (recoveredValue3).
    ^recoveredValue4
! !

"ASDBase.ic method 0x20173d1c; bytecode file offset 0xa70610"
!SGDescription methodsFor: 'recovered'!
logTimeStampModification: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := ASCETSG.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := ('Update time stamp ') , (recoveredValue1).
    recoveredValue3 := (recoveredValue2) , (' for: ').
    recoveredValue4 := (self) dbObject.
    recoveredValue5 := (recoveredValue4) getLoggingInfo.
    recoveredValue6 := (recoveredValue3) , (recoveredValue5).
    (recoveredValue0) log: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x2017708c; bytecode file offset 0xa73980"
!SGDescription methodsFor: 'recovered'!
osErrorNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) errorHandler.
    recoveredValue5 := (recoveredValue4) currentUnit.
    recoveredValue6 := (recoveredValue5) source.
    (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue3) category: ('OS') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201770b0; bytecode file offset 0xa73980"
!SGDescription methodsFor: 'recovered'!
osWarningNo: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := (recoveredValue2) new.
    recoveredValue4 := (self) errorHandler.
    recoveredValue5 := (recoveredValue4) currentUnit.
    recoveredValue6 := (recoveredValue5) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue3) category: ('OS') source: (recoveredValue6).
    ^self
! !

"ASDBase.ic method 0x201817dc; bytecode file offset 0xa7e0a8"
!SGDescription methodsFor: 'recovered'!
modified
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) isDbObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 8] ifFalse: [recoveredPC := 21].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack1 := 'modifiedTimeStamp'.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) logTimeStampModification: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            (recoveredStack0) modifiedWithoutTimeStamp.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack0 := (recoveredStack0) dbObject.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            (recoveredStack0) applicationTimeStampNow.
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

"ASDBase.ic method 0x20187fe0; bytecode file offset 0xa848d4"
!SGDescription methodsFor: 'recovered'!
osErrorNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) errorHandler.
    recoveredValue6 := (recoveredValue5) currentUnit.
    recoveredValue7 := (recoveredValue6) source.
    (recoveredValue0) errorNo: (recoveredValue1) args: (recoveredValue4) category: ('OS') source: (recoveredValue7).
    ^self
! !

"ASDBase.ic method 0x20188004; bytecode file offset 0xa848d4"
!SGDescription methodsFor: 'recovered'!
osWarningNo: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := (self) errorHandler.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := Array.
    recoveredValue3 := recoveredArg2.
    recoveredValue4 := (recoveredValue2) with: (recoveredValue3).
    recoveredValue5 := (self) errorHandler.
    recoveredValue6 := (recoveredValue5) currentUnit.
    recoveredValue7 := (recoveredValue6) source.
    (recoveredValue0) warningNo: (recoveredValue1) args: (recoveredValue4) category: ('OS') source: (recoveredValue7).
    ^self
! !

