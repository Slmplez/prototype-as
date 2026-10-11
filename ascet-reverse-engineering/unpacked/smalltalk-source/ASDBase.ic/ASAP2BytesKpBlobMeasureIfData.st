"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200a5f08; bytecode file offset 0x9a27f0"
!ASAP2BytesKpBlobMeasureIfData methodsFor: 'recovered'!
kpBlob: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    (self) at: (1) put: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x200aaacc; bytecode file offset 0x9a7438"
!ASAP2BytesKpBlobMeasureIfData methodsFor: 'recovered'!
putParameterIn: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    super putParameterIn: (recoveredValue0).
    ^self
! !

"ASDBase.ic method 0x2010aafc; bytecode file offset 0xa073d0"
!ASAP2BytesKpBlobMeasureIfData methodsFor: 'recovered'!
addressFromIfData
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlobObject.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isString.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 12].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := (recoveredStack0) kpBlobObject.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := (recoveredStack0) address.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x20141198; bytecode file offset 0xa3da58"
!ASAP2BytesKpBlobMeasureIfData methodsFor: 'recovered'!
kpBlob
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := [
    ^''
].
    recoveredValue1 := (self) at: (1) ifAbsent: (recoveredValue0).
    recoveredValue2 := (recoveredValue1) kpBlobString.
    ^recoveredValue2
! !

