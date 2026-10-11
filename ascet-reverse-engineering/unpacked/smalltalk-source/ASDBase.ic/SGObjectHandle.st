"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000b654; bytecode file offset 0x908be4"
!SGObjectHandle methodsFor: 'recovered'!
asString
    | recoveredValue0 |
    recoveredValue0 := (self) name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006307c; bytecode file offset 0x95f97c"
!SGObjectHandle methodsFor: 'recovered'!
nullHandle
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := (self) objectHandle.
    recoveredValue1 := (recoveredValue0) = (0).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200664d4; bytecode file offset 0x963428"
!SGObjectHandle methodsFor: 'recovered'!
name
    | recoveredValue0 |
    recoveredValue0 := name.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2007452c; bytecode file offset 0x970de8"
!SGObjectHandle methodsFor: 'recovered'!
asCebraLength
    ^8
! !

"ASDBase.ic method 0x20077bdc; bytecode file offset 0x9757c8"
!SGObjectHandle methodsFor: 'recovered'!
isObjectHandle
    ^true
! !

"ASDBase.ic method 0x200be17c; bytecode file offset 0x9bb178"
!SGObjectHandle methodsFor: 'recovered'!
name: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    name := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200bed78; bytecode file offset 0x9bc0b4"
!SGObjectHandle methodsFor: 'recovered'!
objectHandle: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    code := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200dc6c0; bytecode file offset 0x9d8f8c"
!SGObjectHandle methodsFor: 'recovered'!
initialize: recoveredArg1 with: recoveredArg2
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    (self) name: (recoveredValue0).
    recoveredValue1 := recoveredArg2.
    (self) objectHandle: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x201293f4; bytecode file offset 0xa25cac"
!SGObjectHandle methodsFor: 'recovered'!
objectHandle
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := code.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 15] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 0.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            (recoveredStack1) objectHandle: (recoveredStack2).
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := code.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2017e6bc; bytecode file offset 0xa7af88"
!SGObjectHandle methodsFor: 'recovered'!
asCebraString
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 recoveredValue7 |
    recoveredValue0 := ByteArray.
    recoveredValue1 := (recoveredValue0) new: (8).
    recoveredValue2 := (self) objectHandle.
    recoveredValue3 := (recoveredValue2) asByteArray.
    recoveredValue4 := (recoveredValue3) size.
    recoveredValue5 := (self) objectHandle.
    recoveredValue6 := (recoveredValue5) asByteArray.
    recoveredValue7 := (recoveredValue1) copyReplaceFrom: (1) to: (recoveredValue4) with: (recoveredValue6).
    ^recoveredValue7
! !

"ASDBase.ic method 0x201a4ab8; bytecode file offset 0xaa1388"
!SGObjectHandle methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 recoveredValue5 recoveredValue6 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := recoveredValue0.
    recoveredValue2 := (self) name.
    (recoveredValue1) nextPutAll: (recoveredValue2).
    recoveredValue3 := (self) objectHandle.
    recoveredValue4 := (recoveredValue3) asString.
    recoveredValue5 := (' - id: <') , (recoveredValue4).
    recoveredValue6 := (recoveredValue5) , ('>').
    (recoveredValue0) nextPutAll: (recoveredValue6).
    ^self
! !

