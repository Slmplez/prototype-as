"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20055c8c; bytecode file offset 0x952a9c"
!SGMdSoftwareTask methodsFor: 'recovered'!
mdlAcceptNodeVisitor: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) mdlSoftwareTask: (self).
    ^recoveredValue1
! !

"ASDBase.ic method 0x2006ebf4; bytecode file offset 0x96b8a0"
!SGMdSoftwareTask methodsFor: 'recovered'!
maxActive
    | recoveredValue0 |
    recoveredValue0 := maxActive.
    ^recoveredValue0
! !

"ASDBase.ic method 0x200785dc; bytecode file offset 0x9757c8"
!SGMdSoftwareTask methodsFor: 'recovered'!
isMdlSoftwareTask
    ^true
! !

"ASDBase.ic method 0x200c5610; bytecode file offset 0x9c1f64"
!SGMdSoftwareTask methodsFor: 'recovered'!
maxActive: recoveredArg1
    | recoveredValue0 |
    recoveredValue0 := recoveredArg1.
    maxActive := recoveredValue0.
    ^self
! !

"ASDBase.ic method 0x20161938; bytecode file offset 0xa5e200"
!SGMdSoftwareTask methodsFor: 'recovered'!
ilePrio
    | recoveredStack0 recoveredStack1 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack0 := (recoveredStack0) attributes.
            recoveredPC := 5.
        ].
        recoveredStep = 5 ifTrue: [
            recoveredStack0 := (recoveredStack0) isCgAttrSchedulingCooperative.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) prio.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            ^recoveredStack0
        ].
        recoveredStep = 13 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            recoveredStack0 := super ilePrio.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

