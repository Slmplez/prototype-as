"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000c26c; bytecode file offset 0x908be4"
!SGMdSelfVarDecl methodsFor: 'recovered'!
scope
    | recoveredValue0 |
    recoveredValue0 := (self) mdlClass.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2005604c; bytecode file offset 0x952a9c"
!SGMdSelfVarDecl methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlSelfVarDecl: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x200756bc; bytecode file offset 0x9757c8"
!SGMdSelfVarDecl methodsFor: 'recovered'!
isMdlReference
    ^true
! !

"ASDBase.ic method 0x2007739c; bytecode file offset 0x9757c8"
!SGMdSelfVarDecl methodsFor: 'recovered'!
isMdlSelfDecl
    ^true
! !

"ASDBase.ic method 0x20078824; bytecode file offset 0x9757c8"
!SGMdSelfVarDecl methodsFor: 'recovered'!
isMdlArgumentUsageInOut
    ^true
! !

"ASDBase.ic method 0x2007b5fc; bytecode file offset 0x97c330"
!SGMdSelfVarDecl methodsFor: 'recovered'!
isMdlModifiableItem
    ^false
! !

"ASDBase.ic method 0x200c43d8; bytecode file offset 0x9c11bc"
!SGMdSelfVarDecl methodsFor: 'recovered'!
ileName: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    ileName := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2014d6dc; bytecode file offset 0xa49f98"
!SGMdSelfVarDecl methodsFor: 'recovered'!
ileName
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := ileName.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 == nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := ileName.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack1 := super ileName.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

