"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20004d30; bytecode file offset 0x90206c"
!SGMdDataSetReference methodsFor: 'recovered'!
asMdlComplementServiceExpr: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20055a40; bytecode file offset 0x952a9c"
!SGMdDataSetReference methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlDataSetReference: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006a74c; bytecode file offset 0x967a18"
!SGMdDataSetReference methodsFor: 'recovered'!
mdlClass
    | recoveredValue0 |
    recoveredValue0 := mdlClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006bb00; bytecode file offset 0x96873c"
!SGMdDataSetReference methodsFor: 'recovered'!
initId
    | recoveredValue0 |
    recoveredValue0 := initId.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2006c7e4; bytecode file offset 0x9692b0"
!SGMdDataSetReference methodsFor: 'recovered'!
initName
    | recoveredValue0 |
    recoveredValue0 := initName.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200736a0; bytecode file offset 0x970b34"
!SGMdDataSetReference methodsFor: 'recovered'!
mdlReferenceVarDecl
    ^nil
! !

"ASDBase.ic method 0x200752bc; bytecode file offset 0x9757c8"
!SGMdDataSetReference methodsFor: 'recovered'!
isMdlDataSetInitValue
    ^true
! !

"ASDBase.ic method 0x2007e4fc; bytecode file offset 0x97c330"
!SGMdDataSetReference methodsFor: 'recovered'!
isMdlUninitializedReference
    ^false
! !

"ASDBase.ic method 0x200c1d7c; bytecode file offset 0x9beac8"
!SGMdDataSetReference methodsFor: 'recovered'!
mdlClass: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    mdlClass := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c28d8; bytecode file offset 0x9bf474"
!SGMdDataSetReference methodsFor: 'recovered'!
initId: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initId := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c2edc; bytecode file offset 0x9bfde0"
!SGMdDataSetReference methodsFor: 'recovered'!
initName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    initName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200d2154; bytecode file offset 0x9ceaf0"
!SGMdDataSetReference methodsFor: 'recovered'!
errLabelInitValue
    | recoveredValue0 recoveredValue1 recoveredValue2 |
    recoveredValue0 := (self) initName.
    recoveredValue1 := ('DataSet <') , (recoveredValue0).
    recoveredValue2 := (recoveredValue1) , ('>').
    ^recoveredValue2
! !

"ASDBase.ic method 0x20164e28; bytecode file offset 0xa616e4"
!SGMdDataSetReference methodsFor: 'recovered'!
mdlHasSameValueAs: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := false.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := recoveredArg1.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) class.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            recoveredStack3 := self.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack3 := (recoveredStack3) class.
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredStack2 := (recoveredStack2) = (recoveredStack3).
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            (recoveredStack2) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 20].
        ].
        recoveredStep = 14 ifTrue: [
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 16.
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack1 := (recoveredStack1) initName.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            recoveredStack2 := (recoveredStack2) initName.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack1 := (recoveredStack1) = (recoveredStack2).
            recoveredPC := 20.
        ].
        recoveredStep = 20 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

