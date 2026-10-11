"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x20002300; bytecode file offset 0x8ffcfc"
!RBGraphicalDisplayUnitBaseRT class methodsFor: 'recovered'!
_PRAGMA_RBGraphicalDisplayUnitRTNlsPool
    ^self
! !

"ASDBase.ic method 0x20007a48; bytecode file offset 0x908be4"
!RBGraphicalDisplayUnitBaseRT class methodsFor: 'recovered'!
startUp
    | recoveredValue0 |
    recoveredValue0 := (self) primStartUp.
    ^recoveredValue0
! !

"ASDBase.ic method 0x2004e318; bytecode file offset 0x94d048"
!RBGraphicalDisplayUnitBaseRT class methodsFor: 'recovered'!
relocalize
    (self) localize.
    ^self
! !

"ASDBase.ic method 0x2004f740; bytecode file offset 0x94d048"
!RBGraphicalDisplayUnitBaseRT class methodsFor: 'recovered'!
localize
    (self) etasDefaultLocalize.
    ^self
! !

"ASDBase.ic method 0x200e0d40; bytecode file offset 0x9dd614"
!RBGraphicalDisplayUnitBaseRT class methodsFor: 'recovered'!
loaded
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := System.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) imageStarted.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 10] ifFalse: [recoveredPC := 13].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := self.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            (recoveredStack1) startUp.
            recoveredPC := 13.
        ].
        recoveredStep = 13 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

"ASDBase.ic method 0x200f0348; bytecode file offset 0x9ecc08"
!RBGraphicalDisplayUnitBaseRT class methodsFor: 'recovered'!
primStartUp
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := RBOSCompositeOwnDC.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack1 := (recoveredStack1) windowProcIsInitialized.
            recoveredPC := 7.
        ].
        recoveredStep = 7 ifTrue: [
            (recoveredStack1) ifTrue: [recoveredPC := 14] ifFalse: [recoveredPC := 10].
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack1 := RBOSCompositeOwnDC.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack1) initializeWindowProc.
            recoveredPC := 14.
        ].
        recoveredStep = 14 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

