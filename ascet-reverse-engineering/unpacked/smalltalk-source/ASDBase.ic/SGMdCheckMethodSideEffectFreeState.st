"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20003328; bytecode file offset 0x8ffcfc"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
copy
    ^self
! !

"ASDBase.ic method 0x20003dc0; bytecode file offset 0x90206c"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
mergeUnion: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20003ee8; bytecode file offset 0x90206c"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
checkOutArgOverwrites: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004d90; bytecode file offset 0x90206c"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
readAccess: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004ff0; bytecode file offset 0x90206c"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
merge: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x200052a8; bytecode file offset 0x90206c"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
readAccessFromReferencedObject: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005ad0; bytecode file offset 0x902744"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
checkMethodExit: recoveredArg1 source: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20005d58; bytecode file offset 0x902744"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
merge: recoveredArg1 condition: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x20069730; bytecode file offset 0x966bdc"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
method
    | recoveredValue0 |
    recoveredValue0 := method.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200c10c8; bytecode file offset 0x9bdf14"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
method: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    method := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x2013516c; bytecode file offset 0xa31a40"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
error: recoveredArg1 at: recoveredArg2
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 recoveredValue4 |
    recoveredValue0 := (self) method.
    recoveredValue1 := (self) method.
    recoveredValue2 := (recoveredValue1) errLabel.
    recoveredValue3 := recoveredArg1.
    recoveredValue4 := recoveredArg2.
    (recoveredValue0) mdlSemErrNo: (96) with: (recoveredValue2) with: (recoveredValue3) source: (recoveredValue4).
    ^self
! !

"ASDBase.ic method 0x201ceff4; bytecode file offset 0xacb8f0"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
writeAccess: recoveredArg1 source: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMethodScopedVarDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'has write access to non-local "'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) error: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x201cf01c; bytecode file offset 0xacb8f0"
!SGMdCheckMethodSideEffectFreeState methodsFor: 'recovered'!
writeAccessToReferencedObject: recoveredArg1 source: recoveredArg2
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredStack4 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack1 := (recoveredStack1) varDecl.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) isMdlParmDecl.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 26] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack2 := 'has write access to non-local "'.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack3 := (recoveredStack3) errLabel.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack3 := '"'.
            recoveredPC := 19.
        ].
        recoveredStep = 19 ifTrue: [
            recoveredStack2 := (recoveredStack2) , (recoveredStack3).
            recoveredPC := 21.
        ].
        recoveredStep = 21 ifTrue: [
            recoveredStack3 := recoveredArg1.
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack3 := (recoveredStack3) source.
            recoveredPC := 24.
        ].
        recoveredStep = 24 ifTrue: [
            (recoveredStack1) error: (recoveredStack2) at: (recoveredStack3).
            recoveredPC := 26.
        ].
        recoveredStep = 26 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

