"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20025d8c; bytecode file offset 0x923928"
!RBEnumerationSpecificationEditor class methodsFor: 'recovered'!
typeString
    ^'Enumeration Editor'
! !

"ASDBase.ic method 0x20087f18; bytecode file offset 0x984bc0"
!RBEnumerationSpecificationEditor class methodsFor: 'recovered'!
supportedSourceModels
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := Array.
    recoveredValue1 := (recoveredValue0) with: ('KWEnum').
    ^recoveredValue1
! !

"ASDBase.ic method 0x200b3228; bytecode file offset 0x9afaec"
!RBEnumerationSpecificationEditor class methodsFor: 'recovered'!
defaultMinSize
    | recoveredValue0 |
    recoveredValue0 := (100) @ (50).
    ^recoveredValue0
! !

"ASDBase.ic method 0x200d1f10; bytecode file offset 0x9ce7ec"
!RBEnumerationSpecificationEditor class methodsFor: 'recovered'!
basicLabel
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := ('[') , ('Enumeration Editor').
    recoveredValue1 := (recoveredValue0) , (']').
    ^recoveredValue1
! !

"ASDBase.ic method 0x2017d948; bytecode file offset 0xa7a204"
!RBEnumerationSpecificationEditor class methodsFor: 'recovered'!
manage: recoveredArg1 for: recoveredArg2 with: recoveredArg3
    | recoveredLocal1 recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg2.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack3 := recoveredArg3.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack0 := (recoveredStack0) create: (recoveredStack1) for: (recoveredStack2) with: (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := recoveredStack0.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredLocal1 := recoveredStack1.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0 ~~ nil) ifTrue: [recoveredPC := 18] ifFalse: [recoveredPC := 16].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := nil.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack0 := recoveredArg2.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := recoveredLocal1.
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            recoveredStack0 := (recoveredStack0) openSpecificationView: (recoveredStack1).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

