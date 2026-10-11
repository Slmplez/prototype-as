"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2003e848; bytecode file offset 0x93bf94"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
errorHandler
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := SGCgErrorHandler.
    recoveredValue1 := (recoveredValue0) current.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20040df8; bytecode file offset 0x93d83c"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
currentToken
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := scanner.
    recoveredValue1 := (recoveredValue0) currentToken.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20066eec; bytecode file offset 0x9646f8"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
scanner
    | recoveredValue0 |
    recoveredValue0 := scanner.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006ad64; bytecode file offset 0x967a18"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
sourceErrorString
    | recoveredValue0 |
    recoveredValue0 := sourceErrorString.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200b9a70; bytecode file offset 0x9b63d0"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
source: recoveredArg1
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) scannerClass.
    recoveredValue1 := recoveredArg1.
    recoveredValue2 := (recoveredValue0) source: (recoveredValue1).
    (self) scanner: (recoveredValue2).
    ^self
! !

"ASDBase.ic method 0x200be8e0; bytecode file offset 0x9bc0b4"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
scanner: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scanner := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c1bec; bytecode file offset 0x9beac8"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
sourceErrorString: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    sourceErrorString := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2508; bytecode file offset 0x9bf474"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
scanComments: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    scanComments := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d5ce0; bytecode file offset 0x9d259c"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
initialize
    super initialize.
    sourceErrorString := nil.
    ^self
! !

"ASDBase.ic method 0x2013b08c; bytecode file offset 0xa37948"
!SGAbstractSyntaxParser methodsFor: 'recovered'!
scannerClass
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := scanComments.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := SGEsdlCommentScanner.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredPC := 18.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := SGEsdlScanner.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

