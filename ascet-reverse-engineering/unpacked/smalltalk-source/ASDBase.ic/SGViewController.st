"Statically reconstructed from ASCET image; generated names; not original source. Runtime equivalence not tested."

"ASDBase.ic method 0x200044e0; bytecode file offset 0x90206c"
!SGViewController methodsFor: 'recovered'!
removeElementGOsAliasName: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20004b70; bytecode file offset 0x90206c"
!SGViewController methodsFor: 'recovered'!
graphicsModified: recoveredArg1
    ^self
! !

"ASDBase.ic method 0x20005a28; bytecode file offset 0x902744"
!SGViewController methodsFor: 'recovered'!
updateElementGOsAliasName: recoveredArg1 datamodelManager: recoveredArg2
    ^self
! !

"ASDBase.ic method 0x2000d044; bytecode file offset 0x909ab8"
!SGViewController methodsFor: 'recovered'!
keyReleased: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x2000d064; bytecode file offset 0x909ab8"
!SGViewController methodsFor: 'recovered'!
keyPressed: recoveredArg1
    ^nil
! !

"ASDBase.ic method 0x200391b0; bytecode file offset 0x935c54"
!SGViewController methodsFor: 'recovered'!
getMenuForObject: recoveredArg1
    | recoveredValue0 recoveredValue1 |
    recoveredValue0 := recoveredArg1.
    recoveredValue1 := (recoveredValue0) getReadOnlyMenu.
    ^recoveredValue1
! !

"ASDBase.ic method 0x20073110; bytecode file offset 0x970b34"
!SGViewController methodsFor: 'recovered'!
connect
    ^nil
! !

"ASDBase.ic method 0x20077d34; bytecode file offset 0x9757c8"
!SGViewController methodsFor: 'recovered'!
isViewController
    ^true
! !

"ASDBase.ic method 0x2007cbcc; bytecode file offset 0x97c330"
!SGViewController methodsFor: 'recovered'!
graphicsModified
    ^false
! !

"ASDBase.ic method 0x201926cc; bytecode file offset 0xa8ef98"
!SGViewController methodsFor: 'recovered'!
button1MoveLC: recoveredArg1
    | recoveredStack0 recoveredStack1 recoveredStack2 recoveredStack3 recoveredPC recoveredStep |
    recoveredStack0 := self.
    recoveredPC := 4.
    [true] whileTrue: [
        recoveredStep := recoveredPC.
        recoveredStep = 4 ifTrue: [
            recoveredStack1 := 'hw'.
            recoveredPC := 6.
        ].
        recoveredStep = 6 ifTrue: [
            recoveredStack2 := 'call_200940366'.
            recoveredPC := 8.
        ].
        recoveredStep = 8 ifTrue: [
            recoveredStack1 := (recoveredStack1) == (recoveredStack2).
            recoveredPC := 9.
        ].
        recoveredStep = 9 ifTrue: [
            recoveredPC := 10.
        ].
        recoveredStep = 10 ifTrue: [
            recoveredStack0 := (recoveredStack0) currentMode.
            recoveredPC := 11.
        ].
        recoveredStep = 11 ifTrue: [
            recoveredStack0 := (recoveredStack0) allowButton1MoveInViewer.
            recoveredPC := 12.
        ].
        recoveredStep = 12 ifTrue: [
            (recoveredStack0) ifTrue: [recoveredPC := 16] ifFalse: [recoveredPC := 22].
        ].
        recoveredStep = 16 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 17.
        ].
        recoveredStep = 17 ifTrue: [
            recoveredStack1 := recoveredArg1.
            recoveredPC := 18.
        ].
        recoveredStep = 18 ifTrue: [
            super button1MoveLC: (recoveredStack1).
            recoveredPC := 22.
        ].
        recoveredStep = 22 ifTrue: [
            recoveredStack0 := self.
            recoveredPC := 23.
        ].
        recoveredStep = 23 ifTrue: [
            ^recoveredStack0
        ].
    ]
! !

