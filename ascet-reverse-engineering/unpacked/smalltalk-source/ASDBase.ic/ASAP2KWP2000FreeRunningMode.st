"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2001e9e0; bytecode file offset 0x92209c"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
availableEnums
    | recoveredValue0 |
    recoveredValue0 := (LookupTable new) elementCount: (1); keyArray: (#(nil nil 'CAN' nil nil nil nil nil nil nil nil)); valueArray: (#(nil nil 2 nil nil nil nil nil nil nil nil)); yourself.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b1bc; bytecode file offset 0x947d20"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
uuDtpParameter
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004b3f0; bytecode file offset 0x947d20"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
rdbpiParameter
    | recoveredValue0 |
    recoveredValue0 := (self) at: (2).
    ^recoveredValue0
! !

"ASDBase.ic method 0x20093e5c; bytecode file offset 0x99072c"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
uuDtpParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (2) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x20093e74; bytecode file offset 0x99072c"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
rdbpiParameter: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) at: (2) put: (recoveredValue0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200eeb7c; bytecode file offset 0x9eb43c"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
getUuDtpParameter: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := ASAP2KWP2000V30RDBPIParameter.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    ^recoveredValue4
! !

"ASDBase.ic method 0x201013ec; bytecode file offset 0x9fdf08"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
putIn: recoveredArg1 rdbpiParameter: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) rdbpiParameter.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            (recoveredStack0 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 8].
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack0 := (recoveredStack0) rdbpiParameter.
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack0) putIn: (recoveredStack1).
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20126358; bytecode file offset 0xa22c34"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
getRdbpiParameter: recoveredArg1
    | recoveredLocal1 recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 |
    recoveredValue0 := ASAP2KWP2000V30RDBPIParameter.
    recoveredValue1 := (recoveredValue0) create.
    recoveredLocal1 := recoveredValue1.
    recoveredValue2 := recoveredLocal1.
    recoveredValue3 := recoveredArg1.
    (recoveredValue2) getFrom: (recoveredValue3).
    recoveredValue4 := recoveredLocal1.
    (self) rdbpiParameter: (recoveredValue4).
    recoveredValue5 := recoveredLocal1.
    ^recoveredValue5
! !

"ASDBase.ic method 0x20163a20; bytecode file offset 0xa605cc"
!ASAP2KWP2000FreeRunningMode methodsFor: 'recovered'!
putInBasic: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := recoveredArg1.
    (self) putNewLineIn: (recoveredValue0).
    recoveredValue1 := recoveredArg1.
    (self) putKeyWordIn: (recoveredValue1).
    recoveredValue2 := recoveredArg1.
    (self) putParameterIn: (recoveredValue2).
    recoveredValue3 := recoveredArg1.
    (self) putOptionsIn: (recoveredValue3).
    ^self
! !

