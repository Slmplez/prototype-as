"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x2000f25c; bytecode file offset 0x90bb38"
!SGMdANSICExpr methodsFor: 'recovered'!
hasDirectLinkLookup: recoveredArg1 or: recoveredArg2
    ^false
! !

"ASDBase.ic method 0x20055998; bytecode file offset 0x952a9c"
!SGMdANSICExpr methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) ansiCExpr: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006c4d4; bytecode file offset 0x9692b0"
!SGMdANSICExpr methodsFor: 'recovered'!
template
    | recoveredValue0 |
    recoveredValue0 := template.
    ^recoveredValue0
! !

"ASDBase.ic method 0x20077ecc; bytecode file offset 0x9757c8"
!SGMdANSICExpr methodsFor: 'recovered'!
isMdlANSICCCode
    ^true
! !

"ASDBase.ic method 0x20095468; bytecode file offset 0x991fb4"
!SGMdANSICExpr methodsFor: 'recovered'!
printOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) template.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200956b8; bytecode file offset 0x991fb4"
!SGMdANSICExpr methodsFor: 'recovered'!
printCCodeOn: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (self) template.
    (recoveredValue0) nextPutAll: (recoveredValue1).
    ^self
! !

"ASDBase.ic method 0x200c30c4; bytecode file offset 0x9bfde0"
!SGMdANSICExpr methodsFor: 'recovered'!
template: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    template := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200c3608; bytecode file offset 0x9c058c"
!SGMdANSICExpr methodsFor: 'recovered'!
children: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    children := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x200f2f3c; bytecode file offset 0x9ef808"
!SGMdANSICExpr methodsFor: 'recovered'!
isMdlSimpleANSICExpr
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := true.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack2 := self.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := (recoveredStack2) children.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack2 == nil) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            recoveredStack1 := (recoveredStack1) children.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := (recoveredStack1) isEmpty.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x201061b0; bytecode file offset 0xa02a74"
!SGMdANSICExpr methodsFor: 'recovered'!
children
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack1 ~~ nil) ifTrue: [recoveredPC := 13] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := #().
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack1
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack1 := children.
            recoveredPC := 15.
        ].
        recoveredStep = 15 ifTrue: [
            ^recoveredStack1
        ].
    ]
! !

"ASDBase.ic method 0x2011afe4; bytecode file offset 0xa178ac"
!SGMdANSICExpr methodsFor: 'recovered'!
genIlePMI
    | recoveredValue0 recoveredValue1 recoveredValue2 recoveredValue3 |
    recoveredValue0 := (self) expander.
    recoveredValue1 := (self) source.
    (recoveredValue0) source: (recoveredValue1).
    recoveredValue2 := (self) expander.
    recoveredValue3 := (self) template.
    (recoveredValue2) cCodeFragment: (recoveredValue3).
    ^self
! !

